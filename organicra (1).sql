-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2024 at 12:53 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `organicra`
--

-- --------------------------------------------------------

--
-- Table structure for table `address_details`
--

CREATE TABLE `address_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cust_name` varchar(250) NOT NULL,
  `mobile_number` varchar(20) NOT NULL,
  `house_no` varchar(100) NOT NULL,
  `street_details` varchar(250) NOT NULL,
  `city_or_district` varchar(250) NOT NULL,
  `pincode` varchar(100) NOT NULL,
  `default_add` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `address_details`
--

INSERT INTO `address_details` (`id`, `user_id`, `cust_name`, `mobile_number`, `house_no`, `street_details`, `city_or_district`, `pincode`, `default_add`) VALUES
(38, 1, 'Yarram sai harish', '09014610904', '4-90/B', 'sri ram nagar', 'Rayachoty', '516268', 1),
(39, 1, 'Nallannagari Reddaiah', '08639357075', '4-90/B', 'sri ram nagar', 'Rayachoty', '516268', 0),
(40, 1, 'Nallannagari Reddaiah', '08639357075', '4-90/B', 'sri ram nagar', 'Rayachoty', '516268', 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `product_image` varchar(250) NOT NULL,
  `cost` float NOT NULL,
  `ord_date` varchar(250) NOT NULL,
  `ord_time` varchar(250) NOT NULL,
  `ord_status` tinyint(1) NOT NULL DEFAULT 0,
  `ord_qnt` int(11) NOT NULL,
  `ord_qnt_type` varchar(250) NOT NULL,
  `ord_unq_id` varchar(100) NOT NULL,
  `add_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `user_id`, `product_id`, `product_name`, `product_image`, `cost`, `ord_date`, `ord_time`, `ord_status`, `ord_qnt`, `ord_qnt_type`, `ord_unq_id`, `add_id`) VALUES
(362, 1, 4, 'Custard apple', 'IMG-661fcbdf964b79.01801842.webp', 110, '8-4-2024', '16:48:41', 0, 1, 'kg', 'ID090303', 38),
(363, 1, 2, 'Banana', 'IMG-661fcaa1917cd2.93064469.jpg', 120, '8-4-2024', '16:48:41', 0, 24, 'pcs', 'ID090303', 38),
(364, 1, 73, 'Eggs', 'IMG-662f7f42842099.27096234.jpg', 480, '8-4-2024', '16:48:41', 0, 24, 'pcs', 'ID090303', 38),
(365, 1, 46, 'Cauli flower', 'IMG-661f8fec2614f4.23318527.png', 40, '8-4-2024', '16:48:41', 0, 1, 'pcs', 'ID090303', 38),
(366, 1, 4, 'Custard apple', 'IMG-661fcbdf964b79.01801842.webp', 110, '8-4-2024', '16:49:43', 0, 1, 'kg', 'ID100282', 39),
(367, 1, 2, 'Banana', 'IMG-661fcaa1917cd2.93064469.jpg', 120, '8-4-2024', '16:49:43', 0, 24, 'pcs', 'ID100282', 39),
(368, 1, 73, 'Eggs', 'IMG-662f7f42842099.27096234.jpg', 480, '8-4-2024', '16:49:43', 0, 24, 'pcs', 'ID100282', 39),
(369, 1, 46, 'Cauli flower', 'IMG-661f8fec2614f4.23318527.png', 40, '8-4-2024', '16:49:43', 0, 1, 'pcs', 'ID100282', 39),
(370, 1, 4, 'Custard apple', 'IMG-661fcbdf964b79.01801842.webp', 110, '8-4-2024', '21:5:45', 0, 1, 'kg', 'ID307478', 39),
(371, 1, 2, 'Banana', 'IMG-661fcaa1917cd2.93064469.jpg', 120, '8-4-2024', '21:5:45', 0, 24, 'pcs', 'ID307478', 39),
(372, 1, 73, 'Eggs', 'IMG-662f7f42842099.27096234.jpg', 480, '8-4-2024', '21:5:45', 0, 24, 'pcs', 'ID307478', 39),
(373, 1, 46, 'Cauli flower', 'IMG-661f8fec2614f4.23318527.png', 40, '8-4-2024', '21:5:45', 0, 1, 'pcs', 'ID307478', 39),
(374, 1, 22, 'Ground nuts', 'IMG-662398b4bdc187.62032575.jpg', 120, '8-4-2024', '21:5:45', 0, 1, 'kg', 'ID307478', 39),
(375, 1, 62, 'Full cream milk', 'IMG-66229dcd1b6a63.08308598.jpg', 70, '8-4-2024', '21:5:45', 0, 1, 'litre', 'ID307478', 39),
(376, 1, 10, 'Kiwi', 'IMG-661fccb07e0426.28263172.jpg', 600, '10-4-2024', '11:30:22', 0, 9, 'pcs', 'ID651985', 38),
(377, 1, 22, 'Ground nuts', 'IMG-662398b4bdc187.62032575.jpg', 360, '10-4-2024', '11:30:22', 0, 3, 'kg', 'ID651985', 38),
(378, 1, 31, 'Millets', 'IMG-66239d4091bcc1.07638949.jpg', 138, '10-4-2024', '11:30:22', 0, 1, 'kg', 'ID651985', 38);

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `category` varchar(250) NOT NULL,
  `image1` varchar(250) NOT NULL,
  `image2` varchar(250) NOT NULL,
  `image3` varchar(250) NOT NULL,
  `image4` varchar(250) NOT NULL,
  `Qnt_type` varchar(100) NOT NULL DEFAULT 'kg',
  `Qnt` int(11) NOT NULL DEFAULT 1,
  `price` int(11) NOT NULL DEFAULT 100,
  `Rating` float NOT NULL DEFAULT 4
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `name`, `category`, `image1`, `image2`, `image3`, `image4`, `Qnt_type`, `Qnt`, `price`, `Rating`) VALUES
(1, 'Apple', 'fruits', 'IMG-661fca7230e382.64854643.jpg', 'IMG-661fca72311907.67966102.jpg', 'IMG-661fca72314792.06548057.jpg', 'IMG-661fca72316c00.15709551.jpg', 'kg', 1, 140, 4),
(2, 'Banana', 'fruits', 'IMG-661fcaa1917cd2.93064469.jpg', 'IMG-661fcaa191c6f6.67710247.jpg', 'IMG-661fcaa191fda4.15488404.jpg', 'IMG-661fcaa1922588.49478780.jpg', 'pcs', 12, 60, 4.5),
(3, 'Cherry', 'fruits', 'IMG-661fcac9272d59.26518822.webp', 'IMG-661fcac9276068.77296235.jpg', 'IMG-661fcac9278cb4.84865454.jpg', 'IMG-661fcac927b671.67153069.jpg', 'kg', 1, 620, 4.66667),
(4, 'Custard apple', 'fruits', 'IMG-661fcbdf964b79.01801842.webp', 'IMG-661fcbdf9609a9.45839916.jpeg', 'IMG-661fcbdf9684e3.93952099.webp', 'IMG-661fcbdf96b3b4.63919641.jpg', 'kg', 1, 110, 4.5),
(5, 'Dragon fruit', 'fruits', 'IMG-661fcc0031c0b4.93508972.jpg', 'IMG-661fcc0031f385.35421031.jpg', 'IMG-661fcc00321c47.90945521.jpg', 'IMG-661fcc00323f80.94966764.jpg', 'pcs', 1, 110, 4),
(6, 'Goose berry', 'fruits', 'IMG-661fcc290ad440.10201742.webp', 'IMG-661fcc290b0f14.87042874.webp', 'IMG-661fcc290b4015.00264914.jpg', 'IMG-661fcc290b6ff9.92801996.webp', 'kg', 1, 90, 4),
(7, 'Grapes', 'fruits', 'IMG-661fcc499b4cf4.66205698.jpg', 'IMG-661fcc499ba316.23690666.jpg', 'IMG-661fcc499bd1b9.86176349.webp', 'IMG-661fcc499bfc95.04961733.jpg', 'kg', 1, 140, 4),
(8, 'Guava', 'fruits', 'IMG-661fcc6d4267a6.04529502.jpg', 'IMG-661fcc6d42aae3.51395631.jpeg', 'IMG-661fcc6d42d3f6.24968420.jpg', 'IMG-661fcc6d430202.81894266.jpg', 'kg', 1, 80, 4),
(9, 'Jack fruit', 'fruits', 'IMG-661fcc8d93a1c2.49558172.png', 'IMG-661fcc8d93cba6.05674043.jpg', 'IMG-661fcc8d93f283.33239728.webp', 'IMG-661fcc8d941789.26730188.jpg', 'pcs', 1, 60, 4),
(10, 'Kiwi', 'fruits', 'IMG-661fccb07e0426.28263172.jpg', 'IMG-661fccb07e36f2.85642746.jpg', 'IMG-661fccb07e7560.53172665.jpg', 'IMG-661fccb07eac66.74047999.jpg', 'pcs', 3, 200, 4),
(11, 'Mango', 'fruits', 'IMG-661fccd1aa1e66.15290836.jpg', 'IMG-661fccd1aa5155.57872983.jpg', 'IMG-661fccd1aa89c4.93679314.jpg', 'IMG-661fccd1aaba64.82368806.jpg', 'kg', 1, 150, 4),
(12, 'Musk melon', 'fruits', 'IMG-661fccfbbaf5a1.69635551.jpg', 'IMG-661fccfbbb3149.33421156.jpg', 'IMG-661fccfbbb6224.78791812.jpg', 'IMG-661fccfbbb9714.84111414.jpg', 'pcs', 1, 50, 4),
(13, 'Orange', 'fruits', 'IMG-661fcd2e8a8997.18480162.jpg', 'IMG-661fcd2e8ac5e1.50551890.webp', 'IMG-661fcd2e8af0e9.47403349.jpeg', 'IMG-661fcd2e8b1588.30496557.jpg', 'kg', 1, 70, 4),
(14, 'Pear', 'fruits', 'IMG-661fcd6ad86184.81082027.webp', 'IMG-661fcd6ad89e84.91123506.webp', 'IMG-661fcd6ad8d2c4.03250063.jpg', 'IMG-661fcd6ad8ff36.66266465.jpg', 'kg', 1, 180, 4),
(15, 'Pineapple', 'fruits', 'IMG-661fcd89255be2.55661553.jpg', 'IMG-661fcd89258d62.01732208.webp', 'IMG-661fcd8925b963.44195932.webp', 'IMG-661fcd8925e415.25721910.jpg', 'pcs', 1, 60, 4),
(16, 'Pomegranate', 'fruits', 'IMG-661fcdc811b569.83130617.jpg', 'IMG-661fcdc811ed71.16971688.webp', 'IMG-661fcdc8121ba0.45331281.jpg', 'IMG-661fcdc8124a08.91720784.jpeg', 'kg', 1, 110, 4),
(17, 'Sapota', 'fruits', 'IMG-661fcdfe9770f1.18405249.jpeg', 'IMG-661fcdfe97acb4.42600895.jpg', 'IMG-661fcdfe97e117.08627058.jpg', 'IMG-661fcdfe980953.93535690.webp', 'kg', 1, 60, 4),
(18, 'Strawberry', 'fruits', 'IMG-661fce1b455d94.31112909.jpg', 'IMG-661fce1b459051.35008681.jpg', 'IMG-661fce1b45bc22.61693956.jpg', 'IMG-661fce1b45ebf1.29636322.jpeg', 'kg', 1, 410, 4),
(19, 'Watermelon', 'fruits', 'IMG-661fce3f7ae643.50367522.jpg', 'IMG-661fce3f7b3152.23424027.jpg', 'IMG-661fce3f7b63f5.36687020.jpg', 'IMG-661fce3f7b90d8.70569245.jpg', 'pcs', 1, 70, 4),
(20, 'Papaya', 'fruits', 'IMG-661fced0c84667.92741795.jpg', 'IMG-661fced0c86e80.85252218.webp', 'IMG-661fced0c89893.58284667.png', 'IMG-661fced0c8bb91.95189988.jpg', 'pcs', 1, 45, 4),
(21, 'Rice', 'grains', 'IMG-6623983e7e74c9.00183799.jpg', 'IMG-6623983e7f3653.17782575.jpg', 'IMG-6623983e7f8fb8.65686519.png', 'IMG-6623983e7fe6c9.89636309.jpg', 'kg', 1, 60, 4),
(22, 'Ground nuts', 'grains', 'IMG-662398b4bdc187.62032575.jpg', 'IMG-662398b4be0381.75364577.jpg', 'IMG-662398b4be5bd6.11461120.jpg', 'IMG-662398b4beab45.25523505.jpg', 'kg', 1, 120, 5),
(23, 'Wheat', 'grains', 'IMG-66239954936db7.35236933.jpg', 'IMG-6623995493cdb9.72061935.jpg', 'IMG-66239954942288.15390618.jpg', 'IMG-66239954948668.42207833.jpg', 'kg', 1, 54, 4),
(24, 'Jowar', 'grains', 'IMG-66239a05f27100.86041112.jpg', 'IMG-66239a05f2d3d7.88298041.jpg', 'IMG-66239a05f33772.71088387.jpg', 'IMG-66239a05f38d23.26722206.jpg', 'kg', 1, 63, 4),
(25, 'Corn', 'grains', 'IMG-66239a6b7ab231.76215777.jpg', 'IMG-66239a6b7b2255.65716792.jpg', 'IMG-66239a6b7b80e2.39361426.jpg', 'IMG-66239a6b7bf5d6.05180610.jpg', 'kg', 1, 75, 4),
(26, 'Bulgar', 'grains', 'IMG-66239abd6fde22.80069403.jpg', 'IMG-66239abd705d56.48503696.jpg', 'IMG-66239abd70c730.24452155.jpg', 'IMG-66239abd712ca7.34833146.jpg', 'kg', 1, 200, 4),
(27, 'Cereal grains', 'grains', 'IMG-66239b3527ee16.20664115.jpg', 'IMG-66239b35285960.45024138.jpg', 'IMG-66239b3528abe4.28066711.png', 'IMG-66239b3528fd12.55450689.jpg', 'kg', 1, 50, 4),
(28, 'Freekeh', 'grains', 'IMG-66239c3b2c4389.52735529.jpg', 'IMG-66239c3b2c9735.97704016.png', 'IMG-66239c3b2cfc66.50788490.png', 'IMG-66239c3b2d7f92.36612352.png', 'kg', 1, 550, 4),
(29, 'Grits', 'grains', 'IMG-66239c968db444.81067041.png', 'IMG-66239c968e1c97.98541793.jpg', 'IMG-66239c968e6d37.20485040.jpg', 'IMG-66239c968ec799.80482343.jpg', 'kg', 1, 650, 4),
(30, 'Khorasan', 'grains', 'IMG-66239ce9c0d599.66502792.jpg', 'IMG-66239ce9c145d9.79479926.jpg', 'IMG-66239ce9c1a1b0.87051383.jpg', 'IMG-66239ce9c1f0a3.23331098.jpg', 'kg', 1, 600, 4),
(31, 'Millets', 'grains', 'IMG-66239d4091bcc1.07638949.jpg', 'IMG-66239d409206c8.88174728.jpg', 'IMG-66239d409245a1.71747216.jpg', 'IMG-66239d40927f52.26387173.png', 'kg', 1, 138, 3.5),
(32, 'Moong dal', 'grains', 'IMG-66239d800ae5c3.71327714.jpg', 'IMG-66239d800ba5f4.23807622.jpg', 'IMG-66239d800c1927.72534120.jpg', 'IMG-66239d800c7d10.68281623.jpg', 'kg', 1, 125, 4),
(33, 'Barley', 'grains', 'IMG-66239dcb08d723.87991031.jpg', 'IMG-66239dcb093e56.85371571.jpg', 'IMG-66239dcb0982e2.74840626.jpg', 'IMG-66239dcb09d363.40657229.jpg', 'kg', 1, 131, 4),
(34, 'Mustard', 'grains', 'IMG-66239e09873ee5.07936209.jpg', 'IMG-66239e0987a812.69628527.jpg', 'IMG-66239e0987eea0.35009964.png', 'IMG-66239e09883245.22487701.jpg', 'kg', 1, 208, 4),
(35, 'Oats', 'grains', 'IMG-66239e7097e004.36990909.jpg', 'IMG-66239e709856b7.18301988.jpg', 'IMG-66239e7098ae38.71766690.jpg', 'IMG-66239e70990680.56503415.png', 'kg', 1, 163, 4),
(36, 'Quinoa', 'grains', 'IMG-66239ebd79fcc3.24444417.jpg', 'IMG-66239ebd7a7ce9.95129843.jpg', 'IMG-66239ebd7acf17.70758091.jpg', 'IMG-66239ebd7b2196.70132876.jpg', 'kg', 1, 300, 4),
(37, 'Rye', 'grains', 'IMG-66239effd1ad97.94357585.jpg', 'IMG-66239effd21e96.44971566.jpg', 'IMG-66239effd27612.15043535.jpg', 'IMG-66239effd2c048.05158970.jpg', 'kg', 1, 700, 4),
(38, 'Sorghum', 'grains', 'IMG-66239f739e1fd3.84183829.jpg', 'IMG-66239f739e7427.55745176.jpg', 'IMG-66239f739eb745.18935538.png', 'IMG-66239f739ef783.25591314.png', 'kg', 1, 180, 4),
(39, 'Soy', 'grains', 'IMG-66239fbce17f94.41976991.jpg', 'IMG-66239fbce21761.29139487.png', 'IMG-66239fbce27701.16620955.jpg', 'IMG-66239fbce2d2e2.26481353.jpg', 'kg', 1, 148, 4),
(40, 'Soya beans', 'grains', 'IMG-6623a033f169f1.52782347.jpg', 'IMG-6623a033f1e7d5.82342143.jpg', 'IMG-6623a033f249d7.21062218.jpg', 'IMG-6623a033f2a391.28016702.jpg', 'kg', 1, 84, 4),
(41, 'Sun flower seeds', 'grains', 'IMG-6623a08dcfaf77.45586822.jpg', 'IMG-6623a08dd019c6.77023805.jpg', 'IMG-6623a08dd08158.11161721.jpg', 'IMG-6623a08dd0d797.55799845.jpg', 'kg', 1, 530, 4),
(42, 'Beetroot', 'vegetables', 'IMG-661f77c04c8384.79873418.jpg', 'IMG-661f77c04ccaf0.57286591.jpg', 'IMG-661f77c04d0636.28797525.jpg', 'IMG-661f77c04d46b1.44230135.jpg', 'kg', 1, 40, 4),
(45, 'Cabbage', 'vegetables', 'IMG-661f8f5604f8a0.95241603.png', 'IMG-661f8f56055c65.31806751.jpg', 'IMG-661f8f5605b555.64673469.jpg', 'IMG-661f8f560609c8.87271431.jpg', 'pcs', 1, 40, 4),
(46, 'Cauli flower', 'vegetables', 'IMG-661f8fec2614f4.23318527.png', 'IMG-661f8fec2663c2.03277384.jpg', 'IMG-661f8fec26ad48.44731603.png', 'IMG-661f8fec2708e1.43413404.jpg', 'pcs', 1, 40, 3.5),
(47, 'Cucumber', 'vegetables', 'IMG-661f90a1802570.64371315.jpg', 'IMG-661f90a1807ba7.35788450.jpg', 'IMG-661f90a180c258.19664870.webp', 'IMG-661f90a180f671.83458260.jpg', 'kg', 1, 40, 4),
(48, 'Drum sticks', 'vegetables', 'IMG-661f928612e1f4.46368646.jpg', 'IMG-661f9286129cc2.88620498.webp', 'IMG-661f9286123e07.78861530.webp', 'IMG-661f9286132c23.87324827.webp', 'pcs', 10, 60, 4),
(49, 'Ladyfinger', 'vegetables', 'IMG-661f92bf57c153.33616056.png', 'IMG-661f92bf5776b5.92972237.jpg', 'IMG-661f92bf571fb8.27566431.jpg', 'IMG-661f92bf580751.00246043.jpg', 'kg', 1, 60, 4),
(50, 'Onions', 'vegetables', 'IMG-661f934b06ce70.51267809.jpg', 'IMG-661f934b071aa1.35760708.jpg', 'IMG-661f934b075f26.87975531.png', 'IMG-661f934b07a461.22028855.jpg', 'kg', 1, 30, 4),
(51, 'Peas', 'vegetables', 'IMG-661f93b9431c92.02844865.jpg', 'IMG-661f93b9437f41.45434358.jpg', 'IMG-661f93b943c402.46015247.jpg', 'IMG-661f93b9441be6.27205119.jpg', 'kg', 1, 50, 4),
(52, 'Potatoes', 'vegetables', 'IMG-661f9434829696.70639045.jpg', 'IMG-661f943482f8b5.02793981.jpeg', 'IMG-661f9434833ce9.52769944.jpg', 'IMG-661f9434837f58.97028187.jpg', 'kg', 1, 30, 4),
(53, 'Pumpkin', 'vegetables', 'IMG-661f94687cef84.17630811.jpg', 'IMG-661f94687d68f1.71459456.jpg', 'IMG-661f94687da454.12160520.jpeg', 'IMG-661f94687ddb62.87811370.jpg', 'pcs', 1, 30, 4),
(54, 'Spinach', 'vegetables', 'IMG-661f94969b0f23.41916558.jpg', 'IMG-661f94969b6604.91949172.webp', 'IMG-661f94969ba7b4.67650699.jpg', 'IMG-661f94969be6c1.10873443.jpeg', 'kg', 1, 80, 4),
(55, 'Tomatoes', 'vegetables', 'IMG-661f94c46a9d82.44426763.png', 'IMG-661f94c46ae5f6.50679034.jpg', 'IMG-661f94c46b1ec4.12446182.png', 'IMG-661f94c46b5398.48114079.png', 'kg', 1, 30, 4.5),
(56, 'Brinjal', 'vegetables', 'IMG-6622bf91408a33.96881242.png', 'IMG-6622bf9140ef17.98464162.png', 'IMG-6622bf91411c19.52795591.jpg', 'IMG-6622bf91414664.78777454.jpg', 'kg', 1, 40, 4),
(57, 'Mirchi', 'vegetables', 'IMG-6622c06071b526.85671410.png', 'IMG-6622c060720000.19130978.jpg', 'IMG-6622c060723342.16268914.jpg', 'IMG-6622c060725615.28277330.jpg', 'kg', 1, 50, 4),
(58, 'Carrot', 'vegetables', 'IMG-6622c0df924b27.44431294.jpg', 'IMG-6622c0df927559.16243351.png', 'IMG-6622c0df92a415.55758130.jpg', 'IMG-6622c0df92d368.56225706.jpg', 'kg', 1, 65, 4),
(59, 'Ginger', 'vegetables', 'IMG-6622c11fc5f853.32359028.png', 'IMG-6622c11fc62442.38731996.png', 'IMG-6622c11fc63e76.52999777.jpg', 'IMG-6622c11fc668f5.22680795.png', 'kg', 1, 160, 4),
(60, 'Garlic', 'vegetables', 'IMG-6622c14fd95d09.05600139.png', 'IMG-6622c14fd99c88.97792198.png', 'IMG-6622c14fd9ce22.69006817.png', 'IMG-6622c14fda0147.27220488.jpg', 'kg', 1, 100, 4),
(61, 'Sweet potato', 'vegetables', 'IMG-6622c197bf6777.11349789.jpg', 'IMG-6622c197bf9e54.82039572.jpg', 'IMG-6622c197bfcac6.13854027.jpg', 'IMG-6622c197bfeb51.32381408.jpg', 'kg', 1, 100, 4),
(62, 'Full cream milk', 'milk products', 'IMG-66229dcd1b6a63.08308598.jpg', 'IMG-66229dcd1bb586.70644603.jpg', 'IMG-66229dcd1bede9.06451494.jpg', 'IMG-66229dcd1c2eb0.28462982.jpg', 'litre', 1, 70, 4),
(63, 'Panner', 'milk products', 'IMG-66229e3c733047.10668119.jpg', 'IMG-66229e3c737574.77989474.jpg', 'IMG-66229e3c73a441.93155902.jpg', 'IMG-66229e3c73cbd4.80102800.jpg', 'kg', 1, 500, 4),
(64, 'Cheese', 'milk products', 'IMG-66229e6f2934e4.52898361.jpg', 'IMG-66229e6f2995e8.79359827.jpg', 'IMG-66229e6f29dbb0.81917414.jpg', 'IMG-66229e6f2a04d3.40263801.jpg', 'kg', 1, 590, 4),
(65, 'Curd', 'milk products', 'IMG-66229fa11d8544.72989696.jpg', 'IMG-66229fa11dd154.56129828.jpg', 'IMG-66229fa11e0ee5.97189279.jpg', 'IMG-66229fa11e4958.93286680.jpg', 'litre', 1, 110, 4),
(66, 'Butter', 'milk products', 'IMG-6622a119745353.68660508.jpg', 'IMG-6622a119749450.77394119.jpg', 'IMG-6622a11974cf67.55939616.jpg', 'IMG-6622a1197501c5.45241007.jpg', 'kg', 1, 550, 4),
(67, 'Ice cream', 'milk products', 'IMG-6622a161dfdc20.96829109.jpg', 'IMG-6622a161e02241.73206975.jpg', 'IMG-6622a161e05a48.69732496.jpg', 'IMG-6622a161e09543.08884806.jpg', 'kg', 1, 420, 4),
(68, 'Ghee', 'milk products', 'IMG-6622a211140257.45223693.jpg', 'IMG-6622a211145252.98874030.jpg', 'IMG-6622a211148948.43259769.jpg', 'IMG-6622a21114b979.83599176.jpg', 'litre', 1, 610, 4),
(69, 'Tofu', 'milk products', 'IMG-6622b3b8e6e5d6.12664233.png', 'IMG-6622b3b8e789f3.67001494.png', 'IMG-6622b3b8e7a6a4.31848191.png', 'IMG-6622b3b8e7c812.01468329.png', 'kg', 1, 375, 4),
(70, 'Beans', 'vegetables', 'IMG-662a7a215a7fa1.41483572.jpg', 'IMG-662a7a215ae955.48234183.jpg', 'IMG-662a7a215b18d2.35224075.jpg', 'IMG-662a7a215b46b1.24731634.jpg', 'kg', 1, 80, 4),
(71, 'Bottle guard', 'vegetables', 'IMG-662a7a8a66afc2.86997786.jpg', 'IMG-662a7a8a66f129.36240211.jpg', 'IMG-662a7a8a6729a6.03522537.jpg', 'IMG-662a7a8a6781d5.30669875.jpg', 'kg', 1, 30, 4),
(72, 'Chicken', 'Meat', 'IMG-662f7f1a72d0b3.27774818.jpg', 'IMG-662f7f1a7333c0.52103939.jpg', 'IMG-662f7f1a738553.42844019.jpg', 'IMG-662f7f1a740b29.18248509.jpg', 'kg', 1, 650, 4),
(73, 'Eggs', 'Meat', 'IMG-662f7f42842099.27096234.jpg', 'IMG-662f7f42846a54.40165612.jpg', 'IMG-662f7f4284d928.65603072.jpg', 'IMG-662f7f428520c6.08154938.jpg', 'pcs', 12, 240, 5),
(74, 'Mutton', 'Meat', 'IMG-662f7f5d3f2826.78487845.jpg', 'IMG-662f7f5d3f61b2.82052865.jpg', 'IMG-662f7f5d3fa181.31996851.jpg', 'IMG-662f7f5d3fd7a1.99363422.jpg', 'kg', 1, 900, 4),
(75, 'Fish', 'Meat', 'IMG-662f7f8be38640.46997371.png', 'IMG-662f7f8be3cc65.34739550.jpg', 'IMG-662f7f8be41032.76252813.jpg', 'IMG-662f7f8be450d1.73603885.jpg', 'kg', 1, 250, 4),
(76, 'milk', 'milk_products', 'ksajh', 'lkhjdas', 'kjhads', 'kjhdskhnj', 'kg', 1, 100, 4);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `Rating` int(11) NOT NULL DEFAULT 5,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `Rating_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`Rating`, `product_id`, `user_id`, `Rating_id`) VALUES
(5, 3, 6, 14),
(4, 3, 6, 15),
(4, 55, 6, 16),
(5, 3, 6, 17),
(5, 55, 6, 18),
(4, 2, 1, 19),
(5, 2, 1, 20),
(4, 4, 1, 21),
(5, 4, 1, 22),
(5, 73, 1, 23),
(3, 46, 1, 24),
(4, 46, 1, 25),
(5, 4, 1, 26),
(4, 4, 1, 27),
(5, 22, 1, 28),
(3, 31, 1, 29),
(4, 31, 1, 30);

