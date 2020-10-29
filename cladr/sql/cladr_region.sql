create table region
(
    id      int auto_increment
        primary key,
    area_id smallint  null,
    name    char(255) not null,
    constraint region_area_id___fk
        foreign key (area_id) references area (id)
);

INSERT INTO cladr.region (id, area_id, name) VALUES (3, 1, 'Ейский район');