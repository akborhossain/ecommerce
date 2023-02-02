-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2023 at 03:59 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm1`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`, `unit_price`) VALUES
(48, 13, 1, 1, 899),
(49, 13, 9, 1, 599.99);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Fruits & Vegetables', 'fruits-vegetables'),
(2, 'Beverages', 'beverages'),
(3, 'Meat & Fish', 'meat-fish'),
(4, 'Cooking', 'cooking'),
(5, 'Dairy', '');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5),
(38, 28, 9, 1),
(39, 29, 19, 2),
(40, 30, 2, 1),
(41, 31, 28, 1),
(42, 32, 28, 1),
(43, 33, 28, 4),
(44, 34, 30, 1),
(45, 35, 2, 1),
(46, 36, 28, 1),
(47, 37, 1, 10),
(48, 38, 1, 1),
(49, 39, 28, 10);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `weight` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `weight`, `price`, `photo`, `date_view`, `counter`) VALUES
(1, 1, 'Mango Himshagor (Net Weight ± 50 gm)', '<p>An immensely popular mango from Rajshahi which is considered to be the most superior of all mango in Bangladesh.. The inside color of this mango is yellow and orange. Does not have any fiber and very much tasty to eat. Medium size.</p>\r\n', 'dell-inspiron-15-7000-15-6', '0', 899, 'mango.jpg', '2023-02-02', 5),
(2, 1, 'Cherry Pineapple', '', 'microsoft-surface-pro-4-typecover-128-gb', '0', 799, 'cherry.jpg', '2021-07-30', 2),
(3, 1, 'Malta (Net Weight ± 50 gm)', 'Malta, a variety of orange, is a popular citrus fruit cultivated in hot climate. The fruit is rich in mineral salts and other ingredients of nutritive value such as iron, lime, phosphorus, and vital minerals. Malta is loaded with vitamin C and vitamin B complex. It is a round-shaped, medium-sized fruit, weighting an average of 145.8 gm. It has a rough-surfaced orange ringed with a segment of around 9.67 centimeters and a sweet-tasting juice content of around 33.7 per cent. The fruit is often used to make processed juice, jam, jelly and marmalade.', 'dell-inspiron-15-5000-15-6', '0', 599, 'malta.jpg', '2021-07-17', 2),
(4, 1, 'Onion (Local)', '<p>\"Though all vegetables are important for health, certain kinds offer unique benefits. </br>\r\n\r\nOnions are members of the Allium genus of flowering plants that also includes garlic, shallots, leeks and chives.</br>\r\n\r\nThese vegetables contain various vitamins, minerals and potent plant compounds that have been shown to promote health in many ways.\r\n\r\nIn fact, the medicinal properties of onions have been recognized since ancient times, when they were used to treat ailments like headaches, heart disease and mouth sores.</br>\"\r\n\r\nNutritional facts/Ingredients :</br>\r\n\r\n\"Benefits:</br>\r\n\r\n-Packed With Nutrients</br>\r\n\r\n-May Benefit Heart Health</br>\r\n\r\n-Loaded With Antioxidants</br>\r\n\r\n-Contain Cancer-Fighting Compounds</br>\r\n\r\n-Help Control Blood Sugar</br>\r\n\r\n-May Boost Bone Density</br>\r\n\r\n-Have Antibacterial Properties</br>\r\n\r\n-May Boost Digestive Health</br>\r\n\r\n-Easy to Add to Your Diet\"</br></p>\r\n\r\n', 'lenovo-ideapad-320s-14ikb-14-laptop-grey', '0', 399, 'onion.jpg', '2021-06-30', 2),
(5, 3, 'Whole Hilsha 900gm', '<p>Bangladesh this fish is prepared in varity of way like it can be smoked, fried, steamed, baked, prepared with mustard seed paste, curd, brinjal (eggplant). Some common hilsa menus are Fried hilsa, Khichuri-Ilish, Sorshe Ilish, Panta Ilish,Vapa Ilish etc.\r\n\r\nIt has cultural value in Bangali’s life. It is an obvious food in many cultural festival like Pahela Boishakh, Saraswati Puja.</p>\r\n', 'whole-hilsha', '0', 339, 'whole-hilsha.jpg', '2018-07-09', 3),
(6, 1, 'Big Potato Diamond (Net Weight ± 50 gm)', '<p>Potato is a very healthy food and popular vegetable all over the world. Potatoes are available year-round as they are harvested somewhere every month of the year. potato\'s have lots of variety. these Potatoes are comparatively bigger than regular Potatoes. potatoes contain a goodly amount of carbohydrate (starch and sugar) they are also a storehouse for many vitamins and minerals. With the exception of vitamin A, potatoes have at least some of just about every nutrient, including fiber. Potatoes are relatively low in calories.</p>\r\n', 'dell-inspiron-15-5000-15', '0', 449.99, 'potato.jpg', '2021-06-30', 2),
(7, 3, 'Poa Fish\r\n', '', 'poa-fish', '0', 619, 'poa-fish.jpg', '0000-00-00', 0),
(8, 1, 'Cauliflower', '<p>\"Cauliflower is as good a source of fiber and vitamins.</br>\r\n\r\nIts ingredients may help strengthen bones, boost the cardiovascular system, and prevent cancer.\r\n\r\nTasty ways of eating cauliflower include cauliflower crust pizza and cauliflower and cheese soup.\r\n\r\nPeople who are using blood thinners should not suddenly start eating a lot of cauliflower because the high levels of vitamin K could react adversely with the drugs.\"\r\n\r\nNutritional facts/Ingredients :</br>\r\n\r\n\"Benefits:</br>\r\n\r\n-Helps With Digestion</br>\r\n\r\n-Helps Fight Cancer</br>\r\n\r\n-Sharpen Your memory</br>\r\n\r\n-Makes your bones Stronger \"</p>\r\n', 'asus-transformer-mini-t102ha-10-1-2-1-silver', '0', 549.99, 'cauliflower.jpg', '2021-07-17', 2),
(9, 2, 'Ispahani Mirzapore Best Leaf Tea', '<p>400 gm</br>\"Ispahani Mirzapore Best Leaf\" is produced by blending the BEST tea leaves of the finest tea gardens in Bangladesh. It comes to you in the most modern packing, designed to protect its excellent aroma and taste.</p>\r\n', 'ispahani-mirzapore-best-leaf-tea', '0', 599.99, 'tea.jpg', '2023-02-02', 2),
(10, 2, 'Nestle Nescafe Creamy Latte', '<p> 18 gm </br>NESCAFÉ Creamy Latte offers a unique CREAMY & MILKY coffee experience in every cup that young coffee drinkers enjoy.\r\n\r\nIts a mix of coffee, milk and sugar. To prepare a hot cup of perfect creamy cup of coffee add 15 gram of NESCAFÉ Creamy Latte in 100ml hot water ( 80°C).</p>\r\n', 'nestle-nescafe-creamy-latte', '0', 599.99, 'nestlecoffe.jpg', '2021-07-17', 1),
(11, 2, 'Nestle Nescafe Classic Instant Coffee Jar', '', 'nestle-nescafe-classic-instant-coffee-jar', '0', 489.98, 'nestlejarcoffee.jpg', '2021-06-30', 3),
(12, 2, 'Shezan Mango Juice\r\n', '250 ml', 'shezan-mango-juice\r\n', '0', 749.99, 'shezan-mango-juice.jpg', '2018-05-12', 3),
(13, 2, 'Slice Mango Juice\r\n', '200 ml', 'slice-mango-juice', '0', 799.99, 'slice-mango-juice.jpg', '2021-07-29', 4),
(14, 2, 'Frutika Mango Juice\r\n', '<p>- 500ml</p>\r\n', 'frutika-mango-juice', '0', 899.99, 'frutika-mango-juice.jpg', '2021-07-01', 1),
(15, 2, 'Ceres Apple Juice\r\n', '', 'ceres-apple-juice', '0', 999.99, 'ceres-apple-juice.jpg', '2018-07-09', 1),
(16, 2, 'Masafi Orange Juice\r\n', '<p> 2 ltr </br>Masafi juices offer a rich and natural experience of wholesome fruit blends to enjoy at every occasion. Their unique and distinctive flavour and enjoyable texture capture the perfect fruit juice drinking experience. We welcome you to explore our family of delicious juices.</p>', 'masafi-orange-juice', '0', 649.99, 'masafi-orange-juice.jpg', '2021-06-30', 1),
(17, 3, 'Bengal Meat Beef Bone In 1 Kg', '<p>Premium quality locally sourced. Meat, such as beef, is mainly composed of protein. Usually eaten as roasts, ribs, or steaks, beef is also commonly ground or minced. Patties of ground beef are often used in hamburgers. Processed beef products include corned beef, beef jerky, and sausages. Fresh lean beef is rich in various vitamins and minerals, especially iron and zinc, and is therefore recommended as part of a healthy diet.</p>\r\n', 'bengal-meat-beef-bone-in', '0', 49.99, 'bengal-meat-beef-bone-in.jpg', '2021-07-01', 1),
(18, 3, 'Deshi Chicken Skin Off (Developed By BAU)', '<p>1. Hygienically produced and Halal.\r\n</br>2. Antibiotics residue and harmful chemical free.\r\n</br>3. Production process is managed by experienced poultry & veterinary expert.\r\n</br>4. BAU Chicken strain is developed by Bangladesh Agricultural University from local chicken germplasm.</p>\r\n', 'deshi-chicken-skin-off', '0', 79.99, 'deshi-chicken-skin-off.jpg', '2021-07-01', 2),
(19, 3, 'Broiler Chicken Skin Off', '', 'broiler-chicken-skin-off', '0', 99.99, 'broiler-chicken-skin-off.jpg', '2021-07-30', 2),
(20, 3, 'Shrimp Golda 500gm', '', 'shrimp-golda', '0', 339, 'shrimp-golda.jpg', '2021-07-01', 1),
(27, 1, 'Carrot Deshi (Net Weight ± 20 gm)', '<p>Fresh Carrots pre-packed for your convenience. Carrots are an excellent source of vitamin a and they help promote heart, eye, brain, skin and liver health. Best eaten raw for maximum health benefits.</p>', 'carrot-deshi', '0', 1599, 'carrot.jpg', '2021-07-17', 1),
(28, 4, 'Chashi Aromatic Chinigura Rice', '', 'chashi-aromatic-chinigura-rice', '2 kg', 829, 'chashi-aromatic-chinigura-rice.jpg', '2021-07-30', 2),
(29, 4, 'Fresh Soyabean Oil\r\n', '<p>Fresh Fortified Soyabean Oil follows 3 steps of refining process-Perfect Degumming & Neutralization, Balanced De-colorization and Five steps Deodorization to ensure right ratio of Omega 3 & 6 and intact Beta-carotene in Soyabean Oil. Fresh soyabean oil contain vitamin A. Its fresh and healthy.</p>\r\n', 'fresh-soyabean-oil', '5 ltr', 889.99, 'fresh-soyabean-oil.jpg', '2021-07-01', 5),
(30, 5, 'Aarong Dairy Pasteurized Full Cream Liquid Milk', '<p>Milk is the best source for calcium. And it keeps skin soft and glowing. And in order to improve proper growth, you can have Aarong Dairy Full Cream Liquid Milk. Brand: Aarong Dairy. Milk Type: Liquid. Net weight 1 Ltr.</p>\r\n', 'aarong-dairy-pasteurized-full-cream-liquid-milk', '', 75, 'aarong-dairy-pasteurized-full-cream-liquid-milk.webp', '2023-02-02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2021-07-01'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2021-07-01'),
(28, 13, 'cod', '2021-07-17'),
(29, 13, 'cod', '2021-07-17'),
(30, 13, 'nogod', '2021-07-17'),
(31, 13, 'bkash', '2021-07-17'),
(32, 13, 'cod', '2021-07-17'),
(33, 13, 'cod', '2021-07-17'),
(34, 13, 'upay', '2021-07-17'),
(35, 13, 'bkash', '2021-07-17'),
(36, 13, 'cod', '2021-07-17'),
(37, 13, 'upay', '2021-07-30'),
(38, 13, 'cod', '2021-07-30'),
(39, 13, 'cod', '2021-07-30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$sOQX4jN5bMX.qD0JEUD3QOL33e3rlVqgIUTYWtg.47MyofUdTZDei', 1, 'SDP3', 'Projects', '', '', 'thanos1.jpg', 1, '', '', '2021-05-01'),
(9, 'harry@den.com', '$2y$10$l05XdbybxhlH4tRzYFNPm.MUkFkUWJWw/UT7xHgHC8E2nF75lEMyy', 0, 'Md Ibrahim', 'Hossain', 'Mirpur-1, Dhaka', '01781693117', 'male2.png', 1, 'k8FBpynQfqsv', 'wzPGkX5IODlTYHg', '2021-05-09'),
(13, 'smakbor33@gmail.com', '$2y$10$sOQX4jN5bMX.qD0JEUD3QOL33e3rlVqgIUTYWtg.47MyofUdTZDei', 0, 'Md Akbar ', 'Hossain', '', '', '', 1, 'BCFdgRHfmu5G', 'qGvfJcwXHDbYWQn', '2021-06-30'),
(14, 'abdmutaleb40@gmail.com', '$2y$10$78df4RMgxjDmwNFBrwEM6.bM9K15XAEaQ4NkX7FkWkevIMGvK19zC', 0, 'Md Sabbir', 'Hossain', '', '', '', 0, 'pBkKMCl4c3Xm', '', '2021-12-21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
