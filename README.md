# MediFrame 랜딩페이지

식약처·FDA·CE 인허가 문서를 AI로 자동 생성하는 의료기기 규제문서 자동화 서비스 **MediFrame**의 랜딩페이지입니다.

- 라이브: https://lichardkim-create.github.io/mediframe-landing/
- `index.html`: 정적 배포본. 빌드 과정 없이 바로 열리는 페이지이고, 모바일과 다크 모드를 지원합니다.
- `preview.jpg`: 데스크톱 1440px 미리보기
- `assets/logo-symbol.png`: 로고 심볼 (배경 투명, 라이트·다크 공용)
- `assets/app-icon.png`: 앱 아이콘 (파비콘)

## 브랜드

색과 서체는 MediFrame 로고에 맞췄습니다. 시안 `#12b5f2` → 블루 `#1f5bf0` → 인디고 `#3a14e0` 그라디언트를 버튼·강조어·CTA에 쓰고, 글자는 로고 워드마크의 네이비 `#0b1650`입니다. 제목 서체는 Outfit, 본문은 IBM Plex Sans KR입니다. 로고 하단 문구(HEALTHCARE ADVERTISING PLATFORM)는 페이지 내용과 맞지 않아 쓰지 않았습니다.

![preview](preview.jpg)

## 페이지 구성

1. 첫 화면: 요구사항 추적 매트릭스 예시
2. 문제 정의: 국내 중소 제조사 현황
3. 4단계 프로세스: 업로드 → AI 분석·매핑 → 제출 파일 생성 → CAPA·정합성 검토
4. AI 엔진: 입력 → 처리(3단계 검증) → 출력
5. 대시보드 예시 화면
6. 지원 규격 (ISO 13485, ISO 14971, IEC 60601, IEC 62304, IEC 62366, ISO 10993, ISO 14155)
7. 대상 고객
8. 데모 신청 양식

## 데모 신청 접수 (Supabase)

양식은 Supabase의 `demo_requests` 테이블에 신청을 저장합니다. 처음 한 번 아래처럼 연결하세요.

1. Supabase에서 새 프로젝트를 만듭니다.
2. SQL Editor에 `supabase/demo_requests.sql` 내용을 붙여넣고 Run 합니다.
3. Project Settings → API Keys에서 Project URL과 Publishable key(`sb_publishable_...`)를 복사합니다.
4. `index.html` 아래쪽 `<script>`의 `SUPABASE_URL`, `SUPABASE_KEY`에 넣고 커밋합니다.

신청 내역은 Supabase 대시보드 → Table Editor → `demo_requests`에서 봅니다. 공개 키로는 신청을 추가만 할 수 있고 내역을 읽을 수 없습니다. 연결 전에는 양식이 "아직 연결되지 않았습니다"라고 안내합니다.

## 이전 버전

`source/Main.dc.html`은 이전 버전(병의원 마케팅 파트너 소개 페이지)의 디자인 원본입니다. 이전 배포본은 git 기록의 첫 커밋(`920affc`)에 있습니다.
