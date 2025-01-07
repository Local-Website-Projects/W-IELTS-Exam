-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2025 at 07:51 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ielts_exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `audio`
--

CREATE TABLE `audio` (
  `audio_id` int(11) NOT NULL,
  `file_name` varchar(500) NOT NULL,
  `set_id` int(11) NOT NULL,
  `inserted_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `audio`
--

INSERT INTO `audio` (`audio_id`, `file_name`, `set_id`, `inserted_at`, `updated_at`) VALUES
(1, '', 2, '2024-12-21 15:10:27', '0000-00-00 00:00:00'),
(2, '', 2, '2024-12-21 15:11:06', '0000-00-00 00:00:00'),
(3, 'audio/34398_1.mp3', 2, '2024-12-21 15:15:29', '0000-00-00 00:00:00'),
(4, 'audio/1455_1.mp3', 2, '2024-12-21 16:28:28', '0000-00-00 00:00:00'),
(5, 'audio/46181_1.mp3', 3, '2024-12-25 13:43:59', '0000-00-00 00:00:00'),
(6, 'audio/27284_1.mp3', 4, '2024-12-28 15:48:10', '0000-00-00 00:00:00'),
(7, 'audio/74439_1.mp3', 5, '2024-12-28 16:35:15', '0000-00-00 00:00:00'),
(8, 'audio/98322_1.mp3', 7, '2024-12-30 11:13:49', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_name`) VALUES
(1, 'Afghanistan'),
(2, 'Albania'),
(3, 'Algeria'),
(4, 'Andorra'),
(5, 'Angola'),
(6, 'Antigua and Barbuda'),
(7, 'Argentina'),
(8, 'Armenia'),
(9, 'Australia'),
(10, 'Austria'),
(11, 'Azerbaijan'),
(12, 'Bahamas'),
(13, 'Bahrain'),
(14, 'Bangladesh'),
(15, 'Barbados'),
(16, 'Belarus'),
(17, 'Belgium'),
(18, 'Belize'),
(19, 'Benin'),
(20, 'Bhutan'),
(21, 'Bolivia'),
(22, 'Bosnia and Herzegovina'),
(23, 'Botswana'),
(24, 'Brazil'),
(25, 'Brunei'),
(26, 'Bulgaria'),
(27, 'Burkina Faso'),
(28, 'Burundi'),
(29, 'Cabo Verde'),
(30, 'Cambodia'),
(31, 'Cameroon'),
(32, 'Canada'),
(33, 'Central African Republic'),
(34, 'Chad'),
(35, 'Chile'),
(36, 'China'),
(37, 'Colombia'),
(38, 'Comoros'),
(39, 'Congo, Democratic Republic of the'),
(40, 'Congo, Republic of the'),
(41, 'Costa Rica'),
(42, 'Croatia'),
(43, 'Cuba'),
(44, 'Cyprus'),
(45, 'Czech Republic'),
(46, 'Denmark'),
(47, 'Djibouti'),
(48, 'Dominica'),
(49, 'Dominican Republic'),
(50, 'Ecuador'),
(51, 'Egypt'),
(52, 'El Salvador'),
(53, 'Equatorial Guinea'),
(54, 'Eritrea'),
(55, 'Estonia'),
(56, 'Eswatini'),
(57, 'Ethiopia'),
(58, 'Fiji'),
(59, 'Finland'),
(60, 'France'),
(61, 'Gabon'),
(62, 'Gambia'),
(63, 'Georgia'),
(64, 'Germany'),
(65, 'Ghana'),
(66, 'Greece'),
(67, 'Grenada'),
(68, 'Guatemala'),
(69, 'Guinea'),
(70, 'Guinea-Bissau'),
(71, 'Guyana'),
(72, 'Haiti'),
(73, 'Honduras'),
(74, 'Hungary'),
(75, 'Iceland'),
(76, 'India'),
(77, 'Indonesia'),
(78, 'Iran'),
(79, 'Iraq'),
(80, 'Ireland'),
(81, 'Israel'),
(82, 'Italy'),
(83, 'Jamaica'),
(84, 'Japan'),
(85, 'Jordan'),
(86, 'Kazakhstan'),
(87, 'Kenya'),
(88, 'Kiribati'),
(89, 'Korea, North'),
(90, 'Korea, South'),
(91, 'Kuwait'),
(92, 'Kyrgyzstan'),
(93, 'Laos'),
(94, 'Latvia'),
(95, 'Lebanon'),
(96, 'Lesotho'),
(97, 'Liberia'),
(98, 'Libya'),
(99, 'Liechtenstein'),
(100, 'Lithuania'),
(101, 'Luxembourg'),
(102, 'Madagascar'),
(103, 'Malawi'),
(104, 'Malaysia'),
(105, 'Maldives'),
(106, 'Mali'),
(107, 'Malta'),
(108, 'Marshall Islands'),
(109, 'Mauritania'),
(110, 'Mauritius'),
(111, 'Mexico'),
(112, 'Micronesia'),
(113, 'Moldova'),
(114, 'Monaco'),
(115, 'Mongolia'),
(116, 'Montenegro'),
(117, 'Morocco'),
(118, 'Mozambique'),
(119, 'Myanmar'),
(120, 'Namibia'),
(121, 'Nauru'),
(122, 'Nepal'),
(123, 'Netherlands'),
(124, 'New Zealand'),
(125, 'Nicaragua'),
(126, 'Niger'),
(127, 'Nigeria'),
(128, 'North Macedonia'),
(129, 'Norway'),
(130, 'Oman'),
(131, 'Pakistan'),
(132, 'Palau'),
(133, 'Panama'),
(134, 'Papua New Guinea'),
(135, 'Paraguay'),
(136, 'Peru'),
(137, 'Philippines'),
(138, 'Poland'),
(139, 'Portugal'),
(140, 'Qatar'),
(141, 'Romania'),
(142, 'Russia'),
(143, 'Rwanda'),
(144, 'Saint Kitts and Nevis'),
(145, 'Saint Lucia'),
(146, 'Saint Vincent and the Grenadines'),
(147, 'Samoa'),
(148, 'San Marino'),
(149, 'Sao Tome and Principe'),
(150, 'Saudi Arabia'),
(151, 'Senegal'),
(152, 'Serbia'),
(153, 'Seychelles'),
(154, 'Sierra Leone'),
(155, 'Singapore'),
(156, 'Slovakia'),
(157, 'Slovenia'),
(158, 'Solomon Islands'),
(159, 'Somalia'),
(160, 'South Africa'),
(161, 'South Sudan'),
(162, 'Spain'),
(163, 'Sri Lanka'),
(164, 'Sudan'),
(165, 'Suriname'),
(166, 'Sweden'),
(167, 'Switzerland'),
(168, 'Syria'),
(169, 'Taiwan'),
(170, 'Tajikistan'),
(171, 'Tanzania'),
(172, 'Thailand'),
(173, 'Timor-Leste'),
(174, 'Togo'),
(175, 'Tonga'),
(176, 'Trinidad and Tobago'),
(177, 'Tunisia'),
(178, 'Turkey'),
(179, 'Turkmenistan'),
(180, 'Tuvalu'),
(181, 'Uganda'),
(182, 'Ukraine'),
(183, 'United Arab Emirates'),
(184, 'United Kingdom'),
(185, 'United States'),
(186, 'Uruguay'),
(187, 'Uzbekistan'),
(188, 'Vanuatu'),
(189, 'Vatican City'),
(190, 'Venezuela'),
(191, 'Vietnam'),
(192, 'Yemen'),
(193, 'Zambia'),
(194, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `question_id` int(11) NOT NULL,
  `question_set_id` int(11) NOT NULL,
  `instruction` text NOT NULL,
  `question` text NOT NULL,
  `optionA` varchar(500) NOT NULL,
  `optionB` varchar(500) NOT NULL,
  `optionC` varchar(500) NOT NULL,
  `optionD` varchar(500) NOT NULL,
  `optionE` varchar(500) NOT NULL,
  `correct_answer` text NOT NULL,
  `inserted_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_id`, `question_set_id`, `instruction`, `question`, `optionA`, `optionB`, `optionC`, `optionD`, `optionE`, `correct_answer`, `inserted_at`, `updated_at`) VALUES
