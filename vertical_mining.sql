-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 03, 2005 at 08:30 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `vertical_mining`
--
CREATE DATABASE IF NOT EXISTS `vertical_mining` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `vertical_mining`;

-- --------------------------------------------------------

--
-- Table structure for table `admins_uploadmodel`
--

CREATE TABLE IF NOT EXISTS `admins_uploadmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `admins_uploadmodel`
--

INSERT INTO `admins_uploadmodel` (`id`, `vendor`, `category`, `product_name`) VALUES
(1, 'xiaomi', 'Electronic Devices', 'Redmi note 4'),
(3, 'Dell', 'Electronic Devices', 'Laptop'),
(4, 'Burberry', 'Clothes', 'jeans pant'),
(5, 'Burberry', 'Clothes', 'T-shirt'),
(6, 'Burberry', 'Clothes', 'Formal Shirt'),
(7, 'Burberry', 'Clothes', 'Casual Shirt'),
(8, 'Xiaomi', 'Electronic Devices', 'Redmi Note5'),
(9, 'Xiaomi', 'Electronic Devices', 'Health Band'),
(10, 'Xiaomi', 'Electronic Devices', 'Head Phones'),
(11, 'Xiaomi', 'Electronic Devices', 'HeadSet'),
(12, 'Xiaomi', 'Electronic Devices', 'TV'),
(13, 'Burger King', 'Food', 'Veg Burger'),
(14, 'Burger King', 'Food', 'Nonveg Burger ');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add register model', 7, 'add_registermodel'),
(20, 'Can change register model', 7, 'change_registermodel'),
(21, 'Can delete register model', 7, 'delete_registermodel'),
(22, 'Can add upload model', 8, 'add_uploadmodel'),
(23, 'Can change upload model', 8, 'change_uploadmodel'),
(24, 'Can delete upload model', 8, 'delete_uploadmodel'),
(25, 'Can add four_ product model', 9, 'add_four_productmodel'),
(26, 'Can change four_ product model', 9, 'change_four_productmodel'),
(27, 'Can delete four_ product model', 9, 'delete_four_productmodel'),
(28, 'Can add two_ product model', 10, 'add_two_productmodel'),
(29, 'Can change two_ product model', 10, 'change_two_productmodel'),
(30, 'Can delete two_ product model', 10, 'delete_two_productmodel'),
(31, 'Can add three_ product model', 11, 'add_three_productmodel'),
(32, 'Can change three_ product model', 11, 'change_three_productmodel'),
(33, 'Can delete three_ product model', 11, 'delete_three_productmodel'),
(34, 'Can add feedback model', 12, 'add_feedbackmodel'),
(35, 'Can change feedback model', 12, 'change_feedbackmodel'),
(36, 'Can delete feedback model', 12, 'delete_feedbackmodel');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(8, 'admins', 'uploadmodel'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(12, 'user', 'feedbackmodel'),
(9, 'user', 'four_productmodel'),
(7, 'user', 'registermodel'),
(11, 'user', 'three_productmodel'),
(10, 'user', 'two_productmodel');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-02-27 14:45:03.977830'),
(2, 'auth', '0001_initial', '2019-02-27 14:45:41.968036'),
(3, 'admin', '0001_initial', '2019-02-27 14:45:46.368447'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-02-27 14:45:46.586847'),
(5, 'contenttypes', '0002_remove_content_type_name', '2019-02-27 14:45:51.933260'),
(6, 'auth', '0002_alter_permission_name_max_length', '2019-02-27 14:45:52.619661'),
(7, 'auth', '0003_alter_user_email_max_length', '2019-02-27 14:45:53.244063'),
(8, 'auth', '0004_alter_user_username_opts', '2019-02-27 14:45:53.275263'),
(9, 'auth', '0005_alter_user_last_login_null', '2019-02-27 14:45:53.870064'),
(10, 'auth', '0006_require_contenttypes_0002', '2019-02-27 14:45:53.901264'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2019-02-27 14:45:53.932464'),
(12, 'auth', '0008_alter_user_username_max_length', '2019-02-27 14:46:00.618479'),
(13, 'sessions', '0001_initial', '2019-02-27 14:46:02.119483'),
(14, 'user', '0001_initial', '2019-02-27 14:46:02.947685'),
(15, 'admins', '0001_initial', '2019-03-01 05:49:01.496348'),
(16, 'user', '0002_four_productmodel_three_productmodel_two_productmodel', '2019-03-01 13:22:41.567019'),
(17, 'user', '0003_feedbackmodel', '2019-03-03 06:19:54.403760');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('ba0zlj7fjraz327jejkwqhgo78npd5zv', 'ZjI2MTY4NTkwYTYzMjA1MTM0MGU2OGUyYjUzZTM4OTBmOTEwOWYwMDp7InVzZXJpZCI6MX0=', '2019-03-14 05:52:21.587733'),
('jv0l080oz7hns0yiwvzpqmpv6wzskzgd', 'ZGQxNTcwNWYyY2VmYjUzMjEwNDc3N2RkNDk2ODhiODNhZTMzMGY0NTp7InVzZXJpZCI6MSwiZHMiOiJGYXNoaW9uIn0=', '2019-03-15 10:01:11.545737'),
('ku4s1no45opprms0mftmc8mm9v0m0166', 'N2EyYWFlOGU0MGZiYTc2MTMzZDgzODdhYWRlMDE5MzcxZTk1M2ZmNjp7InVzZXJpZCI6MSwiZHMiOiJDbG90aGVzIn0=', '2019-03-17 08:17:46.914049');

-- --------------------------------------------------------

--
-- Table structure for table `user_feedbackmodel`
--

CREATE TABLE IF NOT EXISTS `user_feedbackmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feedback` varchar(300) NOT NULL,
  `usernames_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_feedbackmodel_usernames_id_cf5232ba_fk_user_regi` (`usernames_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_feedbackmodel`
--

INSERT INTO `user_feedbackmodel` (`id`, `feedback`, `usernames_id`) VALUES
(1, ' Thank you', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_four_productmodel`
--

