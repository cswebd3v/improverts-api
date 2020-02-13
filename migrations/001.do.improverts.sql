-- games table

create table games (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    title TEXT NOT NULL,
    publisher TEXT NOT NULL
);


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



-- tags table

create table tags (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    tag_name TEXT NOT NULL,
    vod_id INTEGER REFERENCES vods(id)
);

