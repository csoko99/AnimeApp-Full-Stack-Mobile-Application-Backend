-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2021. Dec 07. 13:55
-- Kiszolgáló verziója: 10.4.6-MariaDB
-- PHP verzió: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `animedb`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `animek`
--

DROP TABLE IF EXISTS `animek`;
CREATE TABLE `animek` (
  `anime_id` int(11) NOT NULL,
  `anime_nev` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `anime_megjdatum` date NOT NULL,
  `anime_mufaj` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `anime_evadsz` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `animek`
--

INSERT INTO `animek` (`anime_id`, `anime_nev`, `anime_megjdatum`, `anime_mufaj`, `anime_evadsz`) VALUES
(1, 'Kimetsu no Yaiba', '2019-04-06', 'Action, Supernatural', 2),
(2, 'Ousama Ranking', '2021-10-15', 'Adventure, Fantasy', 1),
(3, 'One Piece', '1999-10-20', 'Action, Adventure, Comedy, Drama, Fantasy', 1),
(4, 'Fullmetal Alchemist: Brotherhood', '2009-04-05', 'Action, Adventure, Comedy, Drama, Fantasy', 1),
(5, 'Blue Period', '2021-10-02', 'Drama, Slice of Life', 1),
(6, 'Shingeki no Kyojin', '2013-04-07', 'Action, Drama, Fantasy, Mystery', 4),
(7, 'Steins;Gate', '2011-04-06', 'Drama, Sci-Fi, Suspense', 1),
(8, 'Monster', '2004-04-07', 'Drama, Horror, Mystery, Suspense', 1),
(9, 'Vinland Saga', '2019-07-08', 'Action, Adventure, Drama', 2),
(10, 'Great Teacher Onizuka', '1999-06-30', 'Comedy, Drama, Slice of Life', 1);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `animek`
--
ALTER TABLE `animek`
  ADD PRIMARY KEY (`anime_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `animek`
--
ALTER TABLE `animek`
  MODIFY `anime_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
