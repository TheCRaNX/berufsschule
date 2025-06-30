insert into data_motorrad_baureihen (
    motorrad_baureihe_id,
    motorrad_hersteller_id,
    bezeichnung,
    beschreibung,
    motorytyp,
    hubraum_ccm,
    baujahr_beginn,
    baujahr_ende,
    vorgaenger_id
) values (
    11,                                             -- motorrad_baureihe_id
    8,                                              -- motorrad_hersteller_id
    '701',                                          -- bezeichnung
    'Die starke 701 Supermoto mit 1-Zylinder-Motor bringt reinen Supermoto-Geist auf die Straße und bietet unübertroffene Leistung auf dem Asphalt. Federleicht, perfekt ausbalanciert und mit den neuesten elektronischen Fahrerassistenzfunktionen ausgestattet lässt sich dieses Motorrad umfangreich individualisieren und ermutigt zu längeren Reisen. Mit ihrer charakteristischen schwarz-grauen Optik fällt die 701 Supermoto auf jeder Straße auf.',
    '1-Zylinder 4- Takt',                           -- motorytyp
    692,                                            -- hubraum_ccm
    2016,                                           -- baujahr_beginn
    null,                                           -- baujahr_ende
    null                                            -- vorgaenger_id    
), (
    12,                                             -- motorrad_baureihe_id
    9,                                              -- motorrad_hersteller_id
    'Ninja H2R',                                    -- bezeichnung
    'Der Name Ninja begründete im Superbike-Bereich einen Mythos, der bei der Ninja H2R noch radikaler umgesetzt wurde. Brachiale Beschleunigung sowie noch nie dagewesene Dynamik und Agilität wurden unter anderem durch einen Kawasaki-Kompressor-Motor verwirklicht, der die H2R in neue Leistungsdimensionen vorstoßen lässt. Weitere Features: Öhlins-Fahrwerk, Blipper (Schaltautomat hoch/runter), Kurven-Management und Schräglagensensor.',
    'R4',                                           -- motorytyp
    998,                                            -- hubraum_ccm
    2014,                                           -- baujahr_beginn
    null,                                           -- baujahr_ende
    null                                            -- vorgaenger_id    
), (
    13,                                             -- motorrad_baureihe_id
    10,                                             -- motorrad_hersteller_id
    'RC 8C',                                        -- bezeichnung
    'Die KTM RC 8C hat einen einzigen, einfachen Zweck: Orange Dominanz auf die Rennstrecke zu bringen. Als maßgeschneiderte, kompromisslose Rennmaschine ist die KTM RC 8C auf die besonderen Fahrerinnen und Fahrer ausgerichtet, die mit dem Ellenbogen den Boden aufwirbeln. Das Motorrad ist auf 100 Stück limitiert und ein echter READY TO RACE-Prototyp, gemacht, um Rundenrekorde zu brechen.',
    'R2',                                           -- motorytyp
    889,                                            -- hubraum_ccm
    2021,                                           -- baujahr_beginn
    null,                                           -- baujahr_ende
    null                                            -- vorgaenger_id    
), (
    14,                                             -- motorrad_baureihe_id
    11,                                             -- motorrad_hersteller_id
    'F4 1000S',                                     -- bezeichnung
    'Die MV Agusta F4 ist eine Serie von Supersportmotorrädern, die für ihr markantes Design und ihre leistungsstarken Motoren bekannt ist. Die F4-Reihe zeichnet sich durch einen wassergekühlten Reihenvierzylinder-Motor mit radial angeordneten Ventilen, elektronischer Mehrpunkteinspritzung und verschiedenen Hubraumvarianten (750 cm³, 998 cm³, 1078 cm³) aus. Die Modelle der F4-Serie, wie die F4 750 S, F4 1000 S, F4 RR und F4 R, bieten eine Kombination aus sportlicher Leistung und exklusivem Design, oft mit hochwertigen Komponenten wie Öhlins Federung und Brembo Bremsen.',
    'R4',                                           -- motorytyp
    998,                                            -- hubraum_ccm
    1999,                                           -- baujahr_beginn
    2018,                                           -- baujahr_ende
    null                                            -- vorgaenger_id    
), (
    15,                                             -- motorrad_baureihe_id
    11,                                             -- motorrad_hersteller_id
    'F3',                                           -- bezeichnung
    'Die MV Agusta F3 ist eine Supersport-Motorrad-Baureihe des italienischen Herstellers MV Agusta, bekannt für ihren dreizylindrigen Reihenmotor und ihr sportliches Design. Die F3 wurde erstmals 2012 eingeführt und markierte die Rückkehr von MV Agusta zu Dreizylinder-Motorrädern in Serie, nach den legendären Rennmaschinen der 1970er Jahre.',
    'R3',                                           -- motorytyp
    798,                                            -- hubraum_ccm
    2012,                                           -- baujahr_beginn
    2019,                                           -- baujahr_ende
    null                                            -- vorgaenger_id    
), (
    16,                                             -- motorrad_baureihe_id
    11,                                             -- motorrad_hersteller_id
    'F3 Competizione',                              -- bezeichnung
    'Die MV Agusta F3 Competizione (2025) ist ein Supersportmotorrad mit einem 798 ccm Reihen-Dreizylinder-Motor, der 160 PS leistet. Sie verfügt über eine fortschrittliche Elektronik, einschließlich ABS mit Kurvenfunktion, Traktionskontrolle und verschiedenen Fahrmodi. Das Äußere ist mit Carbon-Verkleidungselementen und kleinen Winglets ausgestattet, die bei hoher Geschwindigkeit für Abtrieb sorgen.',
    'R3',                                           -- motorytyp
    798,                                            -- hubraum_ccm
    2025,                                           -- baujahr_beginn
    null,                                           -- baujahr_ende
    16                                              -- vorgaenger_id    
), (
    17,                                             -- motorrad_baureihe_id
    12,                                             -- motorrad_hersteller_id
    'GSX S1000',                                    -- bezeichnung
    'Die neue GSX-S1000 ist die Verkörperung eines Naked Bikes: herausragende Leistung, rennerprobte Technologie und packendes Handling in einem kompromisslosen Streetfighter-Design.',
    'R4',                                           -- motorytyp
    999,                                            -- hubraum_ccm
    2015,                                           -- baujahr_beginn
    null,                                           -- baujahr_ende
    null                                            -- vorgaenger_id    
), (
    18,                                             -- motorrad_baureihe_id
    12,                                             -- motorrad_hersteller_id
    'Hayabusa',                                     -- bezeichnung
    'Die Suzuki Hayabusa ist ein Supersport-Motorrad, bekannt für ihre beeindruckende Leistung und aerodynamische Form. Angetrieben von einem 1340 cm³ Vierzylinder-Motor, liefert sie 190 PS und 150 Nm Drehmoment. Die Hayabusa ist mit fortschrittlichen Technologien wie Kurven-ABS und Traktionskontrolle ausgestattet, die für optimale Kontrolle und Stabilität sorgen. Ihr Design ist nicht nur ästhetisch ansprechend, sondern auch aerodynamisch optimiert für hohe Geschwindigkeiten.',
    'R4',                                           -- motorytyp
    1299,                                           -- hubraum_ccm
    1999,                                           -- baujahr_beginn
    2007,                                           -- baujahr_ende
    null                                            -- vorgaenger_id    
), (
    19,                                             -- motorrad_baureihe_id
    12,                                             -- motorrad_hersteller_id
    'Hayabusa',                                     -- bezeichnung
    'Die Suzuki Hayabusa ist ein Supersport-Motorrad, bekannt für ihre beeindruckende Leistung und aerodynamische Form. Angetrieben von einem 1340 cm³ Vierzylinder-Motor, liefert sie 190 PS und 150 Nm Drehmoment. Die Hayabusa ist mit fortschrittlichen Technologien wie Kurven-ABS und Traktionskontrolle ausgestattet, die für optimale Kontrolle und Stabilität sorgen. Ihr Design ist nicht nur ästhetisch ansprechend, sondern auch aerodynamisch optimiert für hohe Geschwindigkeiten.',
    'R4',                                           -- motorytyp
    1340,                                           -- hubraum_ccm
    2008,                                           -- baujahr_beginn
    2020,                                           -- baujahr_ende
    18                                              -- vorgaenger_id    
), (
    20,                                             -- motorrad_baureihe_id
    12,                                             -- motorrad_hersteller_id
    'Hayabusa',                                     -- bezeichnung
    'Die Suzuki Hayabusa ist ein Supersport-Motorrad, bekannt für ihre beeindruckende Leistung und aerodynamische Form. Angetrieben von einem 1340 cm³ Vierzylinder-Motor, liefert sie 190 PS und 150 Nm Drehmoment. Die Hayabusa ist mit fortschrittlichen Technologien wie Kurven-ABS und Traktionskontrolle ausgestattet, die für optimale Kontrolle und Stabilität sorgen. Ihr Design ist nicht nur ästhetisch ansprechend, sondern auch aerodynamisch optimiert für hohe Geschwindigkeiten.',
    'R4',                                           -- motorytyp
    1340,                                           -- hubraum_ccm
    2021,                                           -- baujahr_beginn
    null,                                           -- baujahr_ende
    19                                              -- vorgaenger_id    
), (
    21,                                             -- motorrad_baureihe_id
    13,                                             -- motorrad_hersteller_id
    'Speed Tripple 1200',                           -- bezeichnung
    'Die Triumph Speed Triple 1200 ist ein Naked-Sportmotorrad, das für seine unübertroffene Leistung, sein messerscharfes Handling und fortschrittliche Technologie bekannt ist. Sie ist mit einem 1.160 cm³ Dreizylindermotor ausgestattet, der 183 PS und 125 Nm Drehmoment liefert. Die Speed Triple 1200 ist für ihre atemberaubende Beschleunigung und präzise Kontrolle bekannt, was sie zu einem aufregenden Fahrerlebnis macht.', 
    'R3',                                           -- motorytyp
    1160,                                           -- hubraum_ccm
    2021,                                           -- baujahr_beginn
    null,                                           -- baujahr_ende
    null                                            -- vorgaenger_id    
), (
    22,                                             -- motorrad_baureihe_id
    14,                                             -- motorrad_hersteller_id
    'R1',                                           -- bezeichnung
    'Die Yamaha YZF-R1, oft kurz R1 genannt, ist ein Supersportler-Motorrad von Yamaha, das seit vielen Jahren produziert wird und regelmäßig aktualisiert wird. Es ist bekannt für seinen leistungsstarken 998 cm³ Vierzylindermotor mit Crossplane-Kurbelwelle und unregelmäßiger Zündfolge, was eine kraftvolle und lineare Drehmomententfaltung ermöglicht. Die aktuelle Version verfügt über sieben einstellbare elektronische Assistenzsysteme und eine Ride-by-Wire-Drosselklappensteuerung.',
    'DOHC4',                                        -- motorytyp
    998,                                            -- hubraum_ccm
    1998,                                           -- baujahr_beginn
    null,                                           -- baujahr_ende
    null                                            -- vorgaenger_id    
);