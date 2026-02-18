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
