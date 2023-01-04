# example:$ make migrate name=fuga 

migrate:
	supabase db diff --use-migra $(name) -f $(name)

# ローカルのprojectが最新の状態で行う。
reset:
	supabase db reset

mig-update-type:
	supabase gen types typescript --local > supabase/types.ts     

stop:
	supabase stop

start:
	supabase start
