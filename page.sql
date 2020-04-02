-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2020 at 06:30 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `landforc_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `location` varchar(20) NOT NULL COMMENT 'menu or footer',
  `url` varchar(150) NOT NULL,
  `title` varchar(150) NOT NULL,
  `meta_kw` varchar(255) NOT NULL,
  `meta_txt` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `txt` text NOT NULL,
  `type` int(11) NOT NULL COMMENT '1 content, 2 category, 3 product, 4 product modal, 5 apply for job, 6 customer feedback form, 7 contact form, 8 apply as supplier',
  `type_ref` int(11) NOT NULL COMMENT 'id from ''prod,prod_cat,prod_model'' tables',
  `datetime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `location`, `url`, `title`, `meta_kw`, `meta_txt`, `heading`, `txt`, `type`, `type_ref`, `datetime`) VALUES
(1, 'menu', 'land-preparation', 'Land Preparation', 'Land Preparation', 'Land Preparation', '', '', 2, 1, '2019-08-17 05:16:05'),
(2, 'menu', 'seeding', 'Seeding', 'seeding', 'seeding', '', '', 2, 2, '2019-08-17 05:20:37'),
(3, 'menu', 'rotary-tiller-hd', 'Rotary Tiller', 'rotary tiller', 'rotary tiller', '', '', 3, 1, '2019-08-17 07:43:25'),
(4, 'menu', 'rt-std-duty', 'Rotary Tiller Std Duty', 'std Duty', 'This variant of Rotary Tiller is suitable for soft soil and is compatible with medium HP tractors. The tiller has heavy duty structure and robust design. It mixes the soil very well and prepare the land for sowing. All models including gear drive / chain ', '', '', 4, 1, '2019-08-17 07:48:30'),
(5, 'menu', 'rt-heavy-duty', 'Rotary tiller Heavy Duty', 'heavy duty rotary tiller', '\r\nRotary Tiller is a farm implement used for tillage also known as rototiller, rotavator, rotary hoe, power tiller, or rotary plough. Rotary tiller is drawn as an implement behind four wheel tractor. This category of rotary tiller is heavy duty and is rec', '', '', 4, 2, '2019-08-17 07:50:44'),
(6, 'menu', 'rt-light-duty', 'Rotary Tiller Light Duty', 'light duty rotary tiller', 'This variant of Landforce Rotary Tiller is suitable for loose soil and thus is very much compatible with low HP tractors. It is very useful and effective for puddling (paddy/rice field preparation with water) Itâ€™s less weight is strength of the product ', '', '', 4, 3, '2019-08-17 07:57:43'),
(7, 'menu', 'rt-til', 'Rotary Tiller', 'rotary tiller', 'rotary tiller', '', '', 3, 1, '2019-08-17 10:02:08'),
(8, 'menu', 'harvesting', 'Harvesting', 'harvesting', 'harvesting ', '', '', 2, 3, '2019-08-17 11:13:51'),
(9, 'menu', 'lf-cultivator', 'Cultivators', 'cultivator', 'Landforce Spring cultivator is suitable for use in stone and root obstructed soil. one tine strikes a hidden object, it firmly fixed to be moved. the others continues to work at the correct depth. Spring loaded cultivators may be used for loosening and ae', '', '', 3, 8, '2019-08-19 04:31:43'),
(10, 'menu', 'spring-cv', 'Cultivator Spring (Std. Duty)', 'Cultivator Spring (Std. Duty)', 'Landforce Spring cultivator is suitable for use in stone and root obstructed soil. one tine strikes a hidden object, it firmly fixed to be moved. the others continues to work at the correct depth. Spring loaded cultivators may be used for loosening and ae', '', '', 4, 6, '2019-08-19 04:38:57'),
(11, 'menu', 'cv-rigid', 'CULTIVATOR RIGID (HEAVY DUTY)', 'Cultivator, CULTIVATOR RIGID (HEAVY DUTY)', 'CULTIVATOR RIGID (HEAVY DUTY)', '', '', 4, 7, '2019-08-19 04:46:06'),
(12, 'menu', 'lf-dp', 'Disc Plough', 'disc plough', 'The Landforce disc plough is the perfect tool when ploughing uneven fields that has buried large roots and other obstructions, One can obtain outstanding penetration performance. Spring loaded floating rear furrow wheel control the side draft to ensure st', '', '', 4, 8, '2019-08-19 05:03:18'),
(13, 'menu', 'lf-pd', 'Post Hole Digger', 'post hole digger', 'Post Hole Digger to be used on sub compact utility tractors. Hardened points will last longer than nonhardened. Points can easily be replaced when worn or damaged. Cast steel auger fishtail tips. Fairly standard size for the industry, fits many competitiv', '', '', 4, 9, '2019-08-19 05:45:31'),
(14, 'menu', 'resource', 'Resource', 'Resource', 'Resource', '', '', 2, 6, '2019-09-06 11:03:51'),
(15, 'menu', 'residue-management', 'Residue Management', 'Residue Management', 'Residue Management', '', '', 2, 4, '2019-09-06 11:28:18'),
(16, 'menu', 'crop-protection', 'Crop Protection', 'crop protection', 'Crop Protection', '', '', 2, 5, '2019-09-11 05:04:27'),
(17, 'menu', 'rt-light-duty', 'Rotary Tiller', 'Rotary Tiller', 'Rotary Tiller', '', '', 3, 1, '2019-09-23 08:42:41'),
(18, 'menu', 'rotary-weeder', 'Inter Row Rotary Weeder', 'rotary , weeder, tiller', 'Landforce Inter Row Rotary Weeder is used for the cultivation of weeds from various row crops such as corn, sugarcane, sunflower, cotton etc. Its modular structure allows the usages of independent tillage heads to suits the cultivation needs of multiple r', '', '', 4, 4, '2019-09-23 09:59:36'),
(19, 'menu', 'mb-plough', 'Mounted Mould Board Plough', 'MB plough', 'Landforce Mounted Mould Board Plough are used for cultivation of stubble and fallow soil, loosen of soil, breaking of soil, turning of soil and making of seed bed. During the working plough breaks weeds, prevents the blight, mixes the plant wastes, stubbl', '', '', 4, 14, '2019-09-23 10:33:37'),
(20, 'menu', 'rmb-polough', 'Reversible Mould Board Plough', 'Mb plough , reversible mb plough', 'Reversible Mould Board Plough is primarily used to plough virgin fields, fields that are left unploughed for long periods, fields that are too hard, full of deep rooted unwanted plants, shrubs, weeds etc.', '', '', 4, 15, '2019-09-23 11:35:47'),
(21, 'menu', 'sub-soliler-std', 'Sub Soiler Standard Duty', 'Sub Soiler', 'Landforce Sub Soiler is a tractor mounted implement used to loosen and break up soil at depths below the level of a traditional disk harrow or rototiller.', '', '', 4, 10, '2019-09-23 12:24:30'),
(22, 'menu', 'inter-row-rotary-weeder', 'Inter Row Rotary Weeder', 'Inter row rotary Weeder', 'Landforce Inter Row Rotary Weeder is used for the cultivation of weeds from various row crops such as corn, sugarcane, sunflower, cotton etc. Its modular structure allows the usages of independent tillage heads to suits the cultivation needs of multiple r', '', '', 3, 3, '2019-09-23 13:11:50'),
(23, 'menu', 'pmb-plough', 'MB plough', 'mb plough, mb plough,  ', 'Landforce Mounted Mould Board Plough are used for cultivation of stubble and fallow soil, loosen of soil, breaking of soil, turning of soil and making of seed bed. During the working plough breaks weeds, prevents the blight, mixes the plant wastes, stubbl', '', '', 3, 5, '2019-09-23 13:21:06'),
(24, 'menu', 'lf-disck-plough', 'Disc Plough', 'disk plough', 'The Landforce disc plough is the perfect tool when ploughing uneven fields that has buried large roots and other obstructions, One can obtain outstanding penetration performance. Spring loaded floating rear furrow wheel control the side draft to ensure st', '', '', 3, 13, '2019-09-24 04:05:04'),
(25, 'menu', 'landforce-laser-land-levler', 'Laser Land Leveler', 'Laser Land levler, levler', 'Landforce Laser land leveller is leveling the field within certain degree of desired slope using a guided laser beam throughout the field. Unevenness of the soil surface has a significant impact on the germination, stand and yield of crops. Farmers also r', '', '', 3, 9, '2019-09-24 04:26:51'),
(26, 'menu', 'laser-leveler-std', 'Laser Land Levler (STD.)', 'laser land leveler', 'Landforce Laser land leveller is leveling the field within certain degree of desired slope using a guided laser beam throughout the field. Unevenness of the soil surface has a significant impact on the germination, stand and yield of crops. Farmers also r', '', '', 4, 16, '2019-09-24 04:28:33'),
(27, 'menu', 'laser-leveler-sports', 'Laser Land Leveler (Sports Model)', 'laser land leveler soprts', 'Landforce Laser land leveller is leveling the field within certain degree of desired slope using a guided laser beam throughout the field. Unevenness of the soil surface has a significant impact on the germination, stand and yield of crops. Farmers also r', '', '', 4, 17, '2019-09-24 04:29:38'),
(28, 'menu', 'rotary-tiller-mini', 'ROTARY TILLER (MINI SERIES)', 'ROTARY TILLER (MINI SERIES)', 'Landforce Rotary Tiller (mini) is designed for small farmers and for small tractors, Landforce Rotary tiller is made by Good Quality Material. So less maintenance required. It is used for small farms, gardening , nurseries and vegetables. Powder Coated pr', '', '', 4, 13, '2019-09-24 05:35:03'),
(29, 'menu', 'seed-drill', 'Seed Cum Fertilizer Drill', 'Seed cum Fertilizer dill, seed drill, zero drill', 'Landforce seed cum fertilizer drill is used for simultaneous activities of Seeding and Fertilization process in a single operation. There are two types of models are there Seed Cum Fertilizer drill-Deluxe model and Conventional model.', '', '', 3, 6, '2019-09-24 06:56:00'),
(30, 'menu', 'del-seed-drill', 'Seed Cum Fertilizer Drill (Deluxe Model)', 'Seed Drill, Fertilizer drill ', 'Landforce seed cum fertilizer drill is used for simultaneous activities of Seeding and Fertilization process in a single operation. It can be retrofitted to a tractor of 35 HP and above. It drills seeds and fertilizer together but delivers them separately', '', '', 4, 20, '2019-09-24 06:58:00'),
(31, 'menu', 'conv-seed-drill', 'SEED CUM FERTILIZER DRILL (CONVENTIONAL MODEL)', 'seed cum fertilizer drill', 'Landforce seed cum fertilizer drill is used for simultaneous activities of Seeding and Fertilization process in a single operation. It can be retrofitted to a tractor of 35 HP and above. It drills seeds and fertilizer together but delivers them separately', '', '', 4, 19, '2019-09-24 06:59:29'),
(32, 'menu', 'landforce-roto-seeder', 'Roto Seeder', 'roto seeder', 'Landforce ROTO SEEDER is multi purposed earth tilling machine used in the preparation of seedbed & sowing seed into stubbles fields. Roto Seeder helps in proper distribution of seed & fertilzer with broadcasting process, thus provide even mixing into the', '', '', 3, 7, '2019-09-24 07:17:54'),
(33, 'menu', 'roto-seeder-hd', 'Roto Seeder Heavy Duty', 'roto seeder heavy Duty', 'Landforce ROTO SEEDER is multi purposed earth tilling machine used in the preparation of seedbed & sowing seed into stubbles fields. Roto Seeder helps in proper distribution of seed & fertilzer with broadcasting process, thus provide even mixing into the', '', '', 4, 22, '2019-09-24 07:19:29'),
(34, 'menu', 'roto-seeder-std', 'Roto Seeder (Std Duty)', 'Roto Seeder std duty', 'Landforce ROTO SEEDER is multi purposed earth tilling machine used in the preparation of seedbed & sowing seed into stubbles fields.', '', '', 4, 23, '2019-09-24 07:37:27'),
(35, 'menu', 'happy-seeder', 'Happy Seeder', 'Happy seeder Seeder', 'Happy Seeder is one of the unique technique which is used for sowing wheat without any burning of rice residue.', '', '', 3, 15, '2019-09-24 07:53:11'),
(36, 'menu', 'hpy-seeder', 'Happy Seeder', 'Happy Seeder ', 'Happy Seeder is one of the unique technique which is used for sowing wheat without any burning of rice residue. This technology is eco friendly with environment for the health of soil as well as it also saves water. For Sowing wheat on time the burning of', '', '', 4, 24, '2019-09-24 07:53:45'),
(37, 'menu', 'bed-planter', 'Multi Crop Raised Bed Planter', 'bed Planter', 'Multi Crop Raised Bed Planter is used for sowing bold grains like maize, groundnut, peas, cotton, sunflower etc, on the two raised bed formed by ridgers. The planting discs for different crops can be changed without dismantling the seed hoppers main shaft', '', '', 4, 25, '2019-09-24 08:34:57'),
(38, 'menu', 'harvester-com', 'Combine Harvester', 'combine harvester combine', 'Harvesting is the process of collecting the mature crop from the field, Landforce is offering the complete solution in harvesting, From Self propelled Combine harvester, Tractor Driven combine, Paddy Thresher, Wheat Thresher, Multi-crop Thresher and Potat', '', '', 3, 11, '2019-09-24 09:21:07'),
(39, 'menu', 'lf-sc', 'Combine Harvester Self Propelled', 'combine harvester, harvester combine', 'Landforce Combine provides unprecedented performance and capacity in all crops and conditions. The unique Single Tyne Separator (STS) system provides superior crop handling performance, high levels of productive capacity, and excellent quality of harveste', '', '', 4, 28, '2019-09-24 09:22:20'),
(40, 'menu', 'lf-pt', 'Paddy thresher', 'Paddy thresher', 'Landforce Paddy Thresher is used for the harvesting of paddy grain. The husks and grain are entirely separated and blown in opposite direction because of its fanning and delivering system.', '', '', 4, 30, '2019-09-25 05:59:50'),
(41, 'menu', 'about-us', 'About US', 'About US', 'Dasmesh Group of companies was established in 1965, at Amargarh Punjab, India by Late S Hardial Singh Ji, The Founder. In the group there are four companies; Dasmesh Mechanical Works, Amargarh: is engaged in manufacturing of agriculture implements that in', 'About Us', '&lt;div class=&quot;container&quot;&gt;\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-12&quot;&gt;\r\n&lt;h1 class=&quot;pg-default-h1&quot;&gt;Vision and Mission&lt;/h1&gt;\r\n\r\n&lt;hr /&gt;\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-6&quot;&gt;\r\n&lt;blockquote style=&quot;color: #000;&quot;&gt;\r\n&lt;p&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;&lt;span style=&quot;font-size: large;&quot;&gt;&lt;strong&gt;VISION&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 16px;&quot;&gt;&lt;em&gt;&quot;Our vision is to be the world leader in agriculture implements and related services. We will earn our customer&#39;s enthusiasm through continual improvement driven by integrity, team work and innovation.&quot;&lt;/em&gt;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-lg-6&quot;&gt;\r\n&lt;blockquote style=&quot;color: #000;&quot;&gt;\r\n&lt;p&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;&lt;span style=&quot;font-size: large;&quot;&gt;&lt;strong&gt;MISSION&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 16px;&quot;&gt;&lt;em&gt;&quot;Dasmesh group engaged in design and manufacturing of precise agriculture implements. Team is dedicated to provide world class products and services so that customer will earn maximum value, while our employees and business partners will share in our success.&quot;&lt;/em&gt;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel panel-success&quot;&gt;\r\n&lt;div class=&quot;panel-heading&quot;&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: large;&quot;&gt;&lt;strong&gt;Core Values&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel-body&quot;&gt;We are governed by the Core values of the Landforce Group. They are an amalgamation of what we have been, what we are and what we want to be. These values are the compass that guides our actions, both personal and corporate. They are:&lt;/div&gt;\r\n\r\n&lt;div class=&quot;panel-body&quot;&gt;\r\n&lt;p&gt;&bull; &lt;strong&gt;Good Corporate Citizenship:&lt;/strong&gt; We will continue to seek long term success in alignment with the needs of the communities we serve. We will do this without compromising on ethical business standards.&lt;/p&gt;\r\n\r\n&lt;p&gt;&bull; &lt;strong&gt;Professionalism:&lt;/strong&gt; We have always sought the best people for the job and given them the freedom and the opportunity to grow. We will continue to do so. We will support innovation and well reasoned risk taking, but will demand performance.&lt;/p&gt;\r\n\r\n&lt;p&gt;&bull; &lt;strong&gt;Customer first:&lt;/strong&gt; We exist and prosper only because of the customer. We will respond to the changing needs and expectations of our customers speedily, courteously and effectively.&lt;/p&gt;\r\n\r\n&lt;p&gt;&bull; &lt;strong&gt;Quality focus:&lt;/strong&gt; Quality is the key to delivering value for money to our customers. We will make quality a driving value in our work, in our products and in our interactions with others. We will do it &#39;First Time Right.&#39;&lt;/p&gt;\r\n\r\n&lt;p&gt;&bull; &lt;strong&gt;Dignity of the individual:&lt;/strong&gt; We will value individual dignity, uphold the right to express disagreement and respect the time and efforts of others. Through our actions, we will nurture fairness, trust, and transparency&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;&lt;strong style=&quot;font-size: large; line-height: 1.42857143;&quot;&gt;Quality Policy&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Dasmesh team is committed to achieve customer satisfaction by developing and manufacturing precise agriculture implements through Quality Management System and continual improvement.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;&lt;span style=&quot;font-size: large;&quot;&gt;&lt;strong&gt;Environment Policy&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;We recognize our responsibility to the Environment and are committed to implementation of practices that will promote environmental compatibility and prevention of pollution. We will continually improve environmental management activities and processes and evaluate technologies to meet or exceed environmental compliance with all relevant laws, regulations and other requirements, as well as promote conservation of natural resources.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;&lt;span style=&quot;font-size: large;&quot;&gt;&lt;strong&gt;Safety Policy&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;We are committed to work in a safe manner for the safety of all around us, that includes injury free work environment and to be in compliance with all associated laws and regulations. To accomplish this goal, we are committed to provide necessary engineering and technical resources, encourage development of safe work attitudes, develop and communicated safety programs and standards and provide safety training and discipline throughout the organization.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!--        &lt;/div&gt;\r\n            &lt;/div&gt;--&gt;&lt;/div&gt;\r\n', 1, 0, '2019-09-26 06:38:56'),
(42, 'menu', 'mud-loader', 'Mud Loader', 'Mud Loader', 'Landforce mud loader that is manufactured using best quality raw material. These have sturdy design that enables us to effectively satisfy the needs of our customers. These are designed and developed with the help of latest technology and innovations.', '', '', 4, 37, '2019-09-26 08:02:46'),
(45, 'menu', 'boom-sprayer', 'Boom Sprayer', 'boom Sprayer', 'Boom sprayer connected to the three point linkage of tractor and getting drive from (P.T.O) are used for multipurpose plant protection', '', '', 3, 22, '2019-09-26 09:08:01'),
(46, 'menu', 'm-boom-sprayer', 'Boom Sprayer', 'Boom Sprayer', 'Boom Sprayer', '', '', 4, 40, '2019-09-26 09:10:20'),
(47, 'menu', 'spreader', 'Fertilizer Spreader', 'Spreader, Ferrilizer', 'Steel conical hopper spreader equipped with four or six fins spreading discs, for granual or crystalline fertilizers. Standard equipment: Primed and two components polyuretane finish /e-coated disc and fins /two lateral discharges exits with galvanized sh', '', '', 3, 19, '2019-09-26 09:13:25'),
(48, 'menu', 'lf-spreader', 'Fertilizer Spreader', 'Fertilizer spreader', 'Steel conical hopper spreader equipped with four or six fins spreading discs, for granual or crystalline fertilizers. Standard equipment: Primed and two components polyuretane finish /e-coated disc and fins /two lateral discharges exits with galvanized sh', '', '', 4, 39, '2019-09-26 09:14:00'),
(49, 'menu', 'balers', 'Round Baler', 'Round Baler', 'Landforce round baler is sued to make round bales of pending straw of any crop  in any weather condition. Landforce is high baling capacity. ', '', '', 3, 23, '2020-01-06 11:28:07'),
(50, 'menu', 'round-baler', 'round baler', 'round baler', 'round baler', '', '', 4, 41, '2020-01-29 06:47:17'),
(51, 'menu', 'super-seeder', 'super Seedes', 'super Seedes', 'super seeder', '', '', 3, 24, '2020-01-29 10:02:19'),
(53, 'footer', 'apply-for-job', 'Apply For Job', 'apply-for-job', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, con', '', '', 5, 0, '2020-03-31 17:31:19'),
(54, 'footer', 'customer-feedback', 'Customer Feedback', 'customer feedback', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, con', '', '', 6, 0, '2020-03-31 17:34:06'),
(55, 'menu', 'contact-us', 'Contact Us', 'contact us', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, con', '', '', 7, 0, '2020-03-31 17:35:02'),
(56, 'footer', 'apply-as-supplier', 'Apply As Supplier', 'apply as supplier', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, con', '', '', 8, 0, '2020-03-31 17:35:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
