SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tagline` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `abouts` (`id`, `created_at`, `updated_at`, `image`, `tagline`, `description`) VALUES
(6, '2022-08-14 06:54:26', '2022-08-14 21:43:04', 'abouts/zC9efjsFKyHrU9inVNJrfQEKoUIiMsz206ngrp7P.jpg', 'Myself', 'I am Hunny Shah from Gujarat, India. I belong to Hindu culture and my native language is Gujarati but I have fluency English as well. I am Highly detail-oriented, Enthusiastic team player with sronger communication skills and Relationship-building professional with a total of one year of expertise spanning in web development. I have done my schooling from Nelson\'s Higher Secondary School. I have done my Bachelor\'s in Computer Science with Outstanding-Exemplary from St.Xavier\'s College, Ahmedabad which is located in my Home town. I have knowledge about Asp.net, Python, Multimedia, Information Security, Linux, Networking, JAVA, Oracle, HTML, XML, DMS, C, C++, SQL, Javascript, CSS. I have also participated in different certificate courses such as creating a website using Django, Workshop on Artificial Intelligence, Lesson on Security and Networking.');

CREATE TABLE `connects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `connects` (`id`, `created_at`, `updated_at`, `image`, `link`, `title`) VALUES
(11, '2022-08-14 08:43:22', '2022-08-14 08:50:04', 'connects/hWHcwvaLLkG2ImWAssOde9T0p3PH0ZAg50GJxk4R.png', 'https://www.linkedin.com/in/hunny-shah-515357218', 'linked in'),
(12, '2022-08-14 08:44:18', '2022-08-14 08:50:19', 'connects/W9I7gQzY4PkKCMdblq1UXe7cBgJI6nuuhg42zBQF.png', 'https://github.com/HunnyShah', 'Github'),
(13, '2022-08-14 08:46:01', '2022-08-14 08:50:32', 'connects/sxeqmPLxpU5QneZTFTrKtdLPKKwM9d0Z4lHISaYx.png', 'https://www.facebook.com/people/Hunny-Shah/100075848649637/', 'facebook'),
(14, '2022-08-14 08:46:26', '2022-08-14 08:50:46', 'connects/yMKgDRp88p170N9o7xYVPhaCaLH3Hef6aDOS35fI.png', 'https://www.instagram.com/hunny_2210/', 'Insta'),
(15, '2022-08-14 09:01:50', '2022-08-14 10:02:52', 'connects/8hqOK3mJyKeEqWWTp951sp8vc8UtxXGfaAYYkgEh.png', '4372243419', 'Phone'),
(16, '2022-08-14 09:06:01', '2022-08-14 10:03:18', 'connects/ZUcgXT9Qr9dKLB6dXm7wIj4yIRZUPTuUc7gsLJSm.png', 'https://mail.google.com/mail/u/0/#inbox?compose=CllgCHrkWCjvWkKqCjkHtTrNQLVzWTRBjPHjBRRxrtrRXmwGxLdzSgHMZXXhHBNMFXfTtmwsNHg', 'Mail');

