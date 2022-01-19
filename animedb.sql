-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Jan 19. 12:01
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

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `roles`
--

INSERT INTO `roles` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'user', '2020-08-02 14:57:31', '2020-08-02 14:57:31'),
(2, 'moderator', '2020-08-02 14:57:31', '2020-08-02 14:57:31'),
(3, 'admin', '2020-08-02 14:57:31', '2020-08-02 14:57:31');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szavazatok`
--

CREATE TABLE `szavazatok` (
  `szavazat_id` int(11) NOT NULL,
  `szavazat_animeid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `szavazatok`
--

INSERT INTO `szavazatok` (`szavazat_id`, `szavazat_animeid`) VALUES
(1, 2),
(2, 3),
(3, 4),
(4, 4),
(5, 1),
(6, 1),
(7, 2),
(8, 1),
(9, 1),
(10, 1),
(11, 3);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'user', 'user', '$2a$08$gXM4pyuhZFlC72PeAwxrUOR0uA31/d2PdgnHP35JGV.0bQNiZBatS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'mod', 'mod', '$2a$08$gXM4pyuhZFlC72PeAwxrUOR0uA31/d2PdgnHP35JGV.0bQNiZBatS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'admin', 'admin', '$2a$08$97Ze1/hXfOX44WdC62Rq8uRkog9HYC1HukRX8eld2ZEKPyenM5v.G', '2020-08-02 15:03:59', '2020-08-02 15:03:59'),
(14, 'csoko99', 'laczkolali77@gmail.com', '$2a$08$4jMqJQfOT8sxS4y/FU.22uJCjmId7hftTGNciifAs.kQ6knjYud7i', '2022-01-17 10:37:24', '2022-01-17 10:37:24');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `user_roles`
--

CREATE TABLE `user_roles` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roleId` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `user_roles`
--

INSERT INTO `user_roles` (`createdAt`, `updatedAt`, `roleId`, `userId`) VALUES
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
('2020-08-02 15:04:00', '2020-08-02 15:04:00', 1, 3),
('2022-01-17 10:37:24', '2022-01-17 10:37:24', 1, 14),
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 2),
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 3),
('2020-08-02 15:04:00', '2020-08-02 15:04:00', 3, 3);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `animek`
--
ALTER TABLE `animek`
  ADD PRIMARY KEY (`anime_id`);

--
-- A tábla indexei `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `szavazatok`
--
ALTER TABLE `szavazatok`
  ADD PRIMARY KEY (`szavazat_id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`roleId`,`userId`),
  ADD KEY `userId` (`userId`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `animek`
--
ALTER TABLE `animek`
  MODIFY `anime_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT a táblához `szavazatok`
--
ALTER TABLE `szavazatok`
  MODIFY `szavazat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
