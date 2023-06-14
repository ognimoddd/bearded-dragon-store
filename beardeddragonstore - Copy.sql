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

-- Database: `beardeddragonstore`

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

(3, 'Phone 5s (Black,White, Gray)', '150', 'The iPhone 5S is one of the best phones to be launched in 2013, although the screen size seems antiquated now the standard has moved to 5-inches. The 4-inch screen is still good â€“ bright, colourful and responsive. The performance is excellent too. A simple older model of phone that is perfect for an older, less-techy relative\r\n', 'Apple', '16 GB', '2017-04-26'),

(4, 'Phone 5s (White, Black,Gray) ', '200', 'The iPhone 5S is one of the best phones to be launched in 2013, although the screen size seems antiquated now the standard has moved to 5-inches. The 4-inch screen is still good â€“ bright, colourful and responsive. The performance is excellent too. A simple older model of phone that is perfect for an older, less-techy relative\r\n', 'Apple', '32 GB', '2017-04-26'),

(5, 'Phone 5s (Gray,White, Black) ', '300', 'The iPhone 5S is one of the best phones to be launched in 2013, although the screen size seems antiquated now the standard has moved to 5-inches. The 4-inch screen is still good â€“ bright, colourful and responsive. The performance is excellent too. A simple older model of phone that is perfect for an older, less-techy relative\r\n', 'Apple', '64 GB', '2017-04-26'),

(6, 'iPhone 6 (Black, Gray, Gold)', '300', 'iPhone 6 isnâ€™t simply bigger â€” itâ€™s better in every way. Larger, yet dramatically thinner. More powerful, but remarkably power efficient. With a smooth metal surface that seamlessly meets the new Retina HD display. Itâ€™s one continuous form where hardware and software function in perfect unison, creating a new generation of iPhone thatâ€™s better by any measure.\r\n', 'Apple', '16 GB', '2017-04-26'),

(7, 'iPhone 6 (Gold, Gray, Black)', '420', 'iPhone 6 isnâ€™t simply bigger â€” itâ€™s better in every way. Larger, yet dramatically thinner. More powerful, but remarkably power efficient. With a smooth metal surface that seamlessly meets the new Retina HD display. Itâ€™s one continuous form where hardware and software function in perfect unison, creating a new generation of iPhone thatâ€™s better by any measure.\r\n', 'Apple', '64 GB', '2017-04-26'),

(8, 'iPhone 6 (Gray, Black, Gold)', '500', 'iPhone 6 isnâ€™t simply bigger â€” itâ€™s better in every way. Larger, yet dramatically thinner. More powerful, but remarkably power efficient. With a smooth metal surface that seamlessly meets the new Retina HD display. Itâ€™s one continuous form where hardware and software function in perfect unison, creating a new generation of iPhone thatâ€™s better by any measure.\r\n', 'Apple', '128 GB', '2017-04-26'),

(13, 'Galaxy Alpha (White, Black)', '350', 'Elegant Design That Makes an Impression\r\nFeaturing a sleek metal bezel, the Galaxy Alpha has a slim, yet durable build. And the crisp 4.7-inch HD display provides richer colors, darker shadows and faster response times, giving you an incredible viewing experience.\r\n\r\nFast Action 12MP Camera with Pro Editing Tools\r\nCapture every moment with the 12MP Ultra HD camera that gets more detail out of every occasion. And with the new Selective Focus feature, you can easily select elements to focus onâ€”and the things you want to blur outâ€”to create a feeling of depth.', 'Samsung', '64 GB', '2017-04-26'),

(9, 'iPhone 6 Plus (Black, Gray, Gold) ', '500', 'iPhone 6 isnâ€™t simply bigger â€” itâ€™s better in every way. Larger, yet dramatically thinner. More powerful, but remarkably power efficient. With a smooth metal surface that seamlessly meets the new Retina HD display. Itâ€™s one continuous form where hardware and software function in perfect unison, creating a new generation of iPhone thatâ€™s better by any measure.\r\n', 'Apple', '16 GB', '2017-04-26'),

