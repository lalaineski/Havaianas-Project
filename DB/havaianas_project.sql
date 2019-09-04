-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2019 at 07:51 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `havaianas project`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CATEGORY_ID` int(11) NOT NULL,
  `NAME` varchar(5) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CATEGORY_ID`, `NAME`) VALUES
(1, 'Women'),
(2, 'Men'),
(3, 'Kids');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `IMAGE_ID` int(11) NOT NULL,
  `IMAGE_NAME` varchar(53) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`IMAGE_ID`, `IMAGE_NAME`) VALUES
(1, 'You Metallic Sand Grey:Light Golden Thongs.jpg'),
(2, 'Top Logo Mania Navy Blue Thongs.jpg'),
(3, 'Slim Trio Stripes Black:Black:Rose Cream Thongs.jpg'),
(4, 'Slim Rubber Logo Black:Coral New Thongs.jpg'),
(5, 'Slim Floral Tropical (Stripes) Black:White Thongs.jpg'),
(6, 'Flash Urban Rose Gold Sandals.jpg'),
(7, 'Tropical Glitch Black/Blue Thongs.jpg'),
(8, 'Top Wild (Tiger) Black Thongs.jpg'),
(9, 'Stripes (Bandana)Blue Thongs.jpg'),
(10, 'Marvel Navy Blue Thongs.jpg'),
(11, 'Marvel Black Thongs.jpg'),
(12, 'GOT Black Thongs.jpg'),
(13, 'Kids Top Mix Indigo Blue Thongs.jpg'),
(14, 'Kids Max Star Wars Black Thongs.jpg'),
(15, 'Kids Lion King Simba Banana Thongs.jpg'),
(16, 'Kids Fantasy Ice Blue:Shocking Pink Thongs.jpg'),
(17, 'Baby New Herois (Wonder Woman) Strawberry Thongs.jpg'),
(18, 'Baby New Chic White:Golden Blush Thongs.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `SKU` varchar(12) CHARACTER SET utf8 NOT NULL,
  `PRODUCT_ID` int(11) DEFAULT NULL,
  `PRODUCT_NAME` varchar(48) CHARACTER SET utf8 DEFAULT NULL,
  `SIZES` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `PRICE` decimal(4,2) DEFAULT NULL,
  `CATEGORIES` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `DESCRIPTION` varchar(680) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`SKU`, `PRODUCT_ID`, `PRODUCT_NAME`, `SIZES`, `PRICE`, `CATEGORIES`, `DESCRIPTION`) VALUES
