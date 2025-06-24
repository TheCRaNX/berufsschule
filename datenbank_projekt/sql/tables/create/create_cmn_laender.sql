create table cmn_laender (
    land_id                  int auto_increment not null comment 'Primärschlüssel des Landes',
    ersteller                               varchar(256) not null default 'DATABASE' comment 'Nutzer welcher diesen Eintrag erstellt hat',
    erstellt_am                             timestamp not null default current_timestamp comment 'Zeitstempel des Erstellungsdatums',
    aktualisiert_von                        varchar(256) default 'DATABASE' comment 'Nutzer welcher diesen EIntrag zuletzt aktualisiert hat',
    aktualisiert_am                         timestamp default current_timestamp on update current_timestamp comment 'Zeitstempel des letzten Aktualisierungsdatums',

    name                                    varchar(50) not null comment 'Name des Landes',
    iso_code_2                              char(2) not null comment 'Zweistelliger ISO Code des Landes',
    kontinent_id                            int not null comment 'Kontinent des Landes',
    bevoelkerung                            bigint(19) not null comment 'Anzahl der Bevölkerung',
    land_flaeche_qkm                        int not null comment 'Landesfläche (km²) des Landes',
    breitengrad                             decimal (9, 6) not null comment 'Breitengrad des Landes',
    laengengrad                             decimal (9, 6) not null comment 'Längengrand des Landes',

    
    constraint cmn_laender_pk primary key (land_id),
    
    constraint cmn_laender_kontinente_fk 
        foreign key (kontinent_id) references cmn_kontinente (kontinent_id)
        on update cascade
        on delete cascade
) comment = 'Tabelle zum speichern von Daten über Länder.';

create unique index idx_cmn_laender_unique_iso_code_2 on cmn_laender (iso_code_2);

create index idx_cmn_laender_kontinent_id on cmn_laender (kontinent_id);

create index idx_cmn_laender_name on cmn_laender (name);

create index idx_cmn_laender_breitengrad on cmn_laender (breitengrad);

create index idx_cmn_laender_laengengrad on cmn_laender (laengengrad);