(10, 'iPhone 6 Plus (Gray, Black, Gold) ', '700', 'iPhone 6 isnâ€™t simply bigger â€” itâ€™s better in every way. Larger, yet dramatically thinner. More powerful, but remarkably power efficient. With a smooth metal surface that seamlessly meets the new Retina HD display. Itâ€™s one continuous form where hardware and software function in perfect unison, creating a new generation of iPhone thatâ€™s better by any measure.\r\n', 'Apple', '64 GB', '2017-04-26'),

(11, ' iPhone 6 Plus (Gold, Black, White) ', '800', 'iPhone 6 isnâ€™t simply bigger â€” itâ€™s better in every way. Larger, yet dramatically thinner. More powerful, but remarkably power efficient. With a smooth metal surface that seamlessly meets the new Retina HD display. Itâ€™s one continuous form where hardware and software function in perfect unison, creating a new generation of iPhone thatâ€™s better by any measure.\r\n', 'Apple', '128 GB', '2017-04-26'),

(12, 'Galaxy Alpha (Black, White) ', '250', 'Elegant Design That Makes an Impression\r\nFeaturing a sleek metal bezel, the Galaxy Alpha has a slim, yet durable build. And the crisp 4.7-inch HD display provides richer colors, darker shadows and faster response times, giving you an incredible viewing experience.\r\n\r\nFast Action 12MP Camera with Pro Editing Tools\r\nCapture every moment with the 12MP Ultra HD camera that gets more detail out of every occasion. And with the new Selective Focus feature, you can easily select elements to focus onâ€”and the things you want to blur outâ€”to create a feeling of depth.', 'Samsung', '32 GB', '2017-04-26'),

(32, 'Galaxy Note 4 (GOLD, WHITE, BLACK)', '600', 'FEATURES \r\nSensors Accelerometer, gyro, proximity, compass, barometer, gesture, UV, heart rate, SpO2 \r\nMessaging SMS(threaded view), MMS, Email, Push Mail, IM \r\nBrowser HTML5 \r\nJava Yes, via Java MIDP emulator \r\n- Fast battery charging: 60% in 30 min (Quick Charge 2.0) \r\n- ANT+ support \r\n- S-Voice natural language commands and dictation \r\n- Air gestures \r\n- Dropbox (50 GB cloud storage) \r\n- Active noise cancellation with dedicated mic \r\n- MP4/DivX/XviD/WMV/H.264 player \r\n- MP3/WAV/eAAC+/AC3/FLAC player \r\n- Photo/video editor \r\n- Document editor \r\nBATTERY \r\nLi-Ion 3220 mAh battery ', 'Samsung', '64 GB', '2017-04-26'),

(34, 'LG TONE INFINIUM', '94.99', '\r\n\r\n    LG TONE INFINIM provides cutting edge design, convenient technology, and a high level of performance and reliability in a mobile device.\r\n    The sleek metallic finish and ergonomic design will get you noticed, and Harman Kardon Signature Sound delivers premium audio quality.\r\n    Retractable earbuds provide a simple, unique approach to cord management. Plus, the easy access jog button allows for fluid one-touch volume and music control while ear gels provide a comfortable solution for all-day wear and use.\r\n    AptX compatibility delivers lifelike sound for enjoying music while features such as HD voice and a MEMS microphone allow for crystal-clear voice interactions.\r\n    Tone & Talk application supports SMS Reading on Android devices.Current time alert, Battery Status alert and vibration on/off functions are also available.\r\n\r\n', 'Accessories', '', '2017-04-26'),