CREATE TABLE `educations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `institutename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `degree` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completedate` date NOT NULL,
  `info` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `educations` (`id`, `created_at`, `updated_at`, `institutename`, `location`, `degree`, `completedate`, `info`) VALUES
(11, '2022-08-14 07:21:27', '2022-08-14 07:21:27', 'St. Xavier\'s College', 'Gujarat, india', 'BCA, Computer Science', '2021-03-13', 'Passed with Outstanding-Exemplary'),
(12, '2022-08-14 07:22:08', '2022-08-14 07:22:08', 'Nelson Higher Secondary School', 'Gujarat, india', '12th', '2018-03-15', 'H.S.C');

CREATE TABLE `experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `experiences` (`id`, `image`, `company_name`, `position`, `job_role`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(11, NULL, 'Akash TechnoLabs', 'Junior Developer', 'Designing, Developing and connecting to database', '2020-06-01', '2020-01-01', '2022-08-14 07:43:56', '2022-08-14 07:43:56');

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `messages` (`id`, `user_name`, `user_email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Ariel Von V', 'wilkinson.luz@example.net', 'Dolores libero optio recusandae occaecati natus.', '2022-08-14 06:52:27', '2022-08-14 06:52:27'),
(2, 'Larry McGlynn', 'kaci.kohler@example.net', 'Ipsam modi exercitationem officiis nisi molestias labore.', '2022-08-14 06:52:27', '2022-08-14 06:52:27'),
(3, 'Mrs. Herminia Davis', 'lcollins@example.com', 'Alias est nisi iusto doloremque exercitationem omnis.', '2022-08-14 06:52:27', '2022-08-14 06:52:27'),
(4, 'Mr. Cedrick Mayer I', 'ervin.sipes@example.net', 'Quaerat tenetur quo voluptatibus quo.', '2022-08-14 06:52:27', '2022-08-14 06:52:27'),
(5, 'Elva Mraz V', 'cormier.ethyl@example.com', 'Assumenda blanditiis eum quis in consequatur rerum beatae.', '2022-08-14 06:52:27', '2022-08-14 06:52:27'),
(6, 'Trace Swaniawski', 'pollich.alessandro@example.com', 'Nihil eaque cumque consequatur corrupti error praesentium doloremque.', '2022-08-14 06:52:27', '2022-08-14 06:52:27'),
(7, 'Prof. Derick Bruen', 'maxime.kautzer@example.org', 'At sapiente velit hic reiciendis sint.', '2022-08-14 06:52:27', '2022-08-14 06:52:27'),
(8, 'Dr. Christa Boehm I', 'madison.mclaughlin@example.com', 'Qui ipsa maxime dolore nesciunt itaque labore.', '2022-08-14 06:52:27', '2022-08-14 06:52:27'),
(9, 'Cleve Kautzer', 'langosh.alexander@example.org', 'Exercitationem optio autem ducimus dolor autem.', '2022-08-14 06:52:27', '2022-08-14 06:52:27'),
(10, 'Taya Tillman', 'bmorissette@example.com', 'Odit autem maxime totam culpa expedita.', '2022-08-14 06:52:27', '2022-08-14 06:52:27');

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(25, '2014_10_12_000000_create_users_table', 1),
(26, '2014_10_12_100000_create_password_resets_table', 1),
(27, '2019_08_19_000000_create_failed_jobs_table', 1),
(28, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(29, '2022_01_13_170756_create_projects_table', 1),
(30, '2022_01_13_191632_create_types_table', 1),
(31, '2022_08_05_081804_create_experience', 1),
(32, '2022_08_05_083428_create_about', 1),
(33, '2022_08_05_161153_create_skills_table', 1),
(34, '2022_08_05_161529_create_messages_table', 1),
(35, '2022_08_09_021626_create_connects', 1),
(36, '2022_08_09_072323_create_educations_table', 1);

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `projects` (`id`, `title`, `url`, `slug`, `image`, `content`, `type_id`, `user_id`, `created_at`, `updated_at`) VALUES
(8, 'Salon Website', 'http://hunny-portfolio.great-site.net/', 'Website', NULL, 'User can register,\r\n\r\nlogin, \r\n\r\nbook an appointment, \r\n\r\nsee the prices, \r\n\r\nschedule the timings, \r\n\r\ncan avail different services, \r\n\r\nSalon owner can manage the appointment schedule', 2, 2, '2022-08-14 07:35:41', '2022-08-14 07:35:41');

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skill_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skill_level` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `skills` (`id`, `image`, `skill_name`, `skill_level`, `created_at`, `updated_at`) VALUES
(6, 'skills/IxedJfXh94oAwDg0eTw93YjhXKFNdhEkC1lE1ktu.png', 'HTML', 85, '2022-08-14 06:55:07', '2022-08-14 07:18:38'),
(7, 'skills/QHgmuN7UNamyAC6sKNSsbX2irrrxNxmNMvzTUi90.png', 'JavaScript', 73, '2022-08-14 06:55:16', '2022-08-14 07:15:32'),
(8, 'skills/3LHqTA8dsgKblgIbUWGAyk6pCZwRgbR77whs972p.png', 'CSS', 92, '2022-08-14 06:55:26', '2022-08-14 07:18:47'),
(9, 'skills/yZ6kgSTsM8gvYpl1IssrppukHbhLD5TmPwAdKTkN.png', 'PHP', 72, '2022-08-14 06:55:39', '2022-08-14 07:18:56');

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `types` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Aut voluptatibus quia qui est culpa accusantium.', '2022-08-14 06:52:27', '2022-08-14 06:52:27'),
(2, 'Nemo consequatur nostrum hic repellendus iste.', '2022-08-14 06:52:27', '2022-08-14 06:52:27'),
(3, 'Praesentium deleniti repellendus et minima voluptas quae.', '2022-08-14 06:52:27', '2022-08-14 06:52:27');

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `first`, `last`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Tianna', 'Batz', 'fsatterfield@example.net', '2022-08-14 06:52:26', '$2y$10$qkQZkY36GL2OzBUWyKwsw.6jYcofJstRvJlB0UupSG07ouw6s1DV.', '2eaJ6AcAOJ', '2022-08-14 06:52:27', '2022-08-14 06:52:27'),
(2, 'Annamae', 'Braun', 'margie57@example.org', '2022-08-14 06:52:27', '$2y$10$gB5r.ZvQxuRz7HwdfyAfheCBM7r.1vEw7Y.1K.sJps63DzaA/onYW', 'Xoh3zhvnxo', '2022-08-14 06:52:27', '2022-08-14 06:52:27');


ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `connects`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `educations`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `projects_slug_unique` (`slug`);

ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);


ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `connects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

ALTER TABLE `educations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

ALTER TABLE `experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
