-- Add up migration script here
create table users (
                       id serial8 primary key,
                       name varchar(10) UNIQUE not null,
                       email varchar(20) UNIQUE not null,
                       pass varchar(65) not null, -- 'passwd hash'
                       create_dt timestamp not null default current_timestamp, -- 'create datetime'
                       update_dt timestamp not null default current_timestamp, -- 'udpate datetime'
                       status varchar(10) not null default 'normal'-- comment 'status: normal, blocked, deleted',
);