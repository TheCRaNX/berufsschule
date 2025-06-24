create table cmn_kontinente (
    kontinent_id                            int auto_increment not null comment 'Primärschlüssel des Kontinents',
    ersteller                               varchar(256) not null default 'DATABASE' comment 'Nutzer welcher diesen Eintrag erstellt hat',
    erstellt_am                             timestamp not null default current_timestamp comment 'Zeitstempel des Erstellungsdatums',
    aktualisiert_von                        varchar(256) default 'DATABASE' comment 'Nutzer welcher diesen EIntrag zuletzt aktualisiert hat',
    aktualisiert_am                         timestamp default current_timestamp on update current_timestamp comment 'Zeitstempel des letzten Aktualisierungsdatums',

    name                                    varchar(256) not null comment 'Name des Kontinents',

    
    constraint cmn_kontinente_pk primary key (kontinent_id)
) comment = 'Tabelle zum speichern von Daten über Kontinente.';

create index idx_cmn_kontinente_name on cmn_kontinente (name);