(16, 'LG G3 (White, Black, Gold)', '450', 'Simple is the New Smart\r\n\r\nBehold the latest smartphone in LGâ€™s award-winning G Series. Now, with a larger, clearer display, a laser-precise camera and superior smart interactivity, we can confidently call the G3 the best smartphone that LG has ever made.\r\n\r\nThe First Quad HD Smartphone in the US with 4X HD TV Quality\r\n\r\nThe LG G3â€™s new 5.5" Quad HD (2560 x 1440) display transforms the smartphone visual experience at 4 times the resolution of HD. Stunning graphics and life-like colors seem to jump off the screen, showing imagery in its finest detail and clarity at 538 pixels per inch.\r\n\r\n\r\n\r\n', 'Apple', '32 GB', '2017-04-26'),

(26, 'Galaxy note edge (Black, White, Gold)', '500', 'Display \r\n5.6-inch \r\n1440 x 2560 + 160pixels (Quad HD) with AM-OLED \r\nCapacitive multi-touch \r\n\r\nCPU \r\nQuad-Core Processor Snapdragon 2.7 GHz \r\n\r\nRAM & Storage \r\n3 GB LPDDR3 \r\n32 GB built-in storage \r\nmicroSD slot, supports up to 128 GB \r\n\r\nOperating System \r\nAndroid 4.4 (Kitkat) \r\n\r\nCamera \r\n16.0 MP Rear-facing camera \r\n3.7 MP Front-facing camera ', 'Samsung', '32 GB', '2017-04-26'),

(33, 'Galaxy S6 ( Gold , Black, White)', '300', 'Bold, Beautiful Display\r\nFinally, a smartphone that''s more than simply beautiful. The Samsung Galaxy S6 has evolved its designâ€”both inside and out. The Samsung Galaxy S6 lets you:\r\n\r\n- Stay connected to everything all on the incredibly slim and lightweight smartphone.\r\n\r\n- Watch images and videos come to life on the 5.1-inch Quad HD Super AMOLED display, even in sunlight.\r\n\r\n- Work, watch, and game at blazing-fast speeds.\r\n\r\n- Capture amazing photos with the fast-focus camera and take epic wide-angle selfies.\r\n\r\n- Use Ultra Power Saving Mode,1 Fast Charging,2 or wireless charging3 to extend your smartphone''s battery life when it''s running low.', 'Samsung', '32 GB', '2017-04-26'),

(28, '16 GB SD card', '28.99', ' Seamless speed and performance with microSD/SDHC compatible device\r\nClass 4 Speed performance rating (based on SD 2.0 Specification)\r\nTested under the most extreme conditions', 'Accessories', '', '2017-04-26'),

(29, '32 GB SD Card', '38.99', '\r\n\r\n    Up To 48MB/s Read Speed\r\n    10-Year Warranty\r\n    Easily Back Up Files With "SanDisk Memory Zone" App\r\n    Includes SD Adapter\r\n\r\n', 'Accessories', '', '2017-04-26'),

(17, 'Samsung Galaxy S5 ( Black , White, Gold)', '500', 'Samsung Smart Switch: The Easiest Way to Transfer Content to a New Device\r\n\r\nSwitching to the new Galaxy S5 has never been simplerâ€”or smarter. With Samsung Smart Switch, you have the freedom to move from other smartphone platforms without fear of losing your personal contentâ€”music, contacts, photos and more. So now you have nothing to lose.\r\n\r\nProfessional Quality 16MP Camera with Faster Focus\r\n', 'Samsung', '32 GB', '2017-04-26'),

(20, 'HTC M8 (GUNMETAL GREY)', '479.99', 'Introducing the HTC One (M8). With a full wrap-around, high quality, all-metal design with curved edges that naturally fit in your hand, significant enhancements to every breakthrough feature of last yearâ€™s model, as well as all-new innovations, the HTC One (M8) is designed to impress and built to perform.', 'HTC', '16 GB', '2017-04-26'),

