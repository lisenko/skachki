-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: std-mysql
-- Время создания: Ноя 24 2022 г., 15:35
-- Версия сервера: 5.7.26-0ubuntu0.16.04.1
-- Версия PHP: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `std_1929_project`
--

-- --------------------------------------------------------

--
-- Структура таблицы `battles`
--

CREATE TABLE `battles` (
  `id` int(11) NOT NULL,
  `battle` varchar(30) NOT NULL,
  `table_battle` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `battles`
--

INSERT INTO `battles` (`id`, `battle`, `table_battle`) VALUES
(1, 'Чёрное море', 'battle_BlackSea');

-- --------------------------------------------------------

--
-- Структура таблицы `battle_BlackSea`
--

CREATE TABLE `battle_BlackSea` (
  `jockey` varchar(30) NOT NULL,
  `horse` varchar(30) NOT NULL,
  `place` int(11) NOT NULL,
  `id_jockey` int(11) NOT NULL FOREIGN KEY,
  `id_horse` int(11) NOT NULL FOREIGN KEY
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `battle_BlackSea`
--

INSERT INTO `battle_BlackSea` (`jockey`, `horse`, `place`, `id_jockey`, `id_horse`) VALUES
('Иван', 'Юлий', 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `horses`
--

CREATE TABLE `horses` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `horses`
--

INSERT INTO `horses` (`id`, `name`) VALUES
(1, 'Юлий');

-- --------------------------------------------------------

--
-- Структура таблицы `jockeys`
--

CREATE TABLE `jockeys` (
  `id` int(11) NOT NULL,
  `jockey` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `jockeys`
--

INSERT INTO `jockeys` (`id`, `jockey`) VALUES
(1, 'Иван');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `battles`
--
ALTER TABLE `battles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `battle` (`battle`),
  ADD UNIQUE KEY `table_battle` (`table_battle`);

--
-- Индексы таблицы `battle_BlackSea`
--
ALTER TABLE `battle_BlackSea`
  ADD UNIQUE KEY `jockey` (`jockey`),
  ADD UNIQUE KEY `horse` (`horse`),
  ADD UNIQUE KEY `place` (`place`),
  ADD UNIQUE KEY `id_jockey` (`id_jockey`),
  ADD UNIQUE KEY `id_horse` (`id_horse`);

--
-- Индексы таблицы `horses`
--
ALTER TABLE `horses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `jockeys`
--
ALTER TABLE `jockeys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jockey` (`jockey`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `battles`
--
ALTER TABLE `battles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `horses`
--
ALTER TABLE `horses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `jockeys`
--
ALTER TABLE `jockeys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
