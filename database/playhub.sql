-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Vært: 127.0.0.1
-- Genereringstid: 19. 08 2019 kl. 13:18:10
-- Serverversion: 10.1.30-MariaDB
-- PHP-version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `playhub`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `images`
--

CREATE TABLE `images` (
  `image_id` int(11) NOT NULL,
  `image_name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `images`
--

INSERT INTO `images` (`image_id`, `image_name`) VALUES
(2, 'img1.jpg'),
(3, 'img2.jpg'),
(4, 'img3.jpg'),
(5, 'img4.jpg'),
(6, 'img5.jpg'),
(7, 'img6.jpg'),
(8, 'img7.jpg'),
(9, 'img8.jpg'),
(10, 'img9.jpg'),
(11, 'img10.jpg'),
(12, 'img11.jpg'),
(13, 'img12.jpg'),
(14, 'img13.jpg'),
(15, 'img14.jpg'),
(16, 'img15.jpg'),
(17, 'img16.jpg'),
(18, 'img17.jpg'),
(19, 'img18.jpg'),
(20, 'img19.jpg'),
(21, 'img20.jpg'),
(22, 'img21.jpg'),
(23, 'img22.jpg');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `movies`
--

CREATE TABLE `movies` (
  `movie_id` int(128) NOT NULL,
  `movie_title` varchar(128) NOT NULL,
  `movie_rating` varchar(4) NOT NULL,
  `movie_year` int(4) NOT NULL,
  `movie_description` varchar(528) NOT NULL,
  `fk_movie_image_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `movies`
--

INSERT INTO `movies` (`movie_id`, `movie_title`, `movie_rating`, `movie_year`, `movie_description`, `fk_movie_image_id`) VALUES
(1, 'Otherhood', 'Tal', 1900, 'Beskrivelse', 2),
(2, 'The Boys', 'Tal', 1900, 'Beskrivelse', 3),
(3, 'Alita Battle Angel', 'Tal', 1900, 'Beskrivelse', 4),
(4, 'Aladin', 'Tal', 1900, 'Beskrivelse', 5),
(5, 'The Red Sea Diving Resort', 'Tal', 1900, 'Beskrivelse', 6),
(6, 'Descendants 3', 'Tal', 1900, 'Beskrivelse', 7),
(7, 'Avengers Endgame', 'Tal', 1900, 'Beskrivelse', 8),
(8, 'Shazam', 'Tal', 1900, 'Beskrivelse', 9),
(9, 'Venom', 'Tal', 1900, 'Beskrivelse', 10),
(10, 'A Dog\'s Journey', 'Tal', 1900, 'Beskrivelse', 11),
(11, 'A Star Is Born', 'Tal', 1900, 'Beskrivelse', 12),
(12, 'Bohemian Rhapsody', 'Tal', 1900, 'Beskrivelse', 13),
(13, 'Captain Marvel', 'Tal', 1900, 'Beskrivelse', 14),
(14, 'Spider-man', 'Tal', 1900, 'Beskrivelse', 15),
(15, 'Detective Pikachu', 'Tal', 1900, 'Beskrivelse', 16),
(16, 'IT', 'Tal', 1900, 'Beskrivelse', 17),
(17, 'Lion King', 'Tal', 1900, 'Beskrivelse', 18),
(18, 'Hellboy', 'Tal', 1900, 'Beskrivelse', 19),
(19, 'Inglorious Bastards', 'Tal', 1900, 'Beskrivelse', 20),
(20, 'Now and Then', 'Tal', 1900, 'Beskrivelse', 21),
(21, 'The Hustle', 'Tal', 1900, 'Beskrivelse', 22),
(22, 'Rocketman', 'Tal', 1900, 'Beskrivelse', 23);

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`image_id`),
  ADD UNIQUE KEY `image_id` (`image_id`),
  ADD UNIQUE KEY `image_id_2` (`image_id`);

--
-- Indeks for tabel `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`),
  ADD UNIQUE KEY `movie_id` (`movie_id`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `images`
--
ALTER TABLE `images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Tilføj AUTO_INCREMENT i tabel `movies`
--
ALTER TABLE `movies`
  MODIFY `movie_id` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
