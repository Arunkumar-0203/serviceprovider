-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2021 at 12:53 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `servicenew123`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
`id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
`id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add user type', 7, 'add_usertype'),
(26, 'Can change user type', 7, 'change_usertype'),
(27, 'Can delete user type', 7, 'delete_usertype'),
(28, 'Can view user type', 7, 'view_usertype'),
(29, 'Can add user reg', 8, 'add_userreg'),
(30, 'Can change user reg', 8, 'change_userreg'),
(31, 'Can delete user reg', 8, 'delete_userreg'),
(32, 'Can view user reg', 8, 'view_userreg'),
(33, 'Can add shop reg', 9, 'add_shopreg'),
(34, 'Can change shop reg', 9, 'change_shopreg'),
(35, 'Can delete shop reg', 9, 'delete_shopreg'),
(36, 'Can view shop reg', 9, 'view_shopreg'),
(37, 'Can add category', 10, 'add_category'),
(38, 'Can change category', 10, 'change_category'),
(39, 'Can delete category', 10, 'delete_category'),
(40, 'Can view category', 10, 'view_category'),
(41, 'Can add product', 11, 'add_product'),
(42, 'Can change product', 11, 'change_product'),
(43, 'Can delete product', 11, 'delete_product'),
(44, 'Can view product', 11, 'view_product'),
(45, 'Can add delivery boy', 12, 'add_deliveryboy'),
(46, 'Can change delivery boy', 12, 'change_deliveryboy'),
(47, 'Can delete delivery boy', 12, 'delete_deliveryboy'),
(48, 'Can view delivery boy', 12, 'view_deliveryboy'),
(49, 'Can add cart', 13, 'add_cart'),
(50, 'Can change cart', 13, 'change_cart'),
(51, 'Can delete cart', 13, 'delete_cart'),
(52, 'Can view cart', 13, 'view_cart'),
(53, 'Can add user buy', 14, 'add_userbuy'),
(54, 'Can change user buy', 14, 'change_userbuy'),
(55, 'Can delete user buy', 14, 'delete_userbuy'),
(56, 'Can view user buy', 14, 'view_userbuy'),
(57, 'Can add feedback', 15, 'add_feedback'),
(58, 'Can change feedback', 15, 'change_feedback'),
(59, 'Can delete feedback', 15, 'delete_feedback'),
(60, 'Can view feedback', 15, 'view_feedback');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
`id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$jUeFrnrN11RU7NkfaXqMWv$j4IJUhWx8PnP4ctE13iCcStnXchfZYswXPhvaEeexuI=', '2021-04-21 10:41:45.795261', 1, 'admin', '', '1', 'admin@gmail.com', 1, 1, '2021-04-20 20:23:33.586145'),
(2, 'pbkdf2_sha256$260000$c7F64k5tDHcW3fSrqk9RI3$c+cf8ifoHxjPj5DCl5zgarhctLx2NsCix7yqAzZDeQA=', '2021-04-21 04:34:58.352268', 0, 'arun', 'arun', '1', 'arunkumarthanikkunel@gmail.com', 0, 1, '2021-04-20 20:24:53.124216'),
(3, 'pbkdf2_sha256$260000$Ab7EWTsSiihzAfj0YNxSrf$uXiP7phWzYqajs3ZxBYQ154aEB28UOJEoKc+QUaTRXA=', '2021-04-21 10:43:12.728833', 0, 'bismi', 'bismi', '1', 'bismi@gmail.com', 0, 1, '2021-04-20 20:25:16.565259'),
(4, 'pbkdf2_sha256$260000$950QEQF68xDX5I6FH796RG$FejlbuqwK34SdlbT9X1vNkZbOFpNnSWVxS3INp5gs+E=', '2021-04-21 10:52:31.638716', 0, 'kumar', 'kumar', '1', 'kumar@gmail.com', 0, 1, '2021-04-20 21:00:23.038385');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
`id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
`id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
`id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
`id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(13, 'serviceprovider_app', 'cart'),
(10, 'serviceprovider_app', 'category'),
(12, 'serviceprovider_app', 'deliveryboy'),
(15, 'serviceprovider_app', 'feedback'),
(11, 'serviceprovider_app', 'product'),
(9, 'serviceprovider_app', 'shopreg'),
(14, 'serviceprovider_app', 'userbuy'),
(8, 'serviceprovider_app', 'userreg'),
(7, 'serviceprovider_app', 'usertype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
`id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-04-20 20:21:14.891369'),
(2, 'auth', '0001_initial', '2021-04-20 20:21:16.078454'),
(3, 'admin', '0001_initial', '2021-04-20 20:21:16.343478'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-04-20 20:21:16.368495'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-04-20 20:21:16.387477'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-04-20 20:21:16.597494'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-04-20 20:21:16.694499'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-04-20 20:21:16.794507'),
(9, 'auth', '0004_alter_user_username_opts', '2021-04-20 20:21:16.821509'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-04-20 20:21:16.928518'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-04-20 20:21:16.937517'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-04-20 20:21:16.960522'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-04-20 20:21:17.043527'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-04-20 20:21:17.134533'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-04-20 20:21:17.232543'),
(16, 'auth', '0011_update_proxy_permissions', '2021-04-20 20:21:17.252544'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-04-20 20:21:17.349549'),
(18, 'serviceprovider_app', '0001_initial', '2021-04-20 20:21:17.846586'),
(19, 'serviceprovider_app', '0002_auto_20210417_2311', '2021-04-20 20:21:18.110609'),
(20, 'serviceprovider_app', '0003_auto_20210417_2312', '2021-04-20 20:21:18.288616'),
(21, 'serviceprovider_app', '0004_auto_20210417_2313', '2021-04-20 20:21:18.549636'),
(22, 'serviceprovider_app', '0005_category_product', '2021-04-20 20:21:18.833657'),
(23, 'serviceprovider_app', '0006_auto_20210418_1054', '2021-04-20 20:21:19.036672'),
(24, 'serviceprovider_app', '0007_product_user', '2021-04-20 20:21:19.150698'),
(25, 'serviceprovider_app', '0008_category_user', '2021-04-20 20:21:19.267695'),
(26, 'serviceprovider_app', '0009_deliveryboy', '2021-04-20 20:21:19.450701'),
(27, 'serviceprovider_app', '0010_cart', '2021-04-20 20:21:19.708720'),
(28, 'serviceprovider_app', '0011_cart_shop', '2021-04-20 20:21:19.829729'),
(29, 'serviceprovider_app', '0012_remove_cart_shop', '2021-04-20 20:21:19.936739'),
(30, 'serviceprovider_app', '0013_cart_total', '2021-04-20 20:21:20.040745'),
(31, 'serviceprovider_app', '0014_remove_cart_billstatus', '2021-04-20 20:21:20.142754'),
(32, 'serviceprovider_app', '0015_cart_quantity', '2021-04-20 20:21:20.247761'),
(33, 'serviceprovider_app', '0016_userbuy', '2021-04-20 20:21:20.507781'),
(34, 'serviceprovider_app', '0017_product_shop', '2021-04-20 20:21:20.649790'),
(35, 'serviceprovider_app', '0018_remove_product_shop', '2021-04-20 20:21:20.778800'),
(36, 'serviceprovider_app', '0019_product_shop', '2021-04-20 20:21:20.920810'),
(37, 'serviceprovider_app', '0020_alter_product_shop', '2021-04-20 20:21:21.063821'),
(38, 'serviceprovider_app', '0021_feedback', '2021-04-20 20:21:21.340842'),
(39, 'serviceprovider_app', '0022_auto_20210421_0017', '2021-04-20 20:21:21.587859'),
(40, 'serviceprovider_app', '0023_alter_userbuy_user', '2021-04-20 20:21:21.729869'),
(41, 'serviceprovider_app', '0024_alter_userbuy_user', '2021-04-20 20:21:22.024890'),
(42, 'serviceprovider_app', '0025_alter_userbuy_user', '2021-04-20 20:21:22.233907'),
(43, 'serviceprovider_app', '0026_auto_20210421_0114', '2021-04-20 20:21:22.517927'),
(44, 'serviceprovider_app', '0027_alter_cart_userr', '2021-04-20 20:21:22.815952'),
(45, 'sessions', '0001_initial', '2021-04-20 20:21:22.945959'),
(46, 'serviceprovider_app', '0028_auto_20210421_0212', '2021-04-20 20:43:01.773702'),
(47, 'serviceprovider_app', '0029_rename_user_feedback_use', '2021-04-20 20:43:32.309332'),
(48, 'serviceprovider_app', '0030_userbuy_dl', '2021-04-21 04:30:53.241051');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('75arren9hrm79conjgr3k8jqkg33u6f7', '.eJxVjEEOwiAQRe_C2hCYUAou3XsGMgMzUjU0Ke3KeHdt0oVu_3vvv1TCba1p67ykqaizcur0uxHmB7cdlDu226zz3NZlIr0r-qBdX-fCz8vh_h1U7PVbB8CBmLLPhFFCtJE9exEGNw7FCZG4aB0YkOA9GTICHIEQ2FqOo3p_AA8hOKA:1lZAT9:6RqlrEVLp564vIgbzqTqVwZPuPGcehYSZ8dfkHtT4t8', '2021-05-05 10:52:31.656721');

-- --------------------------------------------------------

--
-- Table structure for table `serviceprovider_app_cart`
--

CREATE TABLE IF NOT EXISTS `serviceprovider_app_cart` (
`id` bigint(20) NOT NULL,
  `payment` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `delivery` varchar(100) DEFAULT NULL,
  `Product_id` bigint(20) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `quantity` varchar(100) DEFAULT NULL,
  `USERR_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `serviceprovider_app_cart`
--

INSERT INTO `serviceprovider_app_cart` (`id`, `payment`, `status`, `delivery`, `Product_id`, `total`, `quantity`, `USERR_id`) VALUES
(1, 'paid', 'cart', 'null', 3, '70', '1', 1),
(2, 'paid', 'cart', 'null', 7, '2468', '2', 1),
(3, 'null', 'cart', 'null', 3, '70', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `serviceprovider_app_category`
--

CREATE TABLE IF NOT EXISTS `serviceprovider_app_category` (
`id` bigint(20) NOT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `serviceprovider_app_category`
--

INSERT INTO `serviceprovider_app_category` (`id`, `Category`, `status`, `user_id`) VALUES
(1, 'spices', 'null', 3),
(2, 'Rice', 'null', 3),
(3, 'Fruits', 'null', 3),
(4, 'vegetables', 'null', 3);

-- --------------------------------------------------------

--
-- Table structure for table `serviceprovider_app_deliveryboy`
--

CREATE TABLE IF NOT EXISTS `serviceprovider_app_deliveryboy` (
`id` bigint(20) NOT NULL,
  `DOB` date DEFAULT NULL,
  `ADDRESS` varchar(100) DEFAULT NULL,
  `PHONE` varchar(100) DEFAULT NULL,
  `PLACE` varchar(100) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `serviceprovider_app_deliveryboy`
--

INSERT INTO `serviceprovider_app_deliveryboy` (`id`, `DOB`, `ADDRESS`, `PHONE`, `PLACE`, `user_id`) VALUES
(1, '2222-04-04', 'gdgd', '9562586957', 'muvatupuzhya', 4);

-- --------------------------------------------------------

--
-- Table structure for table `serviceprovider_app_feedback`
--

CREATE TABLE IF NOT EXISTS `serviceprovider_app_feedback` (
`id` bigint(20) NOT NULL,
  `feed` varchar(100) DEFAULT NULL,
  `SHOP_id` bigint(20) NOT NULL,
  `USE_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `serviceprovider_app_feedback`
--

INSERT INTO `serviceprovider_app_feedback` (`id`, `feed`, `SHOP_id`, `USE_id`) VALUES
(1, 'ss', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `serviceprovider_app_product`
--

CREATE TABLE IF NOT EXISTS `serviceprovider_app_product` (
`id` bigint(20) NOT NULL,
  `pname` varchar(30) DEFAULT NULL,
  `bname` varchar(30) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `Cat_id` bigint(20) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `shop_id` bigint(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `serviceprovider_app_product`
--

INSERT INTO `serviceprovider_app_product` (`id`, `pname`, `bname`, `price`, `img`, `stock`, `Cat_id`, `status`, `user_id`, `shop_id`) VALUES
(1, 'chilli', 'MDR', 70, 'chillispices_zgNe62H.jpg', 60, 1, 'null', 3, 1),
(2, 'Coriander', 'nirappara', 75, 'corianderimage_qvz3Pul.jpg', 60, 1, 'null', 3, 1),
(3, 'Coriander', 'assad', 70, 'corianderimage_vIlDBlZ.jpg', 67, 1, 'null', 3, 1),
(4, 'turmeric', 'nirappara', 100, 'turmericimage.jpg', 70, 1, 'null', 3, 1),
(5, 'Basmati', 'celibration', 1234, 'baba_Q837IgR.jpg', 60, 2, 'null', 3, 1),
(6, 'matta', 'India gate', 1500, 'rice3_0614SQR.jfif', 60, 2, 'null', 3, 1),
(7, 'aaaaaa', 'India gate', 1234, 'rice1_MzVt4ob.jfif', 48, 2, 'null', 3, 1),
(8, 'Brownlight', 'MDR', 1200, 'images.jfif', 60, 2, 'null', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `serviceprovider_app_shopreg`
--

CREATE TABLE IF NOT EXISTS `serviceprovider_app_shopreg` (
`id` bigint(20) NOT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Phone` varchar(100) DEFAULT NULL,
  `aaddress` varchar(100) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `Place` varchar(100) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `serviceprovider_app_shopreg`
--

INSERT INTO `serviceprovider_app_shopreg` (`id`, `Address`, `Phone`, `aaddress`, `user_id`, `Place`) VALUES
(1, 'assdasdd', '9562586957', 'adef', 3, 'kottayam');

-- --------------------------------------------------------

--
-- Table structure for table `serviceprovider_app_userbuy`
--

CREATE TABLE IF NOT EXISTS `serviceprovider_app_userbuy` (
`id` bigint(20) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `delivery` varchar(100) DEFAULT NULL,
  `prodt_id` bigint(20) DEFAULT NULL,
  `USER_id` bigint(20) DEFAULT NULL,
  `Dl_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `serviceprovider_app_userbuy`
--

INSERT INTO `serviceprovider_app_userbuy` (`id`, `status`, `delivery`, `prodt_id`, `USER_id`, `Dl_id`) VALUES
(1, 'paid', 'Order Taked', 3, 1, NULL),
(2, 'paid', 'Order Taked', 3, 1, 1),
(3, 'paid', 'Order Taked', 3, 1, 1),
(4, 'paid', 'null', 7, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `serviceprovider_app_userreg`
--

CREATE TABLE IF NOT EXISTS `serviceprovider_app_userreg` (
`id` bigint(20) NOT NULL,
  `dateofbirth` date DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `place` varchar(100) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `serviceprovider_app_userreg`
--

INSERT INTO `serviceprovider_app_userreg` (`id`, `dateofbirth`, `address`, `phone`, `place`, `user_id`) VALUES
(1, '1111-11-11', 'gdgd', '9562586957', 'muvatupuzhya', 2);

-- --------------------------------------------------------

--
-- Table structure for table `serviceprovider_app_usertype`
--

CREATE TABLE IF NOT EXISTS `serviceprovider_app_usertype` (
`id` bigint(20) NOT NULL,
  `type` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `serviceprovider_app_usertype`
--

INSERT INTO `serviceprovider_app_usertype` (`id`, `type`, `user_id`) VALUES
(1, 'user', 2),
(2, 'shop', 3),
(3, 'delivery', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`), ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`), ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`), ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
 ADD PRIMARY KEY (`id`), ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`), ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
 ADD PRIMARY KEY (`session_key`), ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `serviceprovider_app_cart`
--
ALTER TABLE `serviceprovider_app_cart`
 ADD PRIMARY KEY (`id`), ADD KEY `serviceprovider_app__Product_id_fc71be87_fk_servicepr` (`Product_id`), ADD KEY `serviceprovider_app__USERR_id_d1627049_fk_servicepr` (`USERR_id`);

--
-- Indexes for table `serviceprovider_app_category`
--
ALTER TABLE `serviceprovider_app_category`
 ADD PRIMARY KEY (`id`), ADD KEY `serviceprovider_app_category_user_id_964cb83f_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `serviceprovider_app_deliveryboy`
--
ALTER TABLE `serviceprovider_app_deliveryboy`
 ADD PRIMARY KEY (`id`), ADD KEY `serviceprovider_app_deliveryboy_user_id_1520c0e3_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `serviceprovider_app_feedback`
--
ALTER TABLE `serviceprovider_app_feedback`
 ADD PRIMARY KEY (`id`), ADD KEY `serviceprovider_app__SHOP_id_45007cab_fk_servicepr` (`SHOP_id`), ADD KEY `serviceprovider_app__USE_id_db6de29a_fk_servicepr` (`USE_id`);

--
-- Indexes for table `serviceprovider_app_product`
--
ALTER TABLE `serviceprovider_app_product`
 ADD PRIMARY KEY (`id`), ADD KEY `serviceprovider_app__Cat_id_8b92bcd9_fk_servicepr` (`Cat_id`), ADD KEY `serviceprovider_app_product_user_id_459dc1d9_fk_auth_user_id` (`user_id`), ADD KEY `serviceprovider_app__shop_id_a770505e_fk_servicepr` (`shop_id`);

--
-- Indexes for table `serviceprovider_app_shopreg`
--
ALTER TABLE `serviceprovider_app_shopreg`
 ADD PRIMARY KEY (`id`), ADD KEY `serviceprovider_app_shopreg_user_id_ad488019_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `serviceprovider_app_userbuy`
--
ALTER TABLE `serviceprovider_app_userbuy`
 ADD PRIMARY KEY (`id`), ADD KEY `serviceprovider_app__prodt_id_fa721bd4_fk_servicepr` (`prodt_id`), ADD KEY `serviceprovider_app__USER_id_9c398db0_fk_servicepr` (`USER_id`), ADD KEY `serviceprovider_app__Dl_id_9cabe7a4_fk_servicepr` (`Dl_id`);

--
-- Indexes for table `serviceprovider_app_userreg`
--
ALTER TABLE `serviceprovider_app_userreg`
 ADD PRIMARY KEY (`id`), ADD KEY `serviceprovider_app_userreg_user_id_9183e201_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `serviceprovider_app_usertype`
--
ALTER TABLE `serviceprovider_app_usertype`
 ADD PRIMARY KEY (`id`), ADD KEY `serviceprovider_app_usertype_user_id_0b9eae5d_fk_auth_user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `serviceprovider_app_cart`
--
ALTER TABLE `serviceprovider_app_cart`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `serviceprovider_app_category`
--
ALTER TABLE `serviceprovider_app_category`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `serviceprovider_app_deliveryboy`
--
ALTER TABLE `serviceprovider_app_deliveryboy`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `serviceprovider_app_feedback`
--
ALTER TABLE `serviceprovider_app_feedback`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `serviceprovider_app_product`
--
ALTER TABLE `serviceprovider_app_product`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `serviceprovider_app_shopreg`
--
ALTER TABLE `serviceprovider_app_shopreg`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `serviceprovider_app_userbuy`
--
ALTER TABLE `serviceprovider_app_userbuy`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `serviceprovider_app_userreg`
--
ALTER TABLE `serviceprovider_app_userreg`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `serviceprovider_app_usertype`
--
ALTER TABLE `serviceprovider_app_usertype`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

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
ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `serviceprovider_app_cart`
--
ALTER TABLE `serviceprovider_app_cart`
ADD CONSTRAINT `serviceprovider_app__Product_id_fc71be87_fk_servicepr` FOREIGN KEY (`Product_id`) REFERENCES `serviceprovider_app_product` (`id`),
ADD CONSTRAINT `serviceprovider_app__USERR_id_d1627049_fk_servicepr` FOREIGN KEY (`USERR_id`) REFERENCES `serviceprovider_app_userreg` (`id`);

--
-- Constraints for table `serviceprovider_app_category`
--
ALTER TABLE `serviceprovider_app_category`
ADD CONSTRAINT `serviceprovider_app_category_user_id_964cb83f_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `serviceprovider_app_deliveryboy`
--
ALTER TABLE `serviceprovider_app_deliveryboy`
ADD CONSTRAINT `serviceprovider_app_deliveryboy_user_id_1520c0e3_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `serviceprovider_app_feedback`
--
ALTER TABLE `serviceprovider_app_feedback`
ADD CONSTRAINT `serviceprovider_app__SHOP_id_45007cab_fk_servicepr` FOREIGN KEY (`SHOP_id`) REFERENCES `serviceprovider_app_shopreg` (`id`),
ADD CONSTRAINT `serviceprovider_app__USE_id_db6de29a_fk_servicepr` FOREIGN KEY (`USE_id`) REFERENCES `serviceprovider_app_userreg` (`id`);

--
-- Constraints for table `serviceprovider_app_product`
--
ALTER TABLE `serviceprovider_app_product`
ADD CONSTRAINT `serviceprovider_app__Cat_id_8b92bcd9_fk_servicepr` FOREIGN KEY (`Cat_id`) REFERENCES `serviceprovider_app_category` (`id`),
ADD CONSTRAINT `serviceprovider_app__shop_id_a770505e_fk_servicepr` FOREIGN KEY (`shop_id`) REFERENCES `serviceprovider_app_shopreg` (`id`),
ADD CONSTRAINT `serviceprovider_app_product_user_id_459dc1d9_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `serviceprovider_app_shopreg`
--
ALTER TABLE `serviceprovider_app_shopreg`
ADD CONSTRAINT `serviceprovider_app_shopreg_user_id_ad488019_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `serviceprovider_app_userbuy`
--
ALTER TABLE `serviceprovider_app_userbuy`
ADD CONSTRAINT `serviceprovider_app__Dl_id_9cabe7a4_fk_servicepr` FOREIGN KEY (`Dl_id`) REFERENCES `serviceprovider_app_deliveryboy` (`id`),
ADD CONSTRAINT `serviceprovider_app__USER_id_9c398db0_fk_servicepr` FOREIGN KEY (`USER_id`) REFERENCES `serviceprovider_app_userreg` (`id`),
ADD CONSTRAINT `serviceprovider_app__prodt_id_fa721bd4_fk_servicepr` FOREIGN KEY (`prodt_id`) REFERENCES `serviceprovider_app_product` (`id`);

--
-- Constraints for table `serviceprovider_app_userreg`
--
ALTER TABLE `serviceprovider_app_userreg`
ADD CONSTRAINT `serviceprovider_app_userreg_user_id_9183e201_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `serviceprovider_app_usertype`
--
ALTER TABLE `serviceprovider_app_usertype`
ADD CONSTRAINT `serviceprovider_app_usertype_user_id_0b9eae5d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
