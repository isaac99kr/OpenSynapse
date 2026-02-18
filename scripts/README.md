# 스크립트

이 폴더의 스크립트는 `/_skills/`를 단일 원본(SSoT)으로 유지하면서, 도구별 어댑터/미러 파일을 자동으로 맞춥니다.

## 동기화 (Windows)

PowerShell에서 실행:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\sync-adapters.ps1
```

실행 결과:

- `/.agents/skills/*.md` ← `/_skills/*.md` 미러 생성/갱신
- `/.cursor/rules/pkm.mdc` 재생성
- `/.antigravity/rules.md` 재생성
- `/.claude/INSTRUCTIONS.md` 재생성

> 어댑터/미러 파일은 스크립트 실행 시 덮어써지므로, 직접 수정하지 마세요.
