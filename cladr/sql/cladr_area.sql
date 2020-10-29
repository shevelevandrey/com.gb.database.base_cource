create table area
(
    id         smallint auto_increment
        primary key,
    country_id smallint  not null,
    name       char(255) not null,
    constraint area_country_id___fk
        foreign key (country_id) references country (id)
);

INSERT INTO cladr.area (id, country_id, name) VALUES (1, 1, 'Краснодарский край');