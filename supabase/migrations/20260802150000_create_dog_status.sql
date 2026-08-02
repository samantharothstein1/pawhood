create table if not exists public.dog_status (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null,
  dog_id uuid not null,
  content text not null,
  emoji text,
  location text,
  neighborhood text not null,
  created_at timestamptz not null default now(),
  expires_at timestamptz
);

create index if not exists dog_status_neighborhood_idx on public.dog_status (neighborhood, created_at desc);
create index if not exists dog_status_user_idx on public.dog_status (user_id, created_at desc);