('PROKI0000001', 13, 'Kids Top Mix Thongs', '23-24', '25.00', 'Kids', 'Havaianas Kids Top Mix Indigo Blue Thongs. Mix it up in classic indigo blue Havaianas boys style with a twist. Featuring a indigo blue sole with matching two-tone red and grey straps and a classic white Havaianas rubber logo. Thanks to the comfortable and soft footbed, Havaianas thongs are the perfect pair for your kids.Havaianas flip flops are made from premium quality Brazilian rubber. All thongs come with our 6 month quality guarantee.'),
('PROKI0000002', 13, 'Kids Top Mix Thongs', '25-26', '25.00', 'Kids', 'Havaianas Kids Top Mix Indigo Blue Thongs. Mix it up in classic indigo blue Havaianas boys style with a twist. Featuring a indigo blue sole with matching two-tone red and grey straps and a classic white Havaianas rubber logo. Thanks to the comfortable and soft footbed, Havaianas thongs are the perfect pair for your kids.Havaianas flip flops are made from premium quality Brazilian rubber. All thongs come with our 6 month quality guarantee.'),
('PROKI0000003', 13, 'Kids Top Mix Thongs', '27-28', '25.00', 'Kids', 'Havaianas Kids Top Mix Indigo Blue Thongs. Mix it up in classic indigo blue Havaianas boys style with a twist. Featuring a indigo blue sole with matching two-tone red and grey straps and a classic white Havaianas rubber logo. Thanks to the comfortable and soft footbed, Havaianas thongs are the perfect pair for your kids.Havaianas flip flops are made from premium quality Brazilian rubber. All thongs come with our 6 month quality guarantee.'),
('PROKI0000004', 13, 'Kids Top Mix Thongs', '29-30', '25.00', 'Kids', 'Havaianas Kids Top Mix Indigo Blue Thongs. Mix it up in classic indigo blue Havaianas boys style with a twist. Featuring a indigo blue sole with matching two-tone red and grey straps and a classic white Havaianas rubber logo. Thanks to the comfortable and soft footbed, Havaianas thongs are the perfect pair for your kids.Havaianas flip flops are made from premium quality Brazilian rubber. All thongs come with our 6 month quality guarantee.'),
('PROKI0000005', 13, 'Kids Top Mix Thongs', '31-32', '25.00', 'Kids', 'Havaianas Kids Top Mix Indigo Blue Thongs. Mix it up in classic indigo blue Havaianas boys style with a twist. Featuring a indigo blue sole with matching two-tone red and grey straps and a classic white Havaianas rubber logo. Thanks to the comfortable and soft footbed, Havaianas thongs are the perfect pair for your kids.Havaianas flip flops are made from premium quality Brazilian rubber. All thongs come with our 6 month quality guarantee.'),
('PROKI0000006', 13, 'Kids Top Mix Thongs', '33-34', '25.00', 'Kids', 'Havaianas Kids Top Mix Indigo Blue Thongs. Mix it up in classic indigo blue Havaianas boys style with a twist. Featuring a indigo blue sole with matching two-tone red and grey straps and a classic white Havaianas rubber logo. Thanks to the comfortable and soft footbed, Havaianas thongs are the perfect pair for your kids.Havaianas flip flops are made from premium quality Brazilian rubber. All thongs come with our 6 month quality guarantee.'),
('PROKI0000007', 14, 'Kids Max Star Wars Thongs', '23-24', '30.00', 'Kids', 'Havaians Kids Wars Black Thongs. May the thong be with you! Our new star wars style features a Star wars print with your favourites Yoda and Darth Vader. Featuring an extra wide white strap and a contrasting Havaianas rubber logo. Made from premium Brazilian rubber, for maximum comfort!Havaianas flip flops are made from premium quality Brazilian rubber. All thongs come with our 6 month quality guarantee.'),
('PROKI0000008', 14, 'Kids Max Star Wars Thongs', '25-26', '30.00', 'Kids', 'Havaians Kids Wars Black Thongs. May the thong be with you! Our new star wars style features a Star wars print with your favourites Yoda and Darth Vader. Featuring an extra wide white strap and a contrasting Havaianas rubber logo. Made from premium Brazilian rubber, for maximum comfort!Havaianas flip flops are made from premium quality Brazilian rubber. All thongs come with our 6 month quality guarantee.'),
('PROKI0000009', 14, 'Kids Max Star Wars Thongs', '27-28', '30.00', 'Kids', 'Havaians Kids Wars Black Thongs. May the thong be with you! Our new star wars style features a Star wars print with your favourites Yoda and Darth Vader. Featuring an extra wide white strap and a contrasting Havaianas rubber logo. Made from premium Brazilian rubber, for maximum comfort!Havaianas flip flops are made from premium quality Brazilian rubber. All thongs come with our 6 month quality guarantee.'),
('PROKI0000010', 14, 'Kids Max Star Wars Thongs', '29-30', '30.00', 'Kids', 'Havaians Kids Wars Black Thongs. May the thong be with you! Our new star wars style features a Star wars print with your favourites Yoda and Darth Vader. Featuring an extra wide white strap and a contrasting Havaianas rubber logo. Made from premium Brazilian rubber, for maximum comfort!Havaianas flip flops are made from premium quality Brazilian rubber. All thongs come with our 6 month quality guarantee.'),
('PROKI0000011', 14, 'Kids Max Star Wars Thongs', '31-32', '30.00', 'Kids', 'Havaians Kids Wars Black Thongs. May the thong be with you! Our new star wars style features a Star wars print with your favourites Yoda and Darth Vader. Featuring an extra wide white strap and a contrasting Havaianas rubber logo. Made from premium Brazilian rubber, for maximum comfort!Havaianas flip flops are made from premium quality Brazilian rubber. All thongs come with our 6 month quality guarantee.'),
('PROKI0000012', 14, 'Kids Max Star Wars Thongs', '33-34', '30.00', 'Kids', 'Havaians Kids Wars Black Thongs. May the thong be with you! Our new star wars style features a Star wars print with your favourites Yoda and Darth Vader. Featuring an extra wide white strap and a contrasting Havaianas rubber logo. Made from premium Brazilian rubber, for maximum comfort!Havaianas flip flops are made from premium quality Brazilian rubber. All thongs come with our 6 month quality guarantee.'),
('PROKI0000013', 15, 'Kids Lion King Simba Banana Thongs', '23-24', '35.00', 'Kids', 'Havaianas Kids Lion King Simba Banana Thongs. The cutest cub in the pridelands, Simba! Featuring the mane man himself on a yellow and brown base with bright contrast red straps with a yellow Havaianas logo. You\'re little one will feel like the king of the jungle in these! All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROKI0000014', 15, 'Kids Lion King Simba Banana Thongs', '25-26', '35.00', 'Kids', 'Havaianas Kids Lion King Simba Banana Thongs. The cutest cub in the pridelands, Simba! Featuring the mane man himself on a yellow and brown base with bright contrast red straps with a yellow Havaianas logo. You\'re little one will feel like the king of the jungle in these! All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROKI0000015', 15, 'Kids Lion King Simba Banana Thongs', '27-28', '35.00', 'Kids', 'Havaianas Kids Lion King Simba Banana Thongs. The cutest cub in the pridelands, Simba! Featuring the mane man himself on a yellow and brown base with bright contrast red straps with a yellow Havaianas logo. You\'re little one will feel like the king of the jungle in these! All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROKI0000016', 15, 'Kids Lion King Simba Banana Thongs', '29-30', '35.00', 'Kids', 'Havaianas Kids Lion King Simba Banana Thongs. The cutest cub in the pridelands, Simba! Featuring the mane man himself on a yellow and brown base with bright contrast red straps with a yellow Havaianas logo. You\'re little one will feel like the king of the jungle in these! All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROKI0000017', 15, 'Kids Lion King Simba Banana Thongs', '31-32', '35.00', 'Kids', 'Havaianas Kids Lion King Simba Banana Thongs. The cutest cub in the pridelands, Simba! Featuring the mane man himself on a yellow and brown base with bright contrast red straps with a yellow Havaianas logo. You\'re little one will feel like the king of the jungle in these! All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROKI0000018', 15, 'Kids Lion King Simba Banana Thongs', '33-34', '35.00', 'Kids', 'Havaianas Kids Lion King Simba Banana Thongs. The cutest cub in the pridelands, Simba! Featuring the mane man himself on a yellow and brown base with bright contrast red straps with a yellow Havaianas logo. You\'re little one will feel like the king of the jungle in these! All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROKI0000019', 16, 'Kids Fantasy:Shocking Thongs', '23-24', '25.00', 'Kids', 'Havaianas Kids Fantasy Ice Blue/Shocking Pink Thongs. Your little one will feel magical in our new Unicorn print Havaianas. Featuring a cute and magical pink and blue unicorn print on a classic baby blue top Havaianas sole with matching pink top Havaianas straps and a unicorn pin for a stylish touch! All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROKI0000020', 16, 'Kids Fantasy:Shocking Thongs', '25-26', '25.00', 'Kids', 'Havaianas Kids Fantasy Ice Blue/Shocking Pink Thongs. Your little one will feel magical in our new Unicorn print Havaianas. Featuring a cute and magical pink and blue unicorn print on a classic baby blue top Havaianas sole with matching pink top Havaianas straps and a unicorn pin for a stylish touch! All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROKI0000021', 16, 'Kids Fantasy:Shocking Thongs', '27-28', '25.00', 'Kids', 'Havaianas Kids Fantasy Ice Blue/Shocking Pink Thongs. Your little one will feel magical in our new Unicorn print Havaianas. Featuring a cute and magical pink and blue unicorn print on a classic baby blue top Havaianas sole with matching pink top Havaianas straps and a unicorn pin for a stylish touch! All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROKI0000022', 16, 'Kids Fantasy:Shocking Thongs', '29-30', '25.00', 'Kids', 'Havaianas Kids Fantasy Ice Blue/Shocking Pink Thongs. Your little one will feel magical in our new Unicorn print Havaianas. Featuring a cute and magical pink and blue unicorn print on a classic baby blue top Havaianas sole with matching pink top Havaianas straps and a unicorn pin for a stylish touch! All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROKI0000023', 16, 'Kids Fantasy:Shocking Thongs', '31-32', '25.00', 'Kids', 'Havaianas Kids Fantasy Ice Blue/Shocking Pink Thongs. Your little one will feel magical in our new Unicorn print Havaianas. Featuring a cute and magical pink and blue unicorn print on a classic baby blue top Havaianas sole with matching pink top Havaianas straps and a unicorn pin for a stylish touch! All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROKI0000024', 16, 'Kids Fantasy:Shocking Thongs', '33-34', '25.00', 'Kids', 'Havaianas Kids Fantasy Ice Blue/Shocking Pink Thongs. Your little one will feel magical in our new Unicorn print Havaianas. Featuring a cute and magical pink and blue unicorn print on a classic baby blue top Havaianas sole with matching pink top Havaianas straps and a unicorn pin for a stylish touch! All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROKI0000025', 17, 'Baby New Herois (Wonder Woman) Strawberry Thongs', '23-24', '30.00', 'Kids', 'Havaianas Baby New Herois (Wonderwoman) Strawberry Thongs. Fight for those who cannot fight for themselves in our new season DC Comics superhero print Havaianas for babies. A fabric strap together with our signature premium Havaianas footbed keeps tiny feet comfortable and secure. Featuring the most famous heroine of all time, Wonderwoman, on a red Havaianas sole with matching gold straps and a super cute Wonderwoman embellishment to complete the look.All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROKI0000026', 17, 'Baby New Herois (Wonder Woman) Strawberry Thongs', '25-26', '30.00', 'Kids', 'Havaianas Baby New Herois (Wonderwoman) Strawberry Thongs. Fight for those who cannot fight for themselves in our new season DC Comics superhero print Havaianas for babies. A fabric strap together with our signature premium Havaianas footbed keeps tiny feet comfortable and secure. Featuring the most famous heroine of all time, Wonderwoman, on a red Havaianas sole with matching gold straps and a super cute Wonderwoman embellishment to complete the look.All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROKI0000027', 17, 'Baby New Herois (Wonder Woman) Strawberry Thongs', '27-28', '30.00', 'Kids', 'Havaianas Baby New Herois (Wonderwoman) Strawberry Thongs. Fight for those who cannot fight for themselves in our new season DC Comics superhero print Havaianas for babies. A fabric strap together with our signature premium Havaianas footbed keeps tiny feet comfortable and secure. Featuring the most famous heroine of all time, Wonderwoman, on a red Havaianas sole with matching gold straps and a super cute Wonderwoman embellishment to complete the look.All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROKI0000028', 17, 'Baby New Herois (Wonder Woman) Strawberry Thongs', '29-30', '30.00', 'Kids', 'Havaianas Baby New Herois (Wonderwoman) Strawberry Thongs. Fight for those who cannot fight for themselves in our new season DC Comics superhero print Havaianas for babies. A fabric strap together with our signature premium Havaianas footbed keeps tiny feet comfortable and secure. Featuring the most famous heroine of all time, Wonderwoman, on a red Havaianas sole with matching gold straps and a super cute Wonderwoman embellishment to complete the look.All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROKI0000029', 17, 'Baby New Herois (Wonder Woman) Strawberry Thongs', '31-32', '30.00', 'Kids', 'Havaianas Baby New Herois (Wonderwoman) Strawberry Thongs. Fight for those who cannot fight for themselves in our new season DC Comics superhero print Havaianas for babies. A fabric strap together with our signature premium Havaianas footbed keeps tiny feet comfortable and secure. Featuring the most famous heroine of all time, Wonderwoman, on a red Havaianas sole with matching gold straps and a super cute Wonderwoman embellishment to complete the look.All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROKI0000030', 17, 'Baby New Herois (Wonder Woman) Strawberry Thongs', '33-34', '30.00', 'Kids', 'Havaianas Baby New Herois (Wonderwoman) Strawberry Thongs. Fight for those who cannot fight for themselves in our new season DC Comics superhero print Havaianas for babies. A fabric strap together with our signature premium Havaianas footbed keeps tiny feet comfortable and secure. Featuring the most famous heroine of all time, Wonderwoman, on a red Havaianas sole with matching gold straps and a super cute Wonderwoman embellishment to complete the look.All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROKI0000031', 18, 'Baby New Chic Blush Thongs', '17-18', '25.00', 'Kids', 'Havaianas Baby Chic White/Golden Blush Thongs. Baby got style in our new season animal print Havaianas for babies. Keep tiny feet stylish, comfortable and secure with a rose gold fabric backstrap attached to our signature comfortable footbed. Featuring a classic rose gold and pink leopard print on a white Havaianas sole with matching rose gold straps. Your little girl will look super stylish in our best selling leopard print style for babies! Our baby friendly shoes are made with a super soft footbed and comfortable straps to keep her happy and stylish. Havaianas flip flops are made from premium quality Brazilian rubber. All thongs come with our 6 month quality guarantee.'),
('PROKI0000032', 18, 'Baby New Chic Blush Thongs', '19', '25.00', 'Kids', 'Havaianas Baby Chic White/Golden Blush Thongs. Baby got style in our new season animal print Havaianas for babies. Keep tiny feet stylish, comfortable and secure with a rose gold fabric backstrap attached to our signature comfortable footbed. Featuring a classic rose gold and pink leopard print on a white Havaianas sole with matching rose gold straps. Your little girl will look super stylish in our best selling leopard print style for babies! Our baby friendly shoes are made with a super soft footbed and comfortable straps to keep her happy and stylish. Havaianas flip flops are made from premium quality Brazilian rubber. All thongs come with our 6 month quality guarantee.'),
('PROKI0000033', 18, 'Baby New Chic Blush Thongs', '20', '25.00', 'Kids', 'Havaianas Baby Chic White/Golden Blush Thongs. Baby got style in our new season animal print Havaianas for babies. Keep tiny feet stylish, comfortable and secure with a rose gold fabric backstrap attached to our signature comfortable footbed. Featuring a classic rose gold and pink leopard print on a white Havaianas sole with matching rose gold straps. Your little girl will look super stylish in our best selling leopard print style for babies! Our baby friendly shoes are made with a super soft footbed and comfortable straps to keep her happy and stylish. Havaianas flip flops are made from premium quality Brazilian rubber. All thongs come with our 6 month quality guarantee.'),
('PROKI0000034', 18, 'Baby New Chic Blush Thongs', '21', '25.00', 'Kids', 'Havaianas Baby Chic White/Golden Blush Thongs. Baby got style in our new season animal print Havaianas for babies. Keep tiny feet stylish, comfortable and secure with a rose gold fabric backstrap attached to our signature comfortable footbed. Featuring a classic rose gold and pink leopard print on a white Havaianas sole with matching rose gold straps. Your little girl will look super stylish in our best selling leopard print style for babies! Our baby friendly shoes are made with a super soft footbed and comfortable straps to keep her happy and stylish. Havaianas flip flops are made from premium quality Brazilian rubber. All thongs come with our 6 month quality guarantee.'),
('PROKI0000035', 18, 'Baby New Chic Blush Thongs', '22', '25.00', 'Kids', 'Havaianas Baby Chic White/Golden Blush Thongs. Baby got style in our new season animal print Havaianas for babies. Keep tiny feet stylish, comfortable and secure with a rose gold fabric backstrap attached to our signature comfortable footbed. Featuring a classic rose gold and pink leopard print on a white Havaianas sole with matching rose gold straps. Your little girl will look super stylish in our best selling leopard print style for babies! Our baby friendly shoes are made with a super soft footbed and comfortable straps to keep her happy and stylish. Havaianas flip flops are made from premium quality Brazilian rubber. All thongs come with our 6 month quality guarantee.'),
('PROKI0000036', 18, 'Baby New Chic Blush Thongs', '23-24', '25.00', 'Kids', 'Havaianas Baby Chic White/Golden Blush Thongs. Baby got style in our new season animal print Havaianas for babies. Keep tiny feet stylish, comfortable and secure with a rose gold fabric backstrap attached to our signature comfortable footbed. Featuring a classic rose gold and pink leopard print on a white Havaianas sole with matching rose gold straps. Your little girl will look super stylish in our best selling leopard print style for babies! Our baby friendly shoes are made with a super soft footbed and comfortable straps to keep her happy and stylish. Havaianas flip flops are made from premium quality Brazilian rubber. All thongs come with our 6 month quality guarantee.'),
('PROKI0000037', 18, 'Baby New Chic Blush Thongs', '25-26', '25.00', 'Kids', 'Havaianas Baby Chic White/Golden Blush Thongs. Baby got style in our new season animal print Havaianas for babies. Keep tiny feet stylish, comfortable and secure with a rose gold fabric backstrap attached to our signature comfortable footbed. Featuring a classic rose gold and pink leopard print on a white Havaianas sole with matching rose gold straps. Your little girl will look super stylish in our best selling leopard print style for babies! Our baby friendly shoes are made with a super soft footbed and comfortable straps to keep her happy and stylish. Havaianas flip flops are made from premium quality Brazilian rubber. All thongs come with our 6 month quality guarantee.'),
('PROMA0000001', 7, 'Tropical Glitch Thongs', '35-36', '30.00', 'Men', 'Havaianas Tropical Glitch Black/Blue Thongs. Oops! We didn\'t mean to interrupt your tropical vacation, but it looks like there\'s a glitch in paradise! Featuring a grey and blue glitch graphic print on a black Havaianas sole with matching top black Havaianas straps and a blue rubber logo to complete the look. This comfortable pair of Havaianas feature our classic super soft footbed so that you can wear this all vacation long. All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROMA0000002', 7, 'Tropical Glitch Thongs', '37-38', '30.00', 'Men', 'Havaianas Tropical Glitch Black/Blue Thongs. Oops! We didn\'t mean to interrupt your tropical vacation, but it looks like there\'s a glitch in paradise! Featuring a grey and blue glitch graphic print on a black Havaianas sole with matching top black Havaianas straps and a blue rubber logo to complete the look. This comfortable pair of Havaianas feature our classic super soft footbed so that you can wear this all vacation long. All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROMA0000003', 7, 'Tropical Glitch Thongs', '39-40', '30.00', 'Men', 'Havaianas Tropical Glitch Black/Blue Thongs. Oops! We didn\'t mean to interrupt your tropical vacation, but it looks like there\'s a glitch in paradise! Featuring a grey and blue glitch graphic print on a black Havaianas sole with matching top black Havaianas straps and a blue rubber logo to complete the look. This comfortable pair of Havaianas feature our classic super soft footbed so that you can wear this all vacation long. All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROMA0000004', 7, 'Tropical Glitch Thongs', '41-42', '30.00', 'Men', 'Havaianas Tropical Glitch Black/Blue Thongs. Oops! We didn\'t mean to interrupt your tropical vacation, but it looks like there\'s a glitch in paradise! Featuring a grey and blue glitch graphic print on a black Havaianas sole with matching top black Havaianas straps and a blue rubber logo to complete the look. This comfortable pair of Havaianas feature our classic super soft footbed so that you can wear this all vacation long. All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROMA0000005', 7, 'Tropical Glitch Thongs', '43-44', '30.00', 'Men', 'Havaianas Tropical Glitch Black/Blue Thongs. Oops! We didn\'t mean to interrupt your tropical vacation, but it looks like there\'s a glitch in paradise! Featuring a grey and blue glitch graphic print on a black Havaianas sole with matching top black Havaianas straps and a blue rubber logo to complete the look. This comfortable pair of Havaianas feature our classic super soft footbed so that you can wear this all vacation long. All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROMA0000006', 7, 'Tropical Glitch Thongs', '45-46', '30.00', 'Men', 'Havaianas Tropical Glitch Black/Blue Thongs. Oops! We didn\'t mean to interrupt your tropical vacation, but it looks like there\'s a glitch in paradise! Featuring a grey and blue glitch graphic print on a black Havaianas sole with matching top black Havaianas straps and a blue rubber logo to complete the look. This comfortable pair of Havaianas feature our classic super soft footbed so that you can wear this all vacation long. All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROMA0000007', 8, 'Top Wild (Tiger) Thongs', '35-36', '30.00', 'Men', 'Havaianas Top Wild (Tiger) Black Thongs. Release your inner wild side in our new season Tiger print Havaianas. Featuring a unique tiger print on a black Havaianas sole with matching top black Havaianas straps and a white rubber logo to complete the look. The tiger is considered to be the king of all the beasts and this oriental inspired print represents powerful energy and strength to see you through the day. Havaianas flip flops are made from premium quality Brazilian rubber. All thongs come with our 6 month quality guarantee.'),
('PROMA0000008', 8, 'Top Wild (Tiger) Thongs', '37-38', '30.00', 'Men', 'Havaianas Top Wild (Tiger) Black Thongs. Release your inner wild side in our new season Tiger print Havaianas. Featuring a unique tiger print on a black Havaianas sole with matching top black Havaianas straps and a white rubber logo to complete the look. The tiger is considered to be the king of all the beasts and this oriental inspired print represents powerful energy and strength to see you through the day. Havaianas flip flops are made from premium quality Brazilian rubber. All thongs come with our 6 month quality guarantee.'),
('PROMA0000009', 8, 'Top Wild (Tiger) Thongs', '39-40', '30.00', 'Men', 'Havaianas Top Wild (Tiger) Black Thongs. Release your inner wild side in our new season Tiger print Havaianas. Featuring a unique tiger print on a black Havaianas sole with matching top black Havaianas straps and a white rubber logo to complete the look. The tiger is considered to be the king of all the beasts and this oriental inspired print represents powerful energy and strength to see you through the day. Havaianas flip flops are made from premium quality Brazilian rubber. All thongs come with our 6 month quality guarantee.'),
('PROMA0000010', 8, 'Top Wild (Tiger) Thongs', '41-42', '30.00', 'Men', 'Havaianas Top Wild (Tiger) Black Thongs. Release your inner wild side in our new season Tiger print Havaianas. Featuring a unique tiger print on a black Havaianas sole with matching top black Havaianas straps and a white rubber logo to complete the look. The tiger is considered to be the king of all the beasts and this oriental inspired print represents powerful energy and strength to see you through the day. Havaianas flip flops are made from premium quality Brazilian rubber. All thongs come with our 6 month quality guarantee.'),
('PROMA0000011', 8, 'Top Wild (Tiger) Thongs', '43-44', '30.00', 'Men', 'Havaianas Top Wild (Tiger) Black Thongs. Release your inner wild side in our new season Tiger print Havaianas. Featuring a unique tiger print on a black Havaianas sole with matching top black Havaianas straps and a white rubber logo to complete the look. The tiger is considered to be the king of all the beasts and this oriental inspired print represents powerful energy and strength to see you through the day. Havaianas flip flops are made from premium quality Brazilian rubber. All thongs come with our 6 month quality guarantee.'),
('PROMA0000012', 8, 'Top Wild (Tiger) Thongs', '45-46', '30.00', 'Men', 'Havaianas Top Wild (Tiger) Black Thongs. Release your inner wild side in our new season Tiger print Havaianas. Featuring a unique tiger print on a black Havaianas sole with matching top black Havaianas straps and a white rubber logo to complete the look. The tiger is considered to be the king of all the beasts and this oriental inspired print represents powerful energy and strength to see you through the day. Havaianas flip flops are made from premium quality Brazilian rubber. All thongs come with our 6 month quality guarantee.'),
('PROMA0000013', 9, 'Stripes (Bandana) Thongs', '39-40', '30.00', 'Men', 'Havaianas Stripes (Bandana) Black/White/Blue Thongs. Step into summer in style in our new season bandana print Havaianas. Featuring a blue and white bandana stripe print on a black Havaianas sole with matching top Havaianas black straps and a white rubber logo to complete the look. This classic paisley bandana print is a great unisex style and is perfect for someone that want to update their all black Havaianas with something new!Havaianas flip flops are made from premium quality Brazilian rubber. All thongs come with our 6 month quality guarantee.'),
('PROMA0000014', 9, 'Stripes (Bandana) Thongs', '41-42', '30.00', 'Men', 'Havaianas Stripes (Bandana) Black/White/Blue Thongs. Step into summer in style in our new season bandana print Havaianas. Featuring a blue and white bandana stripe print on a black Havaianas sole with matching top Havaianas black straps and a white rubber logo to complete the look. This classic paisley bandana print is a great unisex style and is perfect for someone that want to update their all black Havaianas with something new!Havaianas flip flops are made from premium quality Brazilian rubber. All thongs come with our 6 month quality guarantee.'),
('PROMA0000015', 9, 'Stripes (Bandana) Thongs', '43-44', '30.00', 'Men', 'Havaianas Stripes (Bandana) Black/White/Blue Thongs. Step into summer in style in our new season bandana print Havaianas. Featuring a blue and white bandana stripe print on a black Havaianas sole with matching top Havaianas black straps and a white rubber logo to complete the look. This classic paisley bandana print is a great unisex style and is perfect for someone that want to update their all black Havaianas with something new!Havaianas flip flops are made from premium quality Brazilian rubber. All thongs come with our 6 month quality guarantee.'),
('PROMA0000016', 9, 'Stripes (Bandana) Thongs', '45-46', '30.00', 'Men', 'Havaianas Stripes (Bandana) Black/White/Blue Thongs. Step into summer in style in our new season bandana print Havaianas. Featuring a blue and white bandana stripe print on a black Havaianas sole with matching top Havaianas black straps and a white rubber logo to complete the look. This classic paisley bandana print is a great unisex style and is perfect for someone that want to update their all black Havaianas with something new!Havaianas flip flops are made from premium quality Brazilian rubber. All thongs come with our 6 month quality guarantee.'),
('PROMA0000017', 10, 'Marvel Thongs', '35-36', '35.00', 'Men', 'Havaianas Marvel Navy Blue Thongs. Save the world this summer in our new Marvel Avengers Superhero print. Featuring everyone\'s favourite superheroes, The Avengers on a Navy Blue Top Havaianas sole with matching Top Navy Blue straps featuring a contrasting red rubber logo. You can now release your inner superhero when you slip these Havaianas on your feet! All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROMA0000018', 10, 'Marvel Thongs', '37-38', '35.00', 'Men', 'Havaianas Marvel Navy Blue Thongs. Save the world this summer in our new Marvel Avengers Superhero print. Featuring everyone\'s favourite superheroes, The Avengers on a Navy Blue Top Havaianas sole with matching Top Navy Blue straps featuring a contrasting red rubber logo. You can now release your inner superhero when you slip these Havaianas on your feet! All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROMA0000019', 10, 'Marvel Thongs', '39-40', '35.00', 'Men', 'Havaianas Marvel Navy Blue Thongs. Save the world this summer in our new Marvel Avengers Superhero print. Featuring everyone\'s favourite superheroes, The Avengers on a Navy Blue Top Havaianas sole with matching Top Navy Blue straps featuring a contrasting red rubber logo. You can now release your inner superhero when you slip these Havaianas on your feet! All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROMA0000020', 10, 'Marvel Thongs', '41-42', '35.00', 'Men', 'Havaianas Marvel Navy Blue Thongs. Save the world this summer in our new Marvel Avengers Superhero print. Featuring everyone\'s favourite superheroes, The Avengers on a Navy Blue Top Havaianas sole with matching Top Navy Blue straps featuring a contrasting red rubber logo. You can now release your inner superhero when you slip these Havaianas on your feet! All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROMA0000021', 10, 'Marvel Thongs', '43-44', '35.00', 'Men', 'Havaianas Marvel Navy Blue Thongs. Save the world this summer in our new Marvel Avengers Superhero print. Featuring everyone\'s favourite superheroes, The Avengers on a Navy Blue Top Havaianas sole with matching Top Navy Blue straps featuring a contrasting red rubber logo. You can now release your inner superhero when you slip these Havaianas on your feet! All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROMA0000022', 10, 'Marvel Thongs', '45-46', '35.00', 'Men', 'Havaianas Marvel Navy Blue Thongs. Save the world this summer in our new Marvel Avengers Superhero print. Featuring everyone\'s favourite superheroes, The Avengers on a Navy Blue Top Havaianas sole with matching Top Navy Blue straps featuring a contrasting red rubber logo. You can now release your inner superhero when you slip these Havaianas on your feet! All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROMA0000023', 11, 'Marvel Thongs', '35-36', '35.00', 'Men', 'Havaianas Marvel Black Thongs. Swing into summer in our new Marvel Superhero print. Featuring everyone\'s favourite superhero, Spiderman on a black top Havaianas sole with matching top black Havaianas straps featuring a contrasting white Havaianas rubber logo. You can now release your inner superhero when you slip these Havaianas on your feet! All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROMA0000024', 11, 'Marvel Thongs', '37-38', '35.00', 'Men', 'Havaianas Marvel Black Thongs. Swing into summer in our new Marvel Superhero print. Featuring everyone\'s favourite superhero, Spiderman on a black top Havaianas sole with matching top black Havaianas straps featuring a contrasting white Havaianas rubber logo. You can now release your inner superhero when you slip these Havaianas on your feet! All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROMA0000025', 11, 'Marvel Thongs', '39-40', '35.00', 'Men', 'Havaianas Marvel Black Thongs. Swing into summer in our new Marvel Superhero print. Featuring everyone\'s favourite superhero, Spiderman on a black top Havaianas sole with matching top black Havaianas straps featuring a contrasting white Havaianas rubber logo. You can now release your inner superhero when you slip these Havaianas on your feet! All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROMA0000026', 11, 'Marvel Thongs', '41-42', '35.00', 'Men', 'Havaianas Marvel Black Thongs. Swing into summer in our new Marvel Superhero print. Featuring everyone\'s favourite superhero, Spiderman on a black top Havaianas sole with matching top black Havaianas straps featuring a contrasting white Havaianas rubber logo. You can now release your inner superhero when you slip these Havaianas on your feet! All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROMA0000027', 11, 'Marvel Thongs', '43-44', '35.00', 'Men', 'Havaianas Marvel Black Thongs. Swing into summer in our new Marvel Superhero print. Featuring everyone\'s favourite superhero, Spiderman on a black top Havaianas sole with matching top black Havaianas straps featuring a contrasting white Havaianas rubber logo. You can now release your inner superhero when you slip these Havaianas on your feet! All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROMA0000028', 11, 'Marvel Thongs', '45-46', '35.00', 'Men', 'Havaianas Marvel Black Thongs. Swing into summer in our new Marvel Superhero print. Featuring everyone\'s favourite superhero, Spiderman on a black top Havaianas sole with matching top black Havaianas straps featuring a contrasting white Havaianas rubber logo. You can now release your inner superhero when you slip these Havaianas on your feet! All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROMA0000029', 12, 'GOT Thongs', '35-36', '40.00', 'Men', 'Havaianas Game of Thrones Black Thongs. Winter is Coming but you can still wear your Havaianas... Featuring two different printed soles representing Fire & Ice you can play both sides without giving away your true allegiance. Printed onto black rubber soles with wide black rubber straps and contrasting red rubber logo you can reach peak GOT fan status with this addition to your wardrobe. All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee'),
('PROMA0000030', 12, 'GOT Thongs', '37-38', '40.00', 'Men', 'Havaianas Game of Thrones Black Thongs. Winter is Coming but you can still wear your Havaianas... Featuring two different printed soles representing Fire & Ice you can play both sides without giving away your true allegiance. Printed onto black rubber soles with wide black rubber straps and contrasting red rubber logo you can reach peak GOT fan status with this addition to your wardrobe. All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee'),
('PROMA0000031', 12, 'GOT Thongs', '39-40', '40.00', 'Men', 'Havaianas Game of Thrones Black Thongs. Winter is Coming but you can still wear your Havaianas... Featuring two different printed soles representing Fire & Ice you can play both sides without giving away your true allegiance. Printed onto black rubber soles with wide black rubber straps and contrasting red rubber logo you can reach peak GOT fan status with this addition to your wardrobe. All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee'),
('PROMA0000032', 12, 'GOT Thongs', '41-42', '40.00', 'Men', 'Havaianas Game of Thrones Black Thongs. Winter is Coming but you can still wear your Havaianas... Featuring two different printed soles representing Fire & Ice you can play both sides without giving away your true allegiance. Printed onto black rubber soles with wide black rubber straps and contrasting red rubber logo you can reach peak GOT fan status with this addition to your wardrobe. All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee'),
('PROMA0000033', 12, 'GOT Thongs', '43-44', '40.00', 'Men', 'Havaianas Game of Thrones Black Thongs. Winter is Coming but you can still wear your Havaianas... Featuring two different printed soles representing Fire & Ice you can play both sides without giving away your true allegiance. Printed onto black rubber soles with wide black rubber straps and contrasting red rubber logo you can reach peak GOT fan status with this addition to your wardrobe. All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee'),
('PROMA0000034', 12, 'GOT Thongs', '45-46', '40.00', 'Men', 'Havaianas Game of Thrones Black Thongs. Winter is Coming but you can still wear your Havaianas... Featuring two different printed soles representing Fire & Ice you can play both sides without giving away your true allegiance. Printed onto black rubber soles with wide black rubber straps and contrasting red rubber logo you can reach peak GOT fan status with this addition to your wardrobe. All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee'),
('PROWO0000001', 1, 'You Metallic Sand Thongs', '35-36', '50.00', 'Women', 'Havaianas You Metallic Sand Grey/Light Golden Thongs. Sand grey Havaianas with sleek metallic vegan leather straps, both stylish and comfortable.Havaianas flip flops are made from premium quality Brazilian rubber. All thongs come with our 6 month quality guarantee.'),
('PROWO0000002', 1, 'You Metallic Sand Thongs', '37-38', '50.00', 'Women', 'Havaianas You Metallic Sand Grey/Light Golden Thongs. Sand grey Havaianas with sleek metallic vegan leather straps, both stylish and comfortable.Havaianas flip flops are made from premium quality Brazilian rubber. All thongs come with our 6 month quality guarantee.'),
('PROWO0000003', 1, 'You Metallic Sand Thongs', '39-40', '50.00', 'Women', 'Havaianas You Metallic Sand Grey/Light Golden Thongs. Sand grey Havaianas with sleek metallic vegan leather straps, both stylish and comfortable.Havaianas flip flops are made from premium quality Brazilian rubber. All thongs come with our 6 month quality guarantee.'),
('PROWO0000004', 1, 'You Metallic Sand Thongs', '41-42', '50.00', 'Women', 'Havaianas You Metallic Sand Grey/Light Golden Thongs. Sand grey Havaianas with sleek metallic vegan leather straps, both stylish and comfortable.Havaianas flip flops are made from premium quality Brazilian rubber. All thongs come with our 6 month quality guarantee.'),
('PROWO0000005', 2, 'Top Logo Mania Thongs', '35-36', '30.00', 'Women', 'Havaianas Top Logo Mania Navy Blue Thongs. Scream it from the rooftops (or your feet) this summer in our brand new Logo style Havaianas. Not only does this style featurre our iconic contrast rubber Havaianas Logo on wide straps, it also includes a MEGA Havaianas logo printed on sole. Available in Navy Blue/White (as seen), Black/White or our traditional Havies themed Red/White. All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROWO0000006', 2, 'Top Logo Mania Thongs', '37-38', '30.00', 'Women', 'Havaianas Top Logo Mania Navy Blue Thongs. Scream it from the rooftops (or your feet) this summer in our brand new Logo style Havaianas. Not only does this style featurre our iconic contrast rubber Havaianas Logo on wide straps, it also includes a MEGA Havaianas logo printed on sole. Available in Navy Blue/White (as seen), Black/White or our traditional Havies themed Red/White. All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROWO0000007', 2, 'Top Logo Mania Thongs', '39-40', '30.00', 'Women', 'Havaianas Top Logo Mania Navy Blue Thongs. Scream it from the rooftops (or your feet) this summer in our brand new Logo style Havaianas. Not only does this style featurre our iconic contrast rubber Havaianas Logo on wide straps, it also includes a MEGA Havaianas logo printed on sole. Available in Navy Blue/White (as seen), Black/White or our traditional Havies themed Red/White. All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROWO0000008', 2, 'Top Logo Mania Thongs', '41-42', '30.00', 'Women', 'Havaianas Top Logo Mania Navy Blue Thongs. Scream it from the rooftops (or your feet) this summer in our brand new Logo style Havaianas. Not only does this style featurre our iconic contrast rubber Havaianas Logo on wide straps, it also includes a MEGA Havaianas logo printed on sole. Available in Navy Blue/White (as seen), Black/White or our traditional Havies themed Red/White. All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROWO0000009', 3, 'Slim Trio Stripes Thongs', '35-36', '35.00', 'Women', 'Havaianas Slim Trio Stripes Black/Rose Cream Thongs. Match them to your activewear for that walk to pilates, you know want to. Classic black slim Havaianas featuring a pink and black block colour base with stripes and matching slim black Havaianas straps with a contrast pink rubber logo. All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROWO0000010', 3, 'Slim Trio Stripes Thongs', '37-38', '35.00', 'Women', 'Havaianas Slim Trio Stripes Black/Rose Cream Thongs. Match them to your activewear for that walk to pilates, you know want to. Classic black slim Havaianas featuring a pink and black block colour base with stripes and matching slim black Havaianas straps with a contrast pink rubber logo. All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROWO0000011', 3, 'Slim Trio Stripes Thongs', '39-40', '35.00', 'Women', 'Havaianas Slim Trio Stripes Black/Rose Cream Thongs. Match them to your activewear for that walk to pilates, you know want to. Classic black slim Havaianas featuring a pink and black block colour base with stripes and matching slim black Havaianas straps with a contrast pink rubber logo. All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROWO0000012', 3, 'Slim Trio Stripes Thongs', '41-42', '35.00', 'Women', 'Havaianas Slim Trio Stripes Black/Rose Cream Thongs. Match them to your activewear for that walk to pilates, you know want to. Classic black slim Havaianas featuring a pink and black block colour base with stripes and matching slim black Havaianas straps with a contrast pink rubber logo. All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROWO0000013', 4, 'Slim Rubber Logo New Thongs', '35-36', '35.00', 'Women', 'Havaianas Slim Rubber Logo Black/Coral New Thongs. Featuring our best selling slim womens style with a new coral/orange strap and rubber logo to add a pop of summer into your everyday look. Simply slip on a comfortable pair of Havaianas and you\'ll instantly be beach ready in your waterproof thongs! The bright strap also means you\'ll never confuse your thongs for someone else\'s, it\'s time to stand out from the crowd.Havaianas flip flops are made from premium quality Brazilian rubber. All thongs come with our 6 month quality guarantee.'),
('PROWO0000014', 4, 'Slim Rubber Logo New Thongs', '37-38', '35.00', 'Women', 'Havaianas Slim Rubber Logo Black/Coral New Thongs. Featuring our best selling slim womens style with a new coral/orange strap and rubber logo to add a pop of summer into your everyday look. Simply slip on a comfortable pair of Havaianas and you\'ll instantly be beach ready in your waterproof thongs! The bright strap also means you\'ll never confuse your thongs for someone else\'s, it\'s time to stand out from the crowd.Havaianas flip flops are made from premium quality Brazilian rubber. All thongs come with our 6 month quality guarantee.'),
('PROWO0000015', 4, 'Slim Rubber Logo New Thongs', '39-40', '35.00', 'Women', 'Havaianas Slim Rubber Logo Black/Coral New Thongs. Featuring our best selling slim womens style with a new coral/orange strap and rubber logo to add a pop of summer into your everyday look. Simply slip on a comfortable pair of Havaianas and you\'ll instantly be beach ready in your waterproof thongs! The bright strap also means you\'ll never confuse your thongs for someone else\'s, it\'s time to stand out from the crowd.Havaianas flip flops are made from premium quality Brazilian rubber. All thongs come with our 6 month quality guarantee.'),
('PROWO0000016', 4, 'Slim Rubber Logo New Thongs', '41-42', '35.00', 'Women', 'Havaianas Slim Rubber Logo Black/Coral New Thongs. Featuring our best selling slim womens style with a new coral/orange strap and rubber logo to add a pop of summer into your everyday look. Simply slip on a comfortable pair of Havaianas and you\'ll instantly be beach ready in your waterproof thongs! The bright strap also means you\'ll never confuse your thongs for someone else\'s, it\'s time to stand out from the crowd.Havaianas flip flops are made from premium quality Brazilian rubber. All thongs come with our 6 month quality guarantee.');
INSERT INTO `product` (`SKU`, `PRODUCT_ID`, `PRODUCT_NAME`, `SIZES`, `PRICE`, `CATEGORIES`, `DESCRIPTION`) VALUES
('PROWO0000017', 5, 'Slim Floral Tropical (Stripes) Thongs', '35-36', '35.00', 'Women', 'Havaianas Slim Floral Tropical (Stripes) Black/White Thongs. Step into a tropical paradise in our new season print Havaianas for women. Classic black Havaianas featuring pink and green tropical floral inspired print on the sole with matching black slim Havaianas straps and a white rubber logo to complete the look. Havaianas flip flops are made from premium quality Brazilian rubber. All thongs come with our 6 month quality guarantee.'),
('PROWO0000018', 5, 'Slim Floral Tropical (Stripes) Thongs', '37-38', '35.00', 'Women', 'Havaianas Slim Floral Tropical (Stripes) Black/White Thongs. Step into a tropical paradise in our new season print Havaianas for women. Classic black Havaianas featuring pink and green tropical floral inspired print on the sole with matching black slim Havaianas straps and a white rubber logo to complete the look. Havaianas flip flops are made from premium quality Brazilian rubber. All thongs come with our 6 month quality guarantee.'),
('PROWO0000019', 5, 'Slim Floral Tropical (Stripes) Thongs', '39-40', '35.00', 'Women', 'Havaianas Slim Floral Tropical (Stripes) Black/White Thongs. Step into a tropical paradise in our new season print Havaianas for women. Classic black Havaianas featuring pink and green tropical floral inspired print on the sole with matching black slim Havaianas straps and a white rubber logo to complete the look. Havaianas flip flops are made from premium quality Brazilian rubber. All thongs come with our 6 month quality guarantee.'),
('PROWO0000020', 5, 'Slim Floral Tropical (Stripes) Thongs', '41-42', '35.00', 'Women', 'Havaianas Slim Floral Tropical (Stripes) Black/White Thongs. Step into a tropical paradise in our new season print Havaianas for women. Classic black Havaianas featuring pink and green tropical floral inspired print on the sole with matching black slim Havaianas straps and a white rubber logo to complete the look. Havaianas flip flops are made from premium quality Brazilian rubber. All thongs come with our 6 month quality guarantee.'),
('PROWO0000021', 6, 'Flash Urban Sandals', '35-36', '35.00', 'Women', 'Havaianas Flash Urban Rose Gold Sandals. We?ve combined one of the most versatile styles of footwear, sandals with a go-with-everything metallic shade to create a sleek wardrobe staple that will lift the simplest of looks. The perfect balance between casual and street chic, our Flash Urban sandals make elegance easy. Featuring a metallic gold asymmetric sling back strap for a stylish look and extra secure fit, comfort comes courtesy of our signature textured footbed in rose gold. All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROWO0000022', 6, 'Flash Urban Sandals', '37-38', '35.00', 'Women', 'Havaianas Flash Urban Rose Gold Sandals. We?ve combined one of the most versatile styles of footwear, sandals with a go-with-everything metallic shade to create a sleek wardrobe staple that will lift the simplest of looks. The perfect balance between casual and street chic, our Flash Urban sandals make elegance easy. Featuring a metallic gold asymmetric sling back strap for a stylish look and extra secure fit, comfort comes courtesy of our signature textured footbed in rose gold. All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROWO0000023', 6, 'Flash Urban Sandals', '39-40', '35.00', 'Women', 'Havaianas Flash Urban Rose Gold Sandals. We?ve combined one of the most versatile styles of footwear, sandals with a go-with-everything metallic shade to create a sleek wardrobe staple that will lift the simplest of looks. The perfect balance between casual and street chic, our Flash Urban sandals make elegance easy. Featuring a metallic gold asymmetric sling back strap for a stylish look and extra secure fit, comfort comes courtesy of our signature textured footbed in rose gold. All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.'),
('PROWO0000024', 6, 'Flash Urban Sandals', '41-42', '35.00', 'Women', 'Havaianas Flash Urban Rose Gold Sandals. We?ve combined one of the most versatile styles of footwear, sandals with a go-with-everything metallic shade to create a sleek wardrobe staple that will lift the simplest of looks. The perfect balance between casual and street chic, our Flash Urban sandals make elegance easy. Featuring a metallic gold asymmetric sling back strap for a stylish look and extra secure fit, comfort comes courtesy of our signature textured footbed in rose gold. All Havaianas thongs are made from premium Brazilian rubber. All thongs purchased online come with our 6 month quality guarantee.');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `CATEGORY_ID` int(11) DEFAULT NULL,
  `PRODUCT_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`CATEGORY_ID`, `PRODUCT_ID`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(3, 13),
(3, 14),
(3, 15),
(3, 16),
(3, 17),
(3, 18);

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

CREATE TABLE `product_image` (
  `PRODUCT_ID` int(11) DEFAULT NULL,
  `IMAGE_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `product_image`
--

INSERT INTO `product_image` (`PRODUCT_ID`, `IMAGE_ID`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CATEGORY_ID`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`IMAGE_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`SKU`),
  ADD KEY `PRODUCT_ID` (`PRODUCT_ID`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD KEY `PRODUCT_ID` (`PRODUCT_ID`),
  ADD KEY `CATEGORY_ID` (`CATEGORY_ID`);

--
-- Indexes for table `product_image`
--
ALTER TABLE `product_image`
  ADD KEY `PRODUCT_ID` (`PRODUCT_ID`),
  ADD KEY `IMAGE_ID` (`IMAGE_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product_category`
--
ALTER TABLE `product_category`
  ADD CONSTRAINT `product_category_ibfk_1` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product` (`PRODUCT_ID`),
  ADD CONSTRAINT `product_category_ibfk_2` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `category` (`CATEGORY_ID`);

--
-- Constraints for table `product_image`
--
ALTER TABLE `product_image`
  ADD CONSTRAINT `product_image_ibfk_1` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product` (`PRODUCT_ID`),
  ADD CONSTRAINT `product_image_ibfk_2` FOREIGN KEY (`IMAGE_ID`) REFERENCES `image` (`IMAGE_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
