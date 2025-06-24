create table data_motorrad_kategorien (
    motorrad_kategorie_id                   int auto_increment not null comment 'Primärschlüssel der Motorrad Kategorie',
    ersteller                               varchar(256) not null default 'DATABASE' comment 'Nutzer welcher diesen Eintrag erstellt hat',
    erstellt_am                             timestamp not null default current_timestamp comment 'Zeitstempel des Erstellungsdatums',
    aktualisiert_von                        varchar(256) default 'DATABASE' comment 'Nutzer welcher diesen EIntrag zuletzt aktualisiert hat',
    aktualisiert_am                         timestamp default current_timestamp on update current_timestamp comment 'Zeitstempel des letzten Aktualisierungsdatums',
    
    name                                    varchar(256) not null comment 'Name der Motorrad Kategorie',
    beschreibung                            text not null comment 'Beschreibung der Motorrad Kategorie',

    
    constraint data_motorrad_kategorien_pk primary key (motorrad_kategorie_id)
) comment = 'Tabelle zum speichern von Daten über Motorrad Kategorien.';

create index idx_data_motorrad_kategorien_name on data_motorrad_kategorien (name);