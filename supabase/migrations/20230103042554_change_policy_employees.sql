drop policy "Enable all access for all users" on "public"."employees";

create policy "Enable delete for authenticated users only"
on "public"."employees"
as permissive
for delete
to authenticated
using (true);


create policy "Enable insert for authenticated users only"
on "public"."employees"
as permissive
for insert
to authenticated
with check (true);


create policy "Enable read access for all users"
on "public"."employees"
as permissive
for select
to public
using (true);


create policy "Enable update for authenticated users only"
on "public"."employees"
as permissive
for update
to authenticated
using (true)
with check (true);



