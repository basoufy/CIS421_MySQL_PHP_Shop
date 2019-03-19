-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 19, 2019 at 06:08 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `brand` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `brand`) VALUES
(1, 'Levis'),
(2, 'Hollisters'),
(6, 'Nike'),
(22, 'Polo'),
(23, 'Misc'),
(25, 'Hugo Boss'),
(26, 'Aeropostale'),
(27, 'Chanel'),
(28, 'Under Armor'),
(29, 'FUBU'),
(30, 'Carters'),
(31, 'Prada'),
(32, 'UNIQLO US'),
(33, 'Copper Key');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `items` text COLLATE utf8_unicode_ci NOT NULL,
  `expire_date` datetime NOT NULL,
  `paid` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `items`, `expire_date`, `paid`) VALUES
(1, '[{\"id\":\"15\",\"size\":\"Large\",\"quantity\":4},{\"id\":\"17\",\"size\":\"Small\",\"quantity\":\"1\"}]', '2019-04-17 06:12:31', 0),
(2, '[{\"id\":\"17\",\"size\":\"Small\",\"quantity\":\"1\"},{\"id\":\"15\",\"size\":\"Medium\",\"quantity\":\"2\"},{\"id\":\"19\",\"size\":\"11\",\"quantity\":\"3\"},{\"id\":\"17\",\"size\":\"Large\",\"quantity\":5},{\"id\":\"14\",\"size\":\"Small\",\"quantity\":5}]', '2019-04-17 07:21:07', 0),
(3, '[{\"id\":\"17\",\"size\":\"Medium\",\"quantity\":2},{\"id\":\"16\",\"size\":\"Large\",\"quantity\":4},{\"id\":\"14\",\"size\":\"Large\",\"quantity\":13}]', '2019-04-18 01:24:06', 0),
(5, '[{\"id\":\"26\",\"size\":\"1\",\"quantity\":\"1\"}]', '2019-04-18 02:40:01', 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `parent`) VALUES
(5, 'Shirts', 23),
(6, 'Pants', 23),
(7, 'Shoes', 23),
(8, 'Accessories', 23),
(9, 'Shirts', 24),
(10, 'Pants', 24),
(11, 'Shoes', 24),
(12, 'Dresses', 24),
(13, 'Shirts', 25),
(14, 'Pants', 25),
(15, 'Dresses', 26),
(16, 'Shoes', 26),
(23, 'Men', 0),
(24, 'Women', 0),
(25, 'Boys', 0),
(26, 'Girls', 0),
(38, 'Pants', 26),
(43, 'Shoes', 25),
(44, 'Accessories', 24),
(47, 'Onesie', 25),
(48, 'Onesie', 26),
(49, 'Shirts', 26);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `list_price` decimal(10,2) NOT NULL,
  `brand` int(11) NOT NULL,
  `categories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  `sizes` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `list_price`, `brand`, `categories`, `image`, `description`, `featured`, `sizes`, `deleted`) VALUES
(14, 'New York T-Shirt', '23.99', '34.99', 26, '5', '/421/images/products/400c83fb8f417909c5db38b891fbb20b.jpeg', 'New York 34th Aeropostale T-Shirt\r\n100% Pure Cotton! \r\nGet it today! ', 1, 'Small:5,Medium:9,Large:15', 0),
(15, 'Blue LX T-Shirt', '19.99', '24.99', 26, '5', '/421/images/products/78e26440bca4114f4361dbd2e65f6999.jpeg', 'Blue LX Aeropostale T-Shirt\r\n100% Pure Cotton! \r\nGet it today! ', 0, 'Small:10,Medium:13,Large:6,XL:19', 0),
(16, 'Comfy Flannel', '24.99', '32.99', 26, '5', '/421/images/products/105a461a16fb79b6e3de4b2052c05c70.jpeg', 'Red and Blue Flannel Aeropostale Button Up\r\nGet it today! ', 1, 'Small:2,Medium:10,Large:24', 0),
(17, 'Silk Skirt', '32.99', '54.99', 27, '12', '/421/images/products/20e76bbdeced5ed2eaa6f43440b01a50.jpeg', 'Beige Chanel Mini-Skirt\r\nSilky and smooth! \r\nGet it today! ', 1, 'Small:9,Medium:12,Large:19', 0),
(18, 'Ace 11s', '74.99', '109.99', 28, '7', '/421/images/products/9b0490b6cf21c7d9b755d17192b78bd3.jpg', 'Durable Ace 11s by Under Armor\r\nGet them today! \r\nPerfect, comfy and stylish! ', 1, '9:5,10:10,11:8', 0),
(19, 'Longshot black', '94.99', '159.99', 28, '7', '/421/images/products/1e5272764d4ac9c8e17886126adb5326.jpg', 'Under Armour Longshot Black\r\nPerfect for running, walking, and has the most incredible soles ever!\r\nGet it today! Price is hot!! ', 1, '8:10,9:15,10:32,11:9,12:7', 0),
(20, 'White/Blue Hoodie', '9.99', '14.99', 29, '13', '/421/images/products/af493568a66cd5bf1ff4ad48e9b74a14.png', 'Comfy White and Blue FUBU Hoodie for your little boy! \r\nBuy it today! ', 0, 'Small:6,Medium:12,Large:9', 0),
(21, 'Cars Onesie', '12.99', '15.99', 30, '47', '/421/images/products/815f3c3a797733630cd4bba7482bb8eb.png', 'Have your child wrapped in a comfortable onesie of cars.\r\n100% non-toxic cotton! ', 1, 'Newborn:6,3 mo.:9,6 mo.:16,9 mo.:13,12 mo.:5,18 mo.:4,24 mo.:9', 0),
(22, 'Maroon Sweater', '12.99', '19.99', 2, '13', '/421/images/products/2706a63e99e752f8691957a9d6cf6ffa.png', 'Comfy maroon sweater to keep you warm throughout the day! ', 1, 'Small:12,Medium:14,Large:9', 0),
(23, 'White Belt Jeans', '19.99', '29.99', 1, '14', '/421/images/products/793ffea06d59bea74be620d0d39022b9.png', 'White belt on beautiful jeans.', 1, '20:5,22:6,24:9,26:14,28:3', 0),
(24, 'Boys Sailor', '24.99', '32.99', 29, '47', '/421/images/products/7503d454c9656f254955ac64aaf55656.png', 'Dress your child up in a sailor onesie today! He&#039;ll be super comfy while looking for all the buried treasure! ', 1, 'Newborn:19,3 mo.:6,6 mo.:4,6 mo.:33,9 mo.:12,12 mo.:9,18 mo.:15,24 mo.:17', 0),
(25, 'Jean Overalls', '26.99', '32.99', 1, '14', '/421/images/products/97a83c964ba1f0e81f93be6d64843a03.png', 'Super comfortable jean overalls. \r\nYour child will be the talk of the town with these super comfy overalls!', 0, '20:5,22:6,24:8,26:9,28:10,30:5', 0),
(26, 'Purple Prom Dress', '63.99', '108.99', 27, '12', '/421/images/products/c7233aad578021c78c47782a91ffc7e0.png', 'Sunning purple prom dress!\r\nDefinitely an eye catcher. \r\nBuy today! ', 1, '1:6,2:4,3:6,4:6,5:6,6:6,7:6,8:6,9:6,10:4,11:9,12:6', 0),
(27, 'Rose Long-Shirt', '15.99', '24.99', 30, '15', '/421/images/products/949ae0801fe700826924f7051b404cd3.png', 'Get a long sleeve rose shirt/dress. \r\nSuper cute and super comfy! ', 1, '8:3,10:4,12:2,14:1,16:6,18:9,20:10', 0),
(28, 'Long Sleeve Dress', '32.99', '49.99', 27, '12', '/421/images/products/7d85f5750bfa52d3e6c4b5407634f413.png', 'Comfy long sleeve dress. \r\n100% pure silk. ', 0, '4:9,6:8,8:15,10:3,12:1,14:3,16:7', 0),
(29, 'Black Leather Purse', '125.99', '199.99', 31, '44', '/421/images/products/29313557c9493ebe0e3098fee52ba5be.png', 'Get this Black Leather Purse made with the finest leather material around! ', 1, 'N/A:6', 0),
(30, 'Nike Black SweatPants', '39.99', '49.99', 6, '6', '/421/images/products/0ac76ddb65017295a6c04c2d19e8640e.jpg', 'Super Comfy Nike SweatPants. Relax in these sweats today! ', 1, 'small:4,medium:9,large:9,XL:12,XXL:3,XXXL:2', 0),
(31, 'Men&#039;s UNIQLO US Dry Stretch', '49.99', '69.99', 32, '6', '/421/images/products/0795192bc68501fa723d2b24ef761398.jpeg', 'Look casual-cool whether you&#039;re workout- or weekend-bound in these Men&#039;s DRY Stretch Sweatpants. The high-performance pants are outfitted with DRY moisture-wicking technology for a cool, quick-dry effect. Stretchy and contoured, the sweatpants feature a flattering tapered leg fit for all your athletic pursuits.', 0, 'small:9,medium:9,large:9,XL:9,XXL:6,XXXL:4', 0),
(32, 'Copper Key Short-Sleeve Hi-Low', '22.99', '29.99', 33, '49', '/421/images/products/4fadfbffec0d416fc3f88cb4f3788b1c.jpeg', 'From Copper Key, this tee features:\r\n* Round neckline\r\n* Short sleeves\r\n* High low\r\n* Solid\r\n* Pullover construction\r\n* Crochet dotted sleeve treatment\r\n* Rayon\r\n* Machine wash', 1, 'small:5,medium:12,large:6,XL:13', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(175) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `join_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_login` datetime NOT NULL,
  `permissions` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `join_date`, `last_login`, `permissions`) VALUES
(1, 'Ahmed Saeed', 'saeedal@umich.edu', '$2y$10$7E9vzVug/UxqHILmOX3vhum4QFdvJqhpVNfdTkPz0vzwPpdnEbBfa', '2019-03-16 17:10:47', '2019-03-19 05:58:45', 'admin,editor'),
(5, 'Admin', 'admin@admin.com', '$2y$10$YbBsdjIY7Ltm35NYu3Z3e./O1ZZTiq8H0CuaoTK5qwQz/aXW5I7Qu', '2019-03-18 18:17:12', '0000-00-00 00:00:00', 'admin,editor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
