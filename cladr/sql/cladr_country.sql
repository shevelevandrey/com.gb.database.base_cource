create table country
(
    id   smallint auto_increment
        primary key,
    code char(3)   not null,
    name char(255) not null,
    constraint country_code_uindex
        unique (code)
);

INSERT INTO cladr.country (id, code, name) VALUES (1, '810', 'Российская Федерация');