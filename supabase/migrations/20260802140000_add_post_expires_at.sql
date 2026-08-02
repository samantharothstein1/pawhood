alter table public.posts
  add column if not exists expires_at timestamptz;
