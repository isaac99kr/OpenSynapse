---
trigger: always_on
glob: "**/*.md"
description: OpenSynapse PKM Core Rules
---

# OpenSynapse — PKM Core

## 볼트 철학
1. **하나의 볼트** — 업무, 개인, 지식, 리서치 모두 한 곳에
2. **링크 > 폴더** — 노트의 의미는 위치가 아니라 연결에서 온다
3. **빠른 캡처** — Inbox가 있으므로 분류를 미뤄도 된다
4. **원자적 노트** — 영구 노트 하나에 아이디어 하나
5. **리뷰 없이는 무덤** — 주간/월간 리뷰가 시스템을 살린다

## 폴더 구조
- **00_Inbox/**: 캡처 존. 분류 전 모든 것.
- **01_Projects/**: 목표 + 마감이 있는 작업.
- **02_Areas/**: 지속적 관리 영역. 건강, 재정, 커리어, 학습 등.
- **03_Resources/**: 주제별 지식 창고. Zettelkasten 영역.
- **04_Archive/**: 완료/비활성 보관.
- **05_Daily/**: `YYYY-MM-DD.md` 형식 데일리 노트.
- **06_Templates/**: 모든 템플릿 파일 저장 위치.
- **07_Meta/**: 홈 대시보드, MOC, 시스템 가이드.

## PARA 분류 결정 트리
1. **목표 + 마감 있음?** → `01_Projects/프로젝트명/`
2. **반복되는 책임? (건강/재정/학습)** → `02_Areas/영역명/`
3. **단일 개념 / 배운 것 / 읽은 것?** → `03_Resources/주제/`
4. **오늘 발생한 일 / 짧은 메모?** → `05_Daily/YYYY-MM-DD.md`
5. **분류 불명확** → `00_Inbox/`

## 태그 시스템
- **type/**: `permanent`, `literature`, `book`, `project`, `meeting`, `moc`, `person`, `daily`, `fleeting`, `review`
- **context/**: `work`, `personal`, `academic`, `side-project`
- **topic/**: 사용자 정의 (예: `ai`, `web-dev`, `productivity`)

## 파일명 규칙
- **미팅**: `YYYY-MM-DD-topic-name.md`
- **영구 노트**: `concept-in-kebab-case.md`
- **데일리**: `YYYY-MM-DD.md`
- **프로젝트 인덱스**: `00_index.md` (폴더 내)

## 리뷰 루틴
- **주간 리뷰**: 00_Inbox 비우기, 프로젝트 업데이트, 배운 것 → 영구 노트화
- **월간 리뷰**: 완료 프로젝트 아카이브, 영역(Areas) 점검, 노트 간 연결 강화
