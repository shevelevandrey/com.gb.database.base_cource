create table locality
(
    id               int auto_increment
        primary key,
    area_id          smallint  not null,
    region_id        int       null,
    locality_type_id tinyint   not null,
    name             char(255) not null,
    constraint locality_area_id___fk
        foreign key (area_id) references area (id),
    constraint locality_region_id___fk
        foreign key (region_id) references region (id),
    constraint locality_type_id___fk
        foreign key (locality_type_id) references locality_type (id)
);

INSERT INTO cladr.locality (id, area_id, region_id, locality_type_id, name) VALUES (4, 1, null, 1, 'Краснодар');
INSERT INTO cladr.locality (id, area_id, region_id, locality_type_id, name) VALUES (5, 1, null, 1, 'Ейск');
INSERT INTO cladr.locality (id, area_id, region_id, locality_type_id, name) VALUES (6, 1, 3, 4, 'Широчанка');
INSERT INTO cladr.locality (id, area_id, region_id, locality_type_id, name) VALUES (7, 1, 3, 3, 'Ясенская');