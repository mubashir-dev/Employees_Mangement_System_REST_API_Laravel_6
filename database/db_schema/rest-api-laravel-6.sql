-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 24, 2021 at 06:07 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rest-api-laravel-6`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `fixed_pay` int(10) UNSIGNED NOT NULL,
  `incentive` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'R and D', 'None', NULL, NULL),
(2, 'Web Development', 'None', NULL, NULL),
(3, 'Game Development', '', NULL, NULL),
(4, '', 'Desktop ', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cnic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dept_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `employee_id`, `name`, `email`, `contact`, `cnic`, `address`, `dept_id`, `created_at`, `updated_at`) VALUES
(2, '771-12-3100', 'Prof. Shawn Kilback', 'rodger.leffler@example.com', '(646) 318-1758', '869-24-6104', '3811 Kuhlman Plain Suite 120\nSheridanstad, IL 17641', 1, '2021-02-03 05:57:09', '2021-02-03 05:57:09'),
(3, '083-21-9892', 'Prof. Lorine Kuhn', 'lowell17@example.net', '1-483-433-6161', '805-95-8355', '6525 Johns Via Apt. 066\nJakubowskishire, MI 68749', 1, '2021-02-03 05:57:09', '2021-02-03 05:57:09'),
(4, '128-30-5730', 'Izabella Stehr DVM', 'irutherford@example.com', '1-658-994-1617', '692-54-6226', '78390 Wisoky Extension Apt. 124\nMitchelfort, NV 01647-5130', 1, '2021-02-03 05:57:09', '2021-02-03 05:57:09'),
(5, '768-78-4310', 'Kellie Kilback II', 'hassan75@example.org', '1-582-350-5373', '868-53-3420', '151 Stroman Course Suite 267\nSouth Lawrencefort, VA 23506', 1, '2021-02-03 05:57:09', '2021-02-03 05:57:09'),
(6, '834-63-8317', 'Estella McCullough', 'adela.gutkowski@example.com', '(204) 619-7830', '548-56-4788', '57392 Ayana Burg Suite 376\nPort Bryce, NV 54604', 1, '2021-02-03 05:57:09', '2021-02-03 05:57:09'),
(7, '848-50-7605', 'Mckayla Kulas', 'lyric69@example.net', '(591) 782-0064', '113-36-7795', '808 Jenkins Motorway\nNapoleonhaven, AK 72027-7172', 1, '2021-02-03 05:57:10', '2021-02-03 05:57:10'),
(8, '051-87-6795', 'Prof. Rolando Schultz Sr.', 'marcus45@example.com', '(423) 730-0058', '500-36-5257', '357 Katarina Land Suite 610\nMoenfort, WI 17511', 1, '2021-02-03 05:57:10', '2021-02-03 05:57:10'),
(9, '762-56-6547', 'Prof. Elbert Nitzsche V', 'joannie20@example.net', '349.953.6715', '493-57-3078', '608 Bethel Points Suite 794\nVonborough, DE 73285-4511', 1, '2021-02-03 05:57:10', '2021-02-03 05:57:10'),
(10, '350-59-5614', 'Reed Grant', 'vokon@example.org', '+1 (909) 849-2493', '723-76-0039', '2351 Runolfsson Square\nLake Kylee, VT 62332-8542', 1, '2021-02-03 05:57:10', '2021-02-03 05:57:10'),
(11, '757-92-8808', 'Prof. Fern Schinner II', 'murray31@example.net', '+1-691-849-2993', '008-68-4509', '56489 Shields Inlet Suite 847\nGibsonton, AK 92057', 1, '2021-02-03 05:57:10', '2021-02-03 05:57:10'),
(12, '163-15-6559', 'Mrs. Minnie Towne', 'joannie43@example.com', '+1-348-978-8598', '055-31-3566', '6326 Kellie Square Suite 518\nLeschshire, TX 64741', 1, '2021-02-03 05:57:10', '2021-02-03 05:57:10'),
(13, '195-61-9407', 'Darwin Gislason', 'cshanahan@example.com', '470.457.2916', '334-93-6463', '7231 Leopold Cove Apt. 067\nNorth Chloe, KS 93727', 1, '2021-02-03 05:57:10', '2021-02-03 05:57:10'),
(14, '804-99-5345', 'Alex Padberg DVM', 'vmoen@example.net', '+1.594.678.5667', '683-15-6073', '95964 Windler Crescent Apt. 648\nEast Lorenzoside, MT 61955-3277', 1, '2021-02-03 05:57:10', '2021-02-03 05:57:10'),
(15, '522-77-8057', 'Kirsten Wilderman DVM', 'jamie.hermann@example.net', '+12465773941', '817-40-0011', '6808 Harris Islands Suite 890\nPort Raymundoberg, DC 85178-9982', 1, '2021-02-03 05:57:10', '2021-02-03 05:57:10'),
(16, '109-72-6163', 'Sandrine Hayes', 'mertie.gorczany@example.com', '1-827-720-1744', '061-83-6672', '31753 Dudley Oval\nSouth Lexi, WY 78423-1710', 1, '2021-02-03 05:57:10', '2021-02-03 05:57:10'),
(17, '077-48-0073', 'Mr. Demarcus Marks PhD', 'ometz@example.org', '1-797-873-5759', '460-01-0234', '41337 Seamus Mountain\nMosesland, AZ 84466-4016', 1, '2021-02-03 05:57:10', '2021-02-03 05:57:10'),
(18, '670-34-0309', 'Mr. Jairo Klein', 'jacky.connelly@example.com', '+19455618780', '851-78-1348', '5057 Esta Lane Apt. 311\nHomenickfurt, GA 97509-0123', 1, '2021-02-03 05:57:10', '2021-02-03 05:57:10'),
(19, '808-61-5583', 'Prof. Gracie Anderson III', 'hoeger.kane@example.com', '256.640.9408', '361-60-5153', '823 Ron Rest Apt. 216\nEviebury, NV 40531-5538', 1, '2021-02-03 05:57:10', '2021-02-03 05:57:10'),
(20, '811-03-5781', 'Retta Boehm', 'frogahn@example.net', '918-952-4219', '747-64-3744', '391 Mabel Ports Suite 890\nJoshuabury, VA 87050', 1, '2021-02-03 05:57:10', '2021-02-03 05:57:10'),
(21, '001-89-2721', 'Jacklyn Morissette', 'susie.runolfsson@example.net', '836.524.7400', '705-63-7602', '47996 Mills Estate\nWatersfort, KS 76104', 1, '2021-02-03 05:57:10', '2021-02-03 05:57:10'),
(22, '594-81-7911', 'Dr. Francesco Wolf Sr.', 'shaun06@example.org', '1-957-696-0835', '835-62-9402', '3362 Jacklyn Garden Apt. 083\nNew Jamilburgh, FL 23008-1577', 1, '2021-02-03 05:57:10', '2021-02-03 05:57:10'),
(23, '789-64-1831', 'Mr. Giuseppe Schroeder V', 'shyann.roberts@example.net', '350-471-7416', '546-73-1721', '97743 Gwen Flat\nPort Johnson, LA 40438', 1, '2021-02-03 05:57:10', '2021-02-03 05:57:10'),
(24, '418-77-9922', 'Zena Stiedemann Jr.', 'lynch.margret@example.com', '+1-772-826-1021', '241-18-0945', '9144 Murray Fork\nHowellfurt, AK 32450-2136', 1, '2021-02-03 05:57:10', '2021-02-03 05:57:10'),
(25, '895-90-1468', 'Porter Schoen', 'rogahn.lurline@example.org', '203.844.8300', '789-27-8175', '874 Heaney Pass Suite 616\nSouth Brennan, MA 67685-3646', 1, '2021-02-03 05:57:10', '2021-02-03 05:57:10'),
(26, '405-29-8191', 'Damion Beatty', 'dylan.towne@example.com', '+18918227988', '719-10-0511', '8382 Chanel Fort\nLake Judah, OK 71845-7546', 1, '2021-02-03 05:57:10', '2021-02-03 05:57:10'),
(27, '719-51-1657', 'Dock Wiza', 'fredy92@example.org', '286.680.1212', '755-78-1297', '61391 Schneider Glen Suite 687\nLake Ophelia, WV 43396', 1, '2021-02-03 05:57:11', '2021-02-03 05:57:11'),
(28, '715-61-3320', 'Kali Kohler I', 'dan.schowalter@example.org', '+16745547514', '680-64-6062', '79916 Macejkovic Road\nEast Zora, NV 96475', 1, '2021-02-03 05:57:11', '2021-02-03 05:57:11'),
(29, '831-83-2822', 'Mr. Wallace Mosciski', 'yundt.oscar@example.org', '+1-508-831-5319', '536-99-1525', '103 Corkery Meadow Suite 754\nSchowalterberg, ID 15012-5490', 1, '2021-02-03 05:57:11', '2021-02-03 05:57:11'),
(30, '212-21-0406', 'Valerie Langosh', 'oleta.koelpin@example.org', '+1-526-542-8185', '766-29-6588', '934 Reilly Well\nQuentinbury, IL 78696', 1, '2021-02-03 05:57:11', '2021-02-03 05:57:11'),
(31, '619-71-5949', 'Darlene Gleichner', 'demarco85@example.net', '+1 (592) 563-3777', '235-75-2317', '333 Grant Estate\nLake Coybury, MO 48202', 1, '2021-02-03 05:57:11', '2021-02-03 05:57:11'),
(32, '371-42-2197', 'Althea Herzog I', 'zupton@example.com', '+1-829-296-6080', '668-61-6892', '864 Eloisa Crest\nNorth Maudie, TN 45893-0304', 1, '2021-02-03 05:57:11', '2021-02-03 05:57:11'),
(33, '460-89-3497', 'Claudie White', 'wade05@example.com', '+1-236-531-1946', '772-34-5630', '6854 Witting Springs\nNew Kieran, NV 29478', 1, '2021-02-03 05:57:11', '2021-02-03 05:57:11'),
(34, '802-89-6281', 'Augustine Weber', 'qstrosin@example.net', '+1-786-393-6647', '732-21-9231', '413 Schaefer Port Apt. 335\nNew Alanberg, IA 59527', 1, '2021-02-03 05:57:11', '2021-02-03 05:57:11'),
(35, '595-25-4951', 'Nona Blick', 'ncorkery@example.com', '735-214-3317', '749-73-2852', '11003 Hand Skyway Suite 587\nNorth Rozella, WY 38466', 1, '2021-02-03 05:57:11', '2021-02-03 05:57:11'),
(36, '668-59-9998', 'Dexter Turcotte PhD', 'jkutch@example.org', '+1-590-700-9291', '110-27-3634', '155 Little Turnpike Apt. 433\nEast Mortimer, UT 22178-9837', 1, '2021-02-03 05:57:11', '2021-02-03 05:57:11'),
(37, '798-34-6754', 'Mavis Heaney', 'nickolas66@example.net', '521.796.7328', '629-06-0951', '9463 Alfreda Orchard\nMarvinport, ID 50459', 1, '2021-02-03 05:57:11', '2021-02-03 05:57:11'),
(38, '122-80-1864', 'Laurel Rohan', 'candido10@example.net', '912.701.0387', '595-91-1936', '80793 Haley Avenue\nGeorgianaburgh, WA 96958', 1, '2021-02-03 05:57:11', '2021-02-03 05:57:11'),
(39, '851-63-7202', 'Travis Corwin V', 'magali90@example.org', '+1-239-510-3846', '779-72-5989', '214 Denis Plaza\nHansenshire, MS 03586', 1, '2021-02-03 05:57:12', '2021-02-03 05:57:12'),
(40, '341-11-6092', 'Damion Konopelski', 'vicenta.bins@example.com', '+1 (307) 448-1768', '089-77-0317', '16421 McDermott Stravenue\nVicentamouth, VA 20246-5733', 1, '2021-02-03 05:57:12', '2021-02-03 05:57:12'),
(41, '561-08-0920', 'Evert Kemmer Sr.', 'pouros.ethyl@example.org', '+19323220323', '159-56-6771', '5996 Euna Throughway\nHailiebury, FL 58248', 1, '2021-02-03 05:57:12', '2021-02-03 05:57:12'),
(42, '033-11-1652', 'Reymundo Effertz', 'witting.sabryna@example.com', '+18898333006', '885-49-7141', '1362 Terry Isle Apt. 907\nNorth Tevinchester, MS 27883-6779', 1, '2021-02-03 05:57:12', '2021-02-03 05:57:12'),
(43, '849-84-3260', 'Terrance Goyette', 'pascale04@example.com', '+1-432-816-6236', '196-49-2112', '19741 Hilpert Springs\nRathville, TX 18843-2804', 1, '2021-02-03 05:57:12', '2021-02-03 05:57:12'),
(44, '337-40-9849', 'Mr. Domenico McDermott', 'emmett.nitzsche@example.org', '745.843.5840', '820-73-9499', '96589 Smitham Crossing\nLake Laurettashire, WA 97772', 1, '2021-02-03 05:57:12', '2021-02-03 05:57:12'),
(45, '350-86-7240', 'Alvena West', 'hickle.isom@example.com', '510-327-8470', '688-28-9577', '4455 Jast Forge\nNorth Geovanny, TX 96694', 1, '2021-02-03 05:57:12', '2021-02-03 05:57:12'),
(46, '580-15-5949', 'Maye Kutch', 'eunice32@example.com', '+1.878.442.8701', '786-71-5525', '81885 Jenkins Forges Apt. 834\nLake Ellie, SC 99430-8417', 1, '2021-02-03 05:57:12', '2021-02-03 05:57:12'),
(47, '895-99-1847', 'Myrtle Medhurst', 'wolf.lukas@example.com', '+1.371.405.7364', '588-12-6998', '632 Goodwin Squares Apt. 846\nArnulfoton, AL 49521-6835', 1, '2021-02-03 05:57:12', '2021-02-03 05:57:12'),
(48, '878-13-8396', 'Viola Auer', 'adan94@example.net', '869-253-0341', '343-96-5347', '9597 Dax Rapids Apt. 684\nLake Deja, IA 89990-2050', 1, '2021-02-03 05:57:12', '2021-02-03 05:57:12'),
(49, '669-86-8434', 'Ken Cole', 'mireya44@example.com', '632.482.7451', '687-56-4522', '529 Zelda Squares Suite 059\nNorth Louvenia, MN 36991-9141', 1, '2021-02-03 05:57:12', '2021-02-03 05:57:12'),
(50, '703-58-8690', 'Manuel Crist', 'kgoldner@example.net', '780-495-2283', '194-56-5132', '369 Maribel Expressway\nKatherinebury, MI 03214', 1, '2021-02-03 05:57:12', '2021-02-03 05:57:12'),
(51, '776-82-3934', 'Hailey Wiza', 'pascale.zemlak@example.org', '+1 (498) 315-1926', '247-49-3090', '88347 Bryce Station\nHudsonville, MN 98415', 1, '2021-02-03 05:57:12', '2021-02-03 05:57:12'),
(52, '122-222-1002', 'Mubashir Ali', 'mubashir@gmail.com', '0999999222', '111-222-111-22', 'Abbottabad', 2, '2021-02-03 06:33:13', '2021-02-03 06:33:13'),
(54, '122-222-1003', 'Malik Asad Ahmed Khan', 'asad@gmail.com', '00000000000', '111-222-111-24', 'Abbottabad Pk', 2, '2021-02-03 07:38:37', '2021-02-03 07:38:37'),
(55, '122-222-1013', 'Hasan Nawaz Khan', 'hnk@gmail.com', '00000000001', '111-222-111-25', 'Abbottabad Pk', 3, '2021-02-03 12:36:53', '2021-02-03 12:36:53');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_01_03_095732_create_department_table', 1),
(5, '2021_02_03_092540_create_employee_table', 1),
(6, '2021_02_03_095754_create_leaves_table', 1),
(7, '2021_02_03_095809_create_accounts_table', 1),
(8, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(9, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(10, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(11, '2016_06_01_000004_create_oauth_clients_table', 2),
(12, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'zimTZzxHw5d1pdPcS3XZBWZ9tO0eHvzpuJcnCv5p', 'http://localhost', 1, 0, 0, '2021-02-03 14:59:21', '2021-02-03 14:59:21'),
(2, NULL, 'Laravel Password Grant Client', 'ywaGBDP0NLYKAkiGqOVsmpPCFyi6MNvvXyTrW0UT', 'http://localhost', 0, 1, 0, '2021-02-03 14:59:22', '2021-02-03 14:59:22');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-02-03 14:59:22', '2021-02-03 14:59:22');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD UNIQUE KEY `employees_contact_unique` (`contact`),
  ADD UNIQUE KEY `employees_cnic_unique` (`cnic`),
  ADD KEY `employees_dept_id_foreign` (`dept_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leaves_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_dept_id_foreign` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`id`);

--
-- Constraints for table `leaves`
--
ALTER TABLE `leaves`
  ADD CONSTRAINT `leaves_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
