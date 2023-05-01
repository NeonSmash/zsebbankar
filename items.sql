-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Máj 01. 11:54
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
-- Adatbázis: `zsebbankar`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `amount` int(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `items`
--

INSERT INTO `items` (`id`, `title`, `description`, `amount`, `date`) VALUES
(14, 'Munkabér', 'Március', 295000, '2023-04-10'),
(15, 'Diákhitel', 'Március', 15000, '2023-04-07'),
(16, 'Használt bicikli eladása', 'Fekete Btwin', 200000, '2023-04-20'),
(17, 'Fűnyírás', 'szomszéd Erzsi néni', 10000, '2023-04-12'),
(18, 'Lottónyeremény', 'hármas találat az ötös lottón', 33000, '2023-04-17'),
(19, 'Bevásárlás', 'Gyümölcs, zöldség és kenyér', -15000, '2023-04-01'),
(21, 'Új telefon', 'Samsung Galaxy A54', -350000, '2023-04-15'),
(22, 'Fodrász', 'Férfi hajnyírás', -3200, '2023-04-21'),
(23, 'Utazás Kalocsára', 'Vonatjegy teszt2', -10000, '2023-04-09'),
(28, 'Zsebpénz', 'Mami', 20000, '2023-03-31');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
