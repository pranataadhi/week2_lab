-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20230106.cdc2f37a1d
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2024 at 01:31 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news_website`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `author`, `publish_date`, `image_url`) VALUES
(1, 'Teknologi Masa Depan', 'Teknologi berkembang pesat dan membawa berbagai inovasi yang mengubah cara kita hidup. Dari kecerdasan buatan hingga kendaraan otonom, teknologi masa depan menawarkan banyak kemungkinan yang menarik. Pelajari lebih lanjut tentang bagaimana teknologi ini dapat mempengaruhi kehidupan sehari-hari kita.', 'John Doe', '2024-08-10', 'images/teknologiMasaDepan.jpeg'),
(2, 'Keindahan Alam', 'Keindahan alam tidak hanya terletak pada pemandangan yang menakjubkan tetapi juga pada kekayaan biodiversitas yang ada di bumi kita. Dari pegunungan yang menjulang tinggi hingga hutan yang lebat, setiap sudut alam memiliki cerita dan keunikan tersendiri yang patut untuk dijaga dan dilestarikan.', 'Jane Smith', '2024-08-10', 'images/keindahanAlam.jpeg'),
(3, 'Sejarah Komputer', 'Sejarah komputer dimulai dengan mesin-mesin sederhana yang digunakan untuk perhitungan matematika. Seiring waktu, komputer telah berkembang menjadi perangkat canggih yang memainkan peran penting dalam hampir setiap aspek kehidupan kita. Temukan bagaimana komputer telah berevolusi dari masa ke masa dan bagaimana dampaknya terhadap teknologi modern.', 'Alice Johnson', '2024-08-10', 'images/SejarahKomputer.jpeg'),
(4, 'Kesehatan Mental', 'Kesehatan mental adalah aspek penting dari kesehatan yang sering kali diabaikan. Stres, kecemasan, dan depresi dapat mempengaruhi kualitas hidup seseorang secara signifikan. Artikel ini membahas cara-cara untuk menjaga kesehatan mental dan pentingnya dukungan sosial dalam mengatasi tantangan mental.', 'Michael Brown', '2024-08-10', 'images/KesehatanMental.jpeg'),
(5, 'Revolusi Energi Terbarukan', 'Energi terbarukan menjadi solusi penting untuk mengatasi perubahan iklim dan mengurangi ketergantungan pada sumber energi fosil. Dari energi matahari hingga energi angin, revolusi energi terbarukan sedang berlangsung dan menawarkan peluang untuk menciptakan masa depan yang lebih bersih dan berkelanjutan.', 'Emma Wilson', '2024-08-10', 'images/RevolusiEnergiTerbarukan.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', 'adminpass'),
(2, 'editor', 'editorpass');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
