alter table public.dog_status enable row level security;

create policy "dog_status_select_all" on public.dog_status
  for select using (true);

create policy "dog_status_insert_own" on public.dog_status
  for insert with check (auth.uid() = user_id);

create policy "dog_status_delete_own" on public.dog_status
  for delete using (auth.uid() = user_id);
