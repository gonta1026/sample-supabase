create table "public"."items_day_of_menus" (
    "id" uuid not null default uuid_generate_v4(),
    "day_of_menu_id" bigint not null,
    "created_at" timestamp with time zone not null default now(),
    "release_time" time without time zone
);


alter table "public"."items" alter column "id" set default uuid_generate_v4();

CREATE UNIQUE INDEX items_day_of_menus_pkey ON public.items_day_of_menus USING btree (id);

alter table "public"."items_day_of_menus" add constraint "items_day_of_menus_pkey" PRIMARY KEY using index "items_day_of_menus_pkey";

alter table "public"."items_day_of_menus" add constraint "items_day_of_menus_day_of_menu_id_fkey" FOREIGN KEY (day_of_menu_id) REFERENCES day_of_menus(id) not valid;

alter table "public"."items_day_of_menus" validate constraint "items_day_of_menus_day_of_menu_id_fkey";


