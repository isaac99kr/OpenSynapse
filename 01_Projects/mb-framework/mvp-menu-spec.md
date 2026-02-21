---
created: 2025-02-21
tags: [type/project, topic/banking, topic/product]
---

# MVP Menu Specification

MB Framework 기능 목록. 레퍼런스 및 출처 표기.

---

## A. Login
**출처:** Mobile Framework

| 기능 | 설명 |
|------|------|
| Login | 일반 로그인 |
| Forgot Password | 비밀번호 찾기 |
| Biometric Login | 지문/얼굴 로그인 |
| Pattern Login | 패턴 로그인 |
| Register | 회원가입 |

---

## B. Home
**출처:** Mobile Framework, OK, 기타 은행

| 기능 | 설명 |
|------|------|
| Account Info (Dashboard) | 계좌 요약, 잔액, 빠른 액션 |

---

## C. History / Inquiry
**레퍼런스:** OK, 기타 은행

| 기능 | 설명 |
|------|------|
| History Inquiry | 거래/활동 내역 조회 |
| Transaction Detail (Slip) | 거래 상세/영수증 |
| Account Info | 계좌 상세·거래명세서 |

---

## D. Transfer
**레퍼런스:** OK, 기타 은행

| 기능 | 설명 |
|------|------|
| Same Bank | 동일 은행 이체 |
| Other Bank | 타행 이체 |
| BI-fast | BI-fast 이체 |
| LLG | LLG 이체 |
| Scheduled | 예약/정기 이체 |

---

## E. Saving Account
**출처:** Mobile Framework (오프라인 지원)

| 기능 | 설명 |
|------|------|
| Time Deposit | 정기예금 가입·관리 |

---

## F. Online Top-up & Bill Payment
**레퍼런스:** GoTagihan (GoPay / GoJek)

| 기능 | 설명 |
|------|------|
| Online Purchase | 온라인 결제·충전 |
| Bill Payment | 공과금·빌 결제 (GoTagihan 스타일) |

---

## G. *(Reserved)*
*(현재 미정의)*

---

## H. QRIS
**레퍼런스:** OK, 기타 은행

| 기능 | 설명 |
|------|------|
| QRIS | QRIS 결제/스캔페이 |

---

## I. Map
**레퍼런스:** OK, 기타 은행

| 기능 | 설명 |
|------|------|
| Find Network | 지점/ATM 검색, 내 주변 지점·ATM |

---

## J. Admin (설정)
**출처:** 앱 설정

| 기능 | 설명 |
|------|------|
| Language | 앱 언어 |
| Preferred Login Option | 기본 로그인 방식 (비밀번호/패턴/생체) |
| Change Password | 비밀번호 변경 |
| Register / Change Pattern | 패턴 등록·변경 |
| Biometric on/off | 생체인증 사용 여부 |

---

## K. New Feature
**레퍼런스:** OK, Superbank

| 기능 | 설명 |
|------|------|
| e-KYC | 전자 KYC |
| OCR KTP Scan | KTP(주민등록증) 스캔·정보 추출 |

---

## 요약 매트릭스

| 섹션 | 모듈 | 주요 레퍼런스 |
|------|------|----------------|
| A | Login | Mobile Framework |
| B | Home | Mobile Framework, OK, 기타 은행 |
| C | History/Inquiry | OK, 기타 은행 |
| D | Transfer | OK, 기타 은행 |
| E | Saving Account | Mobile Framework (오프라인) |
| F | Top-up & Bill | GoTagihan, GoPay, GoJek |
| H | QRIS | OK, 기타 은행 |
| I | Map | OK, 기타 은행 |
| J | Admin | — |
| K | e-KYC / OCR | OK, Superbank |

---

*PARA 분류: 01_Projects/mb-framework. [[00_index]]*
