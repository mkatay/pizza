-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Már 09. 20:37
-- Kiszolgáló verziója: 10.4.27-MariaDB
-- PHP verzió: 8.2.0

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
-- Tábla szerkezet ehhez a táblához `pricelist`
--

CREATE TABLE `pricelist` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `size` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `price` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `pricelist`
--

INSERT INTO `pricelist` (`id`, `product_id`, `size`, `price`) VALUES
(1, 1, '22', '1150'),
(2, 1, '30', '1450'),
(3, 1, '45', '2850'),
(4, 4, '22', '1250'),
(5, 4, '30', '1550'),
(6, 4, '45', '2950'),
(7, 7, '22', '1150'),
(8, 7, '30', '1450'),
(9, 7, '45', '2850'),
(10, 10, '22', '1250'),
(11, 10, '30', '1550'),
(12, 10, '45', '2950'),
(13, 13, '22', '1150'),
(14, 13, '30', '1450'),
(15, 13, '45', '2850'),
(16, 16, '22', '1250'),
(17, 16, '30', '1550'),
(18, 16, '45', '2950'),
(19, 19, '22', '1150'),
(20, 19, '30', '1450'),
(21, 19, '45', '2850'),
(22, 22, '22', '1400'),
(23, 22, '30', '1750'),
(24, 22, '45', '3150');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `img_url` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `products`
--

INSERT INTO `products` (`id`, `name`, `img_url`) VALUES
(1, '4 sajtos', 'https://i.ibb.co/r5wWCcf/pexels-pixabay-315755.jpg'),
(4, 'Baconos', 'https://i.ibb.co/Px966Tj/pexels-kei-photo-2741457.jpg'),
(7, 'Big Boss', 'https://i.ibb.co/d5fpq23/pexels-pixabay-263041.jpg'),
(10, 'Bitang', 'https://i.ibb.co/yhBrh2x/pexels-engin-akyurt-2619967.jpg'),
(13, 'Bolognai', 'https://i.ibb.co/x59XzpJ/pexels-vincent-rivaud-2147491.jpg'),
(16, 'Chee-pollo', 'https://i.ibb.co/bXZHwpV/pexels-pixabay-208537.jpg'),
(19, 'El Bandi', 'https://i.ibb.co/r5wWCcf/pexels-pixabay-315755.jpg'),
(22, 'Elvis', 'https://i.ibb.co/6R6q44P/pexels-pablo-macedo-845798-1.jpg');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `pricelist`
--
ALTER TABLE `pricelist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- A tábla indexei `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `pricelist`
--
ALTER TABLE `pricelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT a táblához `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `pricelist`
--
ALTER TABLE `pricelist`
  ADD CONSTRAINT `pricelist_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
