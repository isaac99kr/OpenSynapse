---
updated: 2025-02-21
tags: [type/meta, type/review]
---

# 시스템 상태 요약

OpenSynapse 볼트·설정·Git 정책 한눈에 보기.

---

## 1. 시스템 세팅 현황

| 항목 | 상태 |
|------|------|
| **PKM 규칙** | `.agent/rules/pkm.md` — PARA, 태그, 파일명 규칙 |
| **워크플로우** | `.agent/workflows/` — intake(분류), daily(데일리), review(Inbox 정리) |
| **Obsidian 앱** | `app.json` — 비어 있음 `{}` |
| **Obsidian 테마** | `appearance.json` — 비어 있음 `{}` |
| **코어 플러그인** | `core-plugins.json` — file-explorer, graph, daily-notes, templates, sync 등 활성 |
| **Git** | PARA(00~07) **전부 추적** — 메모가 저장소에 포함됨 |

---

## 2. .gitignore 변경 사항 (2025-02-21)

- **제거됨**: `00_Inbox/*`, `01_Projects/*`, `02_Areas/*`, `03_Resources/**/*`, `04_Archive/*`, `05_Daily/*`, `07_Meta/attachments/` 및 해당 `.gitkeep` 예외
- **결과**: **PARA 폴더(00~07) 제한 해제** — 메모·프로젝트·리소스가 Git에 커밋됨
- **유지**: `.obsidian/workspace.json`, `plugins/`, `cache/`, `snippets/`, OS 잡파일

---

## 3. PARA 폴더별 현재 상태

| 폴더 | 용도 | 현재 내용 요약 |
|------|------|----------------|
| **00_Inbox** | 미분류 캡처 | .gitkeep (비어 있음) |
| **01_Projects** | 목표·마감 있는 작업 | **mb-framework** — 00_index, mvp-menu-spec, mobile-app-security-strategy-report |
| **02_Areas** | 지속 관리 영역 | .gitkeep |
| **03_Resources** | 주제별 지식 | .gitkeep |
| **04_Archive** | 완료/비활성 보관 | .gitkeep |
| **05_Daily** | 데일리 노트 | .gitkeep |
| **06_Templates** | 템플릿 | daily-note, project-index, meeting, permanent-note 등 11개 |
| **07_Meta** | 대시보드·시스템 | Home.md, System-Status.md, .gitkeep |

---

## 4. .agent 구조

```
.agent/
├── rules/
│   └── pkm.md          # PARA·태그·파일명·리뷰 루틴
└── workflows/
    ├── intake.md       # 입력 → 분류·저장
    ├── daily.md        # 데일리 노트 생성/추가
    └── review.md       # Inbox → PARA 정리
```

---

## 5. 한 줄 요약

- **설정**: PKM + intake/daily/review 워크플로우 적용, Obsidian 기본 설정만 사용
- **Git**: PARA(00~07) 전체가 저장소에 포함되어 메모 백업 가능
- **프로젝트**: MB Framework(메뉴 스펙·보안 전략)가 01_Projects에 정리됨

---

*다음 리뷰 시 이 문서를 갱신하면 전체 상태를 빠르게 점검할 수 있습니다.*
