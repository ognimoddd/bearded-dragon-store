-- phpMyAdmin SQL Dump

-- version 4.5.1

-- http://www.phpmyadmin.net

--

-- Host: 127.0.0.1

-- Generation Time: Apr 27, 2017 at 10:17 PM

-- Server version: 10.1.13-MariaDB

-- PHP Version: 7.0.8



SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";




/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!40101 SET NAMES utf8mb4 */;


--

-- Database: `phonestore`

--


-- --------------------------------------------------------


--

-- Table structure for table `admin`

--


CREATE TABLE `admin` (

  `id` int(11) NOT NULL,

  `username` varchar(255) NOT NULL,

  `password` varchar(255) NOT NULL,

  `last_log_date` date NOT NULL

) ENGINE=MyISAM DEFAULT CHARSET=latin1;



--

-- Dumping data for table `admin`

--



INSERT INTO `admin` (`id`, `username`, `password`, `last_log_date`) VALUES

(1, 'Domingo', 'admin', '0000-00-00');



-- --------------------------------------------------------



--

-- Table structure for table `members`

--



CREATE TABLE `members` (

  `id` int(11) NOT NULL,

  `firstname` varchar(32) NOT NULL,

  `lastname` varchar(32) NOT NULL,

  `state` varchar(16) NOT NULL,

  `zipcode` int(16) NOT NULL,

  `username` varchar(32) NOT NULL,

  `password` varchar(255) NOT NULL,

  `email` varchar(32) NOT NULL

) ENGINE=MyISAM DEFAULT CHARSET=latin1;



--

-- Dumping data for table `members`

--


INSERT INTO `members` (`id`, `firstname`, `lastname`, `state`, `zipcode`, `username`, `password`, `email`) VALUES

(1, '', '', '', 0, '', '', '');



-- --------------------------------------------------------
--


--
 Table structure for table `products`

--


CREATE TABLE `products` (

  `id` int(11) NOT NULL,

  `product_name` varchar(255) NOT NULL,

  `price` varchar(16) NOT NULL,

  `details` text NOT NULL,

  `category` varchar(16) NOT NULL,

  `subcategory` varchar(16) NOT NULL,

  `date_added` date NOT NULL

) ENGINE=MyISAM DEFAULT CHARSET=latin1;



--

-- Dumping data for table `products`

--


INSERT INTO `products` (`id`, `product_name`, `price`, `details`, `category`, `subcategory`, `date_added`) VALUES

(15, 'Citrus Bearded Dragon', '300', 'Pictured here is the beautiful Citrus Bearded Dragon. This unique colorway will surely make\r\n\r\every other bearded dragon owner jealous!\r\n\r\n\r\n\r\n\r\n', 'Bearded Dragon', 'Citrus', '2018-04-26'),

