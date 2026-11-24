-- MediFrame 데모 신청 테이블
-- Supabase 대시보드 → SQL Editor에 붙여넣고 Run 하세요.

create table if not exists public.demo_requests (
  id bigint generated always as identity primary key,
  created_at timestamptz not null default now(),
  company text not null check (char_length(company) between 1 and 120),
  name text check (char_length(name) <= 60),
  email text not null check (char_length(email) <= 200 and email ~* '^[^@\s]+@[^@\s]+\.[^@\s]+$'),
  message text check (char_length(message) <= 2000),
  page text check (char_length(page) <= 200)
);

alter table public.demo_requests enable row level security;

-- 누구나 신청을 "추가"만 할 수 있음. 읽기·수정·삭제 정책이 없으므로
-- 공개 키로는 신청 내역을 볼 수 없고, 대시보드(Table Editor)에서만 볼 수 있음.
drop policy if exists "anyone can submit a demo request" on public.demo_requests;
create policy "anyone can submit a demo request" on public.demo_requests
  for insert to anon with check (true);
