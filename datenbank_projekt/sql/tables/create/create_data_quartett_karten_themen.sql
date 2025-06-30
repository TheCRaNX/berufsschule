create table data_quartett_karten_themen (
    quartett_karten_thema_id                int auto_increment not null comment 'Primärschlüssel des Quartett Karten Themas',
    ersteller                               varchar(256) not null default 'DATABASE' comment 'Nutzer welcher diesen Eintrag erstellt hat',
    erstellt_am                             timestamp not null default current_timestamp comment 'Zeitstempel des Erstellungsdatums',
    aktualisiert_von                        varchar(256) default 'DATABASE' comment 'Nutzer welcher diesen EIntrag zuletzt aktualisiert hat',
    aktualisiert_am                         timestamp default current_timestamp on update current_timestamp comment 'Zeitstempel des letzten Aktualisierungsdatums',

    name                                    varchar(256) not null comment 'Name des Quartett Karten Themas',
    beschreibung                            text not null comment 'Beschreibung des Quartett Karten Themas',
    
    constraint data_quartett_karten_themen_pk primary key (quartett_karten_thema_id)
) comment = 'Tabelle zum speichern von Daten über Quartett Karten Themen.';

create unique index idx_data_quartett_karten_themen_unique_name on data_quartett_karten_themen (name);