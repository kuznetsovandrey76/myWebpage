-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 24 2019 г., 11:52
-- Версия сервера: 5.6.37
-- Версия PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mywebpage`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `created_at`, `updated_at`, `title`, `slug`) VALUES
(1, NULL, '2019-01-24 05:35:13', 'Post', 'post'),
(2, NULL, NULL, 'Category 2', 'category-2'),
(3, NULL, NULL, 'Category 3', 'category-3');

-- --------------------------------------------------------

--
-- Структура таблицы `category_post`
--

CREATE TABLE `category_post` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `category_post`
--

INSERT INTO `category_post` (`id`, `created_at`, `updated_at`, `category_id`, `post_id`) VALUES
(1, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `ingoings`
--

CREATE TABLE `ingoings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ingoing_id` int(10) UNSIGNED NOT NULL,
  `ingoing_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `ingoings`
--

INSERT INTO `ingoings` (`id`, `created_at`, `updated_at`, `ingoing_id`, `ingoing_type`) VALUES
(6, '2019-01-24 05:32:12', '2019-01-24 05:32:12', 6, 'App\\Models\\User'),
(7, '2019-01-24 05:32:12', '2019-01-24 05:32:12', 7, 'App\\Models\\User'),
(8, '2019-01-24 05:32:12', '2019-01-24 05:32:12', 8, 'App\\Models\\User'),
(9, '2019-01-24 05:32:12', '2019-01-24 05:32:12', 9, 'App\\Models\\User'),
(10, '2019-01-24 05:32:12', '2019-01-24 05:32:12', 10, 'App\\Models\\User'),
(11, '2019-01-24 05:32:12', '2019-01-24 05:32:12', 11, 'App\\Models\\User'),
(12, '2019-01-24 05:32:12', '2019-01-24 05:32:12', 12, 'App\\Models\\User'),
(13, '2019-01-24 05:32:12', '2019-01-24 05:32:12', 13, 'App\\Models\\User'),
(14, '2019-01-24 05:32:12', '2019-01-24 05:32:12', 14, 'App\\Models\\User'),
(15, '2019-01-24 05:32:12', '2019-01-24 05:32:12', 15, 'App\\Models\\User'),
(16, '2019-01-24 05:32:12', '2019-01-24 05:32:12', 16, 'App\\Models\\User'),
(17, '2019-01-24 05:32:12', '2019-01-24 05:32:12', 17, 'App\\Models\\User'),
(18, '2019-01-24 05:32:12', '2019-01-24 05:32:12', 18, 'App\\Models\\User'),
(19, '2019-01-24 05:32:12', '2019-01-24 05:32:12', 19, 'App\\Models\\User'),
(20, '2019-01-24 05:32:12', '2019-01-24 05:32:12', 20, 'App\\Models\\User'),
(21, '2019-01-24 05:32:14', '2019-01-24 05:32:14', 21, 'App\\Models\\User'),
(23, '2019-01-24 05:32:14', '2019-01-24 05:32:14', 1, 'App\\Models\\Contact'),
(24, '2019-01-24 05:32:14', '2019-01-24 05:32:14', 2, 'App\\Models\\Contact'),
(25, '2019-01-24 05:32:14', '2019-01-24 05:32:14', 3, 'App\\Models\\Contact'),
(26, '2019-01-24 05:32:14', '2019-01-24 05:32:14', 4, 'App\\Models\\Contact'),
(27, '2019-01-24 05:32:14', '2019-01-24 05:32:14', 5, 'App\\Models\\Contact'),
(28, '2019-01-24 05:32:16', '2019-01-24 05:32:16', 6, 'App\\Models\\Contact'),
(29, '2019-01-24 05:32:17', '2019-01-24 05:32:17', 1, 'App\\Models\\Post');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2017_02_01_233219_create_users_table', 1),
(3, '2017_03_10_233219_create_categories_table', 1),
(4, '2017_03_10_233219_create_posts_table', 1),
(5, '2017_03_10_233220_create_comments_table', 1),
(6, '2017_03_10_233220_create_contacts_table', 1),
(7, '2017_03_10_233220_create_ingoings_table', 1),
(8, '2017_03_10_233220_create_notifications_table', 1),
(9, '2017_03_10_233220_create_post_tag_table', 1),
(10, '2017_03_10_233220_create_tags_table', 1),
(11, '2017_03_18_145906_create_category_post_table', 1),
(12, '2017_03_18_145916_create_foreign_keys', 1),
(13, '2018_08_31_172300_add_confirmation', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `notifications`
--

CREATE TABLE `notifications` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_id` int(10) UNSIGNED NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `created_at`, `updated_at`, `title`, `slug`, `seo_title`, `excerpt`, `body`, `meta_description`, `meta_keywords`, `active`, `user_id`, `image`) VALUES
(1, '2019-01-24 05:32:16', '2019-01-24 05:36:41', 'Hello World', 'hello-world', 'Andrey Kuznetsov logo', 'Welcome to my web page', '<p>In expedita voluptatem dolor reiciendis. Perferendis enim est ut. Et non nulla commodi id tenetur at. Ut voluptatem voluptatum aut dolor veritatis. Illum debitis animi ab laudantium. Amet cupiditate voluptatem ducimus debitis mollitia. Pariatur sit eum ex. Non libero quia saepe temporibus id laborum. Perspiciatis eaque animi unde dolor vitae vel iste labore. Quam eos laboriosam ea quae. Et praesentium est voluptatibus eum quis. Iste unde ipsa impedit officia sint nihil. Sint possimus necessitatibus magni consequatur ut enim error. Omnis est occaecati sit saepe consequatur non sunt. Molestiae excepturi numquam est. Rem eos et iste molestias. Doloremque repudiandae consequuntur deleniti et. Soluta laudantium non repellendus cumque. Labore autem velit ad nihil illum. Culpa incidunt sed quo itaque ea et numquam. Sed voluptatem vero sit rerum qui quia et. Deserunt illum provident corporis consequatur natus corporis nihil. Sint error ea sit accusantium sint tempore. Non ipsam molestias odit pariatur illo quae rerum. Quis veritatis numquam sit atque. Consequatur suscipit deleniti tenetur minus facilis ab. Dolores ut provident ipsa adipisci. Dolorum eos et quasi voluptatem dignissimos minima. Laborum fuga quo nam laudantium. Enim impedit earum numquam voluptatem distinctio.</p>', 'Et inventore dolor quod fugiat non recusandae.', 'logo', 1, 1, '\\files\\akuznetsov\\logo.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `post_tag`
--

INSERT INTO `post_tag` (`id`, `created_at`, `updated_at`, `post_id`, `tag_id`) VALUES
(1, NULL, NULL, 1, 7);

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tag` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `tags`
--

INSERT INTO `tags` (`id`, `created_at`, `updated_at`, `tag`) VALUES
(1, NULL, NULL, 'Tag1'),
(2, NULL, NULL, 'Tag2'),
(3, NULL, NULL, 'Tag3'),
(4, NULL, NULL, 'Tag4'),
(5, NULL, NULL, 'Tag5'),
(6, NULL, NULL, 'Tag6'),
(7, '2019-01-24 05:36:41', '2019-01-24 05:36:41', 'post');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` enum('user','redac','admin') COLLATE utf8_unicode_ci NOT NULL,
  `valid` tinyint(1) NOT NULL DEFAULT '0',
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `confirmation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `created_at`, `updated_at`, `name`, `email`, `password`, `remember_token`, `role`, `valid`, `confirmed`, `confirmation_code`) VALUES
(1, '2019-01-24 05:32:11', '2019-01-24 05:39:50', 'Andrey Kuznetsov', 'admin@la.fr', '$2y$10$a1/68ujay.P/BuMbtY.Agum8fPiCx8vlMjN25rCsiQbIdIeqXDi/.', 'VJhAMd5nSj', 'admin', 1, 1, NULL),
(2, '2019-01-24 05:32:11', '2019-01-24 05:32:11', 'GreatRedactor', 'redac@la.fr', '$2y$10$ZM2LxSQjWrwFulZonZ.WhOEuQZOOzb0ziqhyvURwC8h/1wGkfLTCC', 'ScnkKbQsu4', 'redac', 1, 1, NULL),
(3, '2019-01-24 05:32:11', '2019-01-24 05:32:11', 'Walker', 'walker@la.fr', '$2y$10$UGfByfP07C1ukqFITt5uE.wpSbPUCOmdIaWe0xqw5cK3HGn.B8Qv2', 'CabySiVFjH', 'user', 1, 1, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_title_unique` (`title`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Индексы таблицы `category_post`
--
ALTER TABLE `category_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_post_category_id_foreign` (`category_id`),
  ADD KEY `category_post_post_id_foreign` (`post_id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_parent_id_index` (`parent_id`),
  ADD KEY `comments_lft_index` (`lft`),
  ADD KEY `comments_rgt_index` (`rgt`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `ingoings`
--
ALTER TABLE `ingoings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ingoings_ingoing_id_index` (`ingoing_id`),
  ADD KEY `ingoings_ingoing_type_index` (`ingoing_type`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_id_notifiable_type_index` (`notifiable_id`,`notifiable_type`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_post_id_foreign` (`post_id`),
  ADD KEY `post_tag_tag_id_foreign` (`tag_id`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_tag_unique` (`tag`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_name_unique` (`name`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `category_post`
--
ALTER TABLE `category_post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `ingoings`
--
ALTER TABLE `ingoings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `category_post`
--
ALTER TABLE `category_post`
  ADD CONSTRAINT `category_post_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `category_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
