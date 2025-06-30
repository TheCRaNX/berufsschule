create table data_motorrad_hersteller (
    motorrad_hersteller_id                  int auto_increment not null comment 'Primärschlüssel des Herstellers',
    ersteller                               varchar(256) not null default 'DATABASE' comment 'Nutzer welcher diesen Eintrag erstellt hat',
    erstellt_am                             timestamp not null default current_timestamp comment 'Zeitstempel des Erstellungsdatums',
    aktualisiert_von                        varchar(256) default 'DATABASE' comment 'Nutzer welcher diesen EIntrag zuletzt aktualisiert hat',
    aktualisiert_am                         timestamp default current_timestamp on update current_timestamp comment 'Zeitstempel des letzten Aktualisierungsdatums',

    name                                    varchar(256) not null comment 'Name des Herstellers',
    beschreibung                            text not null comment 'Beschreibung des Herstellers',
    herkunftsland_id                        int not null comment 'Herkunfsland Id des Herstellers. Fremdschlüssel von cmn_laender',
    gruendungsjahr                          int comment 'Gründungsjahr des Herstellers',
    aktiv                                   char(1) not null comment 'Aktivität des Herstellers. (J = Ja, N = Nein)',
    logo                                    blob comment 'Logo des Herstellers',
    logo_mime_type                          varchar(16) comment 'Mime type des Logos des Herstellers. Erlaubt sind JPG und PNG',

    
    constraint data_motorrad_hersteller_pk primary key (motorrad_hersteller_id),
    
    constraint data_motorrad_hersteller_laender_fk 
        foreign key (herkunftsland_id) references cmn_laender (land_id)
        on update cascade
        on delete cascade
) comment = 'Tabelle zum speichern von Daten über Motorrad Hersteller.';

create unique index idx_data_motorrad_hersteller_unique_name on data_motorrad_hersteller (name);

create index idx_data_motorrad_hersteller_herkunftsland_id on data_motorrad_hersteller (herkunftsland_id);

create index idx_data_motorrad_hersteller_gruendungsjahr on data_motorrad_hersteller (gruendungsjahr);