--
-- Triggers `rating`
--
DELIMITER $$
CREATE TRIGGER `updateProductRating` AFTER INSERT ON `rating` FOR EACH ROW BEGIN
  DECLARE avg_rating FLOAT;
  SELECT AVG(Rating) INTO avg_rating FROM rating WHERE product_id = NEW.product_id;
  UPDATE product_details
  SET Rating = avg_rating
  WHERE id = NEW.product_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `shopping_bag_item`
--

CREATE TABLE `shopping_bag_item` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `Qnt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shopping_bag_item`
--

INSERT INTO `shopping_bag_item` (`id`, `product_id`, `user_id`, `Qnt`) VALUES
(87, 10, 1, 9),
(88, 22, 1, 3),
(89, 31, 1, 1),
(92, 63, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `user_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `phone_number` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(250) NOT NULL,
  `verification_code` varchar(250) NOT NULL,
  `email_verification_status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `name`, `phone_number`, `email`, `password`, `verification_code`, `email_verification_status`) VALUES
(1, 'Nallannagari Reddaiah', '8639357075', 'reddaiah_nallannagari@srmap.edu.in', 'Reddy@12345', '0', 1),
(2, 'Yarram sai harish', '9014610904', 'saiharish_yarram@srmap.edu.in', 'Kattar@12345', '0', 1),
(4, 'Nithin', '8745390213', 'nithinpunem@gmail.com', 'Nithin@12345', '0', 1),
(6, 'Yasin shaik', '7649820281', 'skyasin2004@gmail.com', 'Yasin@1234', '0', 1),
(7, 'Murthy', '87288129871', 'venkataramanamurthy_pondala@srmap.edu.in', 'Murthy@1234', '0', 1),
(8, 'Nallannagari Reddaiah ', '8639357075', 'reddaiahnallannagari@gmail.com', 'Reddy@12345', '601162', 0),
(9, 'harish', '9014610904', 'bujjireddysaikishorereddy@gmail.com', 'Bhai1234@', '0', 1),
(10, 'harish', '09014610904', 'ysharish4@gmail.com', 'Reddy@12345', '0', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address_details`
--
ALTER TABLE `address_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_fk` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `add_id` (`add_id`),
  ADD KEY `USERID_FOREIGNKEY` (`user_id`),
  ADD KEY `PRODUCTID_FOREIGNKEY` (`product_id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`Rating_id`),
  ADD KEY `userId_fk` (`user_id`),
  ADD KEY `productId_fk` (`product_id`);

--
-- Indexes for table `shopping_bag_item`
--
ALTER TABLE `shopping_bag_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productIdFk` (`product_id`),
  ADD KEY `userId_foreign_key` (`user_id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address_details`
--
ALTER TABLE `address_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=379;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `Rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `shopping_bag_item`
--
ALTER TABLE `shopping_bag_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address_details`
--
ALTER TABLE `address_details`
  ADD CONSTRAINT `user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `PRODUCTID_FOREIGNKEY` FOREIGN KEY (`product_id`) REFERENCES `product_details` (`id`),
  ADD CONSTRAINT `USERID_FOREIGNKEY` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`),
  ADD CONSTRAINT `add_id` FOREIGN KEY (`add_id`) REFERENCES `address_details` (`id`);

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `productId_fk` FOREIGN KEY (`product_id`) REFERENCES `product_details` (`id`),
  ADD CONSTRAINT `userId_fk` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`);

--
-- Constraints for table `shopping_bag_item`
--
ALTER TABLE `shopping_bag_item`
  ADD CONSTRAINT `productIdFk` FOREIGN KEY (`product_id`) REFERENCES `product_details` (`id`),
  ADD CONSTRAINT `userId_foreign_key` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