(21, 'HTC M9 (GOLD, SILVER)', '649.58', '\r\nYouâ€™ve only got one life, so live it in style.\r\n\r\nIntroducing the HTC One M9:\r\n\r\n- Location-detecting homescreen\r\n\r\n- UltraPixel front-facing camera\r\n\r\n- HTC BoomSound with Dolby Audio\r\n\r\n- 20 MP camera with sapphire camera cover lens\r\n', 'HTC', '32 GB', '2017-04-26'),

(30, '64 GB SD Card ', '48.99', '\r\n\r\n    Up To 48MB/s Read Speed\r\n    10-Year Warranty\r\n    Easily Back Up Files With "SanDisk Memory Zone" App\r\n    Includes SD Adapter\r\n\r\n', 'Accessories', '', '2017-04-26'),

(18, 'LG G Flex (Gray, Black, White)', '350', 'LG G Flex\r\n\r\nThe worlds first curved, flexible smartphone. Innovative curved design provides an immerse cinematic viewing experience, ergonomic comfort, enhanced call clarity, and is easily held in your hand for ultimate usability.\r\n\r\nInnovative Curved Screen\r\n\r\nThe 6" HD screen is the first to use POLED technology. That''s what lets it curve in the way it does. It also means it''s more durable than traditional screens, so if you happen to drop it on a concrete floor, it should be fine. The curve also plays movies clearly, and makes the viewing angles flawless, even at the far edges. Brightness and colors too are picture perfect, so the cinematic experience is even better.\r\n\r\nTech Specs\r\n\r\nHousing a huge 3,500mAh curved battery that will last up to 25 hours of talk time, or up to 560 hours when on standby. It''s powered by a 2.26GHz quad core Snapdragon 800 processor and Android 4.2.2 Jelly Bean. The 6" screen has a 720p resolution, which gives a sharp pixel density of 245 pixels per inch. You''ll also get 32GB internal storage and a 13MP camera.\r\n', 'Apple', '32 GB', '2017-04-26'),

(22, 'Iphone 5 and Up Cable', '19.99', '\r\nThis Original OEM Apple USB Lightning Cable For iPhone This USB 2.0 cable connects your iPhone, iPad, or iPod with Lightning connector to your computer''s USB port for syncing and charging or to the Apple USB Power Adapter for convenient charging from a wall outlet.', 'Accessories', '', '2017-04-26'),

(23, 'Micro USB Cable ', '14.99', 'Micro USB cable for all android devices.\r\n', 'Apple', '', '2015-05-01'),

(24, 'Dual Port Car Charger', '14.99', 'Dual USB car charger, the dual smart USB ports quickly and easily identify your mobile devices, to provide optimal charging efficiency automatically', 'Accessories', '', '2015-05-01'),

(25, 'Universal Stylus (Red, Blue, White, Pink, Green, Black, Gray, Orange)', '2.49', '\r\n\r\n    100% brand new stylus pen.\r\n    Stylus tip is made from soft durable plastic.\r\n    Keep your touch screen free from scratches and fingerprint\r\n    Compact and light weight design, easy to carry\r\n    Clip design, easily clip in your pocket, book, diary, etc.\r\n\r\n', 'Accessories', '', '2015-05-01'),
(19, 'LG G3 Vigor (Black, White, Red)', '350', 'Ergonomic Design\r\n\r\nSleek, rounded edges provide in-hand comfort and a secure grip for enjoyable all day use.\r\n\r\nRear Key:\r\n\r\nLarge, textured buttons are comfortably located to improve touch response and provide ambidextrous use.\r\n\r\n2,540 mAh Removable Battery:\r\n\r\nTake on the day with a durable battery that can keep up with you and all your mobile needs.\r\n	\r\n8 MP Laser Auto Focus Camera\r\n\r\nCapture images and videos with laser precision that measures the distance between camera and subject for faster focus and clarity.\r\n\r\n', 'Apple', '16 GB', '2015-05-01'),

