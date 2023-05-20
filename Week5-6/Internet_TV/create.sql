CREATE TABLE Channels (
  id bigint PRIMARY KEY AUTO_INCREMENT,
  name varchar(100),
  description text
);

CREATE TABLE Genres (
  id bigint PRIMARY KEY AUTO_INCREMENT,
  name varchar(100)
);

CREATE TABLE Programs (
  id bigint PRIMARY KEY AUTO_INCREMENT,
  name varchar(100),
  description text
);

CREATE TABLE ProgramGenres (
  id bigint PRIMARY KEY AUTO_INCREMENT,
  program_id bigint,
  genre_id bigint,
  FOREIGN KEY (program_id) REFERENCES Programs(id),
  FOREIGN KEY (genre_id) REFERENCES Genres(id)
);

CREATE TABLE Seasons (
  id bigint PRIMARY KEY AUTO_INCREMENT,
  program_id bigint,
  season_number int,
  FOREIGN KEY (program_id) REFERENCES Programs(id)
);

CREATE TABLE Episodes (
  id bigint PRIMARY KEY AUTO_INCREMENT,
  season_id bigint,
  episode_number int,
  title varchar(100),
  description text,
  duration time,
  release_date date,
  FOREIGN KEY (season_id) REFERENCES Seasons(id)
);

CREATE TABLE Slots (
  id bigint PRIMARY KEY AUTO_INCREMENT,
  channel_id bigint,
  start_time datetime,
  end_time datetime,
  episode_id bigint,
  FOREIGN KEY (channel_id) REFERENCES Channels(id),
  FOREIGN KEY (episode_id) REFERENCES Episodes(id)
);

CREATE TABLE ViewCounts (
  id bigint PRIMARY KEY AUTO_INCREMENT,
  episode_id bigint,
  slot_id bigint,
  count bigint,
  FOREIGN KEY (episode_id) REFERENCES Episodes(id),
  FOREIGN KEY (slot_id) REFERENCES Slots(id)
);
