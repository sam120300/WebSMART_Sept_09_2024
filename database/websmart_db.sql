-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2024 at 04:40 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `websmart_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `archive_list`
--

CREATE TABLE `archive_list` (
  `id` int(30) NOT NULL,
  `curriculum_id` int(30) NOT NULL,
  `year` year(4) NOT NULL,
  `title` text NOT NULL,
  `abstract` text NOT NULL,
  `members` text NOT NULL,
  `banner_path` text NOT NULL,
  `document_path` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `student_id` int(30) DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `views_count` int(11) NOT NULL DEFAULT 0,
  `search_count` int(8) NOT NULL DEFAULT 0,
  `submitted_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `archive_list`
--

INSERT INTO `archive_list` (`id`, `curriculum_id`, `year`, `title`, `abstract`, `members`, `banner_path`, `document_path`, `status`, `student_id`, `date_created`, `date_updated`, `views_count`, `search_count`, `submitted_by`) VALUES
(1, 26, 2024, 'Enhancing Cybersecurity with Blockchain Technology: A New Approach to Data Privacy', 'uploads/abstracts/abstract-1.pdf?v=1726617285', '&lt;p&gt;123&lt;/p&gt;', '', 'uploads/pdf/document-1.pdf?v=1726617285', 1, NULL, '2024-09-18 07:54:45', '2024-09-21 10:38:00', 36, 602, 'PNC Administrator'),
(2, 26, 2023, 'AI-Driven Solutions for Predicting Software Defects in Agile Development', 'uploads/abstracts/abstract-2.pdf?v=1726617309', '&lt;p&gt;123&lt;/p&gt;', '', 'uploads/pdf/document-2.pdf?v=1726617309', 0, NULL, '2024-09-18 07:55:09', '2024-09-18 08:45:06', 2, 140, 'PNC Administrator'),
(3, 26, 2022, 'Developing an Adaptive Algorithm for Real-Time Traffic Management in Smart Cities', 'uploads/abstracts/abstract-3.pdf?v=1726617332', '&lt;p&gt;123&lt;/p&gt;', '', 'uploads/pdf/document-3.pdf?v=1726617332', 0, NULL, '2024-09-18 07:55:32', '2024-09-20 22:06:02', 3, 140, 'PNC Administrator'),
(4, 34, 2021, 'The Impact of Urbanization on Biodiversity in Coastal Ecosystems', 'uploads/abstracts/abstract-4.pdf?v=1726617368', '&lt;p&gt;123&lt;/p&gt;', '', 'uploads/pdf/document-4.pdf?v=1726617368', 1, NULL, '2024-09-18 07:56:08', '2024-09-21 10:38:00', 2, 220, 'PNC Administrator'),
(5, 21, 2019, 'Assessing the Potential of Solar Energy in Reducing Carbon Emissions in Developing Countries', 'uploads/abstracts/abstract-5.pdf?v=1726617389', '&lt;p&gt;123&lt;/p&gt;', '', 'uploads/pdf/document-5.pdf?v=1726617389', 1, NULL, '2024-09-18 07:56:29', '2024-09-21 10:38:00', 2, 371, 'PNC Administrator'),
(6, 31, 2019, 'Microplastic Pollution: Long-Term Effects on Marine Life and Mitigation Strategies', 'uploads/abstracts/abstract-6.pdf?v=1726617406', '&lt;p&gt;123&lt;/p&gt;', '', 'uploads/pdf/document-6.pdf?v=1726617406', 1, NULL, '2024-09-18 07:56:46', '2024-09-21 10:38:00', 2, 363, 'PNC Administrator'),
(7, 21, 2014, 'The Influence of Social Media on Adolescent Self-Esteem and Anxiety', 'uploads/abstracts/abstract-7.pdf?v=1726617435', '&lt;p&gt;123&lt;/p&gt;', '', 'uploads/pdf/document-7.pdf?v=1726617435', 1, NULL, '2024-09-18 07:57:15', '2024-09-21 10:38:00', 2, 358, 'PNC Administrator'),
(8, 21, 2017, 'Cognitive Behavioral Therapy for Managing Anxiety in Children: A Comparative Study', 'uploads/abstracts/abstract-8.pdf?v=1726617464', '&lt;p&gt;123&lt;/p&gt;', '', 'uploads/pdf/document-8.pdf?v=1726617464', 0, NULL, '2024-09-18 07:57:44', '2024-09-18 08:45:06', 2, 140, 'PNC Administrator'),
(9, 21, 2020, 'Emotional Intelligence as a Predictor of Job Satisfaction Among Healthcare Workers', 'uploads/abstracts/abstract-9.pdf?v=1726617486', '&lt;p&gt;123&lt;/p&gt;', '', 'uploads/pdf/document-9.pdf?v=1726617486', 1, NULL, '2024-09-18 07:58:06', '2024-09-21 10:38:01', 2, 372, 'PNC Administrator'),
(10, 23, 2016, 'The Role of Fintech in Expanding Financial Inclusion in Sub-Saharan Africa', 'uploads/abstracts/abstract-10.pdf?v=1726617508', '&lt;p&gt;123&lt;/p&gt;', '', 'uploads/pdf/document-10.pdf?v=1726617508', 1, NULL, '2024-09-18 07:58:28', '2024-09-21 10:38:01', 2, 327, 'PNC Administrator'),
(11, 24, 2015, 'Sustainable Business Practices and their Impact on Consumer Perception and Loyalty', 'uploads/abstracts/abstract-11.pdf?v=1726617527', '&lt;p&gt;123&lt;/p&gt;', '', 'uploads/pdf/document-11.pdf?v=1726617527', 1, NULL, '2024-09-18 07:58:47', '2024-09-21 10:38:00', 2, 249, 'PNC Administrator'),
(12, 24, 2019, 'Cryptocurrency Adoption: Implications for Traditional Banking Systems', 'uploads/abstracts/abstract-12.pdf?v=1726617546', '&lt;p&gt;123&lt;/p&gt;', '', 'uploads/pdf/document-12.pdf?v=1726617546', 1, NULL, '2024-09-18 07:59:06', '2024-09-21 10:38:00', 2, 410, 'PNC Administrator'),
(13, 28, 2021, 'Gamification in Education: Enhancing Student Engagement in Online Learning', 'uploads/abstracts/abstract-13.pdf?v=1726617567', '&lt;p&gt;123&lt;/p&gt;', '', 'uploads/pdf/document-13.pdf?v=1726617567', 1, NULL, '2024-09-18 07:59:27', '2024-09-21 10:38:00', 2, 236, 'PNC Administrator'),
(14, 30, 2016, 'Teacher Burnout: Causes, Consequences, and Strategies for Prevention', 'uploads/abstracts/abstract-14.pdf?v=1726617586', '&lt;p&gt;123&lt;/p&gt;', '', 'uploads/pdf/document-14.pdf?v=1726617586', 1, NULL, '2024-09-18 07:59:46', '2024-09-21 10:38:00', 4, 417, 'PNC Administrator'),
(15, 29, 2021, 'Inclusive Education for Students with Disabilities: Evaluating Policy Implementation', 'uploads/abstracts/abstract-15.pdf?v=1726617601', '&lt;p&gt;123&lt;/p&gt;', '', 'uploads/pdf/document-15.pdf?v=1726617601', 1, NULL, '2024-09-18 08:00:01', '2024-09-21 10:38:01', 5, 340, 'PNC Administrator'),
(16, 31, 2024, 'Telemedicine: Evaluating Its Effectiveness in Rural Healthcare Delivery', 'uploads/abstracts/abstract-16.pdf?v=1726617620', '&lt;p&gt;123&lt;/p&gt;', '', 'uploads/pdf/document-16.pdf?v=1726617620', 1, NULL, '2024-09-18 08:00:20', '2024-09-21 10:38:00', 2, 325, 'PNC Administrator'),
(17, 32, 2016, 'Exploring the Role of Gut Microbiota in the Development of Type 2 Diabetes', 'uploads/abstracts/abstract-17.pdf?v=1726617704', '&lt;p&gt;123&lt;/p&gt;', '', 'uploads/pdf/document-17.pdf?v=1726617704', 1, NULL, '2024-09-18 08:01:44', '2024-09-21 10:38:00', 2, 337, 'PNC Administrator'),
(18, 26, 2022, 'The Long-Term Psychological Impact of COVID-19 on Frontline Healthcare Workers', 'uploads/abstracts/abstract-18.pdf?v=1726617726', '&lt;p&gt;123&lt;/p&gt;', '', 'uploads/pdf/document-18.pdf?v=1726617726', 1, NULL, '2024-09-18 08:02:06', '2024-09-21 10:38:00', 2, 328, 'PNC Administrator'),
(19, 33, 2021, 'Energy-Efficient Building Materials: A Comparative Analysis of Insulation Technologies', 'uploads/abstracts/abstract-19.pdf?v=1726617746', '&lt;p&gt;123&lt;/p&gt;', '', 'uploads/pdf/document-19.pdf?v=1726617747', 0, NULL, '2024-09-18 08:02:26', '2024-09-18 08:45:06', 2, 180, 'PNC Administrator'),
(20, 34, 2015, '3D Printing in Aerospace: Advancements and Challenges in Structural Design', 'uploads/abstracts/abstract-20.pdf?v=1726617767', '&lt;p&gt;123&lt;/p&gt;', '', 'uploads/pdf/document-20.pdf?v=1726617767', 1, NULL, '2024-09-18 08:02:47', '2024-09-21 10:38:00', 2, 251, 'PNC Administrator'),
(21, 32, 2020, 'asda', '', '&lt;p&gt;asd&lt;/p&gt;', '', '', 0, NULL, '2024-09-20 21:13:41', NULL, 0, 0, 'CHRISTIAN SAMONTE'),
(22, 29, 2020, 'asdasda', 'uploads/abstracts/abstract-22.pdf?v=1726838064', '&lt;p&gt;asdadsas&lt;/p&gt;', '', 'uploads/pdf/document-22.pdf?v=1726838064', 0, NULL, '2024-09-20 21:14:24', '2024-09-20 21:14:24', 1, 0, 'CHRISTIAN SAMONTE');

