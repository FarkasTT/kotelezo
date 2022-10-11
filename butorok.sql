-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Okt 11. 08:16
-- Kiszolgáló verziója: 10.4.24-MariaDB
-- PHP verzió: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `butorok`
--
CREATE DATABASE IF NOT EXISTS `butorok` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci;
USE `butorok`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tipus`
--

CREATE TABLE `tipus` (
  `tipus_id` int(11) NOT NULL,
  `tipus_nev` varchar(20) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `tipus_ar` int(11) NOT NULL,
  `tipus_szin` varchar(20) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `tipus_meret` int(11) NOT NULL,
  `tipus_anyag` varchar(20) COLLATE utf8mb4_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `tipus`
--

INSERT INTO `tipus` (`tipus_id`, `tipus_nev`, `tipus_ar`, `tipus_szin`, `tipus_meret`, `tipus_anyag`) VALUES
(1, 'pad', 1500, 'barna', 200, 'fa'),
(2, 'ágy', 3000, 'barna', 350, 'fa'),
(3, 'szekrény', 2700, 'fekete', 250, 'fa'),
(4, 'asztal', 140, 'szürke', 150, 'fa'),
(5, 'iróasztal', 220, 'fehér', 300, 'fa'),
(6, 'asd', 4000, 'barna', 150, 'fa'),
(7, 'qwe', 200, 'rew', 300, 'fa'),
(8, 'qw', 240, 'acv', 566, 'uz');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `tipus`
--
ALTER TABLE `tipus`
  ADD PRIMARY KEY (`tipus_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `tipus`
--
ALTER TABLE `tipus`
  MODIFY `tipus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