(1, 5, '', '<p>Most geoglyphs in England are located in a particular area of the country.</p>', 'TRUE', 'FALSE', 'NOT GIVEN', '', '', 'A', '2024-12-28 17:07:06', '0000-00-00 00:00:00'),
(2, 5, '', '<p><strong>Dating the Uffington White Horse:</strong></p><ul><li>first reference to White Horse Hill appears in <strong>**</strong> &nbsp;from the 1070s</li><li>horses shown on coins from the period 100 BCE – 1 BCE are similar in appearance</li><li>according to analysis of the surrounding ** , the Horse is Late Bronze Age / Early Iron Age</li></ul>', '', '', '', '', '', 'horses shown on coins from the period 100 BCE – 1 BCE are similar in appearance', '2024-12-28 17:09:53', '0000-00-00 00:00:00'),
(3, 5, '', '<p>What point does the writer make about microbes in the first paragraph?</p>', 'They adapt quickly to their environment.', 'The risk they pose has been exaggerated.', 'They are more plentiful in animal life than plant life.', 'They will continue to exist for longer than the human race.', '', 'C', '2024-12-28 17:11:21', '0000-00-00 00:00:00'),
(4, 5, '', '<p>Complete the summary using the list of words,&nbsp;<strong>A-H</strong>, below.</p><p>&nbsp;</p><p><i>Write the correct letter, A-H, in boxes on your answer sheet.</i></p><p><strong>A</strong>&nbsp;&nbsp;&nbsp;&nbsp; solution&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>B&nbsp;&nbsp; </strong>&nbsp;&nbsp;partnership&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>C&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;destruction</p><p><strong>D</strong>&nbsp;&nbsp;&nbsp;&nbsp; exaggeration&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>E&nbsp;&nbsp; </strong>&nbsp;&nbsp;cleanliness&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>F&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;regulations</p><p><strong>G</strong>&nbsp;&nbsp;&nbsp;&nbsp; illness&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>H&nbsp; </strong>&nbsp;&nbsp;&nbsp;nutrition</p><h3><strong>We should be more tolerant of microbes</strong></h3><p>Yong’s book argues that we should be more tolerant of microbes. Many have a beneficial effect, and only a relatively small number lead to <strong>**</strong>. And although it is misleading to think of microbes as ‘friendly’, we should also stop thinking of them as the enemy. In fact, we should accept that our relationship with microbes is one based on <strong>**</strong>.</p><p>New research shows that microbes have numerous benefits for humans. Amongst other things, they aid digestion, remove poisons, produce vitamins and may even help reduce obesity. However, there is a growing problem. Our poor <strong>**</strong>, our overuse of antibiotics, and our excessive focus on <strong>**&nbsp;</strong> are upsetting the bacterial balance and may be contributing to the huge increase in allergies and immune system problems.</p>', '', '', '', '', '', 'D', '2024-12-28 17:15:00', '0000-00-00 00:00:00'),
(5, 5, '', '<p>What reason prevented each of the following members of the Compton Park Runners Club from joining until recently?<br><i>Write the correct letter,&nbsp;<strong>A</strong>,&nbsp;<strong>B</strong>, or&nbsp;<strong>C</strong>.</i></p><p><strong>Reasons</strong><br><strong>A.</strong>&nbsp;a lack of confidence<br><strong>B.</strong>&nbsp;a dislike of running<br><strong>C.</strong>&nbsp;a lack of time<br><strong>Club members</strong></p><p><strong>1</strong> Ceri &nbsp; &nbsp;** &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p><strong>2</strong> James &nbsp; &nbsp; ** &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p><strong>3</strong> Leo &nbsp; &nbsp; &nbsp;** &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p><strong>4</strong> Mark &nbsp; &nbsp; ** &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', '', '', '', '', '', 'E', '2024-12-28 17:19:59', '0000-00-00 00:00:00'),
(6, 5, '', '<p>In many countries nowadays, consumers can go to a supermarket and buy food produced all over the world.</p><p>Do you think this is a positive or negative development?</p>', '', '', '', '', '', 'a', '2024-12-28 17:22:46', '0000-00-00 00:00:00'),
(7, 7, '<p>This is the sample instruction before the question for the students</p>', '<p>This is the sample question for the studnet</p>', '', '', '', '', '', 'This is the correct answer', '2024-12-30 11:19:18', '0000-00-00 00:00:00'),
(8, 5, '<p>This is the sample for previously created questions</p>', '<p>This is the sample question to continue</p>', '', '', '', '', '', 'asd', '2024-12-30 11:52:01', '0000-00-00 00:00:00'),
(9, 5, '', '<p>sa</p>', '', '', '', '', '', 'sa', '2024-12-30 12:00:18', '0000-00-00 00:00:00'),
(10, 5, '', '<p>asdasd</p>', '', '', '', '', '', 'asdasd', '2024-12-30 12:16:18', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `question_sets`
--

CREATE TABLE `question_sets` (
  `set_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `type` varchar(500) NOT NULL,
  `set_name` varchar(500) NOT NULL,
  `inserted_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `question_sets`
--

INSERT INTO `question_sets` (`set_id`, `teacher_id`, `type`, `set_name`, `inserted_at`, `updated_at`) VALUES
(1, 1, 'Academic', 'Academic-1', '2024-12-21 13:57:54', '0000-00-00 00:00:00'),
(2, 1, 'General', 'General-1', '2024-12-21 13:58:05', '0000-00-00 00:00:00'),
(3, 1, 'Academic', 'Academic-2', '2024-12-25 13:43:41', '0000-00-00 00:00:00'),
(4, 1, 'Academic', 'Academic-3', '2024-12-28 15:47:16', '0000-00-00 00:00:00'),
(5, 1, 'Academic', 'Academic-4', '2024-12-28 16:35:09', '0000-00-00 00:00:00'),
(6, 1, 'Academic', 'Academic-5', '2024-12-30 10:43:38', '0000-00-00 00:00:00'),
(7, 1, 'Academic', 'Academic-6', '2024-12-30 11:13:40', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(500) NOT NULL,
  `student_email` varchar(255) NOT NULL,
  `student_phone` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `country` int(11) NOT NULL,
  `student_v_code` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `inserted_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `student_name`, `student_email`, `student_phone`, `password`, `country`, `student_v_code`, `status`, `inserted_at`, `updated_at`) VALUES
(1, 'Test Student', 'test@test.com', '01729277769', '$2y$10$IqYMYUaDeFpBo/2rioQPEetiyuVM/b2PRiMZTXf8PQYdeTEPFvtVe', 14, '887190', 0, '2024-12-17 16:58:50', '0000-00-00 00:00:00'),
(2, 'Test Student', 'student@gmail.com', '01729277769', '$2y$10$In5mRovPX.VcOSmMFBEoa.YILmA29mM9BkasbYLrC5lvlTKyKsBCC', 14, '123456', 0, '2024-12-17 17:08:27', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_info`
--

CREATE TABLE `teacher_info` (
  `teacher_id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(500) NOT NULL,
  `teacher_status` int(11) NOT NULL DEFAULT 0,
  `inserted_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher_info`
--

INSERT INTO `teacher_info` (`teacher_id`, `name`, `contact_no`, `email`, `password`, `teacher_status`, `inserted_at`, `updated_at`) VALUES
(1, 'Test Teacher', '01729277769', 'teacher@test.com', '$2y$10$IqYMYUaDeFpBo/2rioQPEetiyuVM/b2PRiMZTXf8PQYdeTEPFvtVe', 0, '2024-12-19 06:42:00', '2024-12-19 06:42:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audio`
--
ALTER TABLE `audio`
  ADD PRIMARY KEY (`audio_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `question_sets`
--
ALTER TABLE `question_sets`
  ADD PRIMARY KEY (`set_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `teacher_info`
--
ALTER TABLE `teacher_info`
  ADD PRIMARY KEY (`teacher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audio`
--
ALTER TABLE `audio`
  MODIFY `audio_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `question_sets`
--
ALTER TABLE `question_sets`
  MODIFY `set_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teacher_info`
--
ALTER TABLE `teacher_info`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
