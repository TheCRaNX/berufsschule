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
    hoechstgeschwindigkeit_kmh,
    verbrauch_kml,
    laenge_mm,
    breite_mm,
    hoehe_mm,
    sitzhoehe_mm,
    gewicht_kg,
    preis_euro
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
), (
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
), (
    3,                                                                      -- motorrad_id

    2,                                                                      -- motorrad_hersteller_id
    3,                                                                      -- motorrad_baureihe_id
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
), (
    4,                                                                      -- motorrad_id

    2,                                                                      -- motorrad_hersteller_id
    4,                                                                      -- motorrad_baureihe_id
    6,                                                                      -- motorrad_kategorie_id

    'Tuono V4 APRC',                                                        -- name
    2014,                                                                   -- baujahr
    125,                                                                    -- leistung_kw
    3.2,                                                                    -- 0_auf_100_s
    249,                                                                    -- hoechstgeschwindigkeit_kmh
    10,                                                                     -- verbrauch_kml
    113,                                                                    -- drehmoment_nm
    2065,                                                                   -- laenge_mm
    800,                                                                    -- breite_mm
    1090,                                                                   -- hoehe_mm
    825,                                                                    -- sitzhoehe_mm
    195,                                                                    -- gewicht_kg
    15703.00                                                                -- preis_euro
), (
    5,                                                                      -- motorrad_id

    2,                                                                      -- motorrad_hersteller_id
    5,                                                                      -- motorrad_baureihe_id
    6,                                                                      -- motorrad_kategorie_id

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
), (
    6,                                                                      -- motorrad_id

    2,                                                                      -- motorrad_hersteller_id
    6,                                                                      -- motorrad_baureihe_id
    6,                                                                      -- motorrad_kategorie_id

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
), (
    7,                                                                      -- motorrad_id

    3,                                                                      -- motorrad_hersteller_id
    7,                                                                      -- motorrad_baureihe_id
    1,                                                                      -- motorrad_kategorie_id

    'BMW S100RR',                                                           -- name
    2025,                                                                   -- baujahr
    154,                                                                    -- leistung_kw
    3.1,                                                                    -- 0_auf_100_s
    303,                                                                    -- hoechstgeschwindigkeit_kmh
    13.8,                                                                   -- verbrauch_kml
    121,                                                                    -- drehmoment_nm
    2073,                                                                   -- laenge_mm
    545,                                                                    -- breite_mm
    1205,                                                                   -- hoehe_mm
    832,                                                                    -- sitzhoehe_mm
    185,                                                                    -- gewicht_kg
    20890.00                                                                -- preis_euro
), (
    8,                                                                      -- motorrad_id

    5,                                                                      -- motorrad_hersteller_id
    8,                                                                      -- motorrad_baureihe_id
    1,                                                                      -- motorrad_kategorie_id

    'Ducati Panigale V4S',                                                  -- name
    2025,                                                                   -- baujahr
    158.9,                                                                  -- leistung_kw
    3.1,                                                                    -- 0_auf_100_s
    303,                                                                    -- hoechstgeschwindigkeit_kmh
    15.38,                                                                  -- verbrauch_kml
    120.9,                                                                  -- drehmoment_nm
    null,                                                                   -- laenge_mm
    null,                                                                   -- breite_mm
    null,                                                                   -- hoehe_mm
    850,                                                                    -- sitzhoehe_mm
    187,                                                                    -- gewicht_kg
    34790.00                                                                -- preis_euro
), (
    9,                                                                      -- motorrad_id

    6,                                                                      -- motorrad_hersteller_id
    8,                                                                      -- motorrad_baureihe_id
    1,                                                                      -- motorrad_kategorie_id

    'Harley Davidson Sporster S',                                           -- name
    2025,                                                                   -- baujahr
    90,                                                                     -- leistung_kw
    3.6,                                                                    -- 0_auf_100_s
    200,                                                                    -- hoechstgeschwindigkeit_kmh
    19.6,                                                                   -- verbrauch_kml
    120.9,                                                                  -- drehmoment_nm
    2270,                                                                   -- laenge_mm
    840,                                                                    -- breite_mm
    null,                                                                   -- hoehe_mm
    765,                                                                    -- sitzhoehe_mm
    228,                                                                    -- gewicht_kg
    17570.00                                                                -- preis_euro
);