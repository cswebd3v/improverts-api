
-- games table

create table games (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    title TEXT NOT NULL,
    publisher TEXT NOT NULL
);

INSERT into games (title, publisher)
values
    ('Warcraft III', 'Blizzard'),
    ('Starcraft II', 'Blizzard'); 

-- vods table

create table vods (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    title TEXT NOT NULL,
    link TEXT NOT NULL,
    watch_id TEXT NOT NULL,
    uploadDate DATE NOT NULL, 
    game_id  INTEGER REFERENCES games(id) NOT NULL,
    matchup TEXT NOT NULL,
    view TEXT NOT NULL
);

INSERT into vods (title, link, watch_id, uploadDate, game_id, matchup, view)
values
    ('Grubby | "Ultimate Overexplain" | Warcraft 3 | UD vs HU | Northern Isles
', 'https://www.youtube.com/watch?v=_upUmG_y29E', '_upUmG_y29E', '2019-03-03', 1, 'HUvUD', 'First Person'),
    ('Grubby | Warcraft 3 TFT | 1.30 | ORC v UD on Last Refuge - Farseer Expo Overexplain
', 'https://www.youtube.com/watch?v=dcz2EpGGXvw', 'dcz2EpGGXvw', '2018-11-08', 1, 'ORCvUD', 'First Person'),
    ('WC3 - New Years Cup - Grand Final [NE] Moon vs. Chaemiko [HU]
', 'https://www.youtube.com/watch?v=veZb6WJ8hM4', 'veZb6WJ8hM4', '2020-01-20', 1, 'ORCvNE', 'Cast'),
    ('StarCraft 2: VERY CLOSE Terran vs Protoss!', 
    'https://www.youtube.com/watch?v=C6TuN1chfAo', 'C6TuN1chfAo', '2019-05-03', 2, 'PvT', 'First Person'),
    ('A Cascade of Muta-ling-Bane! ZvZ',
    'https://www.youtube.com/watch?v=QQcOXVxQet0', 'QQcOXVxQet0', '2020-01-14', 2, 'ZvZ', 'First Person'),
    ('Smashing Cyclones! | Ladder Season 4 2019 #20',
    'https://www.youtube.com/watch?v=0zrsiWV0Phw', '0zrsiWV0Phw', '2020-01-12', 2, 'TvZ', 'First Person'),
    ('WC3 - CC Masters: Grand Final: [ORC] Lyn vs. Infi [HU]',
    'https://www.youtube.com/watch?v=SeO4etmi2qQ', 'SeO4etmi2qQ', '2019-10-20', 1, 'HUvORC', 'Cast'),
    ('WC3 - Huya Super League - Grand Final: [UD] Happy vs. Infi [HU]',
    'https://www.youtube.com/watch?v=LUjhhNa-qJU', 'LUjhhNa-qJU', '2020-01-13', 1, 'HUvUD', 'Cast'),
    ('WC3 - WGL Winter 19 - GRAND FINAL: [UD] Happy vs. Lyn [ORC]',
    'https://www.youtube.com/watch?v=VTMB23w1WvE', 'VTMB23w1WvE', '2019-12-02', 1, 'ORCvUD', 'Cast'),
    ('A stern warning',
    'https://www.youtube.com/watch?v=GCj6d4ZBftg', 'GCj6d4ZBftg', '2020-01-15', 1, 'HUvORC', 'First Person'),
    ('Fight Night: Neytpoh (Night Elf) vs. Deathnote (Human) w/Grubby & Kendric - Warcraft 3 Gameplay',
    'https://www.youtube.com/watch?v=vSOrrl-BupA', 'vSOrrl-BupA', '2019-10-14', 1, 'HUvNE', 'Cast'),
    ('Hatch Block TvZ! | Ladder Season 4 2019 #5',
    'https://www.youtube.com/watch?v=L-O6-CGtp2A', 'L-O6-CGtp2A', '2019-12-17', 2, 'TvZ', 'First Person'),
    ('See-Saw TvT!',
    'https://www.youtube.com/watch?v=IQuBiTxAvBQ', 'IQuBiTxAvBQ', '2019-12-01', 2, 'TvT', 'First Person'),
    ('YOLO Mech vs Neuro!',
    'https://www.youtube.com/watch?v=-I3aTQ4sWe0', '-I3aTQ4sWe0', '2019-11-20', 2, 'TvZ', 'First Person'),
    ('Getting allined in PvZ',
    'https://www.youtube.com/watch?v=8FHz37pE65k', '8FHz37pE65k', '2019-11-19', 2, 'PvZ', 'First Person'),
    ('Grubby | Warcraft 3 TFT | 1.29 | NE v ORC on Turtle Rock - Tryhard PotM',
    'https://www.youtube.com/watch?v=EWI7oali_K0', 'EWI7oali_K0', '2018-08-08', 1, 'ORCvNE', 'First Person'),
    ('Grubby | "Time For TRYHARD" | Warcraft 3 | ORC vs NE | Northern Isles',
    'https://www.youtube.com/watch?v=cBr2f0eCxJY', 'cBr2f0eCxJY', '2019-05-21', 1, 'ORCvNE', 'First Person'),
    ('TeRRoR vs CrunCher #1 - Amazonia',
    'https://www.youtube.com/watch?v=f42SegRolGA', 'f42SegRolGA', '2020-01-17', 1, 'HUvUD', 'Cast'),
    ('TeRRoR vs CrunCher #2 - Last Refuge',
    'https://www.youtube.com/watch?v=6jEGcKaxGUQ', '6jEGcKaxGUQ', '2020-02-05', 1, 'HUvUD', 'Cast'),
    ('INSUPERABLE vs Sheik #1 - Concealed Hill',
    'https://www.youtube.com/watch?v=2tRhVrX1-dY', '2tRhVrX1-dY', '2019-12-31', 1, 'UDvUD', 'Cast'),
    ('INSUPERABLE vs Sheik #2 - Last Refuge',
    'https://www.youtube.com/watch?v=1hJsDZi7JWY', '1hJsDZi7JWY', '2019-12-31', 1, 'UDvUD', 'Cast'),
    ('Grubby | ORC Bloody Beginner!',
    'https://www.youtube.com/watch?v=2vYpcFBM-fw', '2vYpcFBM-fw', '2019-11-19', 1, 'ORCvORC', 'First Person'),
    ('KnOff vs Cash #1 - Twisted Meadows',
    'https://www.youtube.com/watch?v=RxHvwddDnOk', 'RxHvwddDnOk', '2020-01-22', 1, 'ORCvORC', 'Cast'),
    ('KnOff vs Cash #2 - Amazonia',
    'https://www.youtube.com/watch?v=OMBf3RpPwBI', 'OMBf3RpPwBI', '2020-01-22', 1, 'ORCvORC', 'Cast'),
    ('soO (Z) vs TY (T) on Nightshade - StarCraft 2 - Legacy of the Void 2020',
    'https://www.youtube.com/watch?v=pmL6PA6-AKY', 'pmL6PA6-AKY', '2020-02-10', 2, 'TvZ', 'Cast'),
    ('Sunday Series - INnoVation (T) vs Rogue (Z) Best of 3 - StarCraft 2 - Legacy of the Void 2020',
    'https://www.youtube.com/watch?v=Yz5ppqmScL0', 'Yz5ppqmScL0', '2020-02-09', 2, 'TvZ', 'Cast'),
    ('P - Bunny (T) v soO (Z) on Thunderbird - StarCraft 2 - Legacy of the Void 2020',
    'https://www.youtube.com/watch?v=eeLEsN7Ne7Y', 'eeLEsN7Ne7Y', '2020-02-07', 2, 'TvZ', 'Cast'),
    ('Scarlett (Z) v Stats (P) on Eternal Empire - StarCraft 2 - Legacy of the Void 2020',
    'https://www.youtube.com/watch?v=Pvv9Q8N23Yc', 'Pvv9Q8N23Yc', '2020-02-05', 2, 'PvZ', 'Cast'),
    ('EPIC - P - InnovatioN (T) v Reynor (Z) on Triton - StarCraft 2 - Legacy of the Void 2020',
    'https://www.youtube.com/watch?v=SKo6I_Kw60I', 'SKo6I_Kw60I', '2020-01-24', 2, 'TvZ', 'Cast'),
    ('Grubby | Elf Bloody Beginner',
    'https://www.youtube.com/watch?v=ms-Zks9x-ew', 'ms-Zks9x-ew', '2019-11-16', 1, 'NEvNE', 'First Person'),
    ('Grubby | Undead Bloody Beginner!',
    'https://www.youtube.com/watch?v=DyQIdmULsUg', 'DyQIdmULsUg', '2019-11-25', 1, 'UDvUD', 'First Person'),
    ('Grubby | Human Bloody Beginner!',
    'https://www.youtube.com/watch?v=BWkhRbqPWzc', 'BWkhRbqPWzc', '2019-11-27', 1, 'HUvHU', 'First Person');


-- tags table

create table tags (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    tag_name TEXT NOT NULL,
    vod_id INTEGER REFERENCES vods(id)
);

INSERT into tags (tag_name, vod_id)
values
    ('HUvUD', 1),
    ('HUvORC', NULL),
    ('HUvNE', 3),
    ('HUvHU', NULL),
    ('ORCvUD', 2),
    ('ORCvNE', NULL),
    ('ORCvORC', NULL),
    ('NEvUD', NULL),
    ('NEvNE', NULL),
    ('UDvUD', NULL),
    ('Player Perspective', 2),
    ('Casted', 3),
    ('Tutorial', 1);