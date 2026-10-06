-- Run in Supabase → SQL Editor
create table public.beta_signups (
  id uuid primary key default gen_random_uuid(),
  created_at timestamptz not null default now(),
  email text not null unique check (email ~* '^[^@\s]+@[^@\s]+\.[^@\s]+$'),
  name text not null,
  city text, neighborhood text, role text, company text, industry text,
  goals text[], talk text, interesting text,
  free_parts int[], radius_km int,
  ref_code text, referred_by text,
  consent boolean not null check (consent),
  source text
);
alter table public.beta_signups enable row level security;
-- Visitors can sign up. No select/update/delete policy = nobody can read the list from the browser.
create policy "anyone can sign up" on public.beta_signups for insert to anon with check (consent = true);
-- Read your list in Table Editor, or run:
-- select city, count(*) from beta_signups group by 1 order by 2 desc;
-- Top referrers: select referred_by, count(*) from beta_signups where referred_by is not null group by 1 order by 2 desc;
