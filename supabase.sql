-- =====================================================================
-- Seviye tespit sınavı — Supabase kurulumu
-- SQL Editor → New query → bu dosyanın TAMAMINI yapıştırıp Run.
-- "Success. No rows returned" yazmalı.
-- =====================================================================

-- 1) Sonuç tablosu ------------------------------------------------------
create table if not exists public.results (
  id          uuid primary key default gen_random_uuid(),
  created_at  timestamptz not null default now(),

  -- aday
  name        text not null,
  phone       text,
  email       text,
  groupname   text,

  -- oturum
  minutes     int,
  blanks      int,
  words       int,
  ua          text,

  -- puanlar
  answers     jsonb,   -- ham cevaplar (denetim ve yeniden puanlama için)
  sections    jsonb,   -- {"p1":20,"p2":18,...}
  levels      jsonb,   -- {"1":[15,15],"2":[24,29],...}
  auto        int not null,
  writing     int,     -- öğretmen puanlayana kadar boş
  wtext       text,
  level       text
);

create index if not exists results_created_at_idx on public.results (created_at desc);
create index if not exists results_name_idx       on public.results (lower(name));

-- 2) Satır güvenliği ----------------------------------------------------
alter table public.results enable row level security;

-- Aday (anon): yalnızca yeni sonuç yazabilir. Okuyamaz, değiştiremez, silemez.
drop policy if exists "aday sonuc yazabilir" on public.results;
create policy "aday sonuc yazabilir"
  on public.results for insert to anon
  with check (true);

-- Personel (authenticated): hepsini görür, yazma puanı girer, silebilir.
drop policy if exists "personel okur" on public.results;
create policy "personel okur"
  on public.results for select to authenticated
  using (true);

drop policy if exists "personel gunceller" on public.results;
create policy "personel gunceller"
  on public.results for update to authenticated
  using (true) with check (true);

drop policy if exists "personel siler" on public.results;
create policy "personel siler"
  on public.results for delete to authenticated
  using (true);

-- 3) API izinleri -------------------------------------------------------
-- Proje kurulurken "Automatically expose new tables" kapatıldıysa tablo
-- Data API'ye kendiliğinden açılmaz; gereken izinleri burada tek tek
-- veriyoruz. Açık bırakıldıysa da bu satırlar zarar vermez.
grant usage on schema public to anon, authenticated;

grant insert                  on public.results to anon;
grant select, update, delete  on public.results to authenticated;

-- Adayın başkasının sonucunu okuyamadığından emin olalım.
revoke select, update, delete on public.results from anon;

-- =====================================================================
-- Bitti. Sıradaki adım: Authentication → Users → Add user ile kendinize
-- bir öğretmen hesabı açın (Auto Confirm User işaretli olsun).
-- =====================================================================
