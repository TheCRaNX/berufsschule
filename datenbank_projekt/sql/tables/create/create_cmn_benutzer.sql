create table cmn_benutzer (
    benutzer_id                             int auto_increment not null comment 'Primärschlüssel des Benutzers',
    ersteller                               varchar(256) not null default 'DATABASE' comment 'Nutzer welcher diesen Eintrag erstellt hat',
    erstellt_am                             timestamp not null default current_timestamp comment 'Zeitstempel des Erstellungsdatums',
    aktualisiert_von                        varchar(256) default 'DATABASE' comment 'Nutzer welcher diesen EIntrag zuletzt aktualisiert hat',
    aktualisiert_am                         timestamp default current_timestamp on update current_timestamp comment 'Zeitstempel des letzten Aktualisierungsdatums',

    name                                    varchar(256) not null comment 'Name des Benutzers',
    email_adresse                           varchar(256) not null comment 'Email Adresse des Benutzers',
    passwort                                varchar(1024) not null comment 'Verschlüsseltes Passwort des Benutzers.',
    
    constraint cmn_benutzer_pk primary key (benutzer_id)
) comment = 'Tabelle zum speichern von Daten über Benutzer.';

create unique index idx_cmn_benutzer_unique_name on cmn_benutzer (name);

create unique index idx_cmn_benutzer_unique_email_adresse on cmn_benutzer (email_adresse);