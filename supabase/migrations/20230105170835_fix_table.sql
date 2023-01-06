alter table "public"."items_day_of_menus" add column "release_time" time without time zone;

alter table "public"."items_day_of_menus" disable row level security;


