create table data_motorrad_baureihen (
    motorrad_baureihe_id                    int auto_increment not null comment 'Primärschlüssel der Motorrad Baureihe',
    ersteller                               varchar(256) not null default 'DATABASE' comment 'Nutzer welcher diesen Eintrag erstellt hat',
    erstellt_am                             timestamp not null default current_timestamp comment 'Zeitstempel des Erstellungsdatums',
    aktualisiert_von                        varchar(256) default 'DATABASE' comment 'Nutzer welcher diesen EIntrag zuletzt aktualisiert hat',
    aktualisiert_am                         timestamp default current_timestamp on update current_timestamp comment 'Zeitstempel des letzten Aktualisierungsdatums',

    motorrad_hersteller_id                  int not null comment 'Id des Herstellers der Baureihe. Fremdschlüssel von data_motorrad_hersteller',
    
    bezeichnung                             varchar(256) not null comment 'Bezeichnung der Motorrad Baureihe',
    beschreibung                            text not null comment 'Beschreibung der Motorrad Baureihe',
    motorytyp                               varchar(64) not null comment 'Motortyp der Motorrad Baureihe',
    hubraum_ccm                             int not null comment 'Hubraum der Motorrad Baureihe',
    baujahr_beginn                          int comment 'Baurjahr beginn der Motorrad Baureihe',
    baujahr_ende                            int comment 'Baurjahr ende der Motorrad Baureihe',
    vorgaenger_id                           int comment 'Nachfolger der Motorrad Baureihe. Fremdschlüssel von data_motorrad_baureihen',

    
    constraint data_motorrad_baureihen_pk primary key (motorrad_baureihe_id),
    
    constraint data_motorrad_baureihen_motorrad_hersteller_fk 
        foreign key (motorrad_hersteller_id) references data_motorrad_hersteller (motorrad_hersteller_id)
        on update cascade
        on delete cascade,
    
    constraint data_motorrad_baureihen_vorgaenger_id_fk 
        foreign key (vorgaenger_id) references data_motorrad_baureihen (motorrad_baureihe_id)
        on update cascade
        on delete cascade
) comment = 'Tabelle zum speichern von Daten über Motorrad Baureihen.';

create index idx_data_motorrad_baureihen_bezeichnung on data_motorrad_baureihen (bezeichnung);

create index idx_data_motorrad_baureihen_motorytyp on data_motorrad_baureihen (motorytyp);

create index idx_data_motorrad_baureihen_hubraum_ccm on data_motorrad_baureihen (hubraum_ccm);

create index idx_data_motorrad_baureihen_baujahr_beginn on data_motorrad_baureihen (baujahr_beginn);

create index idx_data_motorrad_baureihen_baujahr_ende on data_motorrad_baureihen (baujahr_ende);

create index idx_data_motorrad_baureihen_vorgaenger_id on data_motorrad_baureihen (vorgaenger_id);