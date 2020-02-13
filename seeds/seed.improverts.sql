INSERT into games (title, publisher)
values
    ('Warcraft III', 'Blizzard'),
    ('Starcraft II', 'Blizzard'); 

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
    'https://www.youtube.com/watch?v=0zrsiWV0Phw', '0zrsiWV0Phw', '2020-01-12', 2, 'TvZ', 'First Person');

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