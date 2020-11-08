-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 06 2020 г., 18:13
-- Версия сервера: 10.2.7-MariaDB
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `Rozhentsev`
--

-- --------------------------------------------------------

--
-- Структура таблицы `l2t2`
--

CREATE TABLE `l2t2` (
  `s1` bigint(20) NOT NULL,
  `s2` tinyint(4) NOT NULL,
  `s3` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `l2t2`
--

INSERT INTO `l2t2` (`s1`, `s2`, `s3`) VALUES
(0, 1, 1),
(1, 10, 1),
(2, 11, 2),
(3, 12, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `l2t3`
--

CREATE TABLE `l2t3` (
  `s1` bigint(20) DEFAULT NULL,
  `s3` int(11) DEFAULT NULL,
  `rozhentsev` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `l2t3`
--

INSERT INTO `l2t3` (`s1`, `s3`, `rozhentsev`) VALUES
(7, 4, '2020-11-04'),
(8, 5, '2020-11-04'),
(9, 6, '2020-11-04');

-- --------------------------------------------------------

--
-- Структура таблицы `l2t4`
--

CREATE TABLE `l2t4` (
  `s1` int(11) NOT NULL,
  `s2` bigint(20) DEFAULT NULL,
  `s3` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `l2t5`
--

CREATE TABLE `l2t5` (
  `s1` mediumint(9) NOT NULL,
  `s2` decimal(4,2) DEFAULT NULL,
  `s3` timestamp(5) NOT NULL DEFAULT current_timestamp(5) ON UPDATE current_timestamp(5)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `l2t6`
--

CREATE TABLE `l2t6` (
  `s1` mediumint(9) DEFAULT NULL,
  `s3` timestamp(5) NOT NULL DEFAULT current_timestamp(5) ON UPDATE current_timestamp(5)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `l2t2`
--
ALTER TABLE `l2t2`
  ADD PRIMARY KEY (`s1`);

--
-- Индексы таблицы `l2t3`
--
ALTER TABLE `l2t3`
  ADD UNIQUE KEY `s3` (`s3`),
  ADD UNIQUE KEY `s1` (`s1`);

--
-- Индексы таблицы `l2t4`
--
ALTER TABLE `l2t4`
  ADD PRIMARY KEY (`s1`),
  ADD KEY `s2` (`s2`),
  ADD KEY `s3` (`s3`);

--
-- Индексы таблицы `l2t5`
--
ALTER TABLE `l2t5`
  ADD PRIMARY KEY (`s1`,`s3`);

--
-- Индексы таблицы `l2t6`
--
ALTER TABLE `l2t6`
  ADD KEY `s1` (`s1`,`s3`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `l2t4`
--
ALTER TABLE `l2t4`
  MODIFY `s1` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `l2t4`
--
ALTER TABLE `l2t4`
  ADD CONSTRAINT `l2t4_ibfk_1` FOREIGN KEY (`s2`) REFERENCES `l2t2` (`s1`),
  ADD CONSTRAINT `l2t4_ibfk_2` FOREIGN KEY (`s3`) REFERENCES `l2t3` (`s1`);

--
-- Ограничения внешнего ключа таблицы `l2t6`
--
ALTER TABLE `l2t6`
  ADD CONSTRAINT `l2t6_ibfk_1` FOREIGN KEY (`s1`,`s3`) REFERENCES `l2t5` (`s1`, `s3`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