(31, 'Galaxy Note 4 (BLACK, WHITE, GOLD)', '300', 'FEATURES \r\nSensors Accelerometer, gyro, proximity, compass, barometer, gesture, UV, heart rate, SpO2 \r\nMessaging SMS(threaded view), MMS, Email, Push Mail, IM \r\nBrowser HTML5 \r\nJava Yes, via Java MIDP emulator \r\n- Fast battery charging: 60% in 30 min (Quick Charge 2.0) \r\n- ANT+ support \r\n- S-Voice natural language commands and dictation \r\n- Air gestures \r\n- Dropbox (50 GB cloud storage) \r\n- Active noise cancellation with dedicated mic \r\n- MP4/DivX/XviD/WMV/H.264 player \r\n- MP3/WAV/eAAC+/AC3/FLAC player \r\n- Photo/video editor \r\n- Document editor \r\nBATTERY \r\nLi-Ion 3220 mAh battery ', 'Samsung', '32 GB', '2015-05-01'),

(35, ' Galaxy S6 ( Gold , Black, White) ', '600', 'Bold, Beautiful Display\r\nFinally, a smartphone that''s more than simply beautiful. The Samsung Galaxy S6 has evolved its designâ€”both inside and out. The Samsung Galaxy S6 lets you:\r\n\r\n- Stay connected to everything all on the incredibly slim and lightweight smartphone.\r\n\r\n- Watch images and videos come to life on the 5.1-inch Quad HD Super AMOLED display, even in sunlight.\r\n\r\n- Work, watch, and game at blazing-fast speeds.\r\n\r\n- Capture amazing photos with the fast-focus camera and take epic wide-angle selfies.\r\n\r\n- Use Ultra Power Saving Mode,1 Fast Charging,2 or wireless charging3 to extend your smartphone''s battery life when it''s running low.', 'Samsung', '64 GB', '2015-05-02'),

(36, 'Samsung Circles', '99.99', '\r\n\r\n    SAMSUNG GENUINE SM-R130 Gear Circle Bluetooth Wireles Headphone, Earphone\r\n    LED : Status indicator / Charging indicator/Battery : 180mAh (300hours / 11hours/ 9hours)\r\n    100% Genuine Samsung Gear circle Bluetooth Wireless Headset\r\n    Key : Volume Control Touch Pad, Play/Talk key Power switch\r\n    Fur use fully, Need the Samsung Gear App (*Android 4.2.2+ & RAM 1G+)\r\n\r\n', 'Accessories', '', '2015-05-02'),

(37, 'Beats Solo 2', '189.99', 'The Solo2 has arrived. Beatsâ€™ most popular headphone has been redesigned from the inside out. With updated and improved acoustics, the Solo2 lets you feel your music with a wider range of sound and enhanced clarity. Streamlined, lightweight, and durable, this compact headphone is more comfortable than ever. Take your music with you wherever you go, with the Solo2.', 'Accessories', '', '2015-05-03'),

(38, 'Beats Studio Wireless', '300.00', 'The Bluetooth stays connected up to 30 feet so you can feel free to roam and keep the music going. Take calls, skip songs, and change the volume right from the headphone. Headphone has Adaptive Noise Cancelation, a rechargeable battery, and re-engineered sound, just with no wires. The Bluetooth connection lets you enjoy your music wirelessly for up to 12 hours or up to 20 hours when plugged into your audio device', 'Accessories', '', '2015-05-03'),

(39, 'Powerbeats 2 Wireless', '179.99', 'From the street to the court,Powerbeats2 Wireless gives you the freedom to take your workout anywhere. Wireless Bluetooth gives you the ability to connect up to 30 feet to your Bluetooth enabled device -allowing you to move freely and stay focused on your workout. A rechargeable battery with 6-hour playback and with a 15-minute quick charge delivers an extra hour of non-stop playback.', 'Accessories', '', '2015-05-03');


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
