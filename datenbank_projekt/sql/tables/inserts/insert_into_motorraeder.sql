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
    5,                                                                      -- motorrad_baureihe_id
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
    6,                                                                      -- motorrad_baureihe_id
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
    7,                                                                      -- motorrad_baureihe_id
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
    4,                                                                      -- motorrad_kategorie_id

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
), (
    10,                                                                      -- motorrad_id

    7,                                                                      -- motorrad_hersteller_id
    9,                                                                     -- motorrad_baureihe_id
    1,                                                                      -- motorrad_kategorie_id

    'Honda CBR1000RR-R Fireblade SP',                                       -- name
    2024,                                                                   -- baujahr
    160,                                                                    -- leistung_kw
    3.3,                                                                    -- 0_auf_100_s
    299,                                                                    -- hoechstgeschwindigkeit_kmh
    14.92,                                                                  -- verbrauch_kml
    113,                                                                    -- drehmoment_nm
    2105,                                                                   -- laenge_mm
    750,                                                                    -- breite_mm
    1140,                                                                   -- hoehe_mm
    830,                                                                    -- sitzhoehe_mm
    201,                                                                    -- gewicht_kg
    29699.00                                                                -- preis_euro
), (
    11,                                                                     -- motorrad_id

    8,                                                                      -- motorrad_hersteller_id
    11,                                                                     -- motorrad_baureihe_id
    8,                                                                      -- motorrad_kategorie_id

    'Husqvarna 701',                                                        -- name
    2024,                                                                   -- baujahr
    55,                                                                     -- leistung_kw
    4.2,                                                                    -- 0_auf_100_s
    195,                                                                    -- hoechstgeschwindigkeit_kmh
    24.39                                                                   -- verbrauch_kml
    73.5,                                                                    -- drehmoment_nm
    2194,                                                                   -- laenge_mm
    814,                                                                    -- breite_mm
    1183,                                                                   -- hoehe_mm
    890,                                                                    -- sitzhoehe_mm
    148,                                                                    -- gewicht_kg
    12499.00                                                                -- preis_euro
), (
    12,                                                                     -- motorrad_id

    9,                                                                      -- motorrad_hersteller_id
    12,                                                                     -- motorrad_baureihe_id
    1,                                                                      -- motorrad_kategorie_id

    'Kawasaki Ninja H2R',                                                   -- name
    2025,                                                                   -- baujahr
    228,                                                                    -- leistung_kw
    2.5,                                                                    -- 0_auf_100_s
    405,                                                                    -- hoechstgeschwindigkeit_kmh
    15,                                                                     -- verbrauch_kml
    165,                                                                    -- drehmoment_nm
    2070,                                                                   -- laenge_mm
    850,                                                                    -- breite_mm
    1160,                                                                   -- hoehe_mm
    830,                                                                    -- sitzhoehe_mm
    216,                                                                    -- gewicht_kg
    57000.00                                                                -- preis_euro
), (
    13,                                                                     -- motorrad_id

    10,                                                                     -- motorrad_hersteller_id
    13,                                                                     -- motorrad_baureihe_id
    1,                                                                      -- motorrad_kategorie_id

    'KTM RC 8C',                                                            -- name
    2024,                                                                   -- baujahr
    99,                                                                     -- leistung_kw
    3.1,                                                                    -- 0_auf_100_s
    280,                                                                    -- hoechstgeschwindigkeit_kmh
    9.52,                                                                   -- verbrauch_kml
    98,                                                                     -- drehmoment_nm
    null,                                                                   -- laenge_mm
    null,                                                                   -- breite_mm
    null,                                                                   -- hoehe_mm
    820,                                                                    -- sitzhoehe_mm
    142,                                                                    -- gewicht_kg
    42000.00                                                                -- preis_euro
), (
    14,                                                                     -- motorrad_id

    11,                                                                     -- motorrad_hersteller_id
    14,                                                                     -- motorrad_baureihe_id
    1,                                                                      -- motorrad_kategorie_id

    'MV Agusta F4RR',                                                       -- name
    2018,                                                                   -- baujahr
    148,                                                                    -- leistung_kw
    3.45,                                                                   -- 0_auf_100_s
    297,                                                                    -- hoechstgeschwindigkeit_kmh
    11.11,                                                                  -- verbrauch_kml
    111,                                                                    -- drehmoment_nm
    2115,                                                                   -- laenge_mm
    750,                                                                    -- breite_mm
    null,                                                                   -- hoehe_mm
    830,                                                                    -- sitzhoehe_mm
    190,                                                                    -- gewicht_kg
    22000.00                                                                -- preis_euro
), (
    15,                                                                     -- motorrad_id

    11,                                                                     -- motorrad_hersteller_id
    15,                                                                     -- motorrad_baureihe_id
    1,                                                                      -- motorrad_kategorie_id

    'MV Agusta F3 RR',                                                      -- name
    2019,                                                                   -- baujahr
    108,                                                                    -- leistung_kw
    2.97,                                                                   -- 0_auf_100_s
    245,                                                                    -- hoechstgeschwindigkeit_kmh
    16.39,                                                                  -- verbrauch_kml
    88,                                                                     -- drehmoment_nm
    2030,                                                                   -- laenge_mm
    730,                                                                    -- breite_mm
    null,                                                                   -- hoehe_mm
    830,                                                                    -- sitzhoehe_mm
    185,                                                                    -- gewicht_kg
    197903.00                                                                -- preis_euro
), (
    16,                                                                     -- motorrad_id

    11,                                                                     -- motorrad_hersteller_id
    16,                                                                     -- motorrad_baureihe_id
    1,                                                                      -- motorrad_kategorie_id

    'MV Agusta F3 Competizione',                                            -- name
    2025,                                                                   -- baujahr
    118,                                                                    -- leistung_kw
    2.97,                                                                   -- 0_auf_100_s
    270,                                                                    -- hoechstgeschwindigkeit_kmh
    16.39,                                                                  -- verbrauch_kml
    88,                                                                     -- drehmoment_nm
    2030,                                                                   -- laenge_mm
    730,                                                                    -- breite_mm
    null,                                                                   -- hoehe_mm
    830,                                                                    -- sitzhoehe_mm
    192.5,                                                                  -- gewicht_kg
    32800.00                                                                -- preis_euro
), (
    17,                                                                     -- motorrad_id

    12,                                                                     -- motorrad_hersteller_id
    17,                                                                     -- motorrad_baureihe_id
    6,                                                                      -- motorrad_kategorie_id

    'Suzuki GSX S1000 Power Edition',                                       -- name
    2025,                                                                   -- baujahr
    112,                                                                    -- leistung_kw
    3,                                                                      -- 0_auf_100_s
    240,                                                                    -- hoechstgeschwindigkeit_kmh
    16.6,                                                                   -- verbrauch_kml
    106,                                                                    -- drehmoment_nm
    2115,                                                                   -- laenge_mm
    810,                                                                    -- breite_mm
    1080,                                                                   -- hoehe_mm
    810,                                                                    -- sitzhoehe_mm
    214,                                                                    -- gewicht_kg
    14000.00                                                                -- preis_euro
), (
    18,                                                                     -- motorrad_id

    12,                                                                     -- motorrad_hersteller_id
    17,                                                                     -- motorrad_baureihe_id
    1,                                                                      -- motorrad_kategorie_id

    'Suzuki GSX S1000 Power Edition',                                       -- name
    2025,                                                                   -- baujahr
    112,                                                                    -- leistung_kw
    3,                                                                      -- 0_auf_100_s
    240,                                                                    -- hoechstgeschwindigkeit_kmh
    16.6,                                                                   -- verbrauch_kml
    106,                                                                    -- drehmoment_nm
    2115,                                                                   -- laenge_mm
    810,                                                                    -- breite_mm
    1080,                                                                   -- hoehe_mm
    810,                                                                    -- sitzhoehe_mm
    214,                                                                    -- gewicht_kg
    14000.00                                                                -- preis_euro
), (
    19,                                                                     -- motorrad_id

    12,                                                                     -- motorrad_hersteller_id
    20,                                                                     -- motorrad_baureihe_id
    1,                                                                      -- motorrad_kategorie_id

    'Suzuki Hayabusa Power Edition',                                        -- name
    2025,                                                                   -- baujahr
    140,                                                                    -- leistung_kw
    3.2,                                                                    -- 0_auf_100_s
    295,                                                                    -- hoechstgeschwindigkeit_kmh
    14.92,                                                                  -- verbrauch_kml
    150,                                                                    -- drehmoment_nm
    2180,                                                                   -- laenge_mm
    735,                                                                    -- breite_mm
    1165,                                                                   -- hoehe_mm
    800,                                                                    -- sitzhoehe_mm
    265,                                                                    -- gewicht_kg
    20800.00                                                                -- preis_euro
), (
    20,                                                                     -- motorrad_id

    13,                                                                     -- motorrad_hersteller_id
    21,                                                                     -- motorrad_baureihe_id
    6,                                                                      -- motorrad_kategorie_id

    'Triump Speed Tripple 120 RX Limited Edition',                          -- name
    2025,                                                                   -- baujahr
    134.6,                                                                  -- leistung_kw
    3.5,                                                                    -- 0_auf_100_s
    250,                                                                    -- hoechstgeschwindigkeit_kmh
    15.87,                                                                  -- verbrauch_kml
    128,                                                                    -- drehmoment_nm
    2090,                                                                   -- laenge_mm
    825,                                                                    -- breite_mm
    1089,                                                                   -- hoehe_mm
    830,                                                                    -- sitzhoehe_mm
    199,                                                                    -- gewicht_kg
    21695.00                                                                -- preis_euro
), (
    21,                                                                     -- motorrad_id

    14,                                                                     -- motorrad_hersteller_id
    22,                                                                     -- motorrad_baureihe_id
    1,                                                                      -- motorrad_kategorie_id

    'Yamaha R1 GYTR',                                                       -- name
    2025,                                                                   -- baujahr
    147  ,                                                                  -- leistung_kw
    3.2,                                                                    -- 0_auf_100_s
    299,                                                                    -- hoechstgeschwindigkeit_kmh
    13.8,                                                                   -- verbrauch_kml
    113.3,                                                                  -- drehmoment_nm
    2055,                                                                   -- laenge_mm
    690,                                                                    -- breite_mm
    1150,                                                                   -- hoehe_mm
    855,                                                                    -- sitzhoehe_mm
    201,                                                                    -- gewicht_kg
    30189.00                                                                -- preis_euro
);  