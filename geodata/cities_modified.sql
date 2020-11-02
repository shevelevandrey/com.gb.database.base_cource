use geodata;

alter table _cities change city_id id int primary key auto_increment;

alter table _cities change title_ru title varchar(150) not null;
create index _cities_title_index
	on _cities (title);

alter table _cities
	add constraint _cities__countries_id_fk
		foreign key (country_id) references _countries (id);

alter table _cities
	add constraint _cities__regions_id_fk
		foreign key (region_id) references _regions (id);

alter table _cities drop column area_ru;
alter table _cities drop column region_ru;
alter table _cities drop column title_ua;
alter table _cities drop column area_ua;
alter table _cities drop column region_ua;
alter table _cities drop column title_be;
alter table _cities drop column area_be;
alter table _cities drop column region_be;
alter table _cities drop column title_en;
alter table _cities drop column area_en;
alter table _cities drop column region_en;
alter table _cities drop column title_es;
alter table _cities drop column area_es;
alter table _cities drop column region_es;
alter table _cities drop column title_pt;
alter table _cities drop column area_pt;
alter table _cities drop column region_pt;
alter table _cities drop column title_de;
alter table _cities drop column area_de;
alter table _cities drop column region_de;
alter table _cities drop column title_fr;
alter table _cities drop column area_fr;
alter table _cities drop column region_fr;
alter table _cities drop column title_it;
alter table _cities drop column area_it;
alter table _cities drop column region_it;
alter table _cities drop column title_pl;
alter table _cities drop column area_pl;
alter table _cities drop column region_pl;
alter table _cities drop column title_ja;
alter table _cities drop column area_ja;
alter table _cities drop column region_ja;
alter table _cities drop column title_lt;
alter table _cities drop column area_lt;
alter table _cities drop column region_lt;
alter table _cities drop column title_lv;
alter table _cities drop column area_lv;
alter table _cities drop column region_lv;
alter table _cities drop column title_cz;
alter table _cities drop column area_cz;
alter table _cities drop column region_cz;
