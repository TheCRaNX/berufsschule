create table data_quartett_karten_motorraeder (
    quartett_karten_motorrad_id             int auto_increment not null comment 'Primärschlüssel der Karte',
    ersteller                               varchar(256) not null default 'DATABASE' comment 'Nutzer welcher diesen Eintrag erstellt hat',
    erstellt_am                             timestamp not null default current_timestamp comment 'Zeitstempel des Erstellungsdatums',
    aktualisiert_von                        varchar(256) default 'DATABASE' comment 'Nutzer welcher diesen EIntrag zuletzt aktualisiert hat',
    aktualisiert_am                         timestamp default current_timestamp on update current_timestamp comment 'Zeitstempel des letzten Aktualisierungsdatums',

    
    quartett_karten_template_id             int not null comment 'Quartett Karten Template Id der Karte. Fremdschlüssel von data_quartett_karten_templates',
    motorrad_id                             int not null comment 'Motorrad Id der Karte. Fremdschlüssel von data_motorraeder',

    constraint data_quartett_karten_motorraeder_pk primary key (quartett_karten_motorrad_id),
    
    constraint data_quartett_karten_motorraeder_karten_templates_fk 
        foreign key (quartett_karten_template_id) references data_quartett_karten_templates (quartett_karten_template_id)
        on update cascade
        on delete cascade,
    
    constraint data_quartett_karten_motorraeder_motorraeder_fk 
        foreign key (motorrad_id) references data_motorraeder (motorrad_id)
        on update cascade
        on delete cascade
) comment = 'Tabelle zum speichern von Daten über Motorrad Quartett Karten.';

create unique index idx_data_quartett_karten_motorraeder_unique_motorrad_id on data_quartett_karten_motorraeder (motorrad_id);