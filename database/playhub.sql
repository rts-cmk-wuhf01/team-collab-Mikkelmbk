-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Vært: 127.0.0.1
-- Genereringstid: 21. 08 2019 kl. 12:34:03
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
  `image_name` varchar(128) NOT NULL,
  `fk_image_movie_id` int(11) NOT NULL,
  `fk_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `images`
--

INSERT INTO `images` (`image_id`, `image_name`, `fk_image_movie_id`, `fk_type_id`) VALUES
(2, 'img1.jpg', 1, 1),
(3, 'img2.jpg', 2, 1),
(4, 'img3.jpg', 3, 1),
(5, 'img4.jpg', 4, 1),
(6, 'img5.jpg', 5, 1),
(7, 'img6.jpg', 6, 1),
(8, 'img7.jpg', 7, 1),
(9, 'img8.jpg', 8, 1),
(10, 'img9.jpg', 9, 1),
(11, 'img10.jpg', 10, 1),
(12, 'img11.jpg', 11, 1),
(13, 'img12.jpg', 12, 1),
(14, 'img13.jpg', 13, 1),
(15, 'img14.jpg', 14, 1),
(16, 'img15.jpg', 15, 1),
(17, 'img16.jpg', 16, 1),
(18, 'img17.jpg', 17, 1),
(19, 'img18.jpg', 18, 1),
(20, 'img19.jpg', 19, 1),
(21, 'img20.jpg', 20, 1),
(22, 'img21.jpg', 21, 1),
(23, 'img22.jpg', 22, 1),
(24, 'featuredimg1.jpg', 23, 2),
(25, 'featuredimg2.jpg', 24, 2),
(26, 'featuredimg3.jpg', 25, 2),
(27, 'featuredimg4.jpg', 26, 2),
(28, 'featuredimg5.jpg', 27, 2),
(29, 'featuredimg6.jpg', 28, 2),
(30, 'featuredimg7.jpg', 29, 2),
(31, 'featuredimg8.jpg', 30, 2);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `messages`
--

CREATE TABLE `messages` (
  `message_id` int(11) NOT NULL,
  `message_name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `message_email` varchar(100) CHARACTER SET latin1 NOT NULL,
  `fk_messagecategory_id` int(11) NOT NULL,
  `message_text` varchar(1000) CHARACTER SET latin1 NOT NULL,
  `message_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `messages`
--

INSERT INTO `messages` (`message_id`, `message_name`, `message_email`, `fk_messagecategory_id`, `message_text`, `message_date`) VALUES
(4, 'Mikkel Back Koll', 'Mikkelmbk@live.dk', 1, '        gsfgsdfs       ', '2019-08-20 11:00:33'),
(5, 'Nanna K Jensen', 'nannakari@gmail.com', 1, '                tjuætuiæ', '2019-08-21 08:12:07'),
(6, 'Nanna K Jensen', 'nannakari@gmail.com', 1, '                tjuætuiæ', '2019-08-21 08:17:10'),
(7, 'Nanna K Jensen', 'nannakari@gmail.com', 1, '                dgmsf,', '2019-08-21 08:17:18'),
(8, 'Nanna K Jensen', 'nannakari@gmail.com', 1, '                dgmsf,', '2019-08-21 08:19:22'),
(9, 'Nanna K Jensen', 'nannakari@gmail.com', 1, '                dgmsf,', '2019-08-21 08:20:34'),
(10, 'Nanna K Jensen', 'nannakari@gmail.com', 2, '                dtk,yru.lryiæ', '2019-08-21 08:26:10'),
(11, 'Nanna K Jensen', 'nannakari@gmail.com', 2, '                dtk,yru.lryiæ', '2019-08-21 08:27:11'),
(12, 'Nanna K Jensen', 'nannakari@gmail.com', 2, '                dtk,yru.lryiæ', '2019-08-21 08:27:35'),
(13, 'Nanna K Jensen', 'nannakari@gmail.com', 2, '                dtk,yru.lryiæ', '2019-08-21 08:27:53'),
(14, 'Nanna K Jensen', 'nannakari@gmail.com', 2, '                dtk,yru.lryiæ', '2019-08-21 08:28:06'),
(15, 'Nanna K Jensen', 'nannakari@gmail.com', 2, '                dtk,yru.lryiæ', '2019-08-21 08:28:09'),
(16, 'Nanna K Jensen', 'nannakari@gmail.com', 2, '                dtk,yru.lryiæ', '2019-08-21 08:28:39'),
(17, 'Nanna K Jensen', 'nannakari@gmail.com', 2, '                dgh,yri.ætuo', '2019-08-21 08:28:55'),
(18, 'Nanna K Jensen', 'nannakari@gmail.com', 2, '                d.lfhi-tuo', '2019-08-21 08:29:05');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `movies`
--

CREATE TABLE `movies` (
  `movie_id` int(128) NOT NULL,
  `movie_title` varchar(128) NOT NULL,
  `movie_rating` varchar(4) NOT NULL,
  `movie_year` int(4) NOT NULL,
  `movie_description` varchar(528) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `movies`
--

INSERT INTO `movies` (`movie_id`, `movie_title`, `movie_rating`, `movie_year`, `movie_description`) VALUES
(1, 'Otherhood', 'Tal', 1900, 'Beskrivelse'),
(2, 'The Boys', 'Tal', 1900, 'Beskrivelse'),
(3, 'Alita Battle Angel', 'Tal', 1900, 'Beskrivelse'),
(4, 'Aladin', 'Tal', 1900, 'Beskrivelse'),
(5, 'The Red Sea Diving Resort', 'Tal', 1900, 'Beskrivelse'),
(6, 'Descendants 3', 'Tal', 1900, 'Beskrivelse'),
(7, 'Avengers Endgame', 'Tal', 1900, 'Beskrivelse'),
(8, 'Shazam', 'Tal', 1900, 'Beskrivelse'),
(9, 'Venom', 'Tal', 1900, 'Beskrivelse'),
(10, 'A Dog\'s Journey', 'Tal', 1900, 'Beskrivelse'),
(11, 'A Star Is Born', 'Tal', 1900, 'Beskrivelse'),
(12, 'Bohemian Rhapsody', 'Tal', 1900, 'Beskrivelse'),
(13, 'Captain Marvel', 'Tal', 1900, 'Beskrivelse'),
(14, 'Spider-man', 'Tal', 1900, 'Beskrivelse'),
(15, 'Detective Pikachu', 'Tal', 1900, 'Beskrivelse'),
(16, 'IT', 'Tal', 1900, 'Beskrivelse'),
(17, 'Lion King', 'Tal', 1900, 'Beskrivelse'),
(18, 'Hellboy', 'Tal', 1900, 'Beskrivelse'),
(19, 'Inglorious Bastards', 'Tal', 1900, 'Beskrivelse'),
(20, 'Now and Then', 'Tal', 1900, 'Beskrivelse'),
(21, 'The Hustle', 'Tal', 1900, 'Beskrivelse'),
(22, 'Rocketman', 'Tal', 1900, 'Beskrivelse'),
(23, 'Night Hunter Featured', 'Tal', 1900, 'Beskrivelse'),
(24, 'Orange is the new black Featured', 'Tal', 1900, 'Beskrivelse'),
(25, 'Brightburn Featured', 'Tal', 1900, 'Beskrivelse'),
(26, 'Sacred Games Featured', 'Tal', 1900, 'Beskrivelse'),
(27, 'Mindhunter Featured', 'Tal', 1900, 'Beskrivelse'),
(28, 'Aquaman Featured', 'Tal', 1900, 'Beskrivelse'),
(29, 'The Boys Featured', 'Tal', 1900, 'Beskrivelse'),
(30, 'Avengers Endgame Featured', 'Tal', 1900, 'Beskrivelse');

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
-- Indeks for tabel `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`message_id`);

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
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Tilføj AUTO_INCREMENT i tabel `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Tilføj AUTO_INCREMENT i tabel `movies`
--
ALTER TABLE `movies`
  MODIFY `movie_id` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
