-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Feb 02. 21:53
-- Kiszolgáló verziója: 10.4.22-MariaDB
-- PHP verzió: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `pizza`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pizza`
--

CREATE TABLE `pizza` (
  `id` int(11) NOT NULL,
  `nev` varchar(14) DEFAULT NULL,
  `meret` varchar(5) DEFAULT NULL,
  `ar` varchar(4) DEFAULT NULL,
  `foto` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `pizza`
--

INSERT INTO `pizza` (`id`, `nev`, `meret`, `ar`, `foto`) VALUES
(1, '4 sajtos', '22', '1150', 'https://i.ibb.co/r5wWCcf/pexels-pixabay-315755.jpg'),
(2, '4 sajtos', '30', '1450', 'https://i.ibb.co/r5wWCcf/pexels-pixabay-315755.jpg'),
(3, '4 sajtos', '45', '2850', 'https://i.ibb.co/r5wWCcf/pexels-pixabay-315755.jpg'),
(4, 'Baconos', '22', '1250', 'https://i.ibb.co/Px966Tj/pexels-kei-photo-2741457.jpg'),
(5, 'Baconos', '30', '1550', 'https://i.ibb.co/Px966Tj/pexels-kei-photo-2741457.jpg'),
(6, 'Baconos', '45', '2950', 'https://i.ibb.co/Px966Tj/pexels-kei-photo-2741457.jpg'),
(7, 'Big Boss', '22', '1150', 'https://i.ibb.co/d5fpq23/pexels-pixabay-263041.jpg'),
(8, 'Big Boss', '30', '1450', 'https://i.ibb.co/d5fpq23/pexels-pixabay-263041.jpg'),
(9, 'Big Boss', '45', '2850', 'https://i.ibb.co/d5fpq23/pexels-pixabay-263041.jpg'),
(10, 'Bitang', '22', '1250', 'https://i.ibb.co/yhBrh2x/pexels-engin-akyurt-2619967.jpg'),
(11, 'Bitang', '30', '1550', 'https://i.ibb.co/yhBrh2x/pexels-engin-akyurt-2619967.jpg'),
(12, 'Bitang', '45', '2950', 'https://i.ibb.co/yhBrh2x/pexels-engin-akyurt-2619967.jpg'),
(13, 'Bolognai', '22', '1150', 'https://i.ibb.co/x59XzpJ/pexels-vincent-rivaud-2147491.jpg'),
(14, 'Bolognai', '30', '1450', 'https://i.ibb.co/x59XzpJ/pexels-vincent-rivaud-2147491.jpg'),
(15, 'Bolognai', '45', '2850', 'https://i.ibb.co/x59XzpJ/pexels-vincent-rivaud-2147491.jpg'),
(16, 'Chee-pollo', '22', '1250', 'https://i.ibb.co/bXZHwpV/pexels-pixabay-208537.jpg'),
(17, 'Chee-pollo', '30', '1550', 'https://i.ibb.co/bXZHwpV/pexels-pixabay-208537.jpg'),
(18, 'Chee-pollo', '45', '2950', 'https://i.ibb.co/bXZHwpV/pexels-pixabay-208537.jpg'),
(19, 'El Bandi', '22', '1150', 'https://i.ibb.co/r5wWCcf/pexels-pixabay-315755.jpg'),
(20, 'El Bandi', '30', '1450', 'https://i.ibb.co/r5wWCcf/pexels-pixabay-315755.jpg'),
(21, 'El Bandi', '45', '2850', 'https://i.ibb.co/r5wWCcf/pexels-pixabay-315755.jpg'),
(22, 'Elvis', '22', '1400', 'https://i.ibb.co/6R6q44P/pexels-pablo-macedo-845798-1.jpg'),
(23, 'Elvis', '30', '1750', 'https://i.ibb.co/6R6q44P/pexels-pablo-macedo-845798-1.jpg'),
(24, 'Elvis', '45', '3150', 'https://i.ibb.co/6R6q44P/pexels-pablo-macedo-845798-1.jpg');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `pizza`
--
ALTER TABLE `pizza`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `pizza`
--
ALTER TABLE `pizza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
