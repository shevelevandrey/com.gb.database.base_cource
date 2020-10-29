create table locality_type
(
    id         tinyint auto_increment
        primary key,
    defenition char(25) not null,
    constraint locality_type_defenition_uindex
        unique (defenition)
);

INSERT INTO cladr.locality_type (id, defenition) VALUES (1, 'Город');
INSERT INTO cladr.locality_type (id, defenition) VALUES (2, 'Деревня');
INSERT INTO cladr.locality_type (id, defenition) VALUES (4, 'Посёлок');
INSERT INTO cladr.locality_type (id, defenition) VALUES (3, 'Станица');