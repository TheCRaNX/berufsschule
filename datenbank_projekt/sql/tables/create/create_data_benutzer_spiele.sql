create table data_benutzer_spiele (
    benutzer_spiel_id                       int auto_increment not null comment 'Primärschlüssel des Spiels',
    ersteller                               varchar(256) not null default 'DATABASE' comment 'Nutzer welcher diesen Eintrag erstellt hat',
    erstellt_am                             timestamp not null default current_timestamp comment 'Zeitstempel des Erstellungsdatums',
    aktualisiert_von                        varchar(256) default 'DATABASE' comment 'Nutzer welcher diesen EIntrag zuletzt aktualisiert hat',
    aktualisiert_am                         timestamp default current_timestamp on update current_timestamp comment 'Zeitstempel des letzten Aktualisierungsdatums',

    quartett_karten_thema_id                int comment 'Quartett Karten Thema Id des Spiels. Fremschlüssel von data_quartett_karten_themen',
    spieler_1_id                            int not null comment 'Spieler 1 Id des Spiels. Fremdschlüssel von cmn_benutzer',
    spieler_2_id                            int not null comment 'Spieler 2 Id des Spiels. Fremdschlüssel von cmn_benutzer',
    spieler_3_id                            int not null comment 'Spieler 3 Id des Spiels. Fremdschlüssel von cmn_benutzer',
    spieler_4_id                            int not null comment 'Spieler 4 Id des Spiels. Fremdschlüssel von cmn_benutzer',
    gewinner_id                             int not null comment 'Spieler 5 Id des Spiels. Fremdschlüssel von cmn_benutzer',


    
    constraint data_benutzer_spiele_pk primary key (benutzer_spiel_id),
    
    constraint data_benutzer_spiele_quartett_karten_themen_fk
        foreign key (quartett_karten_thema_id) references data_quartett_karten_themen (quartett_karten_thema_id)
        on update cascade
        on delete set null,
    
    constraint data_benutzer_spiele_benutzer_spieler_1_fk 
        foreign key (spieler_1_id) references cmn_benutzer (benutzer_id)
        on update cascade
        on delete cascade,
    
    constraint data_benutzer_spiele_benutzer_spieler_2_fk 
        foreign key (spieler_2_id) references cmn_benutzer (benutzer_id)
        on update cascade
        on delete cascade,
    
    constraint data_benutzer_spiele_benutzer_spieler_3_fk 
        foreign key (spieler_3_id) references cmn_benutzer (benutzer_id)
        on update cascade
        on delete cascade,
    
    constraint data_benutzer_spiele_benutzer_spieler_4_fk 
        foreign key (spieler_4_id) references cmn_benutzer (benutzer_id)
        on update cascade
        on delete cascade,
    
    constraint data_benutzer_spiele_benutzer_gewinner_id_fk 
        foreign key (gewinner_id) references cmn_benutzer (benutzer_id)
        on update cascade
        on delete cascade
) comment = 'Tabelle zum speichern von Daten über Benutzer.';

create unique index idx_data_benutzer_spiele_unique_spieler on data_benutzer_spiele (spieler_1_id, spieler_2_id, spieler_3_id, spieler_4_id);

create index idx_data_benutzer_spiele_gewinner_id on data_benutzer_spiele (gewinner_id);