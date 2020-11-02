use geodata;

alter table _regions change region_id id int primary key auto_increment;

alter table _regions change title_ru title varchar(150) not null;
create index _regions_title_index
	on _regions (title);

alter table _regions
	add constraint _regions__countries_id_fk
		foreign key (country_id) references _countries (id);

alter table _regions drop column title_ua;
alter table _regions drop column title_be;
alter table _regions drop column title_en;
alter table _regions drop column title_es;
alter table _regions drop column title_pt;
alter table _regions drop column title_de;
alter table _regions drop column title_fr;
alter table _regions drop column title_it;
alter table _regions drop column title_pl;
alter table _regions drop column title_ja;
alter table _regions drop column title_lt;
alter table _regions drop column title_lv;
alter table _regions drop column title_cz;