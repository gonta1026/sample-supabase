alter table "public"."day_of_menus" drop constraint "day_of_menus_user_id_fkey";

alter table "public"."items_day_of_menus" drop constraint "items_day_of_menus_day_of_menu_id_fkey";

alter table "public"."day_of_menus" drop constraint "day_of_menus_pkey";

alter table "public"."items_day_of_menus" drop constraint "items_day_of_menus_pkey";

drop index if exists "public"."day_of_menus_pkey";

drop index if exists "public"."items_day_of_menus_pkey";

drop table "public"."day_of_menus";

drop table "public"."items_day_of_menus";


