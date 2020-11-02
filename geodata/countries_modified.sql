use geodata;

alter table _countries change country_id id int primary key auto_increment;

alter table _countries change title_ru title varchar(150) not null;
create index _countries_title_index
	on _countries (title);

alter table _countries drop column title_ua;
alter table _countries drop column title_be;
alter table _countries drop column title_en;
alter table _countries drop column title_es;
alter table _countries drop column title_pt;
alter table _countries drop column title_de;
alter table _countries drop column title_fr;
alter table _countries drop column title_it;
alter table _countries drop column title_pl;
alter table _countries drop column title_ja;
alter table _countries drop column title_lt;
alter table _countries drop column title_lv;
alter table _countries drop column title_cz;