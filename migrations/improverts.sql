-- drop all tables if exist

drop table if exists tags;
drop table if exists vods;
drop table if exists games;

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
    uploadDate DATE NOT NULL, 
    game_id  INTEGER REFERENCES games(id) NOT NULL
);

INSERT into vods (title, link, uploadDate, game_id)
values
    ('Grubby | "Ultimate Overexplain" | Warcraft 3 | UD vs HU | Northern Isles
', '_upUmG_y29E', '2019-03-03', 1),
    ('Grubby | Warcraft 3 TFT | 1.30 | ORC v UD on Last Refuge - Farseer Expo Overexplain
', 'dcz2EpGGXvw', '2018-11-08', 1),
    ('WC3 - New Years Cup - Grand Final [NE] Moon vs. Chaemiko [HU]
', 'veZb6WJ8hM4', '2020-01-20', 1);

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