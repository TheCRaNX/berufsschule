create table data_motorraeder (
    motorrad_id                             int auto_increment not null comment 'Primärschlüssel des Motorrads',
    ersteller                               varchar(256) not null default 'DATABASE' comment 'Nutzer welcher diesen Eintrag erstellt hat',
    erstellt_am                             timestamp not null default current_timestamp comment 'Zeitstempel des Erstellungsdatums',
    aktualisiert_von                        varchar(256) default 'DATABASE' comment 'Nutzer welcher diesen EIntrag zuletzt aktualisiert hat',
    aktualisiert_am                         timestamp default current_timestamp on update current_timestamp comment 'Zeitstempel des letzten Aktualisierungsdatums',

    motorrad_hersteller_id                  int not null comment 'Id des Herstellers des Motorrads. Fremdschlüssel von data_hersteller',
    motorrad_baureihe_id                    int not null comment 'Id der Baureihe des Motorrads. Fremdschlüssel von data_baureihen',
    motorrad_kategorie_id                   int not null comment 'Id der Kategorie des Motorrads. Fremdschlüssel von data_kategorien',

    name                                    varchar(256) not null comment 'Name des Motorrads',
    baujahr                                 int not null comment 'Baujahr des Motorrads',
    leistung_kw                             int comment 'Leistung (kw) des Motorrads',
    drehmoment_nm                           int comment 'Drehmoment (nm) des Motorrads',
    0_auf_100_s                             int comment 'Beschleuniging von 0 auf 100km/h (s) des Motorrads',
    hoechstgeschwindigkeit_kmh              int comment 'Höchstgeschwindigkeit (km/h) des Motorrads',
    verbrauch_kml                           int comment 'Verbrauch (kilometer/liter) des Motorrads',
    laenge_mm                               int comment 'Größe (mm) des Motorrads',
    breite_mm                               int comment 'Breite (mm) des Motorrads',
    hoehe_mm                                int comment 'Höhe (mm) des Motorrads',
    sitzhoehe_mm                            int comment 'Sitzhöhe (mm) des Motorrads',
    gewicht_kg                              int comment 'Gewicht (kg) des Motorrads',
    preis_euro                              int comment 'Preis (€) des Motorrads',
    bild                                    blob comment 'Logo des Motorrads',
    bild_mime                               varchar(16) check(bild_mime in ('image/jpg', 'image/png')) comment 'Mime type des Bildes des Motorrads. Erlaubt sind JPG und PNG',
    
    constraint data_motorraeder_pk primary key (motorrad_id),
    
    constraint data_motorraeder_motorrad_hersteller_fk 
        foreign key (motorrad_hersteller_id) references data_motorrad_hersteller (motorrad_hersteller_id)
        on update cascade
        on delete cascade,
    
    constraint data_motorraeder_motorrad_baureihen_fk 
        foreign key (motorrad_baureihe_id) references data_motorrad_baureihen (motorrad_baureihe_id)
        on update cascade
        on delete cascade,
    
    constraint data_motorraeder_motorrad_kateogrien_fk 
        foreign key (motorrad_kategorie_id) references data_motorrad_kategorien (motorrad_kategorie_id)
        on update cascade
        on delete cascade
) comment = 'Tabelle zum speichern von Daten über Motorräder.';

create index idx_data_motorraeder_motorrad_hersteller_id on data_motorraeder (motorrad_hersteller_id);

create index idx_data_motorraeder_motorrad_baureihe_id on data_motorraeder (motorrad_baureihe_id);

create index idx_data_motorraeder_motorrad_kategorie_id on data_motorraeder (motorrad_kategorie_id);

create index idx_data_motorraeder_name on data_motorraeder (name);

create index idx_data_motorraeder_baujahr on data_motorraeder (baujahr);

create index idx_data_motorraeder_leistung_kw on data_motorraeder (leistung_kw);

create index idx_data_motorraeder_drehmoment_nm on data_motorraeder (drehmoment_nm);

create index idx_data_motorraeder_verbrauch_kml on data_motorraeder (verbrauch_kml);

create index idx_data_motorraeder_0_auf_100_s on data_motorraeder (0_auf_100_s);

create index idx_data_motorraeder_hoechstgeschwindigkeit_kmh on data_motorraeder (hoechstgeschwindigkeit_kmh);

create index idx_data_motorraeder_sitzhoehe_mm on data_motorraeder (sitzhoehe_mm);

create index idx_data_motorraeder_gewicht_kg on data_motorraeder (gewicht_kg);

create index idx_data_motorraeder_preis_euro on data_motorraeder (preis_euro);