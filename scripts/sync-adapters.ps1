Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

function Get-RepoRoot {
  return (Resolve-Path (Join-Path $PSScriptRoot "..")).Path
}

function Ensure-Dir([string]$path) {
  New-Item -ItemType Directory -Force -Path $path | Out-Null
}

function Add-MirrorNotice([string]$text, [string]$sourceRelPath) {
  $notice = @(
    "> ⚠️ DO NOT EDIT: 이 파일은 `/$sourceRelPath`에서 미러링된 배포본입니다."
    "> 최종 수정은 `/$sourceRelPath`에서만 하세요."
    ""
  ) -join "`r`n"

  # Insert after YAML frontmatter if present; otherwise prepend.
  $fm = [regex]::Match($text, "(?ms)\A---\s*\r?\n.*?\r?\n---\s*\r?\n")
  if ($fm.Success) {
    return $fm.Value + "`r`n" + $notice + $text.Substring($fm.Length)
  }
  return $notice + $text
}

function Write-FileUtf8([string]$path, [string]$content) {
  $utf8NoBom = New-Object System.Text.UTF8Encoding($false)
  [System.IO.File]::WriteAllText($path, $content, $utf8NoBom)
}

$root = Get-RepoRoot

$skillsDir = Join-Path $root "_skills"
$agentsSkillsDir = Join-Path $root ".agents\skills"
$cursorRulesDir = Join-Path $root ".cursor\rules"
$antigravityDir = Join-Path $root ".antigravity"
$claudeDir = Join-Path $root ".claude"
$templatesDir = Join-Path $root "06_Templates"

Ensure-Dir $skillsDir
Ensure-Dir $agentsSkillsDir
Ensure-Dir $cursorRulesDir
Ensure-Dir $antigravityDir
Ensure-Dir $claudeDir
Ensure-Dir $templatesDir

Write-Host "Syncing .agents/skills mirrors from _skills/ ..."

$skillFiles = Get-ChildItem -Path $skillsDir -Filter "*.md" -File
foreach ($f in $skillFiles) {
  $rel = "_skills/$($f.Name)"
  $srcText = Get-Content -Path $f.FullName -Raw
  $outText = Add-MirrorNotice -text $srcText -sourceRelPath $rel
  $dstPath = Join-Path $agentsSkillsDir $f.Name
  Write-FileUtf8 -path $dstPath -content $outText
  Write-Host "  - $($f.Name)"
}

Write-Host "Writing adapters (Cursor / Antigravity / Claude) ..."

$cursorAdapter = @"
# OpenSynapse PKM Rules (Adapter)

> ⚠️ DO NOT EDIT: 이 파일은 어댑터(배포본)입니다.  
> 최종 수정은 `/_skills/pkm-core.md`, `/_skills/intake-processor.md`에서만 하세요.  
> 필요 시 동기화 스크립트: `scripts/sync-adapters.ps1`

이 파일은 Cursor가 자동 로드하는 규칙 파일입니다.  
**단일 원본(SSoT)** 는 아래 2개이며, 최종 규칙은 이 파일들을 따릅니다.

- `/_skills/pkm-core.md` (볼트 철학/폴더/템플릿/태그)
- `/_skills/intake-processor.md` (입력 → 노트 변환 파이프라인)

## 반드시 지킬 것

- 작업 시작 시 `/_skills/pkm-core.md`와 `/_skills/intake-processor.md`를 **읽고**, 그 규칙에 맞춰 노트를 분류/작성한다.
- 확신이 없으면 `00_Inbox/`를 기본 저장 위치로 선택한다.
- “요약 / 핵심 포인트 / 결정 / 할 일 / 원문”을 가능한 분리한다.

## 저장 위치 빠른 규칙

- 회의/미팅 → `01_Projects/<프로젝트명>/` (프로젝트가 불명확하면 `00_Inbox/`)
- 건강/재정/학습 같은 지속 영역 → `02_Areas/`
- 읽은 것/인사이트/레퍼런스 → `03_Resources/<주제>/`
- 오늘 할 일/짧은 로그 → `05_Daily/YYYY-MM-DD.md`
- 완료/비활성(보관) → `04_Archive/`
- 운영/가이드/MOC/대시보드 → `07_Meta/`

## 템플릿

- 템플릿은 `06_Templates/`에 있다.
- 템플릿은 참조하되, 템플릿 파일 자체를 임의로 수정하지 않는다.
"@

$antigravityAdapter = @"
# OpenSynapse Rules (Adapter)

> ⚠️ DO NOT EDIT: 이 파일은 어댑터(배포본)입니다.  
> 최종 수정은 `/_skills/pkm-core.md`, `/_skills/intake-processor.md`에서만 하세요.  
> 필요 시 동기화 스크립트: `scripts/sync-adapters.ps1`

이 파일은 Antigravity가 워크스페이스에서 자동 로드하는 규칙입니다.  
**단일 원본(SSoT)** 는 아래 2개입니다.

- `/_skills/pkm-core.md` (볼트 철학/폴더/템플릿/태그)
- `/_skills/intake-processor.md` (입력 → 노트 변환 파이프라인)

## 운영 원칙

- 새로운 노트를 만들거나 분류할 때, 먼저 `/_skills/pkm-core.md`와 `/_skills/intake-processor.md`를 참고한다.
- 확신이 없으면 `00_Inbox/`로 보낸다(나중에 이동 가능).
- 결과물은 “요약 / 핵심 / 결정 / 할 일 / 원문”을 가능한 분리한다.

## 저장 위치 요약

- Projects → `01_Projects/`
- Areas → `02_Areas/`
- Resources → `03_Resources/`
- Daily → `05_Daily/YYYY-MM-DD.md`
- Archive → `04_Archive/`
- Meta/Guide/MOC → `07_Meta/`

## 템플릿

- 템플릿 폴더: `06_Templates/`
- 템플릿을 참조해 노트를 생성하되, 템플릿 자체는 변경하지 않는다.

## 권장 슬래시 커맨드(프로젝트에서 정의했다면)

```
/intake   메모 정리
/daily    오늘 데일리 노트
/review   Inbox 한번에 처리
```
"@

$claudeAdapter = @"
# OpenSynapse (Claude Project Instructions)

> ⚠️ DO NOT EDIT: 이 파일은 어댑터(배포본)입니다.  
> 최종 수정은 `/_skills/pkm-core.md`, `/_skills/intake-processor.md`에서만 하세요.  
> 필요 시 동기화 스크립트: `scripts/sync-adapters.ps1`

## 업로드할 파일(권장)

Claude Project에 아래 파일들을 업로드하세요.

```
.claude/INSTRUCTIONS.md
_skills/pkm-core.md
_skills/intake-processor.md
```

> `/_skills/*`가 단일 원본(SSoT)입니다. 규칙을 바꿀 땐 `/_skills/`만 수정하세요.

## Claude가 해야 할 일

사용자가 메모를 입력하면 다음을 수행합니다.

1. `/_skills/intake-processor.md` 파이프라인을 따릅니다. (타입 감지 → 질문(필요 시) → 분류 → 템플릿 → 출력)
2. `/_skills/pkm-core.md`의 PARA/폴더 규칙에 따라 메모를 분류합니다.
3. 적절한 폴더/파일명을 제안합니다.
4. 노트 본문은 가능한 아래 섹션을 사용해 구조화합니다.
   - 요약
   - 핵심 포인트
   - 결정/합의(있다면)
   - 할 일(Action items)
   - 원문(사용자 입력)
5. 필요하면 관련 노트로 내부 링크(Obsidian 위키링크)를 추가합니다.
6. `/_skills/pkm-core.md`에 정의된 템플릿(`06_Templates/`)을 참고해 해당 노트 유형에 맞는 형식을 따릅니다.

## 출력 형식(권장)

- 파일 경로(저장 위치)를 먼저 제시
- 그 다음 마크다운 노트 본문 출력

예:

```
저장 위치: 01_Projects/프로젝트명/2026-02-18 - 팀 미팅.md
```

```md
# 2026-02-18 팀 미팅

## 요약
- ...
```
"@

Write-FileUtf8 -path (Join-Path $cursorRulesDir "pkm.mdc") -content $cursorAdapter
Write-FileUtf8 -path (Join-Path $antigravityDir "rules.md") -content $antigravityAdapter
Write-FileUtf8 -path (Join-Path $claudeDir "INSTRUCTIONS.md") -content $claudeAdapter

Write-Host "Done."
