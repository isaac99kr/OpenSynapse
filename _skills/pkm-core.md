---
name: opensynapse-pkm-core
version: 1.0.0
description: >
  OpenSynapse 볼트의 핵심 정의.
  폴더 구조, 노트 유형, 템플릿, 태그 시스템을 정의합니다.
  모든 툴(Claude, Antigravity, Cursor)의 공통 참조 소스입니다.
---

# OpenSynapse — PKM Core

## 볼트 철학

1. **하나의 볼트** — 업무, 개인, 지식, 리서치 모두 한 곳에
2. **링크 > 폴더** — 노트의 의미는 위치가 아니라 연결에서 온다
3. **빠른 캡처** — Inbox가 있으므로 분류를 미뤄도 된다
4. **원자적 노트** — 영구 노트 하나에 아이디어 하나
5. **리뷰 없이는 무덤** — 주간/월간 리뷰가 시스템을 살린다

---

## 폴더 구조

```
00_Inbox/          캡처 존. 분류 전 모든 것. 주간 리뷰에서 처리.
01_Projects/       목표 + 마감이 있는 작업. 완료 시 Archive로.
02_Areas/          지속적 관리 영역. 건강, 재정, 커리어, 학습 등.
03_Resources/      주제별 지식 창고. Zettelkasten 영역. (하위 폴더는 사용자가 추가)
  예: AI-ML/, Web-Dev/, Productivity/, Writing/ 등
04_Archive/        완료/비활성. 삭제하지 말 것. 검색 가능하게 보존.
05_Daily/          YYYY-MM-DD.md 형식 데일리 노트.
06_Templates/      모든 템플릿. AI가 참조. 수동 수정 가능.
07_Meta/           홈 대시보드, MOC, 이 가이드.
_skills/           AI 스킬 정의. 직접 수정해서 커스터마이징.
```

---

## PARA 분류 결정 트리

```
입력 받음
    │
    ├─ 목표 + 마감 있음? ──────────────→ 01_Projects/프로젝트명/
    │
    ├─ 반복되는 책임? (건강/재정/학습) → 02_Areas/영역명/
    │
    ├─ 단일 개념 / 배운 것 / 읽은 것? → 03_Resources/주제/
    │
    ├─ 오늘 발생한 일 / 짧은 메모? ──→ 05_Daily/YYYY-MM-DD.md에 추가
    │
    └─ 분류 불명확 ────────────────────→ 00_Inbox/
```

---

## 노트 유형별 템플릿

템플릿 본문은 중복을 피하기 위해 `06_Templates/`의 실제 파일을 **단일 원본**으로 둡니다.

| 노트 타입 | 템플릿 파일 |
|---|---|
| daily | `[[06_Templates/daily-note]]` |
| permanent | `[[06_Templates/permanent-note]]` |
| meeting | `[[06_Templates/meeting]]` |
| project | `[[06_Templates/project-index]]` |
| literature | `[[06_Templates/literature-note]]` |
| book | `[[06_Templates/book-note]]` |
| fleeting (Inbox) | `[[06_Templates/fleeting-note]]` |
| weekly review | `[[06_Templates/weekly-review]]` |
| monthly review | `[[06_Templates/monthly-review]]` |
| area index | `[[06_Templates/area-index]]` |
| moc | `[[06_Templates/moc]]` |
| person | `[[06_Templates/person]]` |

---

## 태그 시스템

```yaml
# 노트 유형 (필수, 1개)
type/permanent     # 원자적 지식 노트
type/literature    # 외부 소스 요약
type/book          # 도서 노트
type/project       # 프로젝트 관련
type/meeting       # 미팅 기록
type/area          # 관리 영역 인덱스
type/moc           # Map of Content (주제 허브)
type/person        # 사람/연락처 노트
type/daily         # 데일리 노트
type/review        # 리뷰 노트 (weekly/monthly)
type/fleeting      # 미처리 캡처

# 리뷰 세부 구분 (type/review와 함께)
review/weekly
review/monthly

# 컨텍스트 (1개)
context/work
context/personal
context/academic
context/side-project

# 주제 (1-2개, 사용자 정의)
topic/ai
topic/web-dev
topic/productivity
topic/writing
topic/strategy
topic/personal-growth
```

---

## 파일명 규칙

```
미팅:      YYYY-MM-DD-topic-name.md
영구 노트: concept-in-kebab-case.md
데일리:    YYYY-MM-DD.md
프로젝트:  00_index.md (프로젝트 폴더 내)
```

---

## 리뷰 루틴

**주간 (금요일, 30분)**
- 00_Inbox → 제로로 비우기
- 활성 프로젝트 상태 업데이트
- 이번 주 배운 것 → 영구 노트로

**월간 (1일, 1시간)**
- 완료 프로젝트 → 04_Archive
- Areas 점검
- 고립된 노트 찾아 연결
