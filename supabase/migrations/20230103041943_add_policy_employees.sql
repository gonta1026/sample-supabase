alter table "public"."employees" enable row level security;

create policy "Enable all access for all users"
on "public"."employees"
as permissive
for all
to public
using (true)
with check (true);