(3, 'Adult Bearded Dragon', '150', 'Adult Bearded Dragon for sale. 
Size: 12-14''Species: Pogona vitticeps\r\n', 'Bearded Dragon', 'Normal', '2017-04-26'),

(4, 'Adult Orange Leatherback Bearded Dragon', '200', 'Beautiful Bearded Dragon for sale. CB. Feeding readily on crickets Size: 7.5+ inches\r\n', 'Bearded Dragon', 'Orange', '2017-04-26'),

(5, 'Adult Hypo Zero Bearded Dragon ', '600', 'Adult Hypo Zero Bearded Dragons for sale. Size: 12”+ CB. Pogona vitticeps \r\n', 'Bearded Dragon', 'White', '2017-04-26'),

(6, 'Juvenile Lemon Hypo Bearded Dragon', '300', 'Juvenile Lemon Hypo Bearded Dragon for sale. Size: 4-6" CB Species: Pogona vitticeps \r\n', 'Bearded Dragon', 'Brown', '2017-04-26'),

(7, 'Juvenile Bearded Dragon', '75', 'Juvenile Bearded Dragon for sale. Size: 4-6" CB Species: Pogona vitticeps \r\n', 'Bearded Dragon', 'Normal', '2017-04-26'),

(8, 'Adult Red Hypo Trans Bearded Dragon', '1000', 'Beautiful Bearded Dragon for sale. CB. Feeding readily on crickets READY TO BREED MUST HAVE COLLECTOR QUALITY BEARDIE\r\n', 'Bearded Dragon', 'Red', '2017-04-26'),

(13, 'Juvenile Flame Leatherback Bearded Dragon', '350', 'Flame Leatherback Bearded Dragon For Sale Size: ~3"+ Exact Animal Pictured For Sale. Pogona vitticeps', 'Bearded Dragon', 'Red', '2017-04-26'),

(9, 'Adult "Rust" Bearded Dragon ', '500', 'Exact animal pictured for sale. Size: 12-16" CB\r\n', 'Bearded Dragon', 'Red', '2017-04-26'),

(10, '20 Gallon Reptile Tank ', '80', '20 gallon reptile tank. Perfect for your new juvenile bearded dragon! Dimensions: 22L x 12.6W x 14.1H \r\n', 'Tanks', 'Small', '2017-04-26'),

(11, ' 40 Gallon Reptile Tank ', '150', '40 gallon reptile tank. Great for bigger juveniles and can house adults comfortably until they reach 14''. \r\n', 'Tanks', 'Medium', '2017-04-26'),

(12, '60 Gallon reptile tank ', '210', '60 gallon reptile tank. This is the perfect tank for any size bearded dragon. Dimensions: 48"L x 18"W x 18"H', 'Tanks', 'Large', '2017-04-26'),

(32, '70 Gallon Reptile Tank', '230', '70 gallon reptile tank. This spacious tank easily accommodates 1-2 adult bearded dragons! Dimensions: 49"L x 19.5"W x 21.25"H ', 'Tanks', 'Large', '2017-04-26'),

(34, 'Reptile Deep Dome Lamp', '40', 'Brighten up your terrarium with the Reptile Deep Dome Lamp. It features an extra-long reflector dome that extends beyond the face of the lamp, preventing the lamp from sticking out. The lamp is highly polished aluminum inside the dome that increases UVB and UVA output. Give your pet all the light and heat she needs with the Reptile Deep Dome Lamp.\r\n\r\n', 'Accessories', 'Lighting', '2017-04-26'),

(16, 'Hammocks', '30', 'Transform your terrarium into an invigorating world of wonder that feels like home and partners perfectly with hanging plants and more. Your reptile residents will adore the realistic atmosphere you've created for them while they explore new hiding places, shaded spots, and physical barriers.\r\n\r\n\r\n\r\n', 'Accessories', 'Decorations', '2017-04-26'),

(26, 'Medium Cave', '25', 'This medium cave is the perfect place for your juvenile bearded dragon to rest! Dimensions: 10" x 3" x 3" ', 'Accessories', 'Hideouts', '2017-04-26'),

(33, 'Large Basking Branch Arch', '100', '* An essential terrarium accessory for any tree-dwelling reptile or amphibian Provide an interesting and three-dimensional climbing structure, but they also add visual appeal to your terrarium Resembles an aged hardwood branch that can be found in tropical forests or desert environments * Easy to adapt to any terrarium setup, especially great for rainforest and desert terrariums * Heat-treated natural branches come in several sizes to give your pet the ideal spot for exercising and climbing, essentials for tree-dwelling reptiles and amphibians', 'Accessories', 'Branches', '2017-04-26'),

(28, 'Live Cricket (100 ct)', '15', ' Our active lively crickets are our #1 best seller. Crickets are an excellent choice for a feeder insect to offer as prey for your bearded dragon and other reptiles and birds or as bait crickets for bream and bluegill. We offer fast processing and cost effective economy postal shipping methods as well as premium next day shipping options. Size: 1"', 'Food', '', '2017-04-26'),

(29, 'Large Live Cricket (200 ct)', '28', 'Our active lively crickets are our #1 best seller. Crickets are an excellent choice for a feeder insect to offer as prey for your bearded dragon and other reptiles and birds or as bait crickets for bream and bluegill. We offer fast processing and cost effective economy postal shipping methods as well as premium next day shipping options. Size: 1.5"\r\n\r\n', 'Food', '', '2017-04-26'),

(17, 'Nutri-Worms ', '25', 'NutriWorms are dried larvae of the Black Soldier Fly, also known as calci worms. Tasty, healthy and sustainably sourced, NutriWorms are 100% natural and provide a boost in calcium and protein contributing to overall health and egg production. NutriWorms provide a well-balanced calcium and phosphorus ratio, making them one of the healthiest feeds for birds. They can be fed straight or mixed with any seed blend.', 'Food', '', '2017-04-26'),

(20, 'Reptile Calcium with D3', '15', 'Keep your pal healthy with our Calcium with D3 Reptile Supplement. Calcium is essential for the health and wellbeing of reptile and amphibian buddies, and this supplement provides them with a highly bioavailable source of calcium that has no phosphorus or lead. Made with only ultrafine precipitated calcium carbonate, it’s free of impurities and has particles that have a lot of surface area to increase absorption in your pal’s tummy. It also has vitamin D3, known to benefit reptiles that spend most of their time indoors.', 'Food', '', '2017-04-26'),

(21, 'Live Large Superworms', '20', '* Organically Grown
* Animal Specialties Superworms are naturally high in protein, low in fat, and highly nutritious
* Animal Specialties Superworms are raised in a specially formulated - protein, calcium, & vitamin fortified bedding mix', 'Food', '', '2017-04-26'),

(30, 'Adult Bearded Dragon Food ', '15', 'Your bearded dragon's health will greatly benefit from our natural Adult Bearded Dragon Food with added vitamins and minerals. This formula has been created with your bearded dragon's nutritional requirements in mind. The correct ratios of protein, calcium and fiber are included for the long-term health of adult bearded dragons. These reptiles will enjoy the flavorful dandelion greens and other nutritional plants that make up this food. Our Adult Bearded Dragon Food contains no artificial colors, flavorings or preservatives.
', 'Food', '', '2017-04-26'),

(18, 'Medium Wooden Hideout', '20', 'Provide your reptile with a place to find privacy by adding this Thrive Reptile Wood Hide Decor to his habitat. This great-looking ornament piece looks like real wood and makes a great addition to your pet's decor. Best of all, it provides a place where your reptile can hide and find solitude at any time. Your reptile is one of a kind, and with Thrive so is the world you create for it.\r\n', 'Accessories', 'Hideouts', '2017-04-26'),

(22, 'Medium Water Bowl', '18', '* Made of food-grade resin to help keep your pet safe as he eats.
* The natural look goes beautifully with any type of terrarium.
* Easy to clean for every pet parent’s convenience.
* Crafted with a non-porous surface that won’t absorb potentially harmful bacteria.
* Can be used by a variety of pets including turtles, frogs, newts, hermit crabs, lizards and snakes.', 'Food', 'Bowls', '2017-04-26'),

(37, 'Repti-Wipes ', '10', 'Reptile-friendly wipes used to clean your shedding bearded dragon. It can also be used to wipe interior tank surfaces with as caves, bowls, and decoration items.\r\n', 'Cleaning', '', '2015-05-01'),

(38, 'Large 3D Background ', '280', '- The ledge style was created by using some natural rock Ledges from Australia and combining them together to produce what we have today. 

- Perfect for Aquariums and Reptile enclosures with fish loving the ledges to hide under and pick algae from and reptiles to bask on or hide under.

- Our ledge varies in size and protrudes in the smaller tank about 2” to 4” and the larger 3" to 7".', '', '2015-05-01'),

(39, 'Forest Background Picture', '12', 'Beautiful forest background to add life to your reptile's home! Dimensions: 30"L x 18" H', 'Accessories', 'Backgrounds', '2015-05-01'),

(35, 'Reptile Disinfectant Cleaner', '8', 'Made in the USA.
Ideal for use in terrariums and small animal cages.
Antibacterial cleaner, disinfectant and deodorizer in a single formula.
Arrives ready to use, no mixing required
Kills a wide variety of bacteria dangerous to plants and animals.', 'Cleaning', '', '2015-05-01'),

(36, '\Reptile Scooper', '12', 'Small scooper for cleaning waste and leftover food from your reptile's home. Your friend will thank you for keeping his habitat clean!', 'Cleaning', '', '2015-05-01'),

(23, ' Small Water Bowl ', '5', 'Small water bowl. Great for juvenile reptiles.
Dimensions: 2"L x 2"W x 1"H', 'Food', 'Bowls', '2015-05-02'),

(24, 'Juvenile Fire Red Bearded Dragon ', '220', 'Beautiful Juvenile Fire red bearded dragon. 
10" ', 'Bearded Dragon', 'Red', '2015-05-02'),

(25, 'Small Cricket Cage', '30', 'Complete cricket care kit includes food dish and water bowl
Removable, well-ventilated lid
Easy cricket dispenser
Makes cricket feeding neat & tidy
Size: Small - 18 cm x 14 cm x 11 cm (7” x 5.5” x 4.3”)', 'Tanks', 'Small', '2015-05-03'),

(19, 'Large Cricket Cage', '45', 'Complete cricket care kit includes food dish and water bowl
Removable, well-ventilated lid
Easy cricket dispenser
Makes cricket feeding neat & tidy
Size: Large - (14” x 11” x 8.6”)', 'Tanks', 'Large', '2015-05-03'),

(31, 'Sliding Door Glass Reptile Terrarium', '500', 'Removable tough top screen lets UVB and infrared in for heating and health.
Raised waterproof bottom lets you add a substrate heater beneath or fill with water for an amphibious habitat.
Front doors slide separately for easy access and lock securely to prevent escape.
Screens on the sides provide window ventilation while closable inlets let you run wires or tubes securely.
Sets up easily in 5 minutes with no special tools and all parts included.

Give your reptiles or amphibians room to roam with this amply sized Sliding Door Glass Reptile Terrarium. It features sliding glass doors for easy access and a secure lock to prevent escapes, plus a deep waterproof bottom that’s perfect for deep substrates or creating an amphibious environment. The full-screen top allows UVB and infrared penetration and is fully removable for access, while closable inlets on the sides let you run wires or tubes into the tank as needed. It’s great for multiple pets or a bigger buddy and a raised base that lets you add a substrate heater underneath. Make visiting and caring for your cold-blooded companions a delight with this lovely glass terrarium!', 'Tanks', 'Extra Large', '2015-05-03');


-- --------------------------------------------------------
-
-
-
- Table structure for table `transactions`

--


CREATE TABLE `transactions` (

  `id` int(11) NOT NULL,

  `product_id_array` varchar(255) NOT NULL,

  `payer_email` varchar(255) NOT NULL,

  `first_name` varchar(255) NOT NULL,

  `last_name` varchar(255) NOT NULL,

  `payment_date` varchar(255) NOT NULL,

  `payment_currency` varchar(255) NOT NULL,

  `txn_id` varchar(255) NOT NULL,

  `receiver_email` varchar(255) NOT NULL,

  `payment_type` varchar(255) NOT NULL,

  `payment_status` varchar(255) NOT NULL,

  `txn_type` varchar(255) NOT NULL,

  `payer_status` varchar(255) NOT NULL,

  `address_street` varchar(255) NOT NULL,

  `address_city` varchar(255) NOT NULL,

  `address_state` varchar(255) NOT NULL,

  `address_zip` varchar(255) NOT NULL,

  `address_country` varchar(255) NOT NULL,

  `address_status` varchar(255) NOT NULL,

  `notify_version` varchar(255) NOT NULL,

  `verify_sign` varchar(255) NOT NULL,

  `payer_id` varchar(255) NOT NULL,

  `mc_currency` varchar(255) NOT NULL,

  `mc_fee` varchar(255) NOT NULL,

  `Total` int(255) NOT NULL

) ENGINE=MyISAM DEFAULT CHARSET=latin1;



-- --------------------------------------------------------



--

-- Table structure for table `users`

--


CREATE TABLE `users` (

  `id` int(11) NOT NULL,

  `username` varchar(50) NOT NULL,

  `password` varchar(50) NOT NULL,

  `email` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



--

-- Dumping data for table `users`

--



INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES

(2, 'Jimmy', 'password', 'jimmytheman@gmail.com'),

(3, '', '', ''),

(4, 'Adam', 'pasword', 'Adamkicksass@gmail.com'),

(5, 'teacher', 'teacher', 'teacher@gmail.com'),

(6, 'testingpoop', 'password', 'poop@montclair.edu'),

(7, 'Alex', 'password', 'thisisntarealemail@gmail.com'),

(8, 'kristy', 'hibobby', 'kristy@gmail.com'),

(9, 'Wasim', 'password', 'ranaw1@mail.montclair.edu'),

(10, 'user', 'password', 'user@montclair.edu'),

(11, 'google', 'password', 'google@montclair.edu'),

(12, 'test', 'password', 'test@montclair.edu'),

(13, 'test', 'password', 'test@montclair.edu'),

(14, 'bobby123', 'bobby123', 'tharsan651@LIVE.com'),

(15, 'testing', 'password', 'student1@montclair.edu'),

(16, '123', '123', '123@mail.com'),

(17, 'zobia', '123456', 'zobia@gmail.com'),

(18, 'astolsteven', 'monopoly', 'starky127@yahoo.com'),

(19, 'student', 'Password', 'student@montclair.edu'),

(20, 'seanDp32', 'Bard100*', 'seanDp32@gmail.com'),

(21, 'seanDp32', 'admin', 'seanDp32@gmail.com'),

(22, 'garciaj37', 'Montclair', 'garciaj37@montclair.edu');



--

-- Indexes for dumped tables

--



--

-- Indexes for table `admin`
--


ALTER TABLE `admin`

  ADD PRIMARY KEY (`id`);



--

-- Indexes for table `members`

--

ALTER TABLE `members`

  ADD PRIMARY KEY (`id`);



--

-- Indexes for table `products`

--


ALTER TABLE `products`

  ADD PRIMARY KEY (`id`),

  ADD UNIQUE KEY `product_name` (`product_name`);



--

-- Indexes for table `transactions`

--


ALTER TABLE `transactions`

  ADD PRIMARY KEY (`id`),

  ADD UNIQUE KEY `txn_id` (`txn_id`);



--

-- Indexes for table `users`

--

ALTER TABLE `users`

  ADD PRIMARY KEY (`id`);



--

-- AUTO_INCREMENT for dumped tables

--



--

-- AUTO_INCREMENT for table `admin`

--

ALTER TABLE `admin`

  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


--

-- AUTO_INCREMENT for table `members`

--

ALTER TABLE `members`

  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


--
-- AUTO_INCREMENT for table `products`

--

ALTER TABLE `products`

  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;


--

-- AUTO_INCREMENT for table `transactions`

--

ALTER TABLE `transactions`

  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;


--

-- AUTO_INCREMENT for table `users`

--

ALTER TABLE `users`

  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
