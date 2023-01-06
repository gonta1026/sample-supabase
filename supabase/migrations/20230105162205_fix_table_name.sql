alter table "public"."items_ day_of_menus" drop constraint "items_ day_of_menus_day_of_menu_id_fkey";

alter table "public"."items_ day_of_menus" drop constraint "items_ day_of_menus_item_id_fkey";

alter table "public"."items_ day_of_menus" drop constraint "items_ day_of_menus_pkey";

drop index if exists "public"."items_ day_of_menus_pkey";

drop table "public"."items_ day_of_menus";

create table "public"."items_day_of_menus" (
    "id" uuid not null default uuid_generate_v4(),
    "created_at" timestamp with time zone default now(),
    "day_of_menu_id" uuid,
    "item_id" uuid
);


alter table "public"."items_day_of_menus" enable row level security;

CREATE UNIQUE INDEX "items_ day_of_menus_pkey" ON public.items_day_of_menus USING btree (id);

alter table "public"."items_day_of_menus" add constraint "items_ day_of_menus_pkey" PRIMARY KEY using index "items_ day_of_menus_pkey";

alter table "public"."items_day_of_menus" add constraint "items_day_of_menus_day_of_menu_id_fkey" FOREIGN KEY (day_of_menu_id) REFERENCES day_of_menus(id) not valid;

alter table "public"."items_day_of_menus" validate constraint "items_day_of_menus_day_of_menu_id_fkey";

alter table "public"."items_day_of_menus" add constraint "items_day_of_menus_item_id_fkey" FOREIGN KEY (item_id) REFERENCES items(id) not valid;

alter table "public"."items_day_of_menus" validate constraint "items_day_of_menus_item_id_fkey";

-- 0e13f452-eb3a-4399-80e6-7bf49721889c
