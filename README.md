# 🧠 OpenSynapse

> 메모만 하세요. 나머지는 AI가 합니다.

Obsidian을 한 번도 써본 적 없어도 괜찮습니다.  
노트 앱 사용법을 배울 필요 없습니다.  
폴더 구조를 고민할 필요 없습니다.

그냥 생각난 걸 AI에게 말하면, 정리된 노트가 Obsidian에 쌓입니다.

---

## 설치 (3단계)

### 1. 클론

```bash
git clone https://github.com/korgeek/opensynapse.git 
```

### 2. Obsidian 설치 & 열기

[obsidian.md](https://obsidian.md) 에서 Obsidian 다운로드 후,  
**"Open folder as vault"** → 클론한 `opensynapse` 폴더 선택

### 3. AI 연결 (하나만 선택)

| | Claude | Antigravity | Cursor |
|--|--------|-------------|--------|
| **방식** | 웹/모바일 앱 | 로컬 에이전트 IDE | 로컬 에디터 |
| **파일 생성** | 복사 → 붙여넣기 | 자동 직접 생성 | 자동 직접 생성 |
| **설정** | [→ 아래 참조](#claude) | 폴더 열면 자동 | 폴더 열면 자동 |

---

## 사용법

설치 후 AI에게 이렇게 말하면 됩니다.

```
오늘 팀 미팅 정리해줘. 다음달까지 프로토타입 만들기로 했고,
담당 역할이랑 마감일 정했어.
```

```
방금 읽은 글 정리: [핵심 내용 한두 줄]
```

```
아이디어 메모:
- [생각난 아이디어]
- [오늘 할 일]
- [배우고 싶은 것]
```

AI가 각각을 분석해서, 미팅 노트/지식 노트/할 일로 나눠서 저장합니다.

---

## AI별 설정 방법

### Claude

1. [claude.ai](https://claude.ai) → 왼쪽 사이드바 → **New Project**
2. Project에 파일 3개 업로드:

```
.claude/INSTRUCTIONS.md
_skills/pkm-core.md
_skills/intake-processor.md
```

3. Project 채팅에 메모 입력 → 출력된 노트 복사 → Obsidian에 붙여넣기

---

### Antigravity

Antigravity에서 `opensynapse` 폴더를 Workspace로 열면 끝.  
`.antigravity/rules.md`가 자동으로 로드되어 바로 사용 가능합니다.

슬래시 커맨드:
```
/intake   메모 정리
/daily    오늘 데일리 노트
/review   Inbox 한번에 처리
```

---

### Cursor

Cursor에서 `opensynapse` 폴더를 열면 끝.  
`.cursor/rules/pkm.mdc`가 자동으로 로드됩니다.

---

## 어디에 저장되나요?

AI가 메모 내용을 보고 자동으로 결정합니다.

| 내용 | 저장 위치 |
|------|-----------|
| 미팅, 회의 | `01_Projects/프로젝트명/` |
| 프로젝트 아이디어, 목표 | `01_Projects/` |
| 건강, 재정, 학습 관련 | `02_Areas/` |
| 배운 것, 읽은 것, 인사이트 | `03_Resources/주제/` |
| 오늘 할 일, 짧은 메모 | `05_Daily/오늘날짜.md` |
| 분류 모를 때 | `00_Inbox/` (나중에 정리) |

---

## Obsidian에서 보기

노트가 쌓이면 Obsidian에서:

- **파일 탐색기** → 폴더별로 정리된 노트
- **그래프 뷰** (`Ctrl+G`) → 아이디어들이 연결된 지식 지도
- **검색** (`Ctrl+F`) → 쌓인 모든 메모 전문 검색
- **홈 대시보드** → `07_Meta/Home.md` 열기

처음엔 그냥 폴더 탐색기처럼 쓰다가, 노트가 100개쯤 쌓이면 그래프 뷰를 보세요.  
자신의 생각이 어떻게 연결되는지 보이기 시작합니다.

---

## 더 알고 싶다면

- [방법론 설명](_skills/pkm-core.md) — PARA + Zettelkasten이 뭔지
- [AI 스킬 동작 방식](_skills/intake-processor.md) — 분류 로직 상세
- [Obsidian 공식 문서](https://help.obsidian.md) — 고급 기능들

---

## 기여하기

이 프로젝트가 도움이 됐다면:

- ⭐ Star
- 🍴 Fork해서 본인 버전 만들기
- 🐛 [Issue](../../issues) 로 버그/아이디어 제보

---

*OpenSynapse — Open your second brain.*