-- --------------------------------------------------------

--
-- Table structure for table `curriculum_list`
--

CREATE TABLE `curriculum_list` (
  `id` int(30) NOT NULL,
  `department_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `curriculum_list`
--

INSERT INTO `curriculum_list` (`id`, `department_id`, `name`, `description`, `status`, `date_created`, `date_updated`) VALUES
(21, 11, 'BACHELOR OF SCIENCE IN PSYCHOLOGY', '', 1, '2024-08-18 21:39:42', '2024-08-18 21:40:40'),
(22, 12, 'BACHELOR OF SCIENCE IN ACCOUNTANCY', '', 1, '2024-08-18 21:40:19', NULL),
(23, 12, 'BACHELOR OF SCIENCE IN BUSINESS ADMINISTRATION MAJOR IN FINANCIAL MANAGEMENT', '', 1, '2024-08-18 21:40:56', NULL),
(24, 12, 'BACHELOR OF SCIENCE IN BUSINESS ADMINISTRATION MAJOR IN MARKETING MANAGEMENT', '', 1, '2024-08-18 21:41:12', NULL),
(25, 13, 'BACHELOR OF SCIENCE IN INFORMATION TECHNOLOGY', '', 1, '2024-08-18 21:42:09', NULL),
(26, 13, 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', '', 1, '2024-08-18 21:42:22', NULL),
(27, 14, 'BACHELOR OF ELEMENTARY EDUCATION', '', 1, '2024-08-18 21:42:49', NULL),
(28, 14, 'BACHELOR OF SECONDARY EDUCATION MAJOR IN ENGLISH', '', 1, '2024-08-18 21:43:13', NULL),
(29, 14, 'BACHELOR OF SECONDARY EDUCATION MAJOR IN FILIPINO', '', 1, '2024-08-18 21:43:26', NULL),
(30, 14, 'BACHELOR OF SECONDARY EDUCATION MAJOR IN MATHEMATICS', '', 1, '2024-08-18 21:43:41', NULL),
(31, 14, 'BACHELOR OF SECONDARY EDUCATION MAJOR IN SOCIAL SCIENCE', '', 1, '2024-08-18 21:43:57', NULL),
(32, 15, 'BACHELOR OF SCIENCE IN COMPUTER ENGINEERING', '', 1, '2024-08-18 21:44:50', NULL),
(33, 15, 'BACHELOR OF SCIENCE IN ELECTRONICS ENGINEERING', '', 1, '2024-08-18 21:45:04', NULL),
(34, 15, 'BACHELOR OF SCIENCE IN INDUSTRIAL ENGINEERING', '', 1, '2024-08-18 21:45:17', NULL),
(35, 16, 'BACHELOR OF SCIENCE IN NURSING', '', 1, '2024-08-18 21:46:06', NULL),
(36, 17, 'MASTER OF BUSINESS ADMINISTRATION', '', 1, '2024-08-18 21:46:32', NULL),
(37, 17, 'MASTER OF ARTS IN EDUCATION', '', 1, '2024-08-18 21:46:45', NULL),
(38, 17, 'MASTER OF ARTS IN PSYCHOLOGY', '', 1, '2024-08-18 21:46:59', NULL),
(39, 18, 'ENHANCED SCIENCE, TECHNOLOGY, ENGINEERING, AND MATHEMATICS (E-STEM) STRAND', '', 1, '2024-08-18 21:47:26', NULL),
(40, 18, 'ENHANCED HUMANITIES AND SOCIAL SCIENCES (E-HUMSS) STRAND', '', 1, '2024-08-18 21:47:39', NULL),
(41, 18, 'ENHANCED ACCOUNTANCY, BUSINESS, AND MANAGEMENT (E-ABM) STRAND', '', 1, '2024-08-18 21:47:52', NULL),
(42, 18, 'ENHANCED TECHNICAL, VOCATIONAL, AND LIVELIHOOD (E-TVL) STRAND', '', 1, '2024-08-18 21:48:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `department_list`
--

CREATE TABLE `department_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department_list`
--

INSERT INTO `department_list` (`id`, `name`, `description`, `status`, `date_created`, `date_updated`) VALUES
(11, 'College of Arts and Sciences', 'College of Arts and Sciences holds in the ideals of learning by doing, making connections, and creating a community of progress that promotes social awareness and involvement by introducing students to advanced academic pursuits in promoting globally competitive professionals in the field of Psychology and in the programs for liberal arts education in the future.', 1, '2024-08-18 21:34:27', NULL),
(12, 'College of Business, Accountancy, and Administration', 'Fostering excellence in business education, the College of Business, Accountancy, and Administration (CBAA) empowers its students with administrative competencies in the fields of business, accounting, and administration to enable them to contribute to national development.', 1, '2024-08-18 21:35:27', NULL),
(13, 'College of Computing Studies', 'The College of Computing Studies (CCS) offers undergraduate programs in the fields of Computer Science, Information Systems, and Information Technology. It aims to produce value-driven and innovative computing professionals equipped with knowledge and skills needed in the IT industry, particularly with specializations in web computing, application development, service management, multimedia, mobile development, game development, data science, and artificial intelligence.', 1, '2024-08-18 21:35:44', NULL),
(14, 'College of Education', '\r\nTrue to its vision of delivering quality and relevant teacher education, the College of Education (COED) aims to produce knowledge professionals who transform lives and nurture intellectual maturity and moral integrity of the students. Through collaborative engagement which leads to academic success, the college targets to empower future educators through advocacy, linkages, and extension.', 1, '2024-08-18 21:36:06', NULL),
(15, 'College of Engineering', 'The College of Engineering (COE) envisions itself as a frontrunner of engineering education in the region, producing professionals in the fields of Computer Engineering, Electronics Engineering, and Industrial Engineering. With commitment to community development and nation-building, the College develops competitive and value-laden future engineers specializing in artificial intelligence, production engineering, software development, telecommunication, microelectronics, and power electronics.', 1, '2024-08-18 21:36:28', NULL),
(16, 'College of Health and Allied Science', 'Equipping students with competence and commitment to preserve humanity as stewards of God’s creation, the College of Health and Allied Sciences (CHAS) aims to produce healthcare professionals in the fields of Nursing and Psychology who can provide effective and efficient health services compliant with global standards.', 1, '2024-08-18 21:36:53', NULL),
(17, 'Graduate School', 'Graduate studies at Pamantasan ng Cabuyao (University of Cabuyao) give students a deeper understanding of business, science, and education. Curiosity, imaginative play, and a desire to solve problems for the benefit of society are combined with critical thinking. The Graduate School curriculum encourages students to create and apply original theories and concepts that will lead to new ideas and perspectives for the future.', 1, '2024-08-18 21:37:09', NULL),
(18, 'Senior High School', 'The Pamantasan ng Cabuyao-Senior High School Department (PnC-SHS) prepares its students for higher education and future careers in the industry through effective delivery of instruction, adequate industry immersion experience, and active engagement in research endeavors.\r\n\r\nIts strand offerings follow the recommended curriculum by the Department of Education (DepEd) with additional appropriate subjects to provide students with a strong academic foundation in preparation for the tertiary level.', 1, '2024-08-18 21:37:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `forms_list`
--

CREATE TABLE `forms_list` (
  `id` int(30) NOT NULL,
  `title` text NOT NULL,
  `document_path` text NOT NULL,
  `student_id` int(30) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `submitted_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forms_list`
--

INSERT INTO `forms_list` (`id`, `title`, `document_path`, `student_id`, `status`, `date_created`, `date_updated`, `submitted_by`) VALUES
(3, 'test', 'uploads/forms/form-3.pdf?v=1726841110', NULL, 1, '2024-09-20 22:05:10', '2024-09-20 22:57:45', 'CHRISTIAN SAMONTE'),
(4, 'Sample FO form', 'uploads/forms/form-4.pdf?v=1726842796', NULL, 1, '2024-09-20 22:33:16', '2024-09-20 22:56:11', 'CHRISTIAN SAMONTE'),
(5, 'Sample FO 2', 'uploads/forms/form-5.pdf?v=1726847029', NULL, 1, '2024-09-20 23:43:49', '2024-09-20 23:44:57', 'PNC Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `student_list`
--

CREATE TABLE `student_list` (
  `id` int(30) NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text NOT NULL,
  `lastname` text NOT NULL,
  `department_id` int(30) NOT NULL,
  `curriculum_id` int(30) NOT NULL,
  `student_id` text NOT NULL,
  `user_type` varchar(255) DEFAULT 'student',
  `password` text NOT NULL,
  `gender` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `avatar` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `type` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_list`
--

INSERT INTO `student_list` (`id`, `firstname`, `middlename`, `lastname`, `department_id`, `curriculum_id`, `student_id`, `user_type`, `password`, `gender`, `status`, `avatar`, `date_created`, `date_updated`, `type`) VALUES
(22, 'Sample', '', 'Student', 12, 23, '1-200101', 'student', '21232f297a57a5a743894a0e4a801fc3', 'Female', 1, 'uploads/students/student-22.png?v=1725722384', '2024-08-18 21:57:14', '2024-09-20 20:36:48', 1),
(30, 'CHRISTIAN', 'AMISTOSO', 'SAMONTE', 13, 26, '123', 'student', '202cb962ac59075b964b07152d234b70', 'Male', 1, '', '2024-09-20 20:48:32', '2024-09-20 20:48:49', 1),
(31, 'CHRISTIAN', 'AMISTOSO', 'SAMONTE', 13, 26, '120300', 'student', '7bbeb82f3733123b3758d0f25078e3fc', 'Male', 1, '', '2024-09-20 23:47:42', '2024-09-20 23:50:37', 1);

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'WebSMART'),
(6, 'short_name', 'WebSMART'),
(11, 'logo', 'uploads/logo-1723986711.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover-1723986435.png'),
(15, 'content', 'Array'),
(16, 'email', 'pncusg@gmail.com'),
(17, 'contact', 'https://pnc.edu.ph/'),
(18, 'from_time', '11:00'),
(19, 'to_time', '21:30'),
(20, 'address', 'Cabuyao, Philippines');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '0=not verified, 1 = verified',
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `status`, `date_added`, `date_updated`) VALUES
(1, 'PNC', NULL, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'uploads/admins/admin-1.png?v=1725722350', NULL, 2, 1, '2021-01-20 14:02:37', '2024-09-18 20:45:43'),
(9, 'admin', NULL, 'blosom', 'blosom', '22570ae75af72d1fc2f26ddb8a87c477', 'uploads/admins/admin-9.png?v=1723955560', NULL, 3, 1, '2024-08-18 12:32:40', '2024-09-18 20:46:40'),
(10, 'admin', NULL, 'babols', 'babols', '8150104451e63753827d79a59d30d838', 'uploads/admins/admin-10.png?v=1723955577', NULL, 3, 1, '2024-08-18 12:32:57', '2024-09-18 20:46:38'),
(11, 'admin', NULL, 'baterkap', 'baterkap', 'd403e479520f6d402f96d658ba673bf3', 'uploads/admins/admin-11.png?v=1723955591', NULL, 3, 1, '2024-08-18 12:33:11', '2024-09-18 20:46:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `archive_list`
--
ALTER TABLE `archive_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `curriculum_id` (`curriculum_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `curriculum_list`
--
ALTER TABLE `curriculum_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `department_list`
--
ALTER TABLE `department_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forms_list`
--
ALTER TABLE `forms_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `student_list`
--
ALTER TABLE `student_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`student_id`) USING HASH,
  ADD KEY `department_id` (`department_id`),
  ADD KEY `curriculum_id` (`curriculum_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
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
-- AUTO_INCREMENT for table `archive_list`
--
ALTER TABLE `archive_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `curriculum_list`
--
ALTER TABLE `curriculum_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `department_list`
--
ALTER TABLE `department_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `forms_list`
--
ALTER TABLE `forms_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student_list`
--
ALTER TABLE `student_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `archive_list`
--
ALTER TABLE `archive_list`
  ADD CONSTRAINT `archive_list_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_list` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `curriculum_list`
--
ALTER TABLE `curriculum_list`
  ADD CONSTRAINT `curriculum_list_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_list`
--
ALTER TABLE `student_list`
  ADD CONSTRAINT `student_list_ibfk_1` FOREIGN KEY (`curriculum_id`) REFERENCES `curriculum_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_list_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `department_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
