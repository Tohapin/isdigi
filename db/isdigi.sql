-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Oct 09, 2020 at 09:06 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `isdigi`
--

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE `collection` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `collection`
--

INSERT INTO `collection` (`id`, `title`) VALUES
(1, 'кухня'),
(2, 'зал'),
(3, 'офис'),
(4, 'дача'),
(5, 'лофт');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `price` int(100) UNSIGNED NOT NULL,
  `id_collection` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `id_collection`) VALUES
(1, 'Стандарт (протон)', 12344, 1),
(2, 'Стул ИЗО ткань ( протон)', 12314, 1),
(3, 'Стул ИЗО иск. кожа ( протон)', 21312, 1),
(4, 'Кора ткань ( протон)', 323, 2),
(5, 'Изо каркас черный', 3233, 2),
(6, 'Бюрократ Виси черный черный 2', 4354, 2),
(7, 'Бюрократ Виси черный черный 1', 565, 2),
(8, 'Мирэй 1', 6756, 3),
(9, 'Мирэй 2', 879, 3),
(10, 'Мирэй 3', 756, 3),
(11, 'Мирэй 4', 3768, 3),
(12, 'Мирэй 5', 454, 3),
(13, 'Мирэй 6', 7233, 3),
(14, 'Мирэй 7', 958, 3),
(15, 'СИЛЬВИЯ протон 1', 5688, 4),
(16, 'СИЛЬВИЯ протон 2', 5345, 5),
(17, 'СИЛЬВИЯ протон 3', 345, 4),
(18, 'СИЛЬВИЯ протон 4', 5643, 4),
(19, 'СИЛЬВИЯ протон 5', 658, 4),
(20, 'СИЛЬВИЯ протон 6', 8675, 4),
(21, 'Регал 1', 434, 5),
(22, 'Регал 2', 3454, 5),
(23, 'Регал 3', 6575, 5),
(24, 'МАРТИН 1', 5676, 6),
(25, 'МАРТИН 2', 567, 6),
(26, 'МАРТИН 3', 745, 6),
(27, 'МАРТИН 4', 4555, 6),
(28, 'МАРТИН 5', 654, 6),
(29, 'МАРТИН 6', 4564, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `collection`
--
ALTER TABLE `collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
