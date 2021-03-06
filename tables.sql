create table users (id char(36) PRIMARY KEY, name varchar(50), email varchar(64), password varchar(64), createdAt date, updatedAt date);

create table rooms (id char(36) PRIMARY Key, name varchar(50), createdAt date, updatedAt date);

create table room_user ( roomId char(36), userId char(36), createdAt date, updatedAt date, FOREIGN Key(roomId) REFERENCES rooms(id) ON DELETE CASCADE , FOREIGN Key(userId) REFERENCES users(id) ON DELETE CASCADE );

create table messages ( id char(36), content TEXT, userId char(36), roomId char(36), createdAt date, updatedAt date, FOREIGN Key(roomId) REFERENCES rooms(id) ON DELETE CASCADE , FOREIGN Key(userId) REFERENCES users(id) ON DELETE SET NULL)