CREATE TABLE IF NOT EXISTS `user_four_productmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_namees` varchar(200) NOT NULL,
  `usidse_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_four_productmod_usidse_id_b8a5285b_fk_user_regi` (`usidse_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `user_four_productmodel`
--

INSERT INTO `user_four_productmodel` (`id`, `pro_namees`, `usidse_id`) VALUES
(1, 'Redmi Note5,Health Band,Head Phones,HeadSet', 1),
(2, 'Redmi Note5,Health Band,Head Phones,HeadSet', 1),
(3, 'Redmi Note5,Health Band,Head Phones,HeadSet', 1),
(4, 'Redmi Note5,Health Band,Head Phones,HeadSet', 1),
(5, 'Redmi Note5,Health Band,Head Phones,HeadSet', 1),
(6, 'Health Band,Head Phones,Redmi Note5,HeadSet', 1),
(7, 'Health Band,Head Phones,HeadSet,Redmi Note5', 1),
(8, 'Health Band,Head Phones,HeadSet,Redmi Note5', 1),
(9, 'T-shirt,Formal Shirt,jeans pant,Casual Shirt', 1),
(10, 'T-shirt,jeans pant,Formal Shirt,Casual Shirt', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_registermodel`
--

CREATE TABLE IF NOT EXISTS `user_registermodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(300) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `userid` varchar(200) NOT NULL,
  `password` int(11) NOT NULL,
  `mblenum` bigint(20) NOT NULL,
  `email` varchar(400) NOT NULL,
  `gender` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user_registermodel`
--

INSERT INTO `user_registermodel` (`id`, `firstname`, `lastname`, `userid`, `password`, `mblenum`, `email`, `gender`) VALUES
(1, 'santhosh', 'kumar', 'santhosh', 1998, 9789672189, 'sanarinathan1350@gmail.com', 'male'),
(2, 'sabari', 'nathan', 'sabari', 1997, 9789672189, 'sabarinathan1350@gmail.com', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `user_three_productmodel`
--

CREATE TABLE IF NOT EXISTS `user_three_productmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_names` varchar(200) NOT NULL,
  `usids_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_three_productmo_usids_id_3648cee6_fk_user_regi` (`usids_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `user_three_productmodel`
--

INSERT INTO `user_three_productmodel` (`id`, `pro_names`, `usids_id`) VALUES
(1, 'jeans pant,T-shirt,Formal Shirt', 1),
(2, 'jeans pant,T-shirt,Formal Shirt', 1),
(3, 'jeans pant,T-shirt,Formal Shirt', 1),
(4, 'jeans pant,T-shirt,Formal Shirt', 1),
(5, 'Formal Shirt,T-shirt,jeans pant', 1),
(6, 'Casual Shirt,T-shirt,jeans pant', 1),
(7, 'Casual Shirt,T-shirt,jeans pant', 1),
(8, 'Formal Shirt,Casual Shirt,T-shirt', 1),
(9, 'jeans pant,T-shirt,Casual Shirt', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_two_productmodel`
--

CREATE TABLE IF NOT EXISTS `user_two_productmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_name` varchar(200) NOT NULL,
  `usid_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_two_productmodel_usid_id_42e04135_fk_user_registermodel_id` (`usid_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `user_two_productmodel`
--

INSERT INTO `user_two_productmodel` (`id`, `pro_name`, `usid_id`) VALUES
(1, 'Redmi note 4,Redmi note 4', 1),
(2, 'Redmi note 4,Redmi note 4', 1),
(3, 'jeans pant,T-shirt', 1),
(4, 'jeans pant,T-shirt', 1),
(5, 'jeans pant,T-shirt', 1),
(6, 'jeans pant,T-shirt', 1),
(7, 'jeans pant,jeans pant', 1),
(8, 'jeans pant,T-shirt', 1),
(9, 'jeans pant,T-shirt', 1),
(10, 'jeans pant,T-shirt', 1),
(11, 'jeans pant,T-shirt', 1),
(12, 'jeans pant,T-shirt', 1),
(13, 'jeans pant,T-shirt', 1),
(14, 'Casual Shirt,jeans pant', 1),
(15, 'Casual Shirt,jeans pant', 1),
(16, 'Casual Shirt,jeans pant', 1),
(17, 'Casual Shirt,jeans pant', 1),
(18, 'Casual Shirt,jeans pant', 1),
(19, 'Formal Shirt,Casual Shirt', 1),
(20, 'Formal Shirt,Casual Shirt', 1),
(21, 'Formal Shirt,Casual Shirt', 1),
(22, 'T-shirt,Casual Shirt', 1),
(23, 'T-shirt,Casual Shirt', 1),
(24, 'T-shirt,Casual Shirt', 1),
(25, 'T-shirt,Casual Shirt', 1),
(26, 'T-shirt,Formal Shirt', 1),
(27, 'jeans pant,T-shirt', 1),
(28, 'T-shirt,Formal Shirt', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `user_feedbackmodel`
--
ALTER TABLE `user_feedbackmodel`
  ADD CONSTRAINT `user_feedbackmodel_usernames_id_cf5232ba_fk_user_regi` FOREIGN KEY (`usernames_id`) REFERENCES `user_registermodel` (`id`);

--
-- Constraints for table `user_four_productmodel`
--
ALTER TABLE `user_four_productmodel`
  ADD CONSTRAINT `user_four_productmod_usidse_id_b8a5285b_fk_user_regi` FOREIGN KEY (`usidse_id`) REFERENCES `user_registermodel` (`id`);

--
-- Constraints for table `user_three_productmodel`
--
ALTER TABLE `user_three_productmodel`
  ADD CONSTRAINT `user_three_productmo_usids_id_3648cee6_fk_user_regi` FOREIGN KEY (`usids_id`) REFERENCES `user_registermodel` (`id`);

--
-- Constraints for table `user_two_productmodel`
--
ALTER TABLE `user_two_productmodel`
  ADD CONSTRAINT `user_two_productmodel_usid_id_42e04135_fk_user_registermodel_id` FOREIGN KEY (`usid_id`) REFERENCES `user_registermodel` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
