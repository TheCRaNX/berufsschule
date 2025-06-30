create table data_quartett_karten_templates (
    quartett_karten_template_id                       int auto_increment not null comment 'Primärschlüssel des Quartett Karten Templates',
    ersteller                               varchar(256) not null default 'DATABASE' comment 'Nutzer welcher diesen Eintrag erstellt hat',
    erstellt_am                             timestamp not null default current_timestamp comment 'Zeitstempel des Erstellungsdatums',
    aktualisiert_von                        varchar(256) default 'DATABASE' comment 'Nutzer welcher diesen EIntrag zuletzt aktualisiert hat',
    aktualisiert_am                         timestamp default current_timestamp on update current_timestamp comment 'Zeitstempel des letzten Aktualisierungsdatums',

    
    quartett_karten_thema_id                int not null comment 'Quartentt Karten Thema Id des Quartett Karten Templates. Fremdschlüssel von data_quartett_karten_themen',
    karten_attribute                        json not null comment 'Kartenattribute des Quartett Karten Templates.',

    constraint data_quartett_karten_templates_pk primary key (quartett_karten_template_id),
    
    constraint data_quartett_karten_templates_themen_fk 
        foreign key (quartett_karten_thema_id) references data_quartett_karten_themen (quartett_karten_thema_id)
        on update cascade
        on delete cascade


) comment = 'Tabelle zum speichern von Daten über Quartett Karten Templates.';

create unique index idx_data_quartett_karten_templates_unique_karten_thema_id on data_quartett_karten_templates (quartett_karten_thema_id);