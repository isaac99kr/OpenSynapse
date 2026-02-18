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
