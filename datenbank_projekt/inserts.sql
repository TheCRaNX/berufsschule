-- 1. Auflistung der E-Mail Adressen aller Nutzer
select email_adresse
from cmn_benutzer
order by email_adresse;

-- 2. Auflistung aller Motorradkategorien
select name
from data_motorrad_kategorien
order by name;

-- 3. Auflistung aller Motorräder mit "GSX S1000" im Namen
select name
from data_motorraeder
where name like '%GSX S1000%'
order by name;

-- 4. Auflistung der Gewinner aller Spiele
select 
	bs.benutzer_spiel_id as spiel_nummer,
	b.name as gewinner
from cmn_benutzer b, data_benutzer_spiele bs
where b.benutzer_id = bs.gewinner_id
order by bs.benutzer_spiel_id;

-- 5. Auflistung der Kartenatribute aller Themen
select 
	qkth.name as thema,
    qkte.karten_attribute as attribute
from data_quartett_karten_themen qkth, data_quartett_karten_templates qkte
where qkth.quartett_karten_thema_id = qkte.quartett_karten_thema_id
order by qkth.name;

-- 6. Auflistung aller Motorrad Baureihen, welche noch produziert werden
select 
	mh.name as hersteller,
    mb.bezeichnung as baureihe,
    mb.baujahr_beginn,
    mb.baujahr_ende
from data_motorrad_hersteller mh, data_motorrad_baureihen mb
where mh.motorrad_hersteller_id = mb.motorrad_hersteller_id
	and mb.baujahr_ende is null;

-- 7. Auflistung aller Motorräder geordnet nach Kategorie
select 
    mk.name as kategorie,
	m.name as motorrad
from data_motorraeder m, data_motorrad_kategorien mk
where m.motorrad_kategorie_id = mk.motorrad_kategorie_id
order by mk.name, m.name;

-- 8. Auflistung aller Kontinente und Länder
select 
    k.name as kontinent,
    l.name as land
from cmn_laender l
inner join cmn_kontinente k on l.kontinent_id = k.kontinent_id;

-- 9. Auflistung der Spielteilnehmer aller Spiele
select 
	bs.benutzer_spiel_id as spiel_nummer,
	b1.name as spieler_1,
	b2.name as spieler_2,
	b3.name as spieler_3,
	b4.name as spieler_4
from data_benutzer_spiele bs
inner join cmn_benutzer b1 on bs.spieler_1_id = b1.benutzer_id
inner join cmn_benutzer b2 on bs.spieler_2_id = b2.benutzer_id
inner join cmn_benutzer b3 on bs.spieler_3_id = b3.benutzer_id
inner join cmn_benutzer b4 on bs.spieler_4_id = b4.benutzer_id
order by bs.benutzer_spiel_id;

-- 10. Auflistung der Themen aller Spiele
select 
	bs.benutzer_spiel_id as spiel_nummer,
	qkt.name
from data_benutzer_spiele bs
inner join data_quartett_karten_themen qkt on bs.quartett_karten_thema_id = qkt.quartett_karten_thema_id
order by bs.benutzer_spiel_id;

-- 11. Auflistung aller Motorräder aus Asien
select
	m.name as motorrad
from data_motorraeder m
inner join data_motorrad_baureihen mb on m.motorrad_baureihe_id = mb.motorrad_baureihe_id
inner join data_motorrad_hersteller mh on m.motorrad_hersteller_id = mh.motorrad_hersteller_id
inner join cmn_laender l on mh.herkunftsland_id = l.land_id
inner join cmn_kontinente k on l.kontinent_id = k.kontinent_id
where k.name = 'Asien';

-- 12. Auflistung des Motorrads mit der geringsten Leistung
select
	name,
    min(leistung_kw)
from data_motorraeder
group by name, leistung_kw
order by leistung_kw asc
limit 1;

-- 13. Auflistung des teuersten Motorrads
select
	mh.name as hersteller,
    max(m.preis_euro)
from data_motorraeder m
join data_motorrad_hersteller mh on m.motorrad_hersteller_id = mh.motorrad_hersteller_id
group by mh.name, m.preis_euro
order by m.preis_euro desc
limit 1;

-- 14. Auflistung der Siege aller Benutzers
select
	b.name as gewinner,
	count(1) as siege
from data_benutzer_spiele bs
join cmn_benutzer b on bs.gewinner_id = b.benutzer_id
group by b.name
order by b.name;

-- 15. Auflistung der Gesamtbevölkerung in Südamerika
select
	sum(bevoelkerung) gesamt_bevoelkerung
from cmn_laender l
inner join cmn_kontinente k on l.kontinent_id = k.kontinent_id
where k.name = 'Südamerika';

-- 16. Auflistung der durschnittlichen Geschwindigkeit in der Kategorie "Supersportler"
select
	avg(hoechstgeschwindigkeit_kmh)
from data_motorraeder m
join data_motorrad_kategorien mk on m.motorrad_kategorie_id = mk.motorrad_kategorie_id
where mk.name = 'Supersportler';

-- 17. Erstellung einer Tabelle zum speichern von Motorrädern
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
    leistung_kw                             decimal(5,2) comment 'Leistung (kw) des Motorrads',
    drehmoment_nm                           decimal(6,2) comment 'Drehmoment (nm) des Motorrads',
    0_auf_100_s                             decimal(5,2) comment 'Beschleuniging von 0 auf 100km/h (s) des Motorrads',
    hoechstgeschwindigkeit_kmh              int comment 'Höchstgeschwindigkeit (km/h) des Motorrads',
    verbrauch_kml                           decimal(5,2) comment 'Verbrauch (kilometer/liter) des Motorrads',
    laenge_mm                               int comment 'Größe (mm) des Motorrads',
    breite_mm                               int comment 'Breite (mm) des Motorrads',
    hoehe_mm                                int comment 'Höhe (mm) des Motorrads',
    sitzhoehe_mm                            int comment 'Sitzhöhe (mm) des Motorrads',
    gewicht_kg                              decimal(6,2) comment 'Gewicht (kg) des Motorrads',
    preis_euro                              decimal(10,2) comment 'Preis (€) des Motorrads',
    bild                                    blob comment 'Logo des Motorrads',
    bild_mime                               varchar(16) comment 'Mime type des Bildes des Motorrads. Erlaubt sind JPG und PNG',
    
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

-- 18. Bei den Spielen soll noch die Dauer gespeichert werden
alter table data_benutzer_spiele
add column spiel_dauer_min int not null;

-- 19. Löschen des Benutzers mit der Id 7
delete from cmn_benutzer where benutzer_id = 7;

-- 20. Hinzufügen eines weiteren Herstellers
insert into data_motorrad_hersteller (
	motorrad_hersteller_id,
    name,
    beschreibung,
    herkunftsland_id,
    gruendungsjahr,
    aktiv
) values (
	15,
    'Royal Enfield',
    'Royal Enfield ist ein indischer Motorradhersteller und zugleich die älteste noch produzierte Motorradmarke der Welt. Das 1955 in seiner heutigen Form gebildete Unternehmen ist aus dem gleichnamigen britischen Motorradhersteller hervorgegangen, der auch Automobile und Gewehre produzierte. Seit 1994 gehört das Unternehmen als Tochtergesellschaft zum indischen Konzern Eicher.',
    76,
    1901,
    'J'
);