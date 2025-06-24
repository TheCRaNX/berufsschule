insert into data_motorraeder(
    motorrad_id,

    motorrad_hersteller_id,
    motorrad_baureihe_id,
    motorrad_kategorie_id,
    
    name,
    baujahr,
    leistung_kw,
    drehmoment_nm,
    0_auf_100_s,
    hoechgeschwindigkeit_kmh,
    verbrauch_kml,
    laenge_mm,
    breite_mm,
    hoehe_mm,
    sitzhoehe_mm,
    gewicht_kg,
    preis_euro,
    bild,
    bild_mime,
) values (
    1,                                                                      -- motorrad_id

    1,                                                                      -- motorrad_hersteller_id
    1,                                                                      -- motorrad_baureihe_id
    10,                                                                     -- motorrad_kategorie_id

    'Ironhorse Texas Chopper Dead Heads',                                   -- name
    2007,                                                                   -- baujahr
    82,                                                                     -- leistung_kw
    null,                                                                   -- 0_auf_100_s
    170,                                                                    -- hoechstgeschwindigkeit_kmh
    18.18,                                                                  -- verbrauch_kml
    155.9,                                                                  -- drehmoment_nm
    2807,                                                                   -- laenge_mm
    901,                                                                    -- breite_mm
    1390,                                                                   -- hoehe_mm
    641,                                                                    -- sitzhoehe_mm
    318.4,                                                                  -- gewicht_kg
    28000.00                                                                -- preis_euro
), values (
    2,                                                                      -- motorrad_id

    2,                                                                      -- motorrad_hersteller_id
    2,                                                                      -- motorrad_baureihe_id
    1,                                                                      -- motorrad_kategorie_id

    'Aprilla RSV4 1100',                                                    -- name
    2025,                                                                   -- baujahr
    160,                                                                    -- leistung_kw
    3.2,                                                                    -- 0_auf_100_s
    305,                                                                    -- hoechstgeschwindigkeit_kmh
    15.38,                                                                  -- verbrauch_kml
    155.9,                                                                  -- drehmoment_nm
    2055,                                                                   -- laenge_mm
    735,                                                                    -- breite_mm
    1165,                                                                   -- hoehe_mm
    845,                                                                    -- sitzhoehe_mm
    202,                                                                    -- gewicht_kg
    21999.00                                                                -- preis_euro
), values (
    3,                                                                      -- motorrad_id

    2,                                                                      -- motorrad_hersteller_id
    2,                                                                      -- motorrad_baureihe_id
    1,                                                                      -- motorrad_kategorie_id

    'Aprilla RSV4 Factory 1100',                                            -- name
    2025,                                                                   -- baujahr
    161,                                                                    -- leistung_kw
    3.2,                                                                    -- 0_auf_100_s
    320,                                                                    -- hoechstgeschwindigkeit_kmh
    15.38,                                                                  -- verbrauch_kml
    125,                                                                    -- drehmoment_nm
    2055,                                                                   -- laenge_mm
    735,                                                                    -- breite_mm
    1420,                                                                   -- hoehe_mm
    845,                                                                    -- sitzhoehe_mm
    202,                                                                    -- gewicht_kg
    26999.00                                                                -- preis_euro
), values (
    3,                                                                      -- motorrad_id

    2,                                                                      -- motorrad_hersteller_id
    2,                                                                      -- motorrad_baureihe_id
    1,                                                                      -- motorrad_kategorie_id

    'Aprilla RSV4 1100 Factory',                                            -- name
    2025,                                                                   -- baujahr
    161,                                                                    -- leistung_kw
    3.2,                                                                    -- 0_auf_100_s
    320,                                                                    -- hoechstgeschwindigkeit_kmh
    15.38,                                                                  -- verbrauch_kml
    125,                                                                    -- drehmoment_nm
    2055,                                                                   -- laenge_mm
    735,                                                                    -- breite_mm
    1420,                                                                   -- hoehe_mm
    845,                                                                    -- sitzhoehe_mm
    202,                                                                    -- gewicht_kg
    26999.00                                                                -- preis_euro
), values (
    2,                                                                      -- motorrad_id

    2,                                                                      -- motorrad_hersteller_id
    2,                                                                      -- motorrad_baureihe_id
    1,                                                                      -- motorrad_kategorie_id

    'Aprilia Tuono V4 1100',                                                -- name
    2025,                                                                   -- baujahr
    132.4,                                                                  -- leistung_kw
    3.2,                                                                    -- 0_auf_100_s
    250,                                                                    -- hoechstgeschwindigkeit_kmh
    13.8,                                                                   -- verbrauch_kml
    121,                                                                    -- drehmoment_nm
    2070,                                                                   -- laenge_mm
    810,                                                                    -- breite_mm
    1170,                                                                   -- hoehe_mm
    836,                                                                    -- sitzhoehe_mm
    211,                                                                    -- gewicht_kg
    17999.00                                                                -- preis_euro
), values (
    3,                                                                      -- motorrad_id

    2,                                                                      -- motorrad_hersteller_id
    2,                                                                      -- motorrad_baureihe_id
    1,                                                                      -- motorrad_kategorie_id

    'Aprilia Tuono V4 1100 Factory',                                        -- name
    2025,                                                                   -- baujahr
    132.4,                                                                  -- leistung_kw
    3.2,                                                                    -- 0_auf_100_s
    250,                                                                    -- hoechstgeschwindigkeit_kmh
    13.8,                                                                   -- verbrauch_kml
    121,                                                                    -- drehmoment_nm
    2070,                                                                   -- laenge_mm
    810,                                                                    -- breite_mm
    1170,                                                                   -- hoehe_mm
    836,                                                                    -- sitzhoehe_mm
    211,                                                                    -- gewicht_kg
    20999.00                                                                -- preis_euro
);