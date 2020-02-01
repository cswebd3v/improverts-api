-- remove table if it exists
drop table if exists users;

-- Create the table
create table users (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    username TEXT NOT NULL,
    password TEXT NOT NULL,
    role TEXT NOT NULL
);

-- insert dummy data

INSERT into users (username, password, role)
values
    ('poppy', 'doggies123', 'common'),
    ('cooper', 'doggies321', 'administrator'),
    ('demo', 'irts', 'common');
