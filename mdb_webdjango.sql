-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2022 at 07:55 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mdb_webdjango`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(2, 'Karyawan'),
(1, 'Perpustakaan');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add post', 7, 'add_post'),
(26, 'Can change post', 7, 'change_post'),
(27, 'Can delete post', 7, 'delete_post'),
(28, 'Can view post', 7, 'view_post'),
(29, 'Can add guest', 8, 'add_guest'),
(30, 'Can change guest', 8, 'change_guest'),
(31, 'Can delete guest', 8, 'delete_guest'),
(32, 'Can view guest', 8, 'view_guest'),
(33, 'Can add kategori', 9, 'add_kategori'),
(34, 'Can change kategori', 9, 'change_kategori'),
(35, 'Can delete kategori', 9, 'delete_kategori'),
(36, 'Can view kategori', 9, 'view_kategori');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$s3mPeLVJqn3frXU7G9FVbj$lZnaGEDHkj/+HISCVZUd6an53b6rFYC4RoNIbu5BYz0=', '2022-11-16 06:45:47.730336', 1, 'admin', '', '', 'admin@uts.ac.id', 1, 1, '2022-11-15 09:12:46.307195'),
(2, 'pbkdf2_sha256$390000$0CzI1Q8TwvWvPnLHdvVPRj$/r0Uxfw/Hn1o8IwEPlRoRMRf85811Y17Q1Gx4e+BBJo=', NULL, 0, 'herfandi', 'Herfandi', 'Herfandi', 'herfandi23@uts.ac.id', 1, 1, '2022-11-16 06:46:52.000000'),
(3, 'pbkdf2_sha256$390000$w9m1TkMBsOf2FQYT6dEVUI$bJ9VpawurazkR/f92SjmcmROMDEDQr4szZSvztSdEcs=', NULL, 0, 'noviutami', 'Novi', 'Utami', 'novi@gmail.com', 1, 1, '2022-11-16 06:47:17.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 2, 2),
(2, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `buku_kategori`
--

CREATE TABLE `buku_kategori` (
  `id` bigint(20) NOT NULL,
  `kategori` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku_kategori`
--

INSERT INTO `buku_kategori` (`id`, `kategori`) VALUES
(1, 'satu'),
(2, 'dua'),
(3, 'tiga');

-- --------------------------------------------------------

--
-- Table structure for table `buku_post`
--

