# .agents/skills

이 폴더는 일부 에이전트 도구(Codex 등)가 자동으로 읽는 “설치/로딩 경로”로 쓰입니다.

## 원본(SSoT)

OpenSynapse의 최종 규칙/스킬 원본은 아래에 있습니다.

- `/_skills/`

`/.agents/skills/` 내부 파일은 배포/호환을 위한 **미러(복제본)** 로 취급하세요.  
내용을 바꾸려면 `/_skills/`를 수정하고, 필요하면 여기 파일을 다시 동기화하는 방식이 안전합니다.

동기화 스크립트: `scripts/sync-adapters.ps1`

## 포함된 스킬

- `pkm-core.md`
- `intake-processor.md`
