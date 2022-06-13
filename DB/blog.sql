-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2022 at 10:44 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Brooke Weber', 'reilly-oconnell', NULL, '2022-06-12 12:20:19', '2022-06-12 12:20:19'),
(2, 'Dr. Mose Conn DDS', 'jonatan-howe', NULL, '2022-06-12 12:20:19', '2022-06-12 12:20:19'),
(3, 'Wyatt Padberg PhD', 'keven-predovic-sr', NULL, '2022-06-12 12:20:19', '2022-06-12 12:20:19'),
(4, 'Isabella Moen', 'prof-chad-crooks-v', NULL, '2022-06-12 12:20:19', '2022-06-12 12:20:19'),
(5, 'Reanna Schuppe MD', 'lindsay-mcglynn', NULL, '2022-06-12 12:20:19', '2022-06-12 12:20:19');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_11_184436_create_categories_table', 1),
(6, '2022_06_12_055602_create_tags_table', 1),
(7, '2022_06_12_063053_create_posts_table', 1),
(8, '2022_06_12_090624_create_settings_table', 1),
(9, '2022_06_12_102606_create_contacts_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `image`, `description`, `category_id`, `user_id`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 'Veniam corrupti dolor quibusdam necessitatibus quam est qui.', 'quisquam-enim-dolores-odit-ad', 'https://picsum.photos/id/79/640/480.jpg', 'Sit et iste vitae esse. Dolor cum fugit porro ducimus et nulla. Praesentium quia beatae consequuntur officiis in quia quia dolor. Sit tempore aut voluptatum accusantium perspiciatis reiciendis cumque. Odit inventore minus et id assumenda quia. Iusto iure et qui omnis tenetur numquam. Tenetur ipsa recusandae numquam natus.', 1, 1, NULL, '2022-06-12 12:20:19', '2022-06-12 12:20:19'),
(2, 'Et libero vel suscipit debitis rem.', 'et-libero-vel-suscipit-debitis-rem', 'https://picsum.photos/id/285/640/480.jpg', 'Officia odio modi rerum qui perferendis mollitia. Et modi placeat placeat explicabo sunt. Eum unde enim asperiores veniam odit sunt dolore id. Assumenda ut sit alias et laborum. Nobis necessitatibus quia qui voluptate cupiditate. Amet sequi iste sit cupiditate soluta aut sint quo. Et cum qui temporibus ex minus eos.', 1, 1, NULL, '2022-06-12 12:20:20', '2022-06-13 00:34:34'),
(3, 'Veniam magni omnis asperiores eligendi consequatur rerum ut.', 'non-omnis-dolor-nobis-quis-vitae', 'https://picsum.photos/id/286/640/480.jpg', 'Consequatur consequuntur consequuntur ea itaque nam. Veritatis voluptas ad sit inventore necessitatibus nam est. Itaque possimus eos commodi facere rem fugit. Sit temporibus non ea ut. Et numquam consequatur accusantium cum qui non. Ea doloremque distinctio dolorem itaque vitae. Quas quo laborum et labore eveniet voluptatem. Adipisci hic quos libero ipsa.', 2, 1, NULL, '2022-06-12 12:20:20', '2022-06-12 12:20:20'),
(4, 'Iure nihil deleniti dolorem fugiat.', 'dolores-optio-sed-voluptatem-consequatur-commodi-odit-ut', 'https://picsum.photos/id/235/640/480.jpg', 'Amet architecto ex impedit ratione quos exercitationem. Ex est qui error suscipit voluptatem. Vitae nam minus corrupti esse ut aut. Quo dolor optio reiciendis aliquid tenetur nostrum quis alias. Unde dolorum quae eum inventore et. Repudiandae dolor repudiandae nemo voluptatibus.', 2, 1, NULL, '2022-06-12 12:20:20', '2022-06-12 12:20:20'),
(5, 'Debitis et veritatis est saepe distinctio dicta.', 'delectus-odio-voluptatem-omnis-quae-ipsam-ut-qui-est', 'https://picsum.photos/id/122/640/480.jpg', 'Quaerat reiciendis eos itaque. Ullam voluptatem soluta debitis hic. Cumque aliquid dolores quidem exercitationem enim. Eum repellat similique blanditiis rem. Qui ab ut distinctio voluptates aperiam animi aut nisi. Sed voluptas eum ipsum voluptates doloribus tempora. Dolore illo quos quo quas et aliquid. Dolorem ducimus dignissimos animi voluptas.', 2, 1, NULL, '2022-06-12 12:20:21', '2022-06-12 12:20:21'),
(6, 'Aut voluptas praesentium ipsum modi.', 'vitae-excepturi-voluptatem-dolor-eligendi-laboriosam-maxime', 'https://picsum.photos/id/69/640/480.jpg', 'Saepe magnam iure omnis facilis. Voluptate perferendis quo cumque perspiciatis assumenda ut. Distinctio nemo quae nisi et doloremque dolores. Eum est omnis eveniet enim. Ratione qui sint et laborum vel nostrum suscipit. Illo rerum accusantium laudantium enim. Qui ut reprehenderit expedita eum sed.', 3, 1, NULL, '2022-06-12 12:20:21', '2022-06-12 12:20:21'),
(7, 'Neque error voluptatem natus nam.', 'sapiente-quis-beatae-earum-cupiditate-ab-quis-voluptatum', 'https://picsum.photos/id/209/640/480.jpg', 'Molestias ut exercitationem voluptatibus. Iusto dignissimos quas libero ducimus labore. Eos error minus et odio in maxime aut. Placeat at aliquam expedita magnam quia temporibus quia. Excepturi temporibus ipsam eum dolor. Aut et dolor molestias ullam explicabo ea esse. Blanditiis qui nostrum in facere nemo qui quos.', 4, 1, NULL, '2022-06-12 12:20:21', '2022-06-12 12:20:21'),
(8, 'Aspernatur nemo laudantium a rem veritatis quos.', 'aperiam-sit-iusto-quam-ad-ipsam-aliquam-eum-qui', 'https://picsum.photos/id/166/640/480.jpg', 'At et rerum ex exercitationem odio. Et esse eligendi velit sapiente cumque laborum repellat. Repellat ut quis tempore ex dolores explicabo ut. Culpa quo et cumque. Error quos animi quo omnis. Sit maiores distinctio veritatis. Magnam voluptate corporis consequuntur voluptas ab quia. Ipsum at dolor rerum quis ut enim.', 5, 1, NULL, '2022-06-12 12:20:21', '2022-06-12 12:20:21'),
(9, 'Dignissimos quis omnis alias laborum error dignissimos alias.', 'non-consequuntur-nisi-maiores-recusandae-voluptates-amet', 'https://picsum.photos/id/99/640/480.jpg', 'Nulla ipsa voluptatum nisi officiis dolorem. Distinctio eligendi rem voluptatem enim ut. Vitae aut commodi placeat nostrum rem et sunt. Minima veniam dolorum quisquam beatae recusandae qui vel. Minus quia dolor explicabo natus. Qui iste sunt quia qui facere praesentium. Eveniet voluptatem quod consequuntur. Quas aliquid sed maiores similique debitis corporis porro quasi.', 5, 1, NULL, '2022-06-12 12:20:21', '2022-06-12 12:20:21'),
(10, 'Aut accusamus est veritatis nisi corporis officiis iure.', 'officiis-et-dolorem-doloremque-molestiae-aliquam', 'https://picsum.photos/id/252/640/480.jpg', 'Consequatur debitis voluptatum dolore. Praesentium unde culpa laudantium sapiente quod. Amet sunt quia et id. Id dignissimos et et explicabo. Ut est odit aut magni pariatur. Aut eos eum provident deleniti aspernatur sed explicabo. Et illo nesciunt velit quas deleniti natus. Dolorum beatae voluptas sit illo nemo dolorum.', 2, 1, NULL, '2022-06-12 12:20:21', '2022-06-12 12:20:21'),
(11, 'Necessitatibus non ducimus minima optio et hic.', 'ut-aut-et-nesciunt-ad-reiciendis-debitis', 'https://picsum.photos/id/141/640/480.jpg', 'Facilis corrupti rerum accusamus corporis sunt dignissimos. Iure architecto dolorum aliquid et nostrum ipsam. Sint est corrupti placeat nihil. Et id soluta ab facilis soluta. Voluptatem numquam quo repudiandae similique enim. Temporibus et minus laborum dolore aliquid ratione. Modi quod porro ea soluta voluptas.', 3, 1, NULL, '2022-06-12 12:20:21', '2022-06-12 12:20:21'),
(12, 'Sunt incidunt rerum porro debitis nobis.', 'iste-nisi-accusantium-nihil-mollitia-eligendi', 'https://picsum.photos/id/181/640/480.jpg', 'Expedita nihil velit vero sint. Rerum sit incidunt non iusto voluptas praesentium mollitia. Sequi consectetur omnis eos qui aut ad non. Nulla debitis quos non adipisci. Doloremque eaque reiciendis quia. Eum nihil repellendus delectus delectus sequi illum. Ut consectetur ab laborum quia consequatur.', 4, 1, NULL, '2022-06-12 12:20:21', '2022-06-12 12:20:21'),
(13, 'Adipisci magni saepe tempore mollitia facilis consequatur dicta.', 'dolore-fugiat-commodi-alias-sint', 'https://picsum.photos/id/102/640/480.jpg', 'Magnam quis dolores eos. Molestiae velit alias qui perferendis odit qui. Temporibus iste perspiciatis et eligendi. Necessitatibus architecto similique cupiditate asperiores voluptatum ipsam eveniet. Harum cumque nisi aliquam eaque. Adipisci tenetur ut accusamus doloribus aut illum.', 1, 1, NULL, '2022-06-12 12:20:21', '2022-06-12 12:20:21'),
(14, 'Voluptatibus maiores saepe qui rerum quaerat suscipit et.', 'odit-similique-ab-quis-at-vel-eum', 'https://picsum.photos/id/238/640/480.jpg', 'Nostrum ad dolor dolor aliquid eveniet. Cumque fugit rerum aut velit. Minima quia in magni et. Magni perspiciatis nisi consequatur iste facere quos nostrum recusandae. Ut praesentium qui ut necessitatibus inventore necessitatibus. Laudantium iure vero et similique facilis et. Aspernatur exercitationem assumenda maxime veritatis vitae.', 3, 1, NULL, '2022-06-12 12:20:21', '2022-06-12 12:20:21'),
(15, 'Ut sit et impedit et est.', 'incidunt-voluptatem-aut-qui-necessitatibus-ipsam', 'https://picsum.photos/id/151/640/480.jpg', 'Eligendi quis explicabo ipsa incidunt placeat doloremque ut. Eius asperiores nihil velit odio. Accusantium quisquam magni totam occaecati est a error tempore. Corrupti nihil est et quia quasi magni. Quod voluptatum aut laboriosam aliquid ut minus. Eum aliquam voluptas beatae qui. Necessitatibus dolor quibusdam placeat quibusdam autem.', 1, 1, NULL, '2022-06-12 12:20:21', '2022-06-12 12:20:21'),
(16, 'Quo asperiores eveniet rem illo quia.', 'consequatur-ducimus-enim-quos-esse-error-aut-nisi-et', 'https://picsum.photos/id/230/640/480.jpg', 'Quae in aperiam voluptas repellat quam. Aspernatur quidem tempora cupiditate maiores. Quae quos perspiciatis illum blanditiis enim ab. Quae enim numquam dolor rerum. Impedit esse consequatur veniam placeat veniam. Ut ex iure nobis aut voluptatum. Et corrupti qui molestias aut voluptatem veniam exercitationem.', 1, 1, NULL, '2022-06-12 12:20:21', '2022-06-12 12:20:21'),
(17, 'Recusandae sapiente occaecati sapiente voluptates.', 'odio-distinctio-tempora-assumenda-quis', 'https://picsum.photos/id/153/640/480.jpg', 'Mollitia necessitatibus dignissimos excepturi eum id et fugit. Voluptates fuga dolorem vel dignissimos dolorem consequatur. Molestiae aut sint sit ipsa tenetur porro. Molestiae consequatur libero voluptatibus molestiae.', 2, 1, NULL, '2022-06-12 12:20:21', '2022-06-12 12:20:21'),
(18, 'Incidunt sapiente error dicta assumenda.', 'dignissimos-voluptates-distinctio-dignissimos-eveniet-doloremque', 'https://picsum.photos/id/130/640/480.jpg', 'Assumenda odio repellendus id voluptates est laudantium. Omnis et officiis natus sequi facere quis sunt. Omnis sit placeat culpa pariatur. Blanditiis facilis nostrum nihil ut. Architecto sint voluptatem dolor nihil rerum animi. Dolorem et voluptatum excepturi qui non voluptatibus occaecati. Nam necessitatibus omnis animi perferendis quis. Quia deserunt praesentium cupiditate.', 3, 1, NULL, '2022-06-12 12:20:21', '2022-06-12 12:20:21'),
(19, 'Provident et molestiae sapiente praesentium.', 'pariatur-quia-autem-quis-expedita', 'https://picsum.photos/id/246/640/480.jpg', 'Unde ipsam saepe dolorem dolores quibusdam aut tenetur. Maxime nihil nihil accusantium et. Iste ipsa quisquam tenetur. Et officiis ipsa veritatis provident sed inventore. Placeat rerum tempore molestiae. Et molestiae sint consequuntur autem nihil unde autem. Ullam voluptate animi totam eum vero maiores. Magni sapiente quia qui. Sed deleniti amet et rem dolor error incidunt.', 3, 1, NULL, '2022-06-12 12:20:21', '2022-06-12 12:20:21'),
(20, 'Aut vitae et temporibus minima voluptatibus labore quo in.', 'non-veritatis-qui-commodi-quae-non-voluptatum-doloribus-temporibus', 'https://picsum.photos/id/151/640/480.jpg', 'Possimus omnis repudiandae doloremque nam. Eius nisi eum iure vitae aspernatur. Cupiditate consectetur est ut est dolorem. Ad saepe eum quia incidunt optio impedit tenetur blanditiis. Facilis totam rem cum libero. Nulla dolorum beatae error maiores. Omnis laboriosam ut soluta non et quae nobis.', 3, 1, NULL, '2022-06-12 12:20:21', '2022-06-12 12:20:21'),
(21, 'Enim voluptatem illum dolor vitae quam ut adipisci.', 'natus-nihil-blanditiis-expedita-nostrum', 'https://picsum.photos/id/147/640/480.jpg', 'Quidem non maxime dignissimos est. Sit molestias reprehenderit quod quia. Minus aut harum optio voluptas quia tenetur aut. Magni odit tempora voluptatem quis. Nostrum qui amet eum voluptatum. Alias quis minus consequatur rerum fuga. Perferendis eius voluptatem vitae vel impedit. Iusto at molestias fuga et id debitis porro. Voluptatum iure quae mollitia.', 5, 1, NULL, '2022-06-12 12:20:21', '2022-06-12 12:20:21'),
(22, 'Autem non quibusdam aut fugit tempora delectus.', 'quaerat-ea-modi-voluptatem-ullam', 'https://picsum.photos/id/215/640/480.jpg', 'Aliquam et ut in. Amet in aut impedit tenetur iusto. Magni exercitationem vitae maxime consequatur quisquam laborum. Quas qui facere expedita saepe sit minima. Consequatur tenetur ab ad et rerum tenetur aut. Eius quaerat possimus et incidunt. In aliquid molestiae illo fuga ducimus sed omnis.', 1, 1, NULL, '2022-06-12 12:20:21', '2022-06-12 12:20:21'),
(23, 'A quam corrupti sed sed fugit quasi.', 'rerum-dolore-tempore-eius-sint', 'https://picsum.photos/id/259/640/480.jpg', 'Qui quia veniam laborum minus blanditiis non. Distinctio corporis praesentium nam praesentium. Repellendus omnis omnis id velit. Quidem sit corporis fuga maxime ipsam. Consequuntur explicabo magni qui expedita placeat dolorem. Dolorum perferendis ipsam at facilis impedit molestiae.', 1, 1, NULL, '2022-06-12 12:20:21', '2022-06-12 12:20:21'),
(24, 'Non et cupiditate a labore.', 'exercitationem-voluptatem-rerum-pariatur-in', 'https://picsum.photos/id/221/640/480.jpg', 'Minus labore ut in. Nihil nostrum autem asperiores nihil repudiandae ea magni. Reprehenderit est ipsa deleniti reprehenderit laborum. Modi in repellat alias quia eligendi. Voluptas officiis vel accusamus repellendus unde asperiores. Vitae et cupiditate vel minus ipsum eligendi et. Qui eligendi molestiae voluptatem inventore aspernatur sed. Qui esse aut illum corrupti itaque.', 4, 1, NULL, '2022-06-12 12:20:21', '2022-06-12 12:20:21'),
(25, 'Reprehenderit magnam praesentium error.', 'rem-fugiat-voluptas-incidunt-delectus-et-est', 'https://picsum.photos/id/261/640/480.jpg', 'Illo velit nihil necessitatibus sunt architecto et esse accusamus. Aut facilis corporis molestiae officia sint eum sed. At reprehenderit facere sit reprehenderit. Natus voluptatem a in at ab vel sint. Inventore nostrum ex minus consequatur neque culpa nulla. Molestias est soluta omnis. Iusto iure occaecati magnam ab.', 2, 1, NULL, '2022-06-12 12:20:21', '2022-06-12 12:20:21'),
(26, 'Quo est incidunt ut.', 'quos-aut-ratione-at-culpa-dignissimos-aut', 'https://picsum.photos/id/283/640/480.jpg', 'Accusantium aut aut omnis voluptatem est voluptate. Occaecati unde harum est. Quia nihil doloribus praesentium ad incidunt libero. Eius consequatur vitae vero quia provident quae. Possimus possimus ipsa qui consequuntur sed. Blanditiis deleniti at atque officiis voluptas at. Aliquid minus qui et fugit omnis. Error aliquid aut non vero modi unde non.', 3, 1, NULL, '2022-06-12 12:20:21', '2022-06-12 12:20:21'),
(27, 'Esse magni molestiae est provident enim et.', 'vel-at-repudiandae-sint-neque-sed-modi-porro', 'https://picsum.photos/id/74/640/480.jpg', 'Odit veniam aut minima minima omnis cumque libero. Qui atque sed et est dolores aut. Laborum eos maxime quo quis. Veritatis quasi eligendi molestiae maxime modi.', 4, 1, NULL, '2022-06-12 12:20:21', '2022-06-12 12:20:21'),
(28, 'Cumque voluptatem qui possimus.', 'cumque-voluptatem-qui-possimus', 'https://picsum.photos/id/261/640/480.jpg', 'Officia officia nisi repellendus et. Pariatur provident id consectetur occaecati dignissimos. Amet fugit quasi doloremque voluptates nemo quia tenetur. Rerum quasi deserunt in quia dolorum. Assumenda voluptas tenetur nihil itaque perferendis quasi. Consequuntur aut omnis vel quia quidem et quidem inventore. Et est ut voluptas ullam omnis.', 2, 1, NULL, '2022-06-12 12:20:22', '2022-06-13 00:28:21'),
(29, 'Et aut dolorem qui amet.', 'et-aut-dolorem-qui-amet', 'https://picsum.photos/id/264/640/480.jpg', 'Voluptatibus est exercitationem sed sunt ut dignissimos. Nihil at saepe in eum. Adipisci qui laborum nemo ut itaque est est. Inventore saepe quia veniam placeat facere neque dolorum. Eum dolorum quas adipisci voluptatem. Doloremque et cupiditate velit quas sed.', 4, 1, NULL, '2022-06-12 12:20:22', '2022-06-12 13:05:08'),
(30, 'Delectus vitae fugiat nemo.', 'voluptatum-explicabo-omnis-sit-ipsum', 'https://picsum.photos/id/83/640/480.jpg', 'Nisi dolores quia quam quia voluptate recusandae. Eligendi dolor est sed asperiores. Voluptatem quia molestiae eum maiores impedit non assumenda. Ut et ex ipsa non. Eaque deleniti qui omnis doloribus dolor labore et sunt. Est iusto quod consectetur. Id praesentium placeat qui sint aspernatur repudiandae. Accusamus aperiam ut doloremque aut fugit rerum.', 4, 1, NULL, '2022-06-12 12:20:22', '2022-06-12 12:20:22'),
(31, 'Culpa soluta quibusdam praesentium dolore molestias.', 'consequatur-facilis-id-occaecati-cum-sit', 'https://picsum.photos/id/72/640/480.jpg', 'Qui nihil eum blanditiis eaque temporibus voluptate. Quam rem placeat officiis autem vitae id a. Molestiae ut alias eum temporibus corrupti qui. Qui sunt perferendis sequi quos aut accusantium. A dignissimos modi officia a vel commodi. Est qui libero adipisci rem et. Odio quia fuga provident aliquid rerum placeat quo.', 4, 1, NULL, '2022-06-12 12:20:22', '2022-06-12 12:20:22'),
(32, 'Earum quibusdam esse est voluptatem.', 'earum-quibusdam-esse-est-voluptatem', 'https://picsum.photos/id/280/640/480.jpg', 'Recusandae sint at in facilis. Est occaecati veritatis quia reprehenderit eveniet. Consequuntur tenetur cum qui ut porro ipsam accusamus aliquid. Sint qui vel aut libero facere laborum. Provident voluptas ea iusto ut atque beatae numquam. Tempore aut nihil sit quia molestias. Omnis est numquam alias non atque accusantium.', 1, 1, NULL, '2022-06-12 12:20:22', '2022-06-12 12:28:17'),
(33, 'Minima recusandae aspernatur mollitia nisi culpa eligendi.', 'minima-recusandae-aspernatur-mollitia-nisi-culpa-eligendi', 'https://picsum.photos/id/174/640/480.jpg', 'Quod minima molestiae veritatis. Nemo maxime sit voluptatem incidunt eveniet laudantium exercitationem praesentium. Laboriosam quia corporis atque maiores unde ipsum. Asperiores dolore sint ad totam nostrum nihil. Quia nam deserunt quia repellendus et. Temporibus ut harum quas maxime ut.', 3, 1, NULL, '2022-06-12 12:20:22', '2022-06-12 13:03:14'),
(34, 'Sapiente quo molestiae velit id.', 'possimus-nobis-praesentium-eum', 'https://picsum.photos/id/85/640/480.jpg', 'Eaque est qui hic ab. Impedit voluptatem et enim eligendi iure id. Soluta et iure officiis eius cupiditate. Natus dicta fugiat quibusdam recusandae fuga nihil. Autem hic exercitationem quaerat sed dolorem aut. Voluptatum quas soluta magni quia. Et nihil ipsam nam minus ipsa omnis. Animi reiciendis modi non vel dolore sed. Est in quos tempora magnam at adipisci nulla illum.', 2, 1, NULL, '2022-06-12 12:20:22', '2022-06-12 12:20:22'),
(35, 'Qui odit eligendi voluptatem consequatur incidunt aperiam error corrupti.', 'corrupti-commodi-eos-quos-et', 'https://picsum.photos/id/161/640/480.jpg', 'Nisi natus voluptatem autem dolorem quo. Voluptates veniam ut corporis alias molestiae omnis. Quo qui dolor in eum eum atque. Et necessitatibus rerum corrupti earum eos reprehenderit qui. Quo voluptate voluptatem numquam deserunt iusto illo perferendis. Sit repellat aut nihil natus deleniti quod voluptatem. Quidem consequatur et dolore modi. Ducimus consectetur explicabo minima.', 4, 1, NULL, '2022-06-12 12:20:22', '2022-06-12 12:20:22'),
(36, 'Quae accusantium enim non ea neque ut inventore.', 'omnis-est-natus-dolore-et-aut-adipisci-itaque', 'https://picsum.photos/id/60/640/480.jpg', 'Enim quia sed veritatis voluptatum alias. Doloribus aperiam nemo enim et porro fugit. Impedit consequuntur quia rerum laboriosam modi. Laborum perspiciatis molestiae odit eum dolor explicabo. Asperiores dolorem sed magnam sint ea.', 5, 1, NULL, '2022-06-12 12:20:22', '2022-06-12 12:20:22'),
(37, 'Quia commodi quia voluptatem.', 'nulla-impedit-voluptate-est-facilis', 'https://picsum.photos/id/275/640/480.jpg', 'Iure quam corrupti voluptatem quae. Provident veniam odit molestias dicta ipsam ea. Molestias occaecati est non. Odit odit tempore quae nulla qui. Nihil ut officiis voluptas quibusdam qui numquam qui. Odio at labore vero aut. In ut soluta doloribus. Dolorem labore et dolore nihil rerum necessitatibus esse. Et sed numquam maxime. Doloremque id sunt aut beatae sit omnis molestiae.', 3, 1, NULL, '2022-06-12 12:20:22', '2022-06-12 12:20:22'),
(38, 'Quas illum et laborum.', 'non-voluptatem-optio-porro-voluptas-vero-minima-cumque', 'https://picsum.photos/id/167/640/480.jpg', 'Doloremque libero dolores consequatur doloremque. Rerum et quaerat aliquid est architecto corrupti dolorum. Dignissimos distinctio vitae ut omnis sit provident. Eligendi eum est et voluptatibus vel possimus. Maxime quia nostrum enim ea sapiente deserunt. Qui quod occaecati mollitia qui in est. Quia ab repudiandae quidem repudiandae eveniet ut et.', 2, 1, NULL, '2022-06-12 12:20:22', '2022-06-12 12:20:22'),
(39, 'Fugit magnam incidunt veritatis nam deserunt repellat et.', 'et-sapiente-sit-sed-sit-amet', 'https://picsum.photos/id/299/640/480.jpg', 'Nostrum aliquid deserunt ratione mollitia et. Molestiae iure recusandae eum non nihil provident. Incidunt nulla quasi qui est maiores maxime. Consectetur consequatur mollitia voluptate quam. Nihil molestiae nulla sunt quis eos aliquid qui. Aut quia molestiae numquam qui dolore et. Qui est tempora et consectetur qui. Omnis eum dolor et ullam ut dolorem.', 4, 1, NULL, '2022-06-12 12:20:22', '2022-06-12 12:20:22'),
(40, 'Ratione dolorem eligendi hic corporis cupiditate laudantium tempore.', 'enim-voluptates-quia-nemo-est-eaque-sunt-illo-sed', 'https://picsum.photos/id/256/640/480.jpg', 'Quos natus itaque et reprehenderit fuga quae molestiae tempore. Qui aut voluptas quia et voluptatem. Omnis accusantium aspernatur rerum officiis. Et aut saepe in quia modi aut laboriosam. Tenetur temporibus cum rerum nemo iusto et. Placeat omnis aut nam. Id neque numquam facere magni totam ducimus. Eos exercitationem aut veniam veniam et deserunt.', 1, 1, NULL, '2022-06-12 12:20:22', '2022-06-12 12:20:22'),
(41, 'Voluptates quaerat similique est minus.', 'consectetur-ut-corrupti-quia-exercitationem-quisquam', 'https://picsum.photos/id/245/640/480.jpg', 'Inventore necessitatibus facilis qui tenetur laborum. Magni atque aut labore occaecati at et. Et nam provident et dolore placeat minima qui. Rerum beatae impedit minima autem voluptatem neque quasi. Laboriosam dolorem ullam quia aliquam. Facilis architecto illo eligendi in quae ad. Quia nam architecto sit in.', 2, 1, NULL, '2022-06-12 12:20:22', '2022-06-12 12:20:22'),
(42, 'Voluptatibus eum fugit corrupti aperiam.', 'ipsam-et-aspernatur-laborum-ut-consequatur-vel', 'https://picsum.photos/id/191/640/480.jpg', 'Assumenda eaque omnis unde est. Eos ad aut laboriosam cum qui. Ducimus ullam placeat ipsa vel quasi sint est. Quo fuga eos eius explicabo est ratione est. Debitis praesentium consequuntur fugiat accusantium. Eum et consequuntur consectetur laboriosam molestiae. Rem omnis dolore pariatur eaque est.', 4, 1, NULL, '2022-06-12 12:20:22', '2022-06-12 12:20:22'),
(43, 'Vitae dignissimos hic laborum at magni porro dolore.', 'omnis-labore-sunt-perferendis-adipisci-voluptatum-ducimus-ea-porro', 'https://picsum.photos/id/172/640/480.jpg', 'Necessitatibus nemo ipsum assumenda illo. Quia labore et quasi et. Voluptate veritatis quod libero soluta. Eum voluptatem vel quasi maxime. Doloribus nihil corporis nihil qui numquam veniam. Voluptate aliquam harum nihil suscipit molestiae voluptatem sit. Aut sunt aut culpa quisquam dolorem.', 4, 1, NULL, '2022-06-12 12:20:22', '2022-06-12 12:20:22'),
(44, 'Ipsum laborum repudiandae inventore.', 'qui-eveniet-dicta-quia-eius-est-quasi', 'https://picsum.photos/id/164/640/480.jpg', 'Et qui enim autem quisquam. Quasi minus est eveniet qui animi quisquam quisquam voluptatem. At fugit quaerat veritatis qui veritatis. Consectetur voluptatem quas sit aliquam molestias. Rem animi rem esse recusandae qui nihil autem. Illum molestiae vitae omnis dolorem rem. Reprehenderit nam velit earum illo. Non at deserunt ipsa id.', 1, 1, NULL, '2022-06-12 12:20:22', '2022-06-12 12:20:22'),
(45, 'Ut maxime suscipit qui consequatur.', 'non-sunt-doloremque-magni-quam-nam-voluptatem', 'https://picsum.photos/id/241/640/480.jpg', 'Est sint quis est dolor. Et in omnis qui hic. Quia omnis quos facere minus inventore magnam. Porro quidem et architecto commodi amet sit. Tempora ut iusto nihil enim omnis. Nisi voluptates provident et perspiciatis eius. Perferendis iste aut laboriosam numquam sunt delectus accusamus. Nihil sequi iusto nihil qui ullam deserunt ipsa.', 2, 1, NULL, '2022-06-12 12:20:22', '2022-06-12 12:20:22'),
(46, 'Est odit et velit.', 'alias-sint-nobis-magni', 'https://picsum.photos/id/35/640/480.jpg', 'Possimus pariatur maiores aut qui. Perspiciatis incidunt libero nostrum consequatur et aspernatur. Mollitia ut possimus impedit voluptate mollitia eos. Est similique deserunt natus repellat eos voluptas.', 1, 1, NULL, '2022-06-12 12:20:22', '2022-06-12 12:20:22'),
(47, 'Quos dolorem ex dolores est laudantium qui vel.', 'dolorum-facilis-qui-cupiditate-nihil-nobis', 'https://picsum.photos/id/203/640/480.jpg', 'Laudantium suscipit eaque laboriosam. Et iusto explicabo ipsa enim numquam maxime non. Excepturi cum non et similique aperiam. Velit sit eos et et odit harum doloremque. Deleniti veniam dolores voluptas hic atque consequuntur dolores distinctio. Consequuntur quia voluptas laboriosam et dolorem.', 2, 1, NULL, '2022-06-12 12:20:22', '2022-06-12 12:20:22'),
(48, 'At accusamus totam quos dolorem repellendus.', 'vitae-ratione-vitae-facere-corrupti', 'https://picsum.photos/id/211/640/480.jpg', 'A et explicabo ut voluptatem. Sunt non fuga amet ad sit unde. Ut fugit et impedit consectetur. Vel magni illum debitis sit occaecati. Veniam earum qui libero adipisci. In ea quidem rerum aliquid ducimus magnam omnis. Perspiciatis fuga distinctio et enim fugiat eum. Voluptatum asperiores accusantium magnam dolorem doloremque. Facilis fuga ex suscipit ea.', 3, 1, NULL, '2022-06-12 12:20:22', '2022-06-12 12:20:22'),
(49, 'Recusandae et nobis ratione facere dignissimos debitis.', 'recusandae-et-nobis-ratione-facere-dignissimos-debitis', '/storage/post/1655109666.jpg', 'Quam omnis tempora dolore quae officiis maiores. Ut et rerum animi magni et velit quis incidunt. Aut et cupiditate qui vel quod. In optio omnis qui quia ullam adipisci molestias.', 2, 1, NULL, '2022-06-12 12:20:22', '2022-06-13 02:41:06'),
(50, 'Ut autem vero nisi ad.', 'possimus-aspernatur-magnam-incidunt-ad-laborum', 'https://picsum.photos/id/31/640/480.jpg', 'Magnam numquam debitis qui ducimus quas. Consequatur dolor repellat odio. Rem minima quia repellat reiciendis temporibus excepturi similique et. Dolorum harum voluptates repellendus et earum cum qui. Voluptatem sit nihil et. Non culpa iure in. Sequi dolor aspernatur quae cum quisquam est nulla.', 3, 1, NULL, '2022-06-12 12:20:22', '2022-06-12 12:20:22');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`post_id`, `tag_id`) VALUES
(32, 1),
(32, 2),
(33, 4),
(29, 1),
(29, 2),
(29, 3),
(29, 4),
(28, 2),
(28, 3),
(28, 4),
(2, 1),
(2, 2),
(2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reddit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `site_logo`, `description`, `facebook`, `twitter`, `instagram`, `reddit`, `email`, `copyright`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Example.com', '/storage/setting/1655101916.jpg', 'Hey I am Samiul..', 'https://www.facebook.com/samiulhaque.siam.7/', 'https://twitter.com/', 'https://www.instagram.com/samiul_bulsara_/', NULL, 'samiulsiam59@gmail.com', 'Copyright © 2020 All rights reserved', '01941393332', 'Uttara', '2022-06-12 12:20:19', '2022-06-13 00:31:56');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Freelancing', 'freelancing', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea voluptate odit corrupti vitae cupiditate explicabo, soluta quibusdam necessitatibus, provident reprehenderit, dolorem saepe non eligendi possimus autem repellendus nesciunt, est deleniti libero recusandae officiis. Voluptatibus quisquam voluptatum expedita recusandae architecto quibusdam.', '2022-06-12 12:20:19', '2022-06-12 12:20:19'),
(2, 'Coding', 'coding', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea voluptate odit corrupti vitae cupiditate explicabo, soluta quibusdam necessitatibus, provident reprehenderit, dolorem saepe non eligendi possimus autem repellendus nesciunt, est deleniti libero recusandae officiis. Voluptatibus quisquam voluptatum expedita recusandae architecto quibusdam.', '2022-06-12 12:20:19', '2022-06-12 12:20:19'),
(3, 'Travelling', 'travelling', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea voluptate odit corrupti vitae cupiditate explicabo, soluta quibusdam necessitatibus, provident reprehenderit, dolorem saepe non eligendi possimus autem repellendus nesciunt, est deleniti libero recusandae officiis. Voluptatibus quisquam voluptatum expedita recusandae architecto quibusdam.', '2022-06-12 12:20:19', '2022-06-12 12:20:19'),
(4, 'Fashion', 'fashion', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea voluptate odit corrupti vitae cupiditate explicabo, soluta quibusdam necessitatibus, provident reprehenderit, dolorem saepe non eligendi possimus autem repellendus nesciunt, est deleniti libero recusandae officiis. Voluptatibus quisquam voluptatum expedita recusandae architecto quibusdam.', '2022-06-12 12:20:19', '2022-06-12 12:20:19');

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
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `image`, `description`, `slug`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Samiul Hoque', 'samiulsiam59@gmail.com', NULL, '$2y$10$yLzZlgX3CxPF2re3puImPOktvxPsOXBbyO9Z5d6m2Pm9vWbnT.6Zq', '/storage/user/1655101250.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea voluptate odit corrupti vitae cupiditate explicabo, soluta quibusdam necessitatibus, provident reprehenderit, dolorem saepe non eligendi possimus autem repellendus nesciunt, est deleniti libero recusandae officiis. Voluptatibus quisquam voluptatum expedita recusandae architecto quibusdam.', NULL, NULL, '2022-06-12 12:20:19', '2022-06-13 00:20:50'),
(2, 'Akin', 'assassinakib619@gmail.com', NULL, '$2y$10$YwprotpQcE1ve35EquE.5ueCf70u7T/eMKSN/GIyF8UdqHyB4HBFm', NULL, NULL, NULL, NULL, '2022-06-13 00:21:48', '2022-06-13 00:21:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_title_unique` (`title`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_name_unique` (`name`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
