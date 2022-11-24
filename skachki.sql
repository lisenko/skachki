CREATE TABLE `owners` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` varchar(255),
  `phone` varchar(32)
);

CREATE TABLE `horses` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `owner` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `sex` varchar(10),
  `age` int
);

CREATE TABLE `jockeys` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` varchar(255),
  `age` int,
  `rating` int
);

CREATE TABLE `battles` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` varchar(255),
  `location` varchar(255) NOT NULL,
  `startdate` datetime NOT NULL
);

CREATE TABLE `results` (
  `battle` int NOT NULL,
  `horse` int NOT NULL,
  `jockey` int NOT NULL,
  `place` int NOT NULL,
  `time` time(3) NOT NULL,
  PRIMARY KEY (`battle`, `horse`)
);

ALTER TABLE `horses` ADD FOREIGN KEY (`owner`) REFERENCES `owners` (`id`);

ALTER TABLE `results` ADD FOREIGN KEY (`battle`) REFERENCES `battles` (`id`);

ALTER TABLE `results` ADD FOREIGN KEY (`horse`) REFERENCES `horses` (`id`);

ALTER TABLE `results` ADD FOREIGN KEY (`jockey`) REFERENCES `jockeys` (`id`);
