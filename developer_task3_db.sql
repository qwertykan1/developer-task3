-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 19 2019 г., 00:05
-- Версия сервера: 8.0.15
-- Версия PHP: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `developer_task3_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `black_list`
--

CREATE TABLE `black_list` (
  `product_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `black_list`
--

INSERT INTO `black_list` (`product_id`, `city_id`) VALUES
(1, 6),
(4, 1),
(3, 6),
(3, 4),
(3, 6),
(9, 4),
(2, 6),
(2, 1),
(9, 4),
(4, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `region_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cities`
--

INSERT INTO `cities` (`id`, `name`, `region_id`) VALUES
(1, 'Волгоград', 1),
(2, 'Волжский', 1),
(3, 'Краснодар', 3),
(4, 'Сочи', 3),
(5, 'Самара', 2),
(6, 'Тольятти', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `pharmacies`
--

CREATE TABLE `pharmacies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pharmacies`
--

INSERT INTO `pharmacies` (`id`, `name`, `city_id`) VALUES
(1, 'Здоровье', 1),
(2, 'Леко', 1),
(3, 'Радость', 1),
(4, 'ВИТАФАРМ', 2),
(5, 'Будь здоров', 3),
(6, 'Медстайл', 3),
(7, 'Аптека 35', 4),
(8, 'ТАИТА', 4),
(9, 'МЕЛИОР', 4),
(10, 'Вита', 5),
(11, 'Мелодия здоровья', 5),
(12, 'Ладушка', 5),
(13, 'Пересвет', 6),
(14, 'Доктор Столетов', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `pharmacy_product`
--

CREATE TABLE `pharmacy_product` (
  `pharmacy_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pharmacy_product`
--

INSERT INTO `pharmacy_product` (`pharmacy_id`, `product_id`) VALUES
(3, 3),
(3, 10),
(5, 7),
(10, 8),
(14, 10),
(8, 8),
(3, 10),
(10, 8),
(9, 9),
(3, 10),
(6, 9),
(4, 10),
(9, 5),
(2, 7),
(8, 10),
(3, 2),
(7, 5),
(5, 3),
(10, 4),
(6, 2),
(4, 5),
(6, 10),
(14, 10),
(12, 4),
(6, 7),
(8, 4),
(14, 5),
(14, 10),
(3, 8),
(10, 6),
(11, 4),
(2, 2),
(11, 8),
(9, 3),
(12, 5),
(3, 10),
(14, 4),
(9, 10),
(2, 9),
(9, 3),
(6, 1),
(10, 9),
(8, 2),
(12, 1),
(4, 4),
(11, 10),
(1, 7),
(10, 9),
(1, 2),
(4, 6),
(14, 5),
(11, 2),
(4, 3),
(14, 10),
(7, 4),
(3, 9),
(6, 1),
(14, 2),
(11, 1),
(13, 5),
(5, 1),
(7, 9),
(5, 7),
(2, 6),
(10, 8),
(7, 8),
(10, 9),
(9, 4),
(8, 3),
(13, 8),
(1, 3),
(7, 4),
(11, 10),
(1, 1),
(7, 3),
(10, 5),
(8, 3),
(5, 2),
(10, 5),
(4, 4),
(7, 2),
(2, 1),
(6, 10),
(3, 4),
(13, 5),
(13, 2),
(7, 6),
(6, 8),
(13, 5),
(5, 5),
(11, 1),
(5, 2),
(13, 1),
(6, 5),
(1, 7),
(11, 10),
(7, 9),
(12, 7),
(12, 8),
(10, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`) VALUES
(1, 'Парацетамол'),
(2, 'Ранитидин'),
(3, 'Кагоцел'),
(4, 'Бетаксолол'),
(5, 'Верапамил'),
(6, 'Каптоприл'),
(7, 'Нитроглицерин'),
(8, 'Тетрациклин'),
(9, 'Хлорамфеникол'),
(10, 'Эналаприл');

-- --------------------------------------------------------

--
-- Структура таблицы `regions`
--

CREATE TABLE `regions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `regions`
--

INSERT INTO `regions` (`id`, `name`) VALUES
(1, 'Волгорадская облать'),
(2, 'Самарская облать'),
(3, 'Краснодарский край');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pharmacies`
--
ALTER TABLE `pharmacies`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `pharmacies`
--
ALTER TABLE `pharmacies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `regions`
--
ALTER TABLE `regions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
