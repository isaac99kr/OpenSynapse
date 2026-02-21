---
created: 2025-02-21
tags: [type/permanent, topic/git, topic/dev-tips]
---

# Git: 계정별 원격 분리해서 푸시하기

회사 레포와 개인 레포를 같은 PC에서 계정 분리해서 쓰는 방법.

## 방법

원격 URL에 **사용자명을 명시**하면, 해당 remote만 그 GitHub 계정으로 인증된다.

```
https://개인아이디@github.com/개인아이디/레포.git
```

- 회사 origin: `https://github.com/회사/레포.git` → 회사 계정 사용
- 개인 origin (또는 `personal`): `https://개인아이디@github.com/개인아이디/레포.git` → 개인 계정 사용

같은 저장소를 두 remote로 두고, 푸시할 때만 `git push personal main` 처럼 쓰면 됨.

## 관련
- [[07_Meta/System-Status]] — OpenSynapse Git 설정 요약
