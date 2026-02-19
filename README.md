# 🧠 OpenSynapse

> 메모만 하세요. 나머지는 AI가 합니다.

이 프로젝트는 **Obsidian을 한 번도 써본 적 없는 분**을 위해 만들어졌습니다.

노트 앱 사용법을 배울 필요 없습니다.  
폴더 구조를 고민할 필요 없습니다.  
서식이나 링크 문법을 익힐 필요도 없습니다.

그냥 **AI에게 말하듯 입력하면**, 정리된 노트가 Obsidian에 쌓입니다.

---

## 어떻게 쓰나요?

OpenSynapse에서 노트를 작성하는 방법은 두 가지입니다.

### 방법 1 — AI에게 직접 말하기

Antigravity 채팅창에서 AI에게 대화하듯 입력하세요.  
AI가 내용을 분석해 적절한 폴더에 노트를 만들어 줍니다.

```
오늘 팀 미팅 정리해줘. 다음달까지 프로토타입 만들기로 했고,
담당 역할이랑 마감일 정했어.
```

```
방금 읽은 아티클 정리: 제목은 XXX, 핵심 내용은 ...
```

```
아이디어 메모:
- 새로운 기능 아이디어
- 오늘 할 일
- 배우고 싶은 것
```

### 방법 2 — 받은 문서를 Inbox에 넣고 재정리 요청하기

이미 작성된 문서나 초안이 있다면 `00_Inbox/` 폴더에 넣고,  
AI에게 재작업이나 재배치를 요청하면 됩니다.

```
Inbox에 있는 회의록 초안을 프로젝트 폴더로 옮기고 정리해줘.
```

```
Inbox에 넣어둔 파일 보고 적절한 위치에 배치해줘.
```

---

## 어디에 저장되나요?

AI가 내용을 보고 자동으로 결정합니다.

| 내용 | 저장 위치 |
|------|-----------|
| 미팅, 회의 | `01_Projects/프로젝트명/` |
| 프로젝트 아이디어, 목표 | `01_Projects/` |
| 건강, 재정, 학습 관련 | `02_Areas/` |
| 배운 것, 읽은 것, 인사이트 | `03_Resources/주제/` |
| 오늘 할 일, 짧은 메모 | `05_Daily/오늘날짜.md` |
| 분류 모를 때 | `00_Inbox/` (나중에 정리) |

---

## 이 정리 방법은 어디서 왔나요?

OpenSynapse의 폴더 구조와 노트 작성 방식은 두 가지 방법론을 기반으로 합니다.

**PARA Method** — Tiago Forte가 고안한 프로젝트 기반 지식 관리 시스템입니다.  
모든 정보를 Projects / Areas / Resources / Archive 네 가지 범주로 나눠 관리합니다.  
"지금 내 삶과 얼마나 연관되어 있는가"를 기준으로 분류한다는 철학이 핵심입니다.

**Zettelkasten Method** — 독일의 사회학자 Niklas Luhmann이 수십 년간 사용한 메모 시스템입니다.  
단순히 정보를 저장하는 것이 아니라, 개념 간의 연결을 명시적으로 만들어 두는 것이 핵심입니다.  
Obsidian의 그래프 뷰는 이 연결 관계를 시각적으로 보여줍니다.

두 방법론에 대해 더 알고 싶다면:
- [PARA Method 공식 사이트](https://fortelabs.com/blog/para/)
- [Zettelkasten 입문 (zettelkasten.de)](https://zettelkasten.de/introduction/)
- [방법론 적용 규칙 (내부 문서)](.agent/rules/pkm.md)

---

## 설치

### 1단계 — 저장소 Fork & Clone

개인 용도로 사용할 예정이라면, 본인의 GitHub 계정에 Fork한 뒤 **Private 저장소**로 설정하는 것을 권장합니다.  
나의 메모와 지식베이스가 공개되지 않도록 보호할 수 있습니다.

```bash
# Fork 후 본인 계정의 저장소를 클론하세요
git clone https://github.com/{나의깃계정}/opensynapse.git
```

### 2단계 — Obsidian 설치 & 열기

[obsidian.md](https://obsidian.md)에서 Obsidian을 다운로드한 후,  
**"Open folder as vault"** → 클론한 `opensynapse` 폴더를 선택하세요.

### 3단계 — Antigravity 연결

Antigravity에서 `opensynapse` 폴더를 Workspace로 열면 즉시 AI 기능이 활성화됩니다.  
별도의 복잡한 설정 없이 바로 대화를 시작할 수 있습니다.

### 4단계 — 내 메모를 Git으로 백업하기 (권장)

기본 설정에서는 개인 메모 폴더(`00_Inbox`, `01_Projects` 등)가 `.gitignore`에 의해 Git 추적에서 제외되어 있습니다.  
본인의 메모를 GitHub에 백업하고 싶다면, 첫 번째 대화를 시작할 때 아래 문장을 입력하세요.

> **시스템 세팅 확인해줘. 그리고 내 메모들이 내 Git 저장소에 저장될 수 있게 .gitignore 설정에서 PARA 폴더들(00~07)의 제한을 모두 풀어줘. 현재 전체적인 상태를 보기 쉽게 요약해줘!**

AI가 전체 폴더 구조를 점검하고, `.gitignore` 설정을 변경하며, 현재 볼트의 상태를 **시각적인 대시보드** 형태로 출력해 줍니다.

이후부터는 아래 명령으로 메모를 GitHub에 백업할 수 있습니다.

```bash
git add .
git commit -m "update notes"
git push
```

> **팁**: 원본 저장소(`korgeek/opensynapse`)에 새로운 AI 규칙이나 템플릿 업데이트가 올라오면,  
> GitHub에서 `Fetch upstream`을 눌러 본인 시스템에 반영할 수 있습니다.

---

## Obsidian에서 보기

노트가 쌓이면 Obsidian에서 다양하게 활용할 수 있습니다.

- **파일 탐색기** → 폴더별로 정리된 노트 확인
- **그래프 뷰** (`Ctrl+G`) → 아이디어들이 연결된 지식 지도 시각화
- **검색** (`Ctrl+F`) → 쌓인 모든 메모 전문 검색
- **홈 대시보드** → `07_Meta/Home.md` 열기

처음엔 그냥 폴더 탐색기처럼 쓰다가, 노트가 100개쯤 쌓이면 그래프 뷰를 열어보세요.  
자신의 생각이 어떻게 연결되는지 보이기 시작합니다.

---

## 더 알고 싶다면

- [방법론 설명](.agent/rules/pkm.md) — PARA + Zettelkasten 규칙
- [AI 워크플로우 동작 방식](.agent/workflows/intake.md) — 분류 및 처리 로직 상세
- [Obsidian 공식 문서](https://help.obsidian.md) — 고급 기능들

---

## 기여하기

이 프로젝트가 도움이 됐다면:

- ⭐ Star
- 🍴 Fork해서 본인 버전 만들기
- 🐛 [Issue](../../issues) 로 버그/아이디어 제보

---

*OpenSynapse — Open your second brain.*