CREATE TABLE `buku_post` (
  `id` bigint(20) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `sinopsis` longtext NOT NULL,
  `kategori_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku_post`
--

INSERT INTO `buku_post` (`id`, `judul`, `sinopsis`, `kategori_id`) VALUES
(1, 'AI', 'Artificial Intellegence', 3),
(2, 'ML', 'Machine Learning', 2),
(3, 'DL', 'Deep Learning', 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-11-15 13:00:07.150934', '1', 'Post object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2022-11-15 13:00:15.723636', '2', 'Post object (2)', 1, '[{\"added\": {}}]', 7, 1),
(3, '2022-11-15 13:00:24.387571', '3', 'Post object (3)', 1, '[{\"added\": {}}]', 7, 1),
(4, '2022-11-15 14:17:24.360831', '1', 'a', 1, '[{\"added\": {}}]', 8, 1),
(5, '2022-11-15 14:17:36.038907', '2', 'c', 1, '[{\"added\": {}}]', 8, 1),
(6, '2022-11-15 14:37:45.246241', '1', 'satu', 1, '[{\"added\": {}}]', 9, 1),
(7, '2022-11-15 14:37:48.318166', '2', 'dua', 1, '[{\"added\": {}}]', 9, 1),
(8, '2022-11-15 14:37:51.638077', '3', 'tiga', 1, '[{\"added\": {}}]', 9, 1),
(9, '2022-11-15 14:38:08.169953', '3', 'DL', 2, '[{\"changed\": {\"fields\": [\"Kategori\"]}}]', 7, 1),
(10, '2022-11-15 14:38:11.197856', '2', 'ML', 2, '[{\"changed\": {\"fields\": [\"Kategori\"]}}]', 7, 1),
(11, '2022-11-15 14:38:19.702547', '3', 'tiga', 2, '[]', 9, 1),
(12, '2022-11-15 14:38:28.968011', '3', 'DL', 2, '[]', 7, 1),
(13, '2022-11-15 14:38:30.984608', '2', 'ML', 2, '[]', 7, 1),
(14, '2022-11-15 14:38:46.061994', '1', 'AI', 2, '[{\"changed\": {\"fields\": [\"Kategori\"]}}]', 7, 1),
(15, '2022-11-16 06:46:52.325327', '2', 'herfandi', 1, '[{\"added\": {}}]', 4, 1),
(16, '2022-11-16 06:47:17.829749', '3', 'Noviutami', 1, '[{\"added\": {}}]', 4, 1),
(17, '2022-11-16 06:48:09.392827', '2', 'herfandi', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\"]}}]', 4, 1),
(18, '2022-11-16 06:48:55.125421', '3', 'noviutami', 2, '[{\"changed\": {\"fields\": [\"Username\", \"First name\", \"Last name\", \"Email address\", \"Staff status\"]}}]', 4, 1),
(19, '2022-11-16 06:49:11.004485', '2', 'herfandi', 2, '[]', 4, 1),
(20, '2022-11-16 06:49:13.309062', '3', 'noviutami', 2, '[]', 4, 1),
(21, '2022-11-16 06:50:21.971122', '1', 'Perpustakaan', 1, '[{\"added\": {}}]', 3, 1),
(22, '2022-11-16 06:50:45.071174', '2', 'Karyawan', 1, '[{\"added\": {}}]', 3, 1),
(23, '2022-11-16 06:51:02.503193', '2', 'herfandi', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(24, '2022-11-16 06:51:12.030174', '3', 'noviutami', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(9, 'buku', 'kategori'),
(7, 'buku', 'post'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(8, 'tamu', 'guest');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-11-15 09:11:20.982809'),
(2, 'auth', '0001_initial', '2022-11-15 09:11:21.632244'),
(3, 'admin', '0001_initial', '2022-11-15 09:11:21.802588'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-11-15 09:11:21.815189'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-11-15 09:11:21.835418'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-11-15 09:11:21.898209'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-11-15 09:11:21.960303'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-11-15 09:11:21.973304'),
(9, 'auth', '0004_alter_user_username_opts', '2022-11-15 09:11:21.979319'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-11-15 09:11:22.026346'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-11-15 09:11:22.029300'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-11-15 09:11:22.035285'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-11-15 09:11:22.050453'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-11-15 09:11:22.063392'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-11-15 09:11:22.076565'),
(16, 'auth', '0011_update_proxy_permissions', '2022-11-15 09:11:22.083565'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-11-15 09:11:22.095674'),
(18, 'sessions', '0001_initial', '2022-11-15 09:11:22.135025'),
(19, 'buku', '0001_initial', '2022-11-15 12:36:55.869349'),
(20, 'tamu', '0001_initial', '2022-11-15 14:14:52.212805'),
(21, 'buku', '0002_kategori', '2022-11-15 14:30:52.506898'),
(22, 'buku', '0003_post_kategori', '2022-11-15 14:36:50.503739');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('87vup3wk9ggew7kuhq7jh2c50sgb1xrj', '.eJxVjDsOwjAQBe_iGlk2_i4lPWewdu0FB5AtxUmFuDtESgHtm5n3EgnXpaZ18JymIk5Ci8PvRpgf3DZQ7thuXebelnkiuSlyp0NeeuHneXf_DiqO-q0tlYA-GD6yIQanXQajFShUwVrvooccImQkDkpDtOyCUwVLjldD4MT7A8x7N1o:1ous03:OIhRgdFbsbcEid5djRENY0kadgH1SM2aJ7Dj6h2wFhU', '2022-11-29 09:12:59.921310');

-- --------------------------------------------------------

--
-- Table structure for table `tamu_guest`
--

CREATE TABLE `tamu_guest` (
  `id` bigint(20) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `kegiatan` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tamu_guest`
--

INSERT INTO `tamu_guest` (`id`, `nim`, `nama`, `kegiatan`) VALUES
(1, '123', 'a', 'aaaaaaaaaaaaa'),
(2, '321', 'c', 'ccccccccccc'),
(3, 'dfadsfdsaf', 'fadsfasdf', 'fasdfasdf'),
(4, '4', '44444', '44444444444444444'),
(5, 'dsfadsaf', 'fsadfdsaf', 'dsfsadfafsd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `buku_kategori`
--
ALTER TABLE `buku_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buku_post`
--
ALTER TABLE `buku_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buku_post_kategori_id_0a807e43_fk_buku_kategori_id` (`kategori_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `tamu_guest`
--
ALTER TABLE `tamu_guest`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `buku_kategori`
--
ALTER TABLE `buku_kategori`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `buku_post`
--
ALTER TABLE `buku_post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tamu_guest`
--
ALTER TABLE `tamu_guest`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- Constraints for table `buku_post`
--
ALTER TABLE `buku_post`
  ADD CONSTRAINT `buku_post_kategori_id_0a807e43_fk_buku_kategori_id` FOREIGN KEY (`kategori_id`) REFERENCES `buku_kategori` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
