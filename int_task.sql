-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2022 at 10:37 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `int_task`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `state_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `name`, `state_id`, `created_at`) VALUES
(1, 'Mumbai', 15, '2022-11-15 14:12:47'),
(2, 'Aurangabad', 15, '2022-11-15 14:12:47'),
(3, 'Nashik', 15, '2022-11-15 14:12:47'),
(4, 'Thane', 15, '2022-11-15 14:12:47'),
(5, 'Sangli', 15, '2022-11-15 14:12:47'),
(6, 'Amaravati', 15, '2022-11-15 14:12:47'),
(7, 'Chandrapur', 15, '2022-11-15 14:12:47'),
(8, 'Pune', 15, '2022-11-15 14:12:47'),
(9, 'Nagpur', 15, '2022-11-15 14:12:47'),
(10, 'Kolhapur', 15, '2022-11-15 14:12:47'),
(11, 'Ratnagiri', 15, '2022-11-15 14:12:47'),
(12, 'Solapur', 15, '2022-11-15 14:12:48'),
(13, 'Buldhana', 15, '2022-11-15 14:12:48'),
(14, 'Jalgaon', 15, '2022-11-15 14:12:48');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '"1" is active and \r\n"0" in inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `status`, `created_at`) VALUES
(1, 'Afghanistan', 1, '2022-11-15 12:36:20'),
(2, 'Albania', 1, '2022-11-15 12:36:20'),
(3, 'Algeria', 1, '2022-11-15 12:36:21'),
(4, 'American Samoa', 1, '2022-11-15 12:36:21'),
(5, 'Andorra', 1, '2022-11-15 12:36:21'),
(6, 'Angola', 1, '2022-11-15 12:36:21'),
(7, 'Anguilla', 1, '2022-11-15 12:36:21'),
(8, 'Antarctica', 1, '2022-11-15 12:36:21'),
(9, 'Antigua and Barbuda', 1, '2022-11-15 12:36:21'),
(10, 'Argentina', 1, '2022-11-15 12:36:21'),
(11, 'Armenia', 1, '2022-11-15 12:36:21'),
(12, 'Aruba', 1, '2022-11-15 12:36:21'),
(13, 'Australia', 1, '2022-11-15 12:36:21'),
(14, 'Austria', 1, '2022-11-15 12:36:21'),
(15, 'Azerbaijan', 1, '2022-11-15 12:36:21'),
(16, 'Bahamas', 1, '2022-11-15 12:36:21'),
(17, 'Bahrain', 1, '2022-11-15 12:36:21'),
(18, 'Bangladesh', 1, '2022-11-15 12:36:21'),
(19, 'Barbados', 1, '2022-11-15 12:36:21'),
(20, 'Belarus', 1, '2022-11-15 12:36:21'),
(21, 'Belgium', 1, '2022-11-15 12:36:21'),
(22, 'Belize', 1, '2022-11-15 12:36:21'),
(23, 'Benin', 1, '2022-11-15 12:36:21'),
(24, 'Bermuda', 1, '2022-11-15 12:36:21'),
(25, 'Bhutan', 1, '2022-11-15 12:36:21'),
(26, 'Bolivia', 1, '2022-11-15 12:36:21'),
(27, 'Bosnia and Herzegowina', 1, '2022-11-15 12:36:21'),
(28, 'Botswana', 1, '2022-11-15 12:36:21'),
(29, 'Bouvet Island', 1, '2022-11-15 12:36:21'),
(30, 'Brazil', 1, '2022-11-15 12:36:21'),
(31, 'British Indian Ocean Territory', 1, '2022-11-15 12:36:21'),
(32, 'Brunei Darussalam', 1, '2022-11-15 12:36:21'),
(33, 'Bulgaria', 1, '2022-11-15 12:36:21'),
(34, 'Burkina Faso', 1, '2022-11-15 12:36:21'),
(35, 'Burundi', 1, '2022-11-15 12:36:21'),
(36, 'Cambodia', 1, '2022-11-15 12:36:21'),
(37, 'Cameroon', 1, '2022-11-15 12:36:21'),
(38, 'Canada', 1, '2022-11-15 12:36:21'),
(39, 'Cape Verde', 1, '2022-11-15 12:36:21'),
(40, 'Cayman Islands', 1, '2022-11-15 12:36:21'),
(41, 'Central African Republic', 1, '2022-11-15 12:36:21'),
(42, 'Chad', 1, '2022-11-15 12:36:21'),
(43, 'Chile', 1, '2022-11-15 12:36:21'),
(44, 'China', 1, '2022-11-15 12:36:21'),
(45, 'Christmas Island', 1, '2022-11-15 12:36:21'),
(46, 'Cocos (Keeling) Islands', 1, '2022-11-15 12:36:21'),
(47, 'Colombia', 1, '2022-11-15 12:36:21'),
(48, 'Comoros', 1, '2022-11-15 12:36:21'),
(49, 'Congo', 1, '2022-11-15 12:36:21'),
(50, 'Congo, the Democratic Republic of the', 1, '2022-11-15 12:36:21'),
(51, 'Cook Islands', 1, '2022-11-15 12:36:21'),
(52, 'Costa Rica', 1, '2022-11-15 12:36:21'),
(53, 'Cote dIvoire', 1, '2022-11-15 12:36:21'),
(54, 'Croatia (Hrvatska)', 1, '2022-11-15 12:36:21'),
(55, 'Cuba', 1, '2022-11-15 12:36:21'),
(56, 'Cyprus', 1, '2022-11-15 12:36:21'),
(57, 'Czech Republic', 1, '2022-11-15 12:36:21'),
(58, 'Denmark', 1, '2022-11-15 12:36:21'),
(59, 'Djibouti', 1, '2022-11-15 12:36:21'),
(60, 'Dominica', 1, '2022-11-15 12:36:21'),
(61, 'Dominican Republic', 1, '2022-11-15 12:36:21'),
(62, 'East Timor', 1, '2022-11-15 12:36:21'),
(63, 'Ecuador', 1, '2022-11-15 12:36:21'),
(64, 'Egypt', 1, '2022-11-15 12:36:21'),
(65, 'El Salvador', 1, '2022-11-15 12:36:21'),
(66, 'Equatorial Guinea', 1, '2022-11-15 12:36:21'),
(67, 'Eritrea', 1, '2022-11-15 12:36:21'),
(68, 'Estonia', 1, '2022-11-15 12:36:21'),
(69, 'Ethiopia', 1, '2022-11-15 12:36:21'),
(70, 'Falkland Islands (Malvinas)', 1, '2022-11-15 12:36:21'),
(71, 'Faroe Islands', 1, '2022-11-15 12:36:21'),
(72, 'Fiji', 1, '2022-11-15 12:36:21'),
(73, 'Finland', 1, '2022-11-15 12:36:21'),
(74, 'France', 1, '2022-11-15 12:36:21'),
(75, 'France Metropolitan', 1, '2022-11-15 12:36:21'),
(76, 'French Guiana', 1, '2022-11-15 12:36:21'),
(77, 'French Polynesia', 1, '2022-11-15 12:36:21'),
(78, 'French Southern Territories', 1, '2022-11-15 12:36:21'),
(79, 'Gabon', 1, '2022-11-15 12:36:21'),
(80, 'Gambia', 1, '2022-11-15 12:36:21'),
(81, 'Georgia', 1, '2022-11-15 12:36:21'),
(82, 'Germany', 1, '2022-11-15 12:36:21'),
(83, 'Ghana', 1, '2022-11-15 12:36:21'),
(84, 'Gibraltar', 1, '2022-11-15 12:36:21'),
(85, 'Greece', 1, '2022-11-15 12:36:21'),
(86, 'Greenland', 1, '2022-11-15 12:36:21'),
(87, 'Grenada', 1, '2022-11-15 12:36:21'),
(88, 'Guadeloupe', 1, '2022-11-15 12:36:21'),
(89, 'Guam', 1, '2022-11-15 12:36:21'),
(90, 'Guatemala', 1, '2022-11-15 12:36:21'),
(91, 'Guinea', 1, '2022-11-15 12:36:21'),
(92, 'Guinea-Bissau', 1, '2022-11-15 12:36:21'),
(93, 'Guyana', 1, '2022-11-15 12:36:21'),
(94, 'Haiti', 1, '2022-11-15 12:36:21'),
(95, 'Heard and Mc Donald Islands', 1, '2022-11-15 12:36:21'),
(96, 'Holy See (Vatican City State)', 1, '2022-11-15 12:36:21'),
(97, 'Honduras', 1, '2022-11-15 12:36:21'),
(98, 'Hong Kong', 1, '2022-11-15 12:36:21'),
(99, 'Hungary', 1, '2022-11-15 12:36:21'),
(100, 'Iceland', 1, '2022-11-15 12:36:21'),
(101, 'India', 1, '2022-11-15 12:36:21'),
(102, 'Indonesia', 1, '2022-11-15 12:36:21'),
(103, 'Iran (Islamic Republic of)', 1, '2022-11-15 12:36:21'),
(104, 'Iraq', 1, '2022-11-15 12:36:21'),
(105, 'Ireland', 1, '2022-11-15 12:36:21'),
(106, 'Israel', 1, '2022-11-15 12:36:21'),
(107, 'Italy', 1, '2022-11-15 12:36:21'),
(108, 'Jamaica', 1, '2022-11-15 12:36:21'),
(109, 'Japan', 1, '2022-11-15 12:36:21'),
(110, 'Jordan', 1, '2022-11-15 12:36:21'),
(111, 'Kazakhstan', 1, '2022-11-15 12:36:21'),
(112, 'Kenya', 1, '2022-11-15 12:36:21'),
(113, 'Kiribati', 1, '2022-11-15 12:36:21'),
(114, 'Korea, Democratic Peoples Republic of', 1, '2022-11-15 12:36:21'),
(115, 'Korea, Republic of', 1, '2022-11-15 12:36:21'),
(116, 'Kuwait', 1, '2022-11-15 12:36:21'),
(117, 'Kyrgyzstan', 1, '2022-11-15 12:36:21'),
(118, 'Lao, Peoples Democratic Republic', 1, '2022-11-15 12:36:21'),
(119, 'Latvia', 1, '2022-11-15 12:36:21'),
(120, 'Lebanon', 1, '2022-11-15 12:36:21'),
(121, 'Lesotho', 1, '2022-11-15 12:36:21'),
(122, 'Liberia', 1, '2022-11-15 12:36:21'),
(123, 'Libyan Arab Jamahiriya', 1, '2022-11-15 12:36:21'),
(124, 'Liechtenstein', 1, '2022-11-15 12:36:21'),
(125, 'Lithuania', 1, '2022-11-15 12:36:21'),
(126, 'Luxembourg', 1, '2022-11-15 12:36:21'),
(127, 'Macau', 1, '2022-11-15 12:36:21'),
(128, 'Macedonia, The Former Yugoslav Republic of', 1, '2022-11-15 12:36:21'),
(129, 'Madagascar', 1, '2022-11-15 12:36:21'),
(130, 'Malawi', 1, '2022-11-15 12:36:21'),
(131, 'Malaysia', 1, '2022-11-15 12:36:21'),
(132, 'Maldives', 1, '2022-11-15 12:36:21'),
(133, 'Mali', 1, '2022-11-15 12:36:21'),
(134, 'Malta', 1, '2022-11-15 12:36:21'),
(135, 'Marshall Islands', 1, '2022-11-15 12:36:21'),
(136, 'Martinique', 1, '2022-11-15 12:36:21'),
(137, 'Mauritania', 1, '2022-11-15 12:36:21'),
(138, 'Mauritius', 1, '2022-11-15 12:36:21'),
(139, 'Mayotte', 1, '2022-11-15 12:36:21'),
(140, 'Mexico', 1, '2022-11-15 12:36:21'),
(141, 'Micronesia, Federated States of', 1, '2022-11-15 12:36:21'),
(142, 'Moldova, Republic of', 1, '2022-11-15 12:36:21'),
(143, 'Monaco', 1, '2022-11-15 12:36:21'),
(144, 'Mongolia', 1, '2022-11-15 12:36:21'),
(145, 'Montserrat', 1, '2022-11-15 12:36:21'),
(146, 'Morocco', 1, '2022-11-15 12:36:21'),
(147, 'Mozambique', 1, '2022-11-15 12:36:21'),
(148, 'Myanmar', 1, '2022-11-15 12:36:21'),
(149, 'Namibia', 1, '2022-11-15 12:36:21'),
(150, 'Nauru', 1, '2022-11-15 12:36:21'),
(151, 'Nepal', 1, '2022-11-15 12:36:21'),
(152, 'Netherlands', 1, '2022-11-15 12:36:21'),
(153, 'Netherlands Antilles', 1, '2022-11-15 12:36:21'),
(154, 'New Caledonia', 1, '2022-11-15 12:36:21'),
(155, 'New Zealand', 1, '2022-11-15 12:36:21'),
(156, 'Nicaragua', 1, '2022-11-15 12:36:21'),
(157, 'Niger', 1, '2022-11-15 12:36:21'),
(158, 'Nigeria', 1, '2022-11-15 12:36:21'),
(159, 'Niue', 1, '2022-11-15 12:36:21'),
(160, 'Norfolk Island', 1, '2022-11-15 12:36:21'),
(161, 'Northern Mariana Islands', 1, '2022-11-15 12:36:21'),
(162, 'Norway', 1, '2022-11-15 12:36:21'),
(163, 'Oman', 1, '2022-11-15 12:36:21'),
(164, 'Pakistan', 1, '2022-11-15 12:36:21'),
(165, 'Palau', 1, '2022-11-15 12:36:21'),
(166, 'Panama', 1, '2022-11-15 12:36:21'),
(167, 'Papua New Guinea', 1, '2022-11-15 12:36:21'),
(168, 'Paraguay', 1, '2022-11-15 12:36:21'),
(169, 'Peru', 1, '2022-11-15 12:36:21'),
(170, 'Philippines', 1, '2022-11-15 12:36:21'),
(171, 'Pitcairn', 1, '2022-11-15 12:36:21'),
(172, 'Poland', 1, '2022-11-15 12:36:21'),
(173, 'Portugal', 1, '2022-11-15 12:36:21'),
(174, 'Puerto Rico', 1, '2022-11-15 12:36:21'),
(175, 'Qatar', 1, '2022-11-15 12:36:21'),
(176, 'Reunion', 1, '2022-11-15 12:36:21'),
(177, 'Romania', 1, '2022-11-15 12:36:21'),
(178, 'Russian Federation', 1, '2022-11-15 12:36:21'),
(179, 'Rwanda', 1, '2022-11-15 12:36:21'),
(180, 'Saint Kitts and Nevis', 1, '2022-11-15 12:36:21'),
(181, 'Saint Lucia', 1, '2022-11-15 12:36:21'),
(182, 'Saint Vincent and the Grenadines', 1, '2022-11-15 12:36:21'),
(183, 'Samoa', 1, '2022-11-15 12:36:21'),
(184, 'San Marino', 1, '2022-11-15 12:36:21'),
(185, 'Sao Tome and Principe', 1, '2022-11-15 12:36:21'),
(186, 'Saudi Arabia', 1, '2022-11-15 12:36:21'),
(187, 'Senegal', 1, '2022-11-15 12:36:21'),
(188, 'Seychelles', 1, '2022-11-15 12:36:21'),
(189, 'Sierra Leone', 1, '2022-11-15 12:36:21'),
(190, 'Singapore', 1, '2022-11-15 12:36:21'),
(191, 'Slovakia (Slovak Republic)', 1, '2022-11-15 12:36:21'),
(192, 'Slovenia', 1, '2022-11-15 12:36:21'),
(193, 'Solomon Islands', 1, '2022-11-15 12:36:21'),
(194, 'Somalia', 1, '2022-11-15 12:36:21'),
(195, 'South Africa', 1, '2022-11-15 12:36:21'),
(196, 'South Georgia and the South Sandwich Islands', 1, '2022-11-15 12:36:21'),
(197, 'Spain', 1, '2022-11-15 12:36:21'),
(198, 'Sri Lanka', 1, '2022-11-15 12:36:21'),
(199, 'St. Helena', 1, '2022-11-15 12:36:21'),
(200, 'St. Pierre and Miquelon', 1, '2022-11-15 12:36:21'),
(201, 'Sudan', 1, '2022-11-15 12:36:21'),
(202, 'Suriname', 1, '2022-11-15 12:36:21'),
(203, 'Svalbard and Jan Mayen Islands', 1, '2022-11-15 12:36:21'),
(204, 'Swaziland', 1, '2022-11-15 12:36:21'),
(205, 'Sweden', 1, '2022-11-15 12:36:21'),
(206, 'Switzerland', 1, '2022-11-15 12:36:21'),
(207, 'Syrian Arab Republic', 1, '2022-11-15 12:36:21'),
(208, 'Taiwan, Province of China', 1, '2022-11-15 12:36:21'),
(209, 'Tajikistan', 1, '2022-11-15 12:36:21'),
(210, 'Tanzania, United Republic of', 1, '2022-11-15 12:36:21'),
(211, 'Thailand', 1, '2022-11-15 12:36:21'),
(212, 'Togo', 1, '2022-11-15 12:36:21'),
(213, 'Tokelau', 1, '2022-11-15 12:36:21'),
(214, 'Tonga', 1, '2022-11-15 12:36:21'),
(215, 'Trinidad and Tobago', 1, '2022-11-15 12:36:21'),
(216, 'Tunisia', 1, '2022-11-15 12:36:21'),
(217, 'Turkey', 1, '2022-11-15 12:36:21'),
(218, 'Turkmenistan', 1, '2022-11-15 12:36:21'),
(219, 'Turks and Caicos Islands', 1, '2022-11-15 12:36:21'),
(220, 'Tuvalu', 1, '2022-11-15 12:36:21'),
(221, 'Uganda', 1, '2022-11-15 12:36:21'),
(222, 'Ukraine', 1, '2022-11-15 12:36:21'),
(223, 'United Arab Emirates', 1, '2022-11-15 12:36:21'),
(224, 'United Kingdom', 1, '2022-11-15 12:36:21'),
(225, 'United States', 1, '2022-11-15 12:36:21'),
(226, 'United States Minor Outlying Islands', 1, '2022-11-15 12:36:21'),
(227, 'Uruguay', 1, '2022-11-15 12:36:21'),
(228, 'Uzbekistan', 1, '2022-11-15 12:36:21'),
(229, 'Vanuatu', 1, '2022-11-15 12:36:21'),
(230, 'Venezuela', 1, '2022-11-15 12:36:21'),
(231, 'Vietnam', 1, '2022-11-15 12:36:21'),
(232, 'Virgin Islands (British)', 1, '2022-11-15 12:36:21'),
(233, 'Virgin Islands (U.S.)', 1, '2022-11-15 12:36:21'),
(234, 'Wallis and Futuna Islands', 1, '2022-11-15 12:36:21'),
(235, 'Western Sahara', 1, '2022-11-15 12:36:21'),
(236, 'Yemen', 1, '2022-11-15 12:36:21'),
(237, 'Yugoslavia', 1, '2022-11-15 12:36:21'),
(238, 'Zambia', 1, '2022-11-15 12:36:21'),
(239, 'Zimbabwe', 1, '2022-11-15 12:36:21');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `country_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `name`, `country_id`, `created_at`) VALUES
(1, 'Andhra Pradesh', 101, '2022-11-15 13:23:10'),
(2, 'Arunachal Pradesh', 101, '2022-11-15 13:23:10'),
(3, 'Assam', 101, '2022-11-15 13:23:10'),
(4, 'Bihar', 101, '2022-11-15 13:23:10'),
(5, 'Chhattisgarh', 101, '2022-11-15 13:23:10'),
(6, 'Goa', 101, '2022-11-15 13:23:10'),
(7, 'Gujarat', 101, '2022-11-15 13:23:10'),
(8, 'Haryana', 101, '2022-11-15 13:23:10'),
(9, 'Himachal Pradesh', 101, '2022-11-15 13:23:10'),
(10, 'Jammu and Kashmir', 101, '2022-11-15 13:23:10'),
(11, 'Jharkhand', 101, '2022-11-15 13:23:10'),
(12, 'Karnataka', 101, '2022-11-15 13:23:10'),
(13, 'Kerala', 101, '2022-11-15 13:23:10'),
(14, 'Madhya Pradesh', 101, '2022-11-15 13:23:10'),
(15, 'Maharashtra', 101, '2022-11-15 13:23:10'),
(16, 'Manipur', 101, '2022-11-15 13:23:10'),
(17, 'Meghalaya', 101, '2022-11-15 13:23:10'),
(18, 'Mizoram', 101, '2022-11-15 13:23:10'),
(19, 'Nagaland', 101, '2022-11-15 13:23:10'),
(20, 'Odisha', 101, '2022-11-15 13:23:10'),
(21, 'Punjab', 101, '2022-11-15 13:23:10'),
(22, 'Rajasthan', 101, '2022-11-15 13:23:10'),
(23, 'Sikkim', 101, '2022-11-15 13:23:10'),
(24, 'Tamil Nadu', 101, '2022-11-15 13:23:10'),
(25, 'Telangana', 101, '2022-11-15 13:23:10'),
(26, 'Tripura', 101, '2022-11-15 13:23:10'),
(27, 'Uttarakhand', 101, '2022-11-15 13:23:10'),
(28, 'Uttar Pradesh', 101, '2022-11-15 13:23:10'),
(29, 'West Bengal', 101, '2022-11-15 13:23:10'),
(30, 'Andaman and Nicobar Islands', 101, '2022-11-15 13:23:10'),
(31, 'Chandigarh', 101, '2022-11-15 13:23:10'),
(32, 'Dadra and Nagar Haveli', 101, '2022-11-15 13:23:10'),
(33, 'Daman and Diu', 101, '2022-11-15 13:23:10'),
(34, 'Delhi', 101, '2022-11-15 13:23:10'),
(35, 'Lakshadweep', 101, '2022-11-15 13:23:10'),
(36, 'Puducherry', 101, '2022-11-15 13:23:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
