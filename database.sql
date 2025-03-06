-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: sql306.infinityfree.com
-- Tiempo de generación: 05-03-2025 a las 23:46:50
-- Versión del servidor: 10.6.19-MariaDB
-- Versión de PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `if0_37385197_users`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad`
--

CREATE TABLE `actividad` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `duracion` int(11) DEFAULT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  `fotos` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `actividad`
--

INSERT INTO `actividad` (`id`, `nombre`, `descripcion`, `duracion`, `estado`, `fotos`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Ir al cine', '<p><strong>Thunderbolts</strong></p>', 140, 1, '', '2025-02-28 22:51:06', '2025-03-05 13:30:08', '2025-03-05 13:30:08'),
(2, 'Casa Vieja', '<p><img title=\"Casa Vieja\" src=\"https://apiconpastel.infinityfreeapp.com/laravel/public/storage/actividad/March2025/atractivos-turisticos-de-tarija-bolivia-1074687.jpg\" alt=\"Valle Tarija\" width=\"1200\" height=\"650\"></p>\r\n<p><strong>La Casa Vieja</strong>, fue construida hace 408 a&ntilde;os en el tiempo de la colonia, la cual cuenta con Vi&ntilde;edos y Bodegas actualmente. Se encuentra ubicada al sur de Bolivia en el departamento de Tarija colindante con los pa&iacute;ses de Chile y Argentia.</p>', 180, 1, '[\"actividad\\/March2025\\/3q7EnINrN8lPcTdAQreU.jpg\",\"actividad\\/March2025\\/ptxujg4jjiMeAR7xROGU.webp\"]', '2025-03-04 10:35:39', '2025-03-05 13:29:35', '2025-03-05 13:29:35'),
(3, 'Visita a viñedos y bodegas artesanales', '<p>Visita a vi&ntilde;edos y bodegas artesanales (ej: Bodega Kuhlmann, Campos de Solana).</p>', 6, 1, '[\"actividad\\/March2025\\/FCka1cAIq1pN3SVaxZod.jpg\"]', '2025-03-05 13:31:00', '2025-03-05 13:47:02', NULL),
(4, 'Cata de vinos y singanis', '<p>Cata de vinos y singanis con explicaciones de en&oacute;logos locales.</p>', 3, 1, '[\"actividad\\/March2025\\/5lnbkhV7XSKUwmqnpnIO.jpg\"]', '2025-03-05 13:32:45', '2025-03-05 13:32:45', NULL),
(5, 'Almuerzo con platos típicos', '<p>Almuerzo con platos t&iacute;picos (saice, ranga-ranga) maridados con vino.</p>', 2, 1, '[\"actividad\\/March2025\\/7072tMWWJHizvbQBIvwH.jpg\"]', '2025-03-05 13:34:27', '2025-03-05 13:34:27', NULL),
(6, 'Caminata a la Laguna de Tolomosa.', '<p>Caminata a la Laguna de Tolomosa.</p>', 5, 1, '[\"actividad\\/March2025\\/kVTTzcIDvK0x4QhPXt2K.jpg\"]', '2025-03-05 13:46:40', '2025-03-05 13:46:40', NULL),
(7, 'Avistamiento de aves', '<p>Avistamiento de aves (ej: c&oacute;ndores, pariguanas).</p>', 2, 1, '[\"actividad\\/March2025\\/ARp8nhPQ9TDJxFJlXPYo.jpg\"]', '2025-03-05 13:47:54', '2025-03-05 13:47:54', NULL),
(8, 'Campamento', '<p>Acampar en los hermosos predios de la cordillera de Sama.</p>', 8, 1, '[\"actividad\\/March2025\\/vjC9BwZWcQXembLIH1cE.jpg\"]', '2025-03-05 13:51:08', '2025-03-05 13:51:08', NULL),
(9, 'Visita al Museo Paleontológico', '<p>Visita al Museo Paleontol&oacute;gico (con f&oacute;siles de mam&iacute;feros prehist&oacute;ricos).</p>', 2, 1, '[\"actividad\\/March2025\\/IlKle0fvepAyUfDarAYA.jpg\"]', '2025-03-05 14:16:11', '2025-03-05 14:16:11', NULL),
(10, 'Recorrido por la Casa Dorada', '<p>Recorrido por la Casa Dorada (joya arquitect&oacute;nica de 1903).</p>', 3, 1, '[\"actividad\\/March2025\\/JsdoTp52qKfw79kToUEZ.jpg\"]', '2025-03-05 14:17:13', '2025-03-05 14:17:13', NULL),
(11, 'Exploración de la Catedral de San Bernardo', '<p>Tour por la Catedral San Bernardo de Traija y explicacion historica por expertos.</p>', 1, 1, '[\"actividad\\/March2025\\/B7Yn4KiV3W11U3V8o4DV.JPG\"]', '2025-03-05 14:20:39', '2025-03-05 14:20:39', NULL),
(12, 'Restaurante Nano\'s', NULL, 480, 1, '[\"actividad\\/March2025\\/82KJAJPQC9TKBZgrwlPA.jpg\"]', '2025-03-05 22:37:35', '2025-03-05 22:37:35', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('admin@gmail.com|177.222.42.106', 'i:1;', 1740751105),
('admin@gmail.com|177.222.42.106:timer', 'i:1740751105;', 1740751105),
('asda@iixia|127.0.0.1', 'i:1;', 1740842350),
('asda@iixia|127.0.0.1:timer', 'i:1740842350;', 1740842350),
('gaa@ga.com|181.188.149.18', 'i:1;', 1740756460),
('gaa@ga.com|181.188.149.18:timer', 'i:1740756460;', 1740756460),
('gaa|181.188.149.18', 'i:1;', 1740756436),
('gaa|181.188.149.18:timer', 'i:1740756436;', 1740756436),
('gaa|181.188.158.67', 'i:1;', 1740756449),
('gaa|181.188.158.67:timer', 'i:1740756449;', 1740756449),
('laravel_cache_voyager_menu_admin', 'O:23:\"TCG\\Voyager\\Models\\Menu\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:4:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"admin\";s:10:\"created_at\";s:19:\"2025-02-27 00:31:56\";s:10:\"updated_at\";s:19:\"2025-02-27 00:31:56\";}s:11:\"\0*\0original\";a:4:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"admin\";s:10:\"created_at\";s:19:\"2025-02-27 00:31:56\";s:10:\"updated_at\";s:19:\"2025-02-27 00:31:56\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:12:\"parent_items\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:19:{i:0;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:1;s:7:\"menu_id\";i:1;s:5:\"title\";s:9:\"Dashboard\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-boat\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:1;s:10:\"created_at\";s:19:\"2025-02-27 00:31:56\";s:10:\"updated_at\";s:19:\"2025-02-27 00:31:56\";s:5:\"route\";s:17:\"voyager.dashboard\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:1;s:7:\"menu_id\";i:1;s:5:\"title\";s:9:\"Dashboard\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-boat\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:1;s:10:\"created_at\";s:19:\"2025-02-27 00:31:56\";s:10:\"updated_at\";s:19:\"2025-02-27 00:31:56\";s:5:\"route\";s:17:\"voyager.dashboard\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:1;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:2;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Media\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:14:\"voyager-images\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:5;s:10:\"created_at\";s:19:\"2025-02-27 00:31:56\";s:10:\"updated_at\";s:19:\"2025-02-27 00:31:56\";s:5:\"route\";s:19:\"voyager.media.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:2;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Media\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:14:\"voyager-images\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:5;s:10:\"created_at\";s:19:\"2025-02-27 00:31:56\";s:10:\"updated_at\";s:19:\"2025-02-27 00:31:56\";s:5:\"route\";s:19:\"voyager.media.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:2;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:3;s:7:\"menu_id\";i:1;s:5:\"title\";s:8:\"Usuarios\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:14:\"voyager-person\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";N;s:5:\"order\";i:3;s:10:\"created_at\";s:19:\"2025-02-27 00:31:56\";s:10:\"updated_at\";s:19:\"2025-02-28 03:25:42\";s:5:\"route\";s:19:\"voyager.users.index\";s:10:\"parameters\";s:4:\"null\";}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:3;s:7:\"menu_id\";i:1;s:5:\"title\";s:8:\"Usuarios\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:14:\"voyager-person\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";N;s:5:\"order\";i:3;s:10:\"created_at\";s:19:\"2025-02-27 00:31:56\";s:10:\"updated_at\";s:19:\"2025-02-28 03:25:42\";s:5:\"route\";s:19:\"voyager.users.index\";s:10:\"parameters\";s:4:\"null\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:3;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:4;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Roles\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-lock\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:2;s:10:\"created_at\";s:19:\"2025-02-27 00:31:56\";s:10:\"updated_at\";s:19:\"2025-02-27 00:31:56\";s:5:\"route\";s:19:\"voyager.roles.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:4;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Roles\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-lock\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:2;s:10:\"created_at\";s:19:\"2025-02-27 00:31:56\";s:10:\"updated_at\";s:19:\"2025-02-27 00:31:56\";s:5:\"route\";s:19:\"voyager.roles.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:4;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:5;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Tools\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:13:\"voyager-tools\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:9;s:10:\"created_at\";s:19:\"2025-02-27 00:31:56\";s:10:\"updated_at\";s:19:\"2025-02-27 00:31:56\";s:5:\"route\";N;s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:5;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Tools\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:13:\"voyager-tools\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:9;s:10:\"created_at\";s:19:\"2025-02-27 00:31:56\";s:10:\"updated_at\";s:19:\"2025-02-27 00:31:56\";s:5:\"route\";N;s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:4:{i:0;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:6;s:7:\"menu_id\";i:1;s:5:\"title\";s:12:\"Menu Builder\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-list\";s:5:\"color\";N;s:9:\"parent_id\";i:5;s:5:\"order\";i:10;s:10:\"created_at\";s:19:\"2025-02-27 00:31:56\";s:10:\"updated_at\";s:19:\"2025-02-27 00:31:56\";s:5:\"route\";s:19:\"voyager.menus.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:6;s:7:\"menu_id\";i:1;s:5:\"title\";s:12:\"Menu Builder\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-list\";s:5:\"color\";N;s:9:\"parent_id\";i:5;s:5:\"order\";i:10;s:10:\"created_at\";s:19:\"2025-02-27 00:31:56\";s:10:\"updated_at\";s:19:\"2025-02-27 00:31:56\";s:5:\"route\";s:19:\"voyager.menus.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:1;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:7;s:7:\"menu_id\";i:1;s:5:\"title\";s:8:\"Database\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-data\";s:5:\"color\";N;s:9:\"parent_id\";i:5;s:5:\"order\";i:11;s:10:\"created_at\";s:19:\"2025-02-27 00:31:56\";s:10:\"updated_at\";s:19:\"2025-02-27 00:31:56\";s:5:\"route\";s:22:\"voyager.database.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:7;s:7:\"menu_id\";i:1;s:5:\"title\";s:8:\"Database\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-data\";s:5:\"color\";N;s:9:\"parent_id\";i:5;s:5:\"order\";i:11;s:10:\"created_at\";s:19:\"2025-02-27 00:31:56\";s:10:\"updated_at\";s:19:\"2025-02-27 00:31:56\";s:5:\"route\";s:22:\"voyager.database.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:2;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:8;s:7:\"menu_id\";i:1;s:5:\"title\";s:7:\"Compass\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:15:\"voyager-compass\";s:5:\"color\";N;s:9:\"parent_id\";i:5;s:5:\"order\";i:12;s:10:\"created_at\";s:19:\"2025-02-27 00:31:56\";s:10:\"updated_at\";s:19:\"2025-02-27 00:31:56\";s:5:\"route\";s:21:\"voyager.compass.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:8;s:7:\"menu_id\";i:1;s:5:\"title\";s:7:\"Compass\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:15:\"voyager-compass\";s:5:\"color\";N;s:9:\"parent_id\";i:5;s:5:\"order\";i:12;s:10:\"created_at\";s:19:\"2025-02-27 00:31:56\";s:10:\"updated_at\";s:19:\"2025-02-27 00:31:56\";s:5:\"route\";s:21:\"voyager.compass.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:3;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:9;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"BREAD\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:13:\"voyager-bread\";s:5:\"color\";N;s:9:\"parent_id\";i:5;s:5:\"order\";i:13;s:10:\"created_at\";s:19:\"2025-02-27 00:31:56\";s:10:\"updated_at\";s:19:\"2025-02-27 00:31:56\";s:5:\"route\";s:19:\"voyager.bread.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:9;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"BREAD\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:13:\"voyager-bread\";s:5:\"color\";N;s:9:\"parent_id\";i:5;s:5:\"order\";i:13;s:10:\"created_at\";s:19:\"2025-02-27 00:31:56\";s:10:\"updated_at\";s:19:\"2025-02-27 00:31:56\";s:5:\"route\";s:19:\"voyager.bread.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:5;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:10;s:7:\"menu_id\";i:1;s:5:\"title\";s:8:\"Settings\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:16:\"voyager-settings\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:14;s:10:\"created_at\";s:19:\"2025-02-27 00:31:56\";s:10:\"updated_at\";s:19:\"2025-02-27 00:31:56\";s:5:\"route\";s:22:\"voyager.settings.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:10;s:7:\"menu_id\";i:1;s:5:\"title\";s:8:\"Settings\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:16:\"voyager-settings\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:14;s:10:\"created_at\";s:19:\"2025-02-27 00:31:56\";s:10:\"updated_at\";s:19:\"2025-02-27 00:31:56\";s:5:\"route\";s:22:\"voyager.settings.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:6;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:11;s:7:\"menu_id\";i:1;s:5:\"title\";s:10:\"Categories\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:18:\"voyager-categories\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:8;s:10:\"created_at\";s:19:\"2025-02-27 00:31:56\";s:10:\"updated_at\";s:19:\"2025-02-27 00:31:56\";s:5:\"route\";s:24:\"voyager.categories.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:11;s:7:\"menu_id\";i:1;s:5:\"title\";s:10:\"Categories\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:18:\"voyager-categories\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:8;s:10:\"created_at\";s:19:\"2025-02-27 00:31:56\";s:10:\"updated_at\";s:19:\"2025-02-27 00:31:56\";s:5:\"route\";s:24:\"voyager.categories.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:7;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:12;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Posts\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-news\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:6;s:10:\"created_at\";s:19:\"2025-02-27 00:31:57\";s:10:\"updated_at\";s:19:\"2025-02-27 00:31:57\";s:5:\"route\";s:19:\"voyager.posts.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:12;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Posts\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-news\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:6;s:10:\"created_at\";s:19:\"2025-02-27 00:31:57\";s:10:\"updated_at\";s:19:\"2025-02-27 00:31:57\";s:5:\"route\";s:19:\"voyager.posts.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:8;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:13;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Pages\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:17:\"voyager-file-text\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:7;s:10:\"created_at\";s:19:\"2025-02-27 00:31:57\";s:10:\"updated_at\";s:19:\"2025-02-27 00:31:57\";s:5:\"route\";s:19:\"voyager.pages.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:13;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Pages\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:17:\"voyager-file-text\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:7;s:10:\"created_at\";s:19:\"2025-02-27 00:31:57\";s:10:\"updated_at\";s:19:\"2025-02-27 00:31:57\";s:5:\"route\";s:19:\"voyager.pages.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:9;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:14;s:7:\"menu_id\";i:1;s:5:\"title\";s:17:\"Reporte Generales\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";N;s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:15;s:10:\"created_at\";s:19:\"2025-02-28 03:31:51\";s:10:\"updated_at\";s:19:\"2025-02-28 03:31:51\";s:5:\"route\";s:29:\"voyager.reporte-general.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:14;s:7:\"menu_id\";i:1;s:5:\"title\";s:17:\"Reporte Generales\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";N;s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:15;s:10:\"created_at\";s:19:\"2025-02-28 03:31:51\";s:10:\"updated_at\";s:19:\"2025-02-28 03:31:51\";s:5:\"route\";s:29:\"voyager.reporte-general.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:10;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:15;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Tours\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";N;s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:16;s:10:\"created_at\";s:19:\"2025-02-28 03:42:41\";s:10:\"updated_at\";s:19:\"2025-02-28 03:42:41\";s:5:\"route\";s:18:\"voyager.tour.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:15;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Tours\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";N;s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:16;s:10:\"created_at\";s:19:\"2025-02-28 03:42:41\";s:10:\"updated_at\";s:19:\"2025-02-28 03:42:41\";s:5:\"route\";s:18:\"voyager.tour.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:11;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:16;s:7:\"menu_id\";i:1;s:5:\"title\";s:11:\"Actividades\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";N;s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:17;s:10:\"created_at\";s:19:\"2025-02-28 03:47:18\";s:10:\"updated_at\";s:19:\"2025-02-28 03:47:18\";s:5:\"route\";s:23:\"voyager.actividad.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:16;s:7:\"menu_id\";i:1;s:5:\"title\";s:11:\"Actividades\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";N;s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:17;s:10:\"created_at\";s:19:\"2025-02-28 03:47:18\";s:10:\"updated_at\";s:19:\"2025-02-28 03:47:18\";s:5:\"route\";s:23:\"voyager.actividad.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:12;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:17;s:7:\"menu_id\";i:1;s:5:\"title\";s:16:\"Tour Actividades\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";N;s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:18;s:10:\"created_at\";s:19:\"2025-02-28 03:51:14\";s:10:\"updated_at\";s:19:\"2025-02-28 03:51:14\";s:5:\"route\";s:28:\"voyager.tour-actividad.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:17;s:7:\"menu_id\";i:1;s:5:\"title\";s:16:\"Tour Actividades\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";N;s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:18;s:10:\"created_at\";s:19:\"2025-02-28 03:51:14\";s:10:\"updated_at\";s:19:\"2025-02-28 03:51:14\";s:5:\"route\";s:28:\"voyager.tour-actividad.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:13;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:18;s:7:\"menu_id\";i:1;s:5:\"title\";s:8:\"Reservas\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";N;s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:19;s:10:\"created_at\";s:19:\"2025-02-28 03:58:36\";s:10:\"updated_at\";s:19:\"2025-02-28 03:58:36\";s:5:\"route\";s:21:\"voyager.reserva.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:18;s:7:\"menu_id\";i:1;s:5:\"title\";s:8:\"Reservas\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";N;s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:19;s:10:\"created_at\";s:19:\"2025-02-28 03:58:36\";s:10:\"updated_at\";s:19:\"2025-02-28 03:58:36\";s:5:\"route\";s:21:\"voyager.reserva.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:14;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:19;s:7:\"menu_id\";i:1;s:5:\"title\";s:14:\"Calificaciones\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";N;s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:20;s:10:\"created_at\";s:19:\"2025-02-28 04:04:57\";s:10:\"updated_at\";s:19:\"2025-02-28 04:04:57\";s:5:\"route\";s:26:\"voyager.calificacion.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:19;s:7:\"menu_id\";i:1;s:5:\"title\";s:14:\"Calificaciones\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";N;s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:20;s:10:\"created_at\";s:19:\"2025-02-28 04:04:57\";s:10:\"updated_at\";s:19:\"2025-02-28 04:04:57\";s:5:\"route\";s:26:\"voyager.calificacion.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:15;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:20;s:7:\"menu_id\";i:1;s:5:\"title\";s:20:\"Reporte Seguimientos\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";N;s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:21;s:10:\"created_at\";s:19:\"2025-02-28 04:10:21\";s:10:\"updated_at\";s:19:\"2025-02-28 04:10:21\";s:5:\"route\";s:33:\"voyager.reporte-seguimiento.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:20;s:7:\"menu_id\";i:1;s:5:\"title\";s:20:\"Reporte Seguimientos\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";N;s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:21;s:10:\"created_at\";s:19:\"2025-02-28 04:10:21\";s:10:\"updated_at\";s:19:\"2025-02-28 04:10:21\";s:5:\"route\";s:33:\"voyager.reporte-seguimiento.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:16;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:21;s:7:\"menu_id\";i:1;s:5:\"title\";s:8:\"Tarjetas\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";N;s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:22;s:10:\"created_at\";s:19:\"2025-02-28 04:18:44\";s:10:\"updated_at\";s:19:\"2025-02-28 04:18:44\";s:5:\"route\";s:21:\"voyager.tarjeta.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:21;s:7:\"menu_id\";i:1;s:5:\"title\";s:8:\"Tarjetas\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";N;s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:22;s:10:\"created_at\";s:19:\"2025-02-28 04:18:44\";s:10:\"updated_at\";s:19:\"2025-02-28 04:18:44\";s:5:\"route\";s:21:\"voyager.tarjeta.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:17;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:22;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Pagos\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";N;s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:23;s:10:\"created_at\";s:19:\"2025-02-28 04:21:34\";s:10:\"updated_at\";s:19:\"2025-02-28 04:21:34\";s:5:\"route\";s:18:\"voyager.pago.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:22;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Pagos\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";N;s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:23;s:10:\"created_at\";s:19:\"2025-02-28 04:21:34\";s:10:\"updated_at\";s:19:\"2025-02-28 04:21:34\";s:5:\"route\";s:18:\"voyager.pago.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:18;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:23;s:7:\"menu_id\";i:1;s:5:\"title\";s:8:\"Facturas\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";N;s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:24;s:10:\"created_at\";s:19:\"2025-02-28 04:27:40\";s:10:\"updated_at\";s:19:\"2025-02-28 04:27:40\";s:5:\"route\";s:21:\"voyager.factura.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:23;s:7:\"menu_id\";i:1;s:5:\"title\";s:8:\"Facturas\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";N;s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:24;s:10:\"created_at\";s:19:\"2025-02-28 04:27:40\";s:10:\"updated_at\";s:19:\"2025-02-28 04:27:40\";s:5:\"route\";s:21:\"voyager.factura.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}', 1743308860);
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('voyager_menu_admin', 'O:23:\"TCG\\Voyager\\Models\\Menu\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:4:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"admin\";s:10:\"created_at\";s:19:\"2025-02-26 20:31:56\";s:10:\"updated_at\";s:19:\"2025-02-26 20:31:56\";}s:11:\"\0*\0original\";a:4:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"admin\";s:10:\"created_at\";s:19:\"2025-02-26 20:31:56\";s:10:\"updated_at\";s:19:\"2025-02-26 20:31:56\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:12:\"parent_items\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:11:{i:0;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:1;s:7:\"menu_id\";i:1;s:5:\"title\";s:7:\"Tablero\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-boat\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";N;s:5:\"order\";i:1;s:10:\"created_at\";s:19:\"2025-02-26 20:31:56\";s:10:\"updated_at\";s:19:\"2025-03-02 01:47:35\";s:5:\"route\";s:17:\"voyager.dashboard\";s:10:\"parameters\";s:4:\"null\";}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:1;s:7:\"menu_id\";i:1;s:5:\"title\";s:7:\"Tablero\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-boat\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";N;s:5:\"order\";i:1;s:10:\"created_at\";s:19:\"2025-02-26 20:31:56\";s:10:\"updated_at\";s:19:\"2025-03-02 01:47:35\";s:5:\"route\";s:17:\"voyager.dashboard\";s:10:\"parameters\";s:4:\"null\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:1;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:2;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Media\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:14:\"voyager-images\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:4;s:10:\"created_at\";s:19:\"2025-02-26 20:31:56\";s:10:\"updated_at\";s:19:\"2025-02-28 14:27:37\";s:5:\"route\";s:19:\"voyager.media.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:2;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Media\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:14:\"voyager-images\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:4;s:10:\"created_at\";s:19:\"2025-02-26 20:31:56\";s:10:\"updated_at\";s:19:\"2025-02-28 14:27:37\";s:5:\"route\";s:19:\"voyager.media.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:2;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:3;s:7:\"menu_id\";i:1;s:5:\"title\";s:8:\"Usuarios\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:14:\"voyager-person\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";N;s:5:\"order\";i:3;s:10:\"created_at\";s:19:\"2025-02-26 20:31:56\";s:10:\"updated_at\";s:19:\"2025-02-28 14:27:37\";s:5:\"route\";s:19:\"voyager.users.index\";s:10:\"parameters\";s:4:\"null\";}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:3;s:7:\"menu_id\";i:1;s:5:\"title\";s:8:\"Usuarios\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:14:\"voyager-person\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";N;s:5:\"order\";i:3;s:10:\"created_at\";s:19:\"2025-02-26 20:31:56\";s:10:\"updated_at\";s:19:\"2025-02-28 14:27:37\";s:5:\"route\";s:19:\"voyager.users.index\";s:10:\"parameters\";s:4:\"null\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:3;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:4;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Roles\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-lock\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:2;s:10:\"created_at\";s:19:\"2025-02-26 20:31:56\";s:10:\"updated_at\";s:19:\"2025-02-28 14:27:37\";s:5:\"route\";s:19:\"voyager.roles.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:4;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Roles\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-lock\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:2;s:10:\"created_at\";s:19:\"2025-02-26 20:31:56\";s:10:\"updated_at\";s:19:\"2025-02-28 14:27:37\";s:5:\"route\";s:19:\"voyager.roles.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:4;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:5;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Tools\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:13:\"voyager-tools\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:9;s:10:\"created_at\";s:19:\"2025-02-26 20:31:56\";s:10:\"updated_at\";s:19:\"2025-02-28 14:31:35\";s:5:\"route\";N;s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:5;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Tools\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:13:\"voyager-tools\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:9;s:10:\"created_at\";s:19:\"2025-02-26 20:31:56\";s:10:\"updated_at\";s:19:\"2025-02-28 14:31:35\";s:5:\"route\";N;s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:4:{i:0;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:6;s:7:\"menu_id\";i:1;s:5:\"title\";s:12:\"Menu Builder\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-list\";s:5:\"color\";N;s:9:\"parent_id\";i:5;s:5:\"order\";i:1;s:10:\"created_at\";s:19:\"2025-02-26 20:31:56\";s:10:\"updated_at\";s:19:\"2025-02-28 14:26:44\";s:5:\"route\";s:19:\"voyager.menus.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:6;s:7:\"menu_id\";i:1;s:5:\"title\";s:12:\"Menu Builder\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-list\";s:5:\"color\";N;s:9:\"parent_id\";i:5;s:5:\"order\";i:1;s:10:\"created_at\";s:19:\"2025-02-26 20:31:56\";s:10:\"updated_at\";s:19:\"2025-02-28 14:26:44\";s:5:\"route\";s:19:\"voyager.menus.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:1;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:7;s:7:\"menu_id\";i:1;s:5:\"title\";s:8:\"Database\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-data\";s:5:\"color\";N;s:9:\"parent_id\";i:5;s:5:\"order\";i:2;s:10:\"created_at\";s:19:\"2025-02-26 20:31:56\";s:10:\"updated_at\";s:19:\"2025-02-28 14:26:50\";s:5:\"route\";s:22:\"voyager.database.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:7;s:7:\"menu_id\";i:1;s:5:\"title\";s:8:\"Database\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-data\";s:5:\"color\";N;s:9:\"parent_id\";i:5;s:5:\"order\";i:2;s:10:\"created_at\";s:19:\"2025-02-26 20:31:56\";s:10:\"updated_at\";s:19:\"2025-02-28 14:26:50\";s:5:\"route\";s:22:\"voyager.database.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:2;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:8;s:7:\"menu_id\";i:1;s:5:\"title\";s:7:\"Compass\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:15:\"voyager-compass\";s:5:\"color\";N;s:9:\"parent_id\";i:5;s:5:\"order\";i:3;s:10:\"created_at\";s:19:\"2025-02-26 20:31:56\";s:10:\"updated_at\";s:19:\"2025-02-28 14:26:50\";s:5:\"route\";s:21:\"voyager.compass.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:8;s:7:\"menu_id\";i:1;s:5:\"title\";s:7:\"Compass\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:15:\"voyager-compass\";s:5:\"color\";N;s:9:\"parent_id\";i:5;s:5:\"order\";i:3;s:10:\"created_at\";s:19:\"2025-02-26 20:31:56\";s:10:\"updated_at\";s:19:\"2025-02-28 14:26:50\";s:5:\"route\";s:21:\"voyager.compass.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:3;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:9;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"BREAD\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:13:\"voyager-bread\";s:5:\"color\";N;s:9:\"parent_id\";i:5;s:5:\"order\";i:4;s:10:\"created_at\";s:19:\"2025-02-26 20:31:56\";s:10:\"updated_at\";s:19:\"2025-02-28 14:26:50\";s:5:\"route\";s:19:\"voyager.bread.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:9;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"BREAD\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:13:\"voyager-bread\";s:5:\"color\";N;s:9:\"parent_id\";i:5;s:5:\"order\";i:4;s:10:\"created_at\";s:19:\"2025-02-26 20:31:56\";s:10:\"updated_at\";s:19:\"2025-02-28 14:26:50\";s:5:\"route\";s:19:\"voyager.bread.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:5;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:10;s:7:\"menu_id\";i:1;s:5:\"title\";s:8:\"Settings\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:16:\"voyager-settings\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:10;s:10:\"created_at\";s:19:\"2025-02-26 20:31:56\";s:10:\"updated_at\";s:19:\"2025-02-28 14:31:35\";s:5:\"route\";s:22:\"voyager.settings.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:10;s:7:\"menu_id\";i:1;s:5:\"title\";s:8:\"Settings\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:16:\"voyager-settings\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:10;s:10:\"created_at\";s:19:\"2025-02-26 20:31:56\";s:10:\"updated_at\";s:19:\"2025-02-28 14:31:35\";s:5:\"route\";s:22:\"voyager.settings.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:6;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:14;s:7:\"menu_id\";i:1;s:5:\"title\";s:17:\"Reporte Generales\";s:3:\"url\";s:22:\"/admin/reporte-general\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:21:\"voyager-documentation\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";N;s:5:\"order\";i:7;s:10:\"created_at\";s:19:\"2025-02-27 23:31:51\";s:10:\"updated_at\";s:19:\"2025-02-28 14:31:35\";s:5:\"route\";N;s:10:\"parameters\";s:0:\"\";}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:14;s:7:\"menu_id\";i:1;s:5:\"title\";s:17:\"Reporte Generales\";s:3:\"url\";s:22:\"/admin/reporte-general\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:21:\"voyager-documentation\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";N;s:5:\"order\";i:7;s:10:\"created_at\";s:19:\"2025-02-27 23:31:51\";s:10:\"updated_at\";s:19:\"2025-02-28 14:31:35\";s:5:\"route\";N;s:10:\"parameters\";s:0:\"\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:7;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:25;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Otros\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:16:\"voyager-treasure\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";N;s:5:\"order\";i:8;s:10:\"created_at\";s:19:\"2025-02-28 14:26:37\";s:10:\"updated_at\";s:19:\"2025-02-28 14:31:35\";s:5:\"route\";N;s:10:\"parameters\";s:0:\"\";}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:25;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Otros\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:16:\"voyager-treasure\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";N;s:5:\"order\";i:8;s:10:\"created_at\";s:19:\"2025-02-28 14:26:37\";s:10:\"updated_at\";s:19:\"2025-02-28 14:31:35\";s:5:\"route\";N;s:10:\"parameters\";s:0:\"\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:3:{i:0;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:12;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Posts\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-news\";s:5:\"color\";N;s:9:\"parent_id\";i:25;s:5:\"order\";i:1;s:10:\"created_at\";s:19:\"2025-02-26 20:31:57\";s:10:\"updated_at\";s:19:\"2025-02-28 14:27:04\";s:5:\"route\";s:19:\"voyager.posts.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:12;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Posts\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-news\";s:5:\"color\";N;s:9:\"parent_id\";i:25;s:5:\"order\";i:1;s:10:\"created_at\";s:19:\"2025-02-26 20:31:57\";s:10:\"updated_at\";s:19:\"2025-02-28 14:27:04\";s:5:\"route\";s:19:\"voyager.posts.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:1;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:13;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Pages\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:17:\"voyager-file-text\";s:5:\"color\";N;s:9:\"parent_id\";i:25;s:5:\"order\";i:2;s:10:\"created_at\";s:19:\"2025-02-26 20:31:57\";s:10:\"updated_at\";s:19:\"2025-02-28 14:29:18\";s:5:\"route\";s:19:\"voyager.pages.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:13;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Pages\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:17:\"voyager-file-text\";s:5:\"color\";N;s:9:\"parent_id\";i:25;s:5:\"order\";i:2;s:10:\"created_at\";s:19:\"2025-02-26 20:31:57\";s:10:\"updated_at\";s:19:\"2025-02-28 14:29:18\";s:5:\"route\";s:19:\"voyager.pages.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:2;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:11;s:7:\"menu_id\";i:1;s:5:\"title\";s:10:\"Categories\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:18:\"voyager-categories\";s:5:\"color\";N;s:9:\"parent_id\";i:25;s:5:\"order\";i:3;s:10:\"created_at\";s:19:\"2025-02-26 20:31:56\";s:10:\"updated_at\";s:19:\"2025-02-28 14:31:23\";s:5:\"route\";s:24:\"voyager.categories.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:11;s:7:\"menu_id\";i:1;s:5:\"title\";s:10:\"Categories\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:18:\"voyager-categories\";s:5:\"color\";N;s:9:\"parent_id\";i:25;s:5:\"order\";i:3;s:10:\"created_at\";s:19:\"2025-02-26 20:31:56\";s:10:\"updated_at\";s:19:\"2025-02-28 14:31:23\";s:5:\"route\";s:24:\"voyager.categories.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:8;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:26;s:7:\"menu_id\";i:1;s:5:\"title\";s:7:\"Turismo\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:21:\"voyager-treasure-open\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";N;s:5:\"order\";i:5;s:10:\"created_at\";s:19:\"2025-02-28 14:29:08\";s:10:\"updated_at\";s:19:\"2025-02-28 14:29:22\";s:5:\"route\";N;s:10:\"parameters\";s:0:\"\";}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:26;s:7:\"menu_id\";i:1;s:5:\"title\";s:7:\"Turismo\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:21:\"voyager-treasure-open\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";N;s:5:\"order\";i:5;s:10:\"created_at\";s:19:\"2025-02-28 14:29:08\";s:10:\"updated_at\";s:19:\"2025-02-28 14:29:22\";s:5:\"route\";N;s:10:\"parameters\";s:0:\"\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:5:{i:0;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:15;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Tours\";s:3:\"url\";s:11:\"/admin/tour\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:16:\"voyager-campfire\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";i:26;s:5:\"order\";i:1;s:10:\"created_at\";s:19:\"2025-02-27 23:42:41\";s:10:\"updated_at\";s:19:\"2025-02-28 14:29:27\";s:5:\"route\";N;s:10:\"parameters\";s:0:\"\";}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:15;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Tours\";s:3:\"url\";s:11:\"/admin/tour\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:16:\"voyager-campfire\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";i:26;s:5:\"order\";i:1;s:10:\"created_at\";s:19:\"2025-02-27 23:42:41\";s:10:\"updated_at\";s:19:\"2025-02-28 14:29:27\";s:5:\"route\";N;s:10:\"parameters\";s:0:\"\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:1;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:16;s:7:\"menu_id\";i:1;s:5:\"title\";s:11:\"Actividades\";s:3:\"url\";s:16:\"/admin/actividad\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:16:\"voyager-activity\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";i:26;s:5:\"order\";i:2;s:10:\"created_at\";s:19:\"2025-02-27 23:47:18\";s:10:\"updated_at\";s:19:\"2025-02-28 14:29:30\";s:5:\"route\";N;s:10:\"parameters\";s:0:\"\";}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:16;s:7:\"menu_id\";i:1;s:5:\"title\";s:11:\"Actividades\";s:3:\"url\";s:16:\"/admin/actividad\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:16:\"voyager-activity\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";i:26;s:5:\"order\";i:2;s:10:\"created_at\";s:19:\"2025-02-27 23:47:18\";s:10:\"updated_at\";s:19:\"2025-02-28 14:29:30\";s:5:\"route\";N;s:10:\"parameters\";s:0:\"\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:2;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:17;s:7:\"menu_id\";i:1;s:5:\"title\";s:16:\"Tour Actividades\";s:3:\"url\";s:21:\"/admin/tour-actividad\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:17:\"voyager-megaphone\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";i:26;s:5:\"order\";i:3;s:10:\"created_at\";s:19:\"2025-02-27 23:51:14\";s:10:\"updated_at\";s:19:\"2025-02-28 14:29:34\";s:5:\"route\";N;s:10:\"parameters\";s:0:\"\";}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:17;s:7:\"menu_id\";i:1;s:5:\"title\";s:16:\"Tour Actividades\";s:3:\"url\";s:21:\"/admin/tour-actividad\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:17:\"voyager-megaphone\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";i:26;s:5:\"order\";i:3;s:10:\"created_at\";s:19:\"2025-02-27 23:51:14\";s:10:\"updated_at\";s:19:\"2025-02-28 14:29:34\";s:5:\"route\";N;s:10:\"parameters\";s:0:\"\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:3;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:20;s:7:\"menu_id\";i:1;s:5:\"title\";s:20:\"Reporte Seguimientos\";s:3:\"url\";s:26:\"/admin/reporte-seguimiento\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:11:\"voyager-eye\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";i:26;s:5:\"order\";i:4;s:10:\"created_at\";s:19:\"2025-02-28 00:10:21\";s:10:\"updated_at\";s:19:\"2025-02-28 14:29:50\";s:5:\"route\";N;s:10:\"parameters\";s:0:\"\";}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:20;s:7:\"menu_id\";i:1;s:5:\"title\";s:20:\"Reporte Seguimientos\";s:3:\"url\";s:26:\"/admin/reporte-seguimiento\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:11:\"voyager-eye\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";i:26;s:5:\"order\";i:4;s:10:\"created_at\";s:19:\"2025-02-28 00:10:21\";s:10:\"updated_at\";s:19:\"2025-02-28 14:29:50\";s:5:\"route\";N;s:10:\"parameters\";s:0:\"\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:4;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:19;s:7:\"menu_id\";i:1;s:5:\"title\";s:14:\"Calificaciones\";s:3:\"url\";s:19:\"/admin/calificacion\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:23:\"voyager-medal-rank-star\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";i:26;s:5:\"order\";i:5;s:10:\"created_at\";s:19:\"2025-02-28 00:04:57\";s:10:\"updated_at\";s:19:\"2025-02-28 14:29:58\";s:5:\"route\";N;s:10:\"parameters\";s:0:\"\";}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:19;s:7:\"menu_id\";i:1;s:5:\"title\";s:14:\"Calificaciones\";s:3:\"url\";s:19:\"/admin/calificacion\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:23:\"voyager-medal-rank-star\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";i:26;s:5:\"order\";i:5;s:10:\"created_at\";s:19:\"2025-02-28 00:04:57\";s:10:\"updated_at\";s:19:\"2025-02-28 14:29:58\";s:5:\"route\";N;s:10:\"parameters\";s:0:\"\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:9;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:27;s:7:\"menu_id\";i:1;s:5:\"title\";s:6:\"Dinero\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:17:\"voyager-bar-chart\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";N;s:5:\"order\";i:6;s:10:\"created_at\";s:19:\"2025-02-28 14:31:13\";s:10:\"updated_at\";s:19:\"2025-02-28 14:31:26\";s:5:\"route\";N;s:10:\"parameters\";s:0:\"\";}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:27;s:7:\"menu_id\";i:1;s:5:\"title\";s:6:\"Dinero\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:17:\"voyager-bar-chart\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";N;s:5:\"order\";i:6;s:10:\"created_at\";s:19:\"2025-02-28 14:31:13\";s:10:\"updated_at\";s:19:\"2025-02-28 14:31:26\";s:5:\"route\";N;s:10:\"parameters\";s:0:\"\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:4:{i:0;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:18;s:7:\"menu_id\";i:1;s:5:\"title\";s:8:\"Reservas\";s:3:\"url\";s:14:\"/admin/reserva\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-bell\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";i:27;s:5:\"order\";i:1;s:10:\"created_at\";s:19:\"2025-02-27 23:58:36\";s:10:\"updated_at\";s:19:\"2025-02-28 14:31:29\";s:5:\"route\";N;s:10:\"parameters\";s:0:\"\";}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:18;s:7:\"menu_id\";i:1;s:5:\"title\";s:8:\"Reservas\";s:3:\"url\";s:14:\"/admin/reserva\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-bell\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";i:27;s:5:\"order\";i:1;s:10:\"created_at\";s:19:\"2025-02-27 23:58:36\";s:10:\"updated_at\";s:19:\"2025-02-28 14:31:29\";s:5:\"route\";N;s:10:\"parameters\";s:0:\"\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:1;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:21;s:7:\"menu_id\";i:1;s:5:\"title\";s:8:\"Tarjetas\";s:3:\"url\";s:14:\"/admin/tarjeta\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:19:\"voyager-credit-card\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";i:27;s:5:\"order\";i:2;s:10:\"created_at\";s:19:\"2025-02-28 00:18:44\";s:10:\"updated_at\";s:19:\"2025-02-28 14:31:32\";s:5:\"route\";N;s:10:\"parameters\";s:0:\"\";}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:21;s:7:\"menu_id\";i:1;s:5:\"title\";s:8:\"Tarjetas\";s:3:\"url\";s:14:\"/admin/tarjeta\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:19:\"voyager-credit-card\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";i:27;s:5:\"order\";i:2;s:10:\"created_at\";s:19:\"2025-02-28 00:18:44\";s:10:\"updated_at\";s:19:\"2025-02-28 14:31:32\";s:5:\"route\";N;s:10:\"parameters\";s:0:\"\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:2;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:22;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Pagos\";s:3:\"url\";s:11:\"/admin/pago\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:14:\"voyager-dollar\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";i:27;s:5:\"order\";i:3;s:10:\"created_at\";s:19:\"2025-02-28 00:21:34\";s:10:\"updated_at\";s:19:\"2025-02-28 14:31:33\";s:5:\"route\";N;s:10:\"parameters\";s:0:\"\";}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:22;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Pagos\";s:3:\"url\";s:11:\"/admin/pago\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:14:\"voyager-dollar\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";i:27;s:5:\"order\";i:3;s:10:\"created_at\";s:19:\"2025-02-28 00:21:34\";s:10:\"updated_at\";s:19:\"2025-02-28 14:31:33\";s:5:\"route\";N;s:10:\"parameters\";s:0:\"\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:3;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:23;s:7:\"menu_id\";i:1;s:5:\"title\";s:8:\"Facturas\";s:3:\"url\";s:14:\"/admin/factura\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:15:\"voyager-receipt\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";i:27;s:5:\"order\";i:4;s:10:\"created_at\";s:19:\"2025-02-28 00:27:40\";s:10:\"updated_at\";s:19:\"2025-02-28 14:31:35\";s:5:\"route\";N;s:10:\"parameters\";s:0:\"\";}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:23;s:7:\"menu_id\";i:1;s:5:\"title\";s:8:\"Facturas\";s:3:\"url\";s:14:\"/admin/factura\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:15:\"voyager-receipt\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";i:27;s:5:\"order\";i:4;s:10:\"created_at\";s:19:\"2025-02-28 00:27:40\";s:10:\"updated_at\";s:19:\"2025-02-28 14:31:35\";s:5:\"route\";N;s:10:\"parameters\";s:0:\"\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:10;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:28;s:7:\"menu_id\";i:1;s:5:\"title\";s:16:\"Reporte reservas\";s:3:\"url\";s:12:\"/pdf/reserva\";s:6:\"target\";s:6:\"_blank\";s:10:\"icon_class\";s:21:\"voyager-book-download\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";N;s:5:\"order\";i:11;s:10:\"created_at\";s:19:\"2025-03-05 14:32:44\";s:10:\"updated_at\";s:19:\"2025-03-05 14:32:44\";s:5:\"route\";N;s:10:\"parameters\";s:0:\"\";}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:28;s:7:\"menu_id\";i:1;s:5:\"title\";s:16:\"Reporte reservas\";s:3:\"url\";s:12:\"/pdf/reserva\";s:6:\"target\";s:6:\"_blank\";s:10:\"icon_class\";s:21:\"voyager-book-download\";s:5:\"color\";s:7:\"#000000\";s:9:\"parent_id\";N;s:5:\"order\";i:11;s:10:\"created_at\";s:19:\"2025-03-05 14:32:44\";s:10:\"updated_at\";s:19:\"2025-03-05 14:32:44\";s:5:\"route\";N;s:10:\"parameters\";s:0:\"\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}', 1743777165);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacion`
--

CREATE TABLE `calificacion` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_turista` bigint(20) UNSIGNED NOT NULL,
  `id_tour_actividad` bigint(20) UNSIGNED NOT NULL,
  `puntuacion` int(11) DEFAULT NULL,
  `comentario` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `calificacion`
--

INSERT INTO `calificacion` (`id`, `id_turista`, `id_tour_actividad`, `puntuacion`, `comentario`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 1, 5, '<p>asdfagag</p>', '2025-03-01 23:25:15', '2025-03-01 23:25:15', NULL),
(2, 2, 14, 5, 'Todo muy excelente', '2025-03-06 12:40:09', '2025-03-06 12:40:09', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2025-02-27 04:31:56', '2025-02-27 04:31:56'),
(2, NULL, 1, 'Category 2', 'category-2', '2025-02-27 04:31:56', '2025-02-27 04:31:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Usuario', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '{}', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 5),
(6, 1, 'created_at', 'timestamp', 'Fecha creación', 0, 0, 1, 0, 0, 0, '{}', 9),
(7, 1, 'updated_at', 'timestamp', 'Fecha atualización', 0, 0, 0, 0, 0, 0, '{}', 11),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 12),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 15),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 16),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, '{}', 13),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'id_operador', 'text', 'Id Operador', 0, 1, 1, 0, 0, 1, '{}', 2),
(58, 7, 'tipo_reporte', 'text', 'Tipo Reporte', 0, 1, 1, 1, 1, 1, '{}', 3),
(59, 7, 'datos', 'rich_text_box', 'Datos', 0, 0, 1, 1, 1, 1, '{}', 4),
(60, 7, 'created_at', 'timestamp', 'Fecha generación', 0, 1, 1, 1, 0, 1, '{}', 5),
(61, 7, 'updated_at', 'timestamp', 'Fecha atualización', 0, 1, 0, 0, 0, 0, '{}', 6),
(62, 7, 'reporte_general_belongsto_user_relationship', 'relationship', 'Operador', 0, 1, 1, 0, 0, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"id_operador\",\"key\":\"id\",\"label\":\"display\",\"pivot_table\":\"actividad\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(63, 8, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(64, 8, 'id_operador', 'text', 'Id Operador', 0, 1, 1, 0, 0, 1, '{}', 2),
(65, 8, 'nombre', 'text', 'titulo', 0, 1, 1, 1, 1, 1, '{}', 3),
(66, 8, 'destino', 'text', 'Destino', 0, 1, 1, 1, 1, 1, '{}', 4),
(67, 8, 'descripcion', 'rich_text_box', 'Descripcion', 0, 0, 1, 1, 1, 1, '{}', 5),
(68, 8, 'precio', 'number', 'Precio', 0, 0, 1, 1, 1, 1, '{}', 6),
(69, 8, 'fecha_inicio', 'timestamp', 'Fecha Inicio', 0, 1, 1, 1, 1, 1, '{}', 7),
(70, 8, 'fecha_fin', 'timestamp', 'Fecha Fin', 0, 1, 1, 1, 1, 1, '{}', 8),
(71, 8, 'cupos_disponibles', 'number', 'Cupos Disponibles', 0, 0, 1, 1, 1, 1, '{}', 9),
(72, 8, 'estado', 'select_dropdown', 'Estado', 1, 1, 1, 1, 1, 1, '{\"default\":\"1\",\"options\":{\"0\":\"Inactivo\",\"1\":\"Activo\"}}', 10),
(73, 8, 'created_at', 'timestamp', 'Fecha creación', 0, 0, 1, 0, 0, 0, '{}', 11),
(74, 8, 'updated_at', 'timestamp', 'Fecha atualización', 0, 0, 0, 0, 0, 0, '{}', 14),
(76, 9, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(77, 9, 'nombre', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, '{}', 2),
(78, 9, 'descripcion', 'rich_text_box', 'Descripcion', 0, 1, 1, 1, 1, 1, '{}', 3),
(79, 9, 'duracion', 'number', 'Duracion', 0, 1, 1, 1, 1, 1, '{}', 4),
(80, 9, 'estado', 'select_dropdown', 'Estado', 1, 1, 1, 1, 1, 1, '{\"default\":\"1\",\"options\":{\"0\":\"Inactivo\",\"1\":\"Activo\"}}', 5),
(81, 9, 'created_at', 'timestamp', 'Fecha creación', 0, 1, 1, 1, 0, 1, '{}', 6),
(82, 9, 'updated_at', 'timestamp', 'Fecha atualización', 0, 0, 0, 0, 0, 0, '{}', 7),
(83, 10, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(84, 10, 'id_tour', 'text', 'Id Tour', 0, 1, 1, 1, 1, 1, '{}', 2),
(85, 10, 'id_actividad', 'text', 'Id Actividad', 0, 1, 1, 1, 1, 1, '{}', 3),
(86, 10, 'id_guia', 'text', 'Id Guia', 0, 1, 1, 1, 1, 1, '{}', 4),
(87, 10, 'orden', 'number', 'Orden', 0, 1, 1, 1, 1, 1, '{}', 5),
(88, 10, 'estado', 'select_dropdown', 'Estado', 1, 1, 1, 1, 1, 1, '{\"default\":\"Programada\",\"options\":{\"Programada\":\"Programada\",\"Cancelada\":\"Cancelada\",\"En curso\":\"En curso\",\"Completada\":\"Completada\"}}', 6),
(89, 10, 'precio_total', 'number', 'Precio Total', 0, 1, 1, 1, 1, 1, '{}', 7),
(90, 10, 'lugar', 'text', 'Lugar', 0, 1, 1, 1, 1, 1, '{}', 8),
(91, 10, 'created_at', 'timestamp', 'Fecha creación', 0, 0, 1, 1, 0, 1, '{}', 10),
(92, 10, 'updated_at', 'timestamp', 'Fecha atualización', 0, 0, 0, 0, 0, 0, '{}', 11),
(93, 10, 'tour_actividad_belongsto_user_relationship', 'relationship', 'Guia', 0, 1, 1, 1, 1, 1, '{\"scope\":\"guias\",\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"id_guia\",\"key\":\"id\",\"label\":\"display\",\"pivot_table\":\"actividad\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(94, 10, 'tour_actividad_belongsto_tour_relationship', 'relationship', 'Tour', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Tour\",\"table\":\"tour\",\"type\":\"belongsTo\",\"column\":\"id_tour\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"actividad\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(95, 10, 'tour_actividad_belongsto_actividad_relationship', 'relationship', 'Actividad', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Actividad\",\"table\":\"actividad\",\"type\":\"belongsTo\",\"column\":\"id_actividad\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"actividad\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(96, 11, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(97, 11, 'id_turista', 'text', 'Id Turista', 1, 1, 1, 1, 1, 1, '{}', 2),
(98, 11, 'id_tour_actividad', 'text', 'Id Tour Actividad', 1, 1, 1, 1, 1, 1, '{}', 3),
(99, 11, 'estado', 'select_dropdown', 'Estado', 1, 1, 1, 1, 1, 1, '{\"default\":\"Pendiente\",\"options\":{\"Pendiente\":\"Pendiente\",\"Confirmada\":\"Confirmada\",\"Cancelado\":\"Cancelado\"}}', 4),
(100, 11, 'created_at', 'timestamp', 'Fecha creación', 0, 1, 1, 1, 0, 1, '{}', 5),
(101, 11, 'updated_at', 'timestamp', 'Fecha atualización', 0, 0, 0, 0, 0, 0, '{}', 6),
(102, 11, 'reserva_belongsto_user_relationship', 'relationship', 'Turista', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"id_turista\",\"key\":\"id\",\"label\":\"display\",\"pivot_table\":\"actividad\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(103, 11, 'reserva_belongsto_tour_actividad_relationship', 'relationship', 'Tour Actividad', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\TourActividad\",\"table\":\"tour_actividad\",\"type\":\"belongsTo\",\"column\":\"id_tour_actividad\",\"key\":\"id\",\"label\":\"display\",\"pivot_table\":\"actividad\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(104, 12, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(105, 12, 'id_turista', 'text', 'Id Turista', 1, 1, 1, 1, 1, 1, '{}', 2),
(106, 12, 'id_tour_actividad', 'text', 'Id Tour Actividad', 1, 1, 1, 1, 1, 1, '{}', 3),
(107, 12, 'puntuacion', 'number', 'Puntuacion', 0, 1, 1, 1, 1, 1, '{}', 4),
(108, 12, 'comentario', 'rich_text_box', 'Comentario', 0, 1, 1, 1, 1, 1, '{}', 5),
(109, 12, 'created_at', 'timestamp', 'Fecha creación', 0, 1, 1, 1, 0, 1, '{}', 6),
(110, 12, 'updated_at', 'timestamp', 'Fecha atualización', 0, 0, 0, 0, 0, 0, '{}', 7),
(111, 12, 'calificacion_belongsto_user_relationship', 'relationship', 'Turista', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"id_turista\",\"key\":\"id\",\"label\":\"display\",\"pivot_table\":\"actividad\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(112, 12, 'calificacion_belongsto_tour_actividad_relationship', 'relationship', 'Tour Actividad', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\TourActividad\",\"table\":\"tour_actividad\",\"type\":\"belongsTo\",\"column\":\"id_tour_actividad\",\"key\":\"id\",\"label\":\"display\",\"pivot_table\":\"actividad\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(113, 13, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(114, 13, 'id_guia', 'text', 'Id Guia', 0, 1, 1, 0, 0, 1, '{}', 2),
(115, 13, 'id_tour_actividad', 'text', 'Id Tour Actividad', 0, 1, 1, 1, 1, 1, '{}', 3),
(116, 13, 'descripcion', 'rich_text_box', 'Descripcion', 0, 1, 1, 1, 1, 1, '{}', 6),
(117, 13, 'tipo_incidente', 'select_dropdown', 'Tipo reporte', 0, 1, 1, 1, 1, 1, '{\"default\":\"Sin nombre\",\"options\":{\"0\":\"Sin nombre\",\"1\":\"Normal\",\"2\":\"Urgente\",\"3\":\"En espera\",\"4\":\"Completado\",\"5\":\"Pendiente\",\"6\":\"Cancelado\",\"7\":\"Aplazado\",\"8\":\"Reprogramado\",\"9\":\"En progreso\",\"10\":\"Finalizado\",\"11\":\"Requiere atenci\\u00f3n\",\"12\":\"Incidencia reportada\",\"13\":\"Incidencia resuelta\",\"14\":\"Problema t\\u00e9cnico\",\"15\":\"Incidencia en ruta\",\"16\":\"Accidente ocurrido\",\"17\":\"Tour afectado\",\"18\":\"Tour suspendido\",\"19\":\"Retraso importante\",\"20\":\"Inconveniente log\\u00edstico\"}}', 5),
(118, 13, 'created_at', 'timestamp', 'Fecha creación', 0, 1, 1, 1, 0, 1, '{}', 7),
(119, 13, 'updated_at', 'timestamp', 'Fecha atualización', 0, 0, 0, 0, 0, 0, '{}', 8),
(120, 13, 'reporte_seguimiento_belongsto_user_relationship', 'relationship', 'Guia', 0, 1, 1, 0, 0, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"id_guia\",\"key\":\"id\",\"label\":\"display\",\"pivot_table\":\"actividad\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(121, 13, 'reporte_seguimiento_belongsto_tour_actividad_relationship', 'relationship', 'Tour actividad', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\TourActividad\",\"table\":\"tour_actividad\",\"type\":\"belongsTo\",\"column\":\"id_tour_actividad\",\"key\":\"id\",\"label\":\"lugar\",\"pivot_table\":\"actividad\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(122, 14, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(123, 14, 'id_turista', 'text', 'Id Turista', 1, 1, 1, 1, 1, 1, '{}', 2),
(124, 14, 'numero_tarjeta', 'number', 'Numero Tarjeta', 0, 1, 1, 1, 1, 1, '{}', 3),
(125, 14, 'nombre_titular', 'text', 'Nombre Titular', 0, 1, 1, 1, 1, 1, '{}', 4),
(126, 14, 'ccv', 'number', 'Ccv', 0, 1, 1, 1, 1, 1, '{}', 5),
(127, 14, 'tipo_tarjeta', 'text', 'Tipo Tarjeta', 0, 1, 1, 1, 1, 1, '{}', 6),
(128, 14, 'estado', 'select_dropdown', 'Estado', 1, 1, 1, 1, 1, 1, '{\"default\":\"Activo\",\"options\":{\"Activo\":\"Activo\",\"Inactivo\":\"Inactivo\"}}', 7),
(129, 14, 'created_at', 'timestamp', 'Fecha creación', 0, 1, 1, 1, 0, 1, '{}', 8),
(130, 14, 'updated_at', 'timestamp', 'Fecha atualización', 0, 0, 0, 0, 0, 0, '{}', 9),
(131, 14, 'tarjetum_belongsto_user_relationship', 'relationship', 'Usuario', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"id_turista\",\"key\":\"id\",\"label\":\"display\",\"pivot_table\":\"actividad\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(132, 15, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(133, 15, 'id_tarjeta', 'text', 'Id Tarjeta', 1, 1, 1, 1, 1, 1, '{}', 2),
(134, 15, 'id_reserva', 'text', 'Id Reserva', 1, 1, 1, 1, 1, 1, '{}', 3),
(135, 15, 'monto', 'number', 'Monto', 0, 1, 1, 1, 1, 1, '{}', 4),
(136, 15, 'estado', 'select_dropdown', 'Estado', 1, 1, 1, 1, 1, 1, '{\"default\":\"Pendiente\",\"options\":{\"Pendiente\":\"Pendiente\",\"Transito\":\"Transito\",\"Cancelado\":\"Cancelado\",\"Fallido\":\"Fallido\",\"Completado\":\"Completado\"}}', 5),
(137, 15, 'created_at', 'timestamp', 'Fecha creación', 0, 1, 1, 1, 0, 1, '{}', 6),
(138, 15, 'updated_at', 'timestamp', 'Fecha atualización', 0, 0, 0, 0, 0, 0, '{}', 7),
(139, 15, 'pago_belongsto_tarjetum_relationship', 'relationship', 'tarjeta', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Tarjeta\",\"table\":\"tarjeta\",\"type\":\"belongsTo\",\"column\":\"id_tarjeta\",\"key\":\"id\",\"label\":\"display\",\"pivot_table\":\"actividad\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(140, 15, 'pago_belongsto_reserva_relationship', 'relationship', 'Reserva', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Reserva\",\"table\":\"reserva\",\"type\":\"belongsTo\",\"column\":\"id_reserva\",\"key\":\"id\",\"label\":\"display\",\"pivot_table\":\"actividad\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(141, 16, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(142, 16, 'id_pago', 'text', 'Id Pago', 1, 1, 1, 1, 1, 1, '{}', 2),
(143, 16, 'total', 'number', 'Total', 0, 1, 1, 1, 1, 1, '{}', 3),
(144, 16, 'estado', 'select_dropdown', 'Estado', 1, 1, 1, 1, 1, 1, '{\"default\":\"Activo\",\"options\":{\"Activo\":\"Activo\",\"Inactivo\":\"Inactivo\"}}', 4),
(145, 16, 'detalles', 'rich_text_box', 'Detalles', 0, 1, 1, 1, 1, 1, '{}', 5),
(146, 16, 'created_at', 'timestamp', 'Fecha creación', 0, 1, 1, 1, 0, 1, '{}', 6),
(147, 16, 'updated_at', 'timestamp', 'Fecha atualización', 0, 0, 0, 0, 0, 0, '{}', 7),
(148, 16, 'factura_belongsto_pago_relationship', 'relationship', 'Pago', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Pago\",\"table\":\"pago\",\"type\":\"belongsTo\",\"column\":\"id_pago\",\"key\":\"id\",\"label\":\"display\",\"pivot_table\":\"actividad\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(149, 8, 'tour_belongsto_user_relationship', 'relationship', 'Operador', 0, 1, 1, 0, 0, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"id_operador\",\"key\":\"id\",\"label\":\"display\",\"pivot_table\":\"actividad\",\"pivot\":\"0\",\"taggable\":\"0\"}', 15),
(156, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 0, 1, 1, 1, 1, '{}', 10),
(157, 1, 'nombre', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, '{}', 6),
(158, 1, 'apellido', 'text', 'Apellido', 0, 1, 1, 1, 1, 1, '{}', 7),
(159, 1, 'telefono', 'text', 'Telefono', 0, 0, 1, 1, 1, 1, '{}', 8),
(160, 1, 'estado_operador', 'select_dropdown', 'Estado Operador', 0, 0, 1, 1, 1, 1, '{\"default\":\"Activo\",\"options\":{\"Activo\":\"Activo\",\"Inactivo\":\"Inactivo\"}}', 17),
(161, 1, 'especialidad_guia', 'rich_text_box', 'Especialidad Guia', 0, 0, 1, 1, 1, 1, '{}', 18),
(162, 1, 'estado_guia', 'text', 'Estado Guia', 0, 0, 1, 1, 1, 1, '{\"default\":\"Disponible\",\"options\":{\"Disponible\":\"Disponible\",\"En servicio\":\"En servicio\",\"Asignado\":\"Asignado\",\"Inactivo\":\"Inactivo\"}}', 19),
(163, 8, 'fotos', 'multiple_images', 'Fotos', 0, 0, 1, 1, 1, 1, '{}', 13),
(164, 8, 'portada', 'image', 'Portada', 1, 0, 1, 1, 1, 1, '{}', 12),
(166, 9, 'fotos', 'multiple_images', 'Fotos', 1, 0, 1, 1, 1, 1, '{}', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `display_name_singular` varchar(255) NOT NULL,
  `display_name_plural` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `policy_name` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2025-02-27 04:31:56', '2025-03-02 00:23:55'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2025-02-27 04:31:56', '2025-02-27 04:31:56'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2025-02-27 04:31:56', '2025-02-27 04:31:56'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2025-02-27 04:31:56', '2025-02-27 04:31:56'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2025-02-27 04:31:57', '2025-02-27 04:31:57'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2025-02-27 04:31:57', '2025-02-27 04:31:57'),
(7, 'reporte_general', 'reporte-general', 'Reporte General', 'Reporte Generales', 'voyager-documentation', 'App\\Models\\ReporteGeneral', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"updated_at\",\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":\"tipo_reporte\",\"scope\":null}', '2025-02-28 07:31:51', '2025-03-02 03:36:04'),
(8, 'tour', 'tour', 'Tour', 'Tours', 'voyager-campfire', 'App\\Models\\Tour', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"updated_at\",\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":\"nombre\",\"scope\":null}', '2025-02-28 07:42:41', '2025-03-02 03:33:34'),
(9, 'actividad', 'actividad', 'Actividad', 'Actividades', 'voyager-activity', 'App\\Models\\Actividad', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2025-02-28 07:47:18', '2025-03-02 03:40:32'),
(10, 'tour_actividad', 'tour-actividad', 'Tour Actividad', 'Tour Actividades', 'voyager-megaphone', 'App\\Models\\TourActividad', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2025-02-28 07:51:14', '2025-03-02 10:09:01'),
(11, 'reserva', 'reserva', 'Reserva', 'Reservas', 'voyager-bell', 'App\\Models\\Reserva', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2025-02-28 07:58:36', '2025-03-02 03:35:25'),
(12, 'calificacion', 'calificacion', 'Calificacion', 'Calificaciones', 'voyager-medal-rank-star', 'App\\Models\\Calificacion', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2025-02-28 08:04:57', '2025-03-02 03:37:17'),
(13, 'reporte_seguimiento', 'reporte-seguimiento', 'Reporte Seguimiento', 'Reporte Seguimientos', 'voyager-eye', 'App\\Models\\ReporteSeguimiento', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2025-02-28 08:10:21', '2025-03-02 03:35:48'),
(14, 'tarjeta', 'tarjeta', 'Tarjeta', 'Tarjetas', 'voyager-credit-card', 'App\\Models\\Tarjeta', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2025-02-28 08:18:44', '2025-03-02 03:34:56'),
(15, 'pago', 'pago', 'Pago', 'Pagos', 'voyager-dollar', 'App\\Models\\Pago', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2025-02-28 08:21:34', '2025-03-02 03:36:28'),
(16, 'factura', 'factura', 'Factura', 'Facturas', 'voyager-receipt', 'App\\Models\\Factura', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2025-02-28 08:27:40', '2025-03-02 03:36:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_pago` bigint(20) UNSIGNED NOT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `estado` enum('Activo','Inactivo') NOT NULL DEFAULT 'Activo',
  `detalles` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`id`, `id_pago`, `total`, `estado`, `detalles`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '584.00', 'Activo', '<p>sadafdfas f a</p>', '2025-03-02 00:03:11', '2025-03-02 00:03:11', NULL),
(2, 2, '20.00', 'Activo', 'Pago realizado el 2025-03-06 02:37:24 por el monto de 20.00. Reserva confirmada.', '2025-03-06 10:37:24', '2025-03-06 10:37:24', NULL),
(3, 3, '300.00', 'Activo', 'Pago realizado el 2025-03-06 02:46:42 por el monto de 300.00. Reserva confirmada.', '2025-03-06 10:46:42', '2025-03-06 10:46:42', NULL),
(4, 4, '40.00', 'Activo', 'Pago realizado el 2025-03-06 02:46:42 por el monto de 40.00. Reserva confirmada.', '2025-03-06 10:46:42', '2025-03-06 10:46:42', NULL),
(5, 5, '80.00', 'Activo', 'Pago realizado el 2025-03-06 04:46:08 por el monto de 80.00. Reserva confirmada.', '2025-03-06 12:46:08', '2025-03-06 12:46:08', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2025-02-27 04:31:56', '2025-02-27 04:31:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `parameters` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Tablero', '', '_self', 'voyager-boat', '#000000', NULL, 1, '2025-02-27 04:31:56', '2025-03-02 09:47:35', 'voyager.dashboard', 'null'),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2025-02-27 04:31:56', '2025-02-28 22:27:37', 'voyager.media.index', NULL),
(3, 1, 'Usuarios', '', '_self', 'voyager-person', '#000000', NULL, 3, '2025-02-27 04:31:56', '2025-02-28 22:27:37', 'voyager.users.index', 'null'),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2025-02-27 04:31:56', '2025-02-28 22:27:37', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2025-02-27 04:31:56', '2025-02-28 22:31:35', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2025-02-27 04:31:56', '2025-02-28 22:26:44', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2025-02-27 04:31:56', '2025-02-28 22:26:50', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2025-02-27 04:31:56', '2025-02-28 22:26:50', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2025-02-27 04:31:56', '2025-02-28 22:26:50', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 10, '2025-02-27 04:31:56', '2025-02-28 22:31:35', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, 25, 3, '2025-02-27 04:31:56', '2025-02-28 22:31:23', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, 25, 1, '2025-02-27 04:31:57', '2025-02-28 22:27:04', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, 25, 2, '2025-02-27 04:31:57', '2025-02-28 22:29:18', 'voyager.pages.index', NULL),
(14, 1, 'Reporte Generales', '/admin/reporte-general', '_self', 'voyager-documentation', '#000000', NULL, 7, '2025-02-28 07:31:51', '2025-02-28 22:31:35', NULL, ''),
(15, 1, 'Tours', '/admin/tour', '_self', 'voyager-campfire', '#000000', 26, 1, '2025-02-28 07:42:41', '2025-02-28 22:29:27', NULL, ''),
(16, 1, 'Actividades', '/admin/actividad', '_self', 'voyager-activity', '#000000', 26, 2, '2025-02-28 07:47:18', '2025-02-28 22:29:30', NULL, ''),
(17, 1, 'Tour Actividades', '/admin/tour-actividad', '_self', 'voyager-megaphone', '#000000', 26, 3, '2025-02-28 07:51:14', '2025-02-28 22:29:34', NULL, ''),
(18, 1, 'Reservas', '/admin/reserva', '_self', 'voyager-bell', '#000000', 27, 1, '2025-02-28 07:58:36', '2025-02-28 22:31:29', NULL, ''),
(19, 1, 'Calificaciones', '/admin/calificacion', '_self', 'voyager-medal-rank-star', '#000000', 26, 5, '2025-02-28 08:04:57', '2025-02-28 22:29:58', NULL, ''),
(20, 1, 'Reporte Seguimientos', '/admin/reporte-seguimiento', '_self', 'voyager-eye', '#000000', 26, 4, '2025-02-28 08:10:21', '2025-02-28 22:29:50', NULL, ''),
(21, 1, 'Tarjetas', '/admin/tarjeta', '_self', 'voyager-credit-card', '#000000', 27, 2, '2025-02-28 08:18:44', '2025-02-28 22:31:32', NULL, ''),
(22, 1, 'Pagos', '/admin/pago', '_self', 'voyager-dollar', '#000000', 27, 3, '2025-02-28 08:21:34', '2025-02-28 22:31:33', NULL, ''),
(23, 1, 'Facturas', '/admin/factura', '_self', 'voyager-receipt', '#000000', 27, 4, '2025-02-28 08:27:40', '2025-02-28 22:31:35', NULL, ''),
(25, 1, 'Otros', '', '_self', 'voyager-treasure', '#000000', NULL, 8, '2025-02-28 22:26:37', '2025-02-28 22:31:35', NULL, ''),
(26, 1, 'Turismo', '', '_self', 'voyager-treasure-open', '#000000', NULL, 5, '2025-02-28 22:29:08', '2025-02-28 22:29:22', NULL, ''),
(27, 1, 'Dinero', '', '_self', 'voyager-bar-chart', '#000000', NULL, 6, '2025-02-28 22:31:13', '2025-02-28 22:31:26', NULL, ''),
(28, 1, 'Reporte reservas', '/pdf/reserva', '_blank', 'voyager-book-download', '#000000', NULL, 11, '2025-03-05 22:32:44', '2025-03-05 22:32:44', NULL, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2016_01_01_000000_add_voyager_user_fields', 1),
(5, '2016_01_01_000000_create_data_types_table', 1),
(6, '2016_05_19_173453_create_menu_table', 1),
(7, '2016_10_21_190000_create_roles_table', 1),
(8, '2016_10_21_190000_create_settings_table', 1),
(9, '2016_11_30_135954_create_permission_table', 1),
(10, '2016_11_30_141208_create_permission_role_table', 1),
(11, '2016_12_26_201236_data_types__add__server_side', 1),
(12, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(13, '2017_01_14_005015_create_translations_table', 1),
(14, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(15, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(16, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(17, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(18, '2017_08_05_000000_add_group_to_settings_table', 1),
(19, '2017_11_26_013050_add_user_role_relationship', 1),
(20, '2017_11_26_015000_create_user_roles_table', 1),
(21, '2018_03_11_000000_add_user_settings', 1),
(22, '2018_03_14_000000_add_details_to_data_types_table', 1),
(23, '2018_03_16_000000_make_settings_value_nullable', 1),
(24, '2016_01_01_000000_create_pages_table', 2),
(25, '2016_01_01_000000_create_posts_table', 2),
(26, '2016_02_15_204651_create_categories_table', 2),
(27, '2017_04_11_000000_alter_post_nullable_fields_table', 2),
(28, '2025_02_27_155229_create_turismo_database', 3),
(29, '2025_02_27_221305_create_personal_access_tokens_table', 3),
(30, '2025_02_28_010739_add_campos_turismo_to_users_table', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `excerpt` text DEFAULT NULL,
  `body` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2025-02-27 04:31:57', '2025-02-27 04:31:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_tarjeta` bigint(20) UNSIGNED NOT NULL,
  `id_reserva` bigint(20) UNSIGNED NOT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  `estado` enum('Pendiente','Transito','Cancelado','Fallido','Completado') NOT NULL DEFAULT 'Pendiente',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pago`
--

INSERT INTO `pago` (`id`, `id_tarjeta`, `id_reserva`, `monto`, `estado`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 2, '55.00', 'Pendiente', '2025-03-01 23:53:23', '2025-03-01 23:53:23', NULL),
(2, 1, 4, '20.00', 'Completado', '2025-03-06 10:37:24', '2025-03-06 10:37:24', NULL),
(3, 2, 5, '300.00', 'Completado', '2025-03-06 10:46:42', '2025-03-06 10:46:42', NULL),
(4, 2, 2, '40.00', 'Completado', '2025-03-06 10:46:42', '2025-03-06 10:46:42', NULL),
(5, 2, 6, '80.00', 'Completado', '2025-03-06 12:46:08', '2025-03-06 12:46:08', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2025-02-27 04:31:56', '2025-02-27 04:31:56'),
(2, 'browse_bread', NULL, '2025-02-27 04:31:56', '2025-02-27 04:31:56'),
(3, 'browse_database', NULL, '2025-02-27 04:31:56', '2025-02-27 04:31:56'),
(4, 'browse_media', NULL, '2025-02-27 04:31:56', '2025-02-27 04:31:56'),
(5, 'browse_compass', NULL, '2025-02-27 04:31:56', '2025-02-27 04:31:56'),
(6, 'browse_menus', 'menus', '2025-02-27 04:31:56', '2025-02-27 04:31:56'),
(7, 'read_menus', 'menus', '2025-02-27 04:31:56', '2025-02-27 04:31:56'),
(8, 'edit_menus', 'menus', '2025-02-27 04:31:56', '2025-02-27 04:31:56'),
(9, 'add_menus', 'menus', '2025-02-27 04:31:56', '2025-02-27 04:31:56'),
(10, 'delete_menus', 'menus', '2025-02-27 04:31:56', '2025-02-27 04:31:56'),
(11, 'browse_roles', 'roles', '2025-02-27 04:31:56', '2025-02-27 04:31:56'),
(12, 'read_roles', 'roles', '2025-02-27 04:31:56', '2025-02-27 04:31:56'),
(13, 'edit_roles', 'roles', '2025-02-27 04:31:56', '2025-02-27 04:31:56'),
(14, 'add_roles', 'roles', '2025-02-27 04:31:56', '2025-02-27 04:31:56'),
(15, 'delete_roles', 'roles', '2025-02-27 04:31:56', '2025-02-27 04:31:56'),
(16, 'browse_users', 'users', '2025-02-27 04:31:56', '2025-02-27 04:31:56'),
(17, 'read_users', 'users', '2025-02-27 04:31:56', '2025-02-27 04:31:56'),
(18, 'edit_users', 'users', '2025-02-27 04:31:56', '2025-02-27 04:31:56'),
(19, 'add_users', 'users', '2025-02-27 04:31:56', '2025-02-27 04:31:56'),
(20, 'delete_users', 'users', '2025-02-27 04:31:56', '2025-02-27 04:31:56'),
(21, 'browse_settings', 'settings', '2025-02-27 04:31:56', '2025-02-27 04:31:56'),
(22, 'read_settings', 'settings', '2025-02-27 04:31:56', '2025-02-27 04:31:56'),
(23, 'edit_settings', 'settings', '2025-02-27 04:31:56', '2025-02-27 04:31:56'),
(24, 'add_settings', 'settings', '2025-02-27 04:31:56', '2025-02-27 04:31:56'),
(25, 'delete_settings', 'settings', '2025-02-27 04:31:56', '2025-02-27 04:31:56'),
(26, 'browse_categories', 'categories', '2025-02-27 04:31:56', '2025-02-27 04:31:56'),
(27, 'read_categories', 'categories', '2025-02-27 04:31:56', '2025-02-27 04:31:56'),
(28, 'edit_categories', 'categories', '2025-02-27 04:31:56', '2025-02-27 04:31:56'),
(29, 'add_categories', 'categories', '2025-02-27 04:31:56', '2025-02-27 04:31:56'),
(30, 'delete_categories', 'categories', '2025-02-27 04:31:56', '2025-02-27 04:31:56'),
(31, 'browse_posts', 'posts', '2025-02-27 04:31:57', '2025-02-27 04:31:57'),
(32, 'read_posts', 'posts', '2025-02-27 04:31:57', '2025-02-27 04:31:57'),
(33, 'edit_posts', 'posts', '2025-02-27 04:31:57', '2025-02-27 04:31:57'),
(34, 'add_posts', 'posts', '2025-02-27 04:31:57', '2025-02-27 04:31:57'),
(35, 'delete_posts', 'posts', '2025-02-27 04:31:57', '2025-02-27 04:31:57'),
(36, 'browse_pages', 'pages', '2025-02-27 04:31:57', '2025-02-27 04:31:57'),
(37, 'read_pages', 'pages', '2025-02-27 04:31:57', '2025-02-27 04:31:57'),
(38, 'edit_pages', 'pages', '2025-02-27 04:31:57', '2025-02-27 04:31:57'),
(39, 'add_pages', 'pages', '2025-02-27 04:31:57', '2025-02-27 04:31:57'),
(40, 'delete_pages', 'pages', '2025-02-27 04:31:57', '2025-02-27 04:31:57'),
(41, 'browse_reporte_general', 'reporte_general', '2025-02-28 07:31:51', '2025-02-28 07:31:51'),
(42, 'read_reporte_general', 'reporte_general', '2025-02-28 07:31:51', '2025-02-28 07:31:51'),
(43, 'edit_reporte_general', 'reporte_general', '2025-02-28 07:31:51', '2025-02-28 07:31:51'),
(44, 'add_reporte_general', 'reporte_general', '2025-02-28 07:31:51', '2025-02-28 07:31:51'),
(45, 'delete_reporte_general', 'reporte_general', '2025-02-28 07:31:51', '2025-02-28 07:31:51'),
(46, 'browse_tour', 'tour', '2025-02-28 07:42:41', '2025-02-28 07:42:41'),
(47, 'read_tour', 'tour', '2025-02-28 07:42:41', '2025-02-28 07:42:41'),
(48, 'edit_tour', 'tour', '2025-02-28 07:42:41', '2025-02-28 07:42:41'),
(49, 'add_tour', 'tour', '2025-02-28 07:42:41', '2025-02-28 07:42:41'),
(50, 'delete_tour', 'tour', '2025-02-28 07:42:41', '2025-02-28 07:42:41'),
(51, 'browse_actividad', 'actividad', '2025-02-28 07:47:18', '2025-02-28 07:47:18'),
(52, 'read_actividad', 'actividad', '2025-02-28 07:47:18', '2025-02-28 07:47:18'),
(53, 'edit_actividad', 'actividad', '2025-02-28 07:47:18', '2025-02-28 07:47:18'),
(54, 'add_actividad', 'actividad', '2025-02-28 07:47:18', '2025-02-28 07:47:18'),
(55, 'delete_actividad', 'actividad', '2025-02-28 07:47:18', '2025-02-28 07:47:18'),
(56, 'browse_tour_actividad', 'tour_actividad', '2025-02-28 07:51:14', '2025-02-28 07:51:14'),
(57, 'read_tour_actividad', 'tour_actividad', '2025-02-28 07:51:14', '2025-02-28 07:51:14'),
(58, 'edit_tour_actividad', 'tour_actividad', '2025-02-28 07:51:14', '2025-02-28 07:51:14'),
(59, 'add_tour_actividad', 'tour_actividad', '2025-02-28 07:51:14', '2025-02-28 07:51:14'),
(60, 'delete_tour_actividad', 'tour_actividad', '2025-02-28 07:51:14', '2025-02-28 07:51:14'),
(61, 'browse_reserva', 'reserva', '2025-02-28 07:58:36', '2025-02-28 07:58:36'),
(62, 'read_reserva', 'reserva', '2025-02-28 07:58:36', '2025-02-28 07:58:36'),
(63, 'edit_reserva', 'reserva', '2025-02-28 07:58:36', '2025-02-28 07:58:36'),
(64, 'add_reserva', 'reserva', '2025-02-28 07:58:36', '2025-02-28 07:58:36'),
(65, 'delete_reserva', 'reserva', '2025-02-28 07:58:36', '2025-02-28 07:58:36'),
(66, 'browse_calificacion', 'calificacion', '2025-02-28 08:04:57', '2025-02-28 08:04:57'),
(67, 'read_calificacion', 'calificacion', '2025-02-28 08:04:57', '2025-02-28 08:04:57'),
(68, 'edit_calificacion', 'calificacion', '2025-02-28 08:04:57', '2025-02-28 08:04:57'),
(69, 'add_calificacion', 'calificacion', '2025-02-28 08:04:57', '2025-02-28 08:04:57'),
(70, 'delete_calificacion', 'calificacion', '2025-02-28 08:04:57', '2025-02-28 08:04:57'),
(71, 'browse_reporte_seguimiento', 'reporte_seguimiento', '2025-02-28 08:10:21', '2025-02-28 08:10:21'),
(72, 'read_reporte_seguimiento', 'reporte_seguimiento', '2025-02-28 08:10:21', '2025-02-28 08:10:21'),
(73, 'edit_reporte_seguimiento', 'reporte_seguimiento', '2025-02-28 08:10:21', '2025-02-28 08:10:21'),
(74, 'add_reporte_seguimiento', 'reporte_seguimiento', '2025-02-28 08:10:21', '2025-02-28 08:10:21'),
(75, 'delete_reporte_seguimiento', 'reporte_seguimiento', '2025-02-28 08:10:21', '2025-02-28 08:10:21'),
(76, 'browse_tarjeta', 'tarjeta', '2025-02-28 08:18:44', '2025-02-28 08:18:44'),
(77, 'read_tarjeta', 'tarjeta', '2025-02-28 08:18:44', '2025-02-28 08:18:44'),
(78, 'edit_tarjeta', 'tarjeta', '2025-02-28 08:18:44', '2025-02-28 08:18:44'),
(79, 'add_tarjeta', 'tarjeta', '2025-02-28 08:18:44', '2025-02-28 08:18:44'),
(80, 'delete_tarjeta', 'tarjeta', '2025-02-28 08:18:44', '2025-02-28 08:18:44'),
(81, 'browse_pago', 'pago', '2025-02-28 08:21:34', '2025-02-28 08:21:34'),
(82, 'read_pago', 'pago', '2025-02-28 08:21:34', '2025-02-28 08:21:34'),
(83, 'edit_pago', 'pago', '2025-02-28 08:21:34', '2025-02-28 08:21:34'),
(84, 'add_pago', 'pago', '2025-02-28 08:21:34', '2025-02-28 08:21:34'),
(85, 'delete_pago', 'pago', '2025-02-28 08:21:34', '2025-02-28 08:21:34'),
(86, 'browse_factura', 'factura', '2025-02-28 08:27:40', '2025-02-28 08:27:40'),
(87, 'read_factura', 'factura', '2025-02-28 08:27:40', '2025-02-28 08:27:40'),
(88, 'edit_factura', 'factura', '2025-02-28 08:27:40', '2025-02-28 08:27:40'),
(89, 'add_factura', 'factura', '2025-02-28 08:27:40', '2025-02-28 08:27:40'),
(90, 'delete_factura', 'factura', '2025-02-28 08:27:40', '2025-02-28 08:27:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(1, 4),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(41, 3),
(42, 1),
(42, 3),
(43, 1),
(43, 3),
(44, 1),
(44, 3),
(45, 1),
(45, 3),
(46, 1),
(46, 3),
(46, 4),
(47, 1),
(47, 3),
(47, 4),
(48, 1),
(48, 3),
(49, 1),
(49, 3),
(50, 1),
(50, 3),
(51, 1),
(51, 3),
(51, 4),
(52, 1),
(52, 3),
(52, 4),
(53, 1),
(53, 3),
(54, 1),
(54, 3),
(55, 1),
(55, 3),
(56, 1),
(56, 3),
(56, 4),
(57, 1),
(57, 3),
(57, 4),
(58, 1),
(58, 3),
(59, 1),
(59, 3),
(60, 1),
(60, 3),
(61, 1),
(61, 3),
(62, 1),
(62, 3),
(63, 1),
(63, 3),
(64, 1),
(64, 3),
(65, 1),
(65, 3),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(71, 3),
(71, 4),
(72, 1),
(72, 3),
(72, 4),
(73, 1),
(73, 4),
(74, 1),
(74, 4),
(75, 1),
(75, 4),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 2, 'API Token', '3aaf06cc93133a6acd478b5426944327840f83cc154206354d5ad2861a05bb8f', '[\"*\"]', '2025-03-06 01:29:18', NULL, '2025-03-05 23:32:05', '2025-03-06 01:29:18'),
(2, 'App\\Models\\User', 2, 'API Token', '2d1a754ad3e3b04da7e44d7638e2206282eb7e61225c3b7d0194ac27d0b3a981', '[\"*\"]', '2025-03-06 12:46:15', NULL, '2025-03-06 10:36:21', '2025-03-06 12:46:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `excerpt` text DEFAULT NULL,
  `body` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2025-02-27 04:31:57', '2025-02-27 04:31:57'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2025-02-27 04:31:57', '2025-02-27 04:31:57'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2025-02-27 04:31:57', '2025-02-27 04:31:57'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2025-02-27 04:31:57', '2025-02-27 04:31:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reporte_general`
--

CREATE TABLE `reporte_general` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_operador` bigint(20) UNSIGNED DEFAULT NULL,
  `tipo_reporte` varchar(255) DEFAULT NULL,
  `datos` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `reporte_general`
--

INSERT INTO `reporte_general` (`id`, `id_operador`, `tipo_reporte`, `datos`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'Prueba', '<!--?php\r\n\r\nnamespace App\\Models;\r\n\r\nuse Illuminate\\Database\\Eloquent\\Model;\r\nuse Illuminate\\Support\\Facades\\Auth;\r\n\r\nclass Tour extends Model\r\n{\r\n    protected $table = \'tour\';\r\n    protected $primaryKey = \'id\';\r\n    public $timestamps = true;\r\n    //\r\n    protected static function booted()\r\n    {\r\n        static::creating(function ($tour) {\r\n            // Asignar el id_operador antes de crear el tour\r\n            if (Auth::check()) {\r\n                $tour--->\r\n<p>id_operador = Auth::id(); } }); static::updating(function ($tour) { if (Auth::check()) { $tour-&gt;id_operador = Auth::id(); } }); } }</p>', '2025-03-01 04:16:28', '2025-03-01 04:16:28', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reporte_seguimiento`
--

CREATE TABLE `reporte_seguimiento` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_guia` bigint(20) UNSIGNED DEFAULT NULL,
  `id_tour_actividad` bigint(20) UNSIGNED DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `tipo_incidente` bigint(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `reporte_seguimiento`
--

INSERT INTO `reporte_seguimiento` (`id`, `id_guia`, `id_tour_actividad`, `descripcion`, `tipo_incidente`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 1, '<p>desparecidos&nbsp;<strong>Need Flanders</strong></p>', 10, '2025-02-28 23:22:12', '2025-02-28 23:22:12', NULL),
(2, 2, 1, '<p>hola como estasmos mi gente viva el PE</p>', 2, '2025-03-01 00:35:00', '2025-03-01 04:49:42', NULL),
(3, 2, 1, '<p>Desaparecieron 10 Gringos</p>', 20, '2025-03-01 04:55:08', '2025-03-01 04:55:08', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_turista` bigint(20) UNSIGNED NOT NULL,
  `id_tour_actividad` bigint(20) UNSIGNED NOT NULL,
  `estado` enum('Pendiente','Confirmada','Cancelado') NOT NULL DEFAULT 'Pendiente',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`id`, `id_turista`, `id_tour_actividad`, `estado`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 2, 12, 'Confirmada', '2025-03-01 23:27:00', '2025-03-06 10:46:42', NULL),
(3, 2, 7, 'Cancelado', '2025-03-06 01:29:18', '2025-03-06 12:39:48', NULL),
(4, 2, 8, 'Confirmada', '2025-03-06 10:37:16', '2025-03-06 10:37:24', NULL),
(5, 2, 14, 'Confirmada', '2025-03-06 10:45:15', '2025-03-06 10:46:42', NULL),
(6, 2, 7, 'Confirmada', '2025-03-06 10:47:00', '2025-03-06 12:46:08', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2025-02-27 04:31:56', '2025-02-27 04:31:56'),
(2, 'user', 'Turista', '2025-02-27 04:31:56', '2025-02-28 07:23:08'),
(3, 'operador', 'Operador', '2025-02-28 07:23:25', '2025-02-28 07:23:25'),
(4, 'guia', 'Guia turistico', '2025-02-28 07:23:38', '2025-02-28 07:23:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1P2pTWEAbsnkbt721ixpmUg7vWDDvKHAXPJ7qvWz', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiOVRxZ1FZbWg1dVpzbFJiWXAxdzQ0YnRjMGF1ZWxMdnFzcmFldVdQZiI7czozOiJ1cmwiO2E6MDp7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4vYWN0aXZpZGFkIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjt9', 1740872437),
('2ZjRfl6TuXpG9mfrQtMWkzVuNRW5DL71Adip8Mnq', 2, '181.115.146.114', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Mobile Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiNDFSTEt0TXNxQkdzalpqeGk2bFBVZFNRSkdHdTh6S2NYWWhGVXZrYiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjY3OiJodHRwczovL2FwaWNvbnBhc3RlbC5pbmZpbml0eWZyZWVhcHAuY29tL2xhcmF2ZWwvcHVibGljL2FkbWluL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjt9', 1741185268),
('4uAAJlfGNtZ25ACli1dWhtmAUiCBTePESDrbudSJ', NULL, '181.115.189.210', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib1RGdDlXb3gySVYyZlJRVUF5UXhueWpBemozcWhuU00wdVdldjBKdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTQ6Imh0dHA6Ly9hcGljb25wYXN0ZWwuaW5maW5pdHlmcmVlYXBwLmNvbS9sYXJhdmVsL3B1YmxpYyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740755900),
('7WIiwwbohfatfFSEuyAVSpcjRjl4elRryd5mBvcd', 3, '181.188.150.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoidDFGOHMxQW85M2VvaDdzTUtqUTBNeFFZWElJaUxHZkhydTBhTms2WiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjgxOiJodHRwczovL2FwaWNvbnBhc3RlbC5pbmZpbml0eWZyZWVhcHAuY29tL2xhcmF2ZWwvcHVibGljL2FkbWluL3JlcG9ydGUtc2VndWltaWVudG8iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO30=', 1740756133),
('87nmf7t9eCdWpM2WZohV1OpsivoYAnlght07i1oA', 1, '181.115.215.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoib1pNR1U4RTYxek5hdkhUcjdtS1Vvc3BZMldXckZuWVpOZmZHU1lrdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjY6Imh0dHBzOi8vYXBpY29ucGFzdGVsLmluZmluaXR5ZnJlZWFwcC5jb20vbGFyYXZlbC9wdWJsaWMvYWRtaW4vdG91ciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1741155878),
('CXJRMCJR9EZhgyjxsPYr7uWXHCsk0XR6NIaEmHHP', NULL, '177.222.61.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTmlqWHl6WXdxNHBjUGd1SzFsMlM0Y2RTdDBaakRUYXZYZG1FdUVhUiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo3MDoiaHR0cHM6Ly9hcGljb25wYXN0ZWwuaW5maW5pdHlmcmVlYXBwLmNvbS9sYXJhdmVsL3B1YmxpYy9hZG1pbi90b3VyP2k9MSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjY3OiJodHRwczovL2FwaWNvbnBhc3RlbC5pbmZpbml0eWZyZWVhcHAuY29tL2xhcmF2ZWwvcHVibGljL2FkbWluL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1740975088),
('eZSLvGnXZKW3cKb6esMlxiivU3cU0nBiHLLFcSy2', 2, '181.115.189.210', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Mobile Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiR2owVFYzS0hhQ0I1Y3dRZHVMS3J5eTczRUJUNXJuVHNiaXkwQ3U0NyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjY3OiJodHRwczovL2FwaWNvbnBhc3RlbC5pbmZpbml0eWZyZWVhcHAuY29tL2xhcmF2ZWwvcHVibGljL2FkbWluL3VzZXJzIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjt9', 1740761274),
('fItWgLHFWJ0VTUuVE2ukUwCsyQAjFhbfRGpO0C3c', 1, '131.0.198.195', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoibkpQSVh1MGV1VmJDaE9EejRoTlVCYkdhdkNtcUw5WUx1V3p4M2N3UiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjY5OiJodHRwczovL2FwaWNvbnBhc3RlbC5pbmZpbml0eWZyZWVhcHAuY29tL2xhcmF2ZWwvcHVibGljL2FkbWluL3Jlc2VydmEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1741236078),
('jEv9FQsBxaXe2qBVBst5pYCdntDBfvNAEAOw3xen', 2, '181.188.150.34', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiczZyd2lMY1daYk9NUWlYSzJQR2hsNVp6SU9tY05NNEVMOGdyMEdiaSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzY6Imh0dHBzOi8vYXBpY29ucGFzdGVsLmluZmluaXR5ZnJlZWFwcC5jb20vbGFyYXZlbC9wdWJsaWMvYWRtaW4vdG91ci1hY3RpdmlkYWQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO30=', 1741185552),
('MUPTQ5FvDYZauW6V1IfJRuLrKUP8W9nURodqxrpm', 2, '190.129.16.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoicjF6bXdWQjc4WFpFb0N3akE3ZVBkS1AxWUJxVnZvZU9GeXVTWTVvbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vYXBpY29ucGFzdGVsLmluZmluaXR5ZnJlZWFwcC5jb20vbGFyYXZlbC9wdWJsaWMvYWRtaW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjt9', 1741195885),
('N8MPCtolE0dbCWBj68y2nlvvkK90df7SmMSyCzJX', NULL, '66.249.83.69', 'Mozilla/5.0 (Linux; Android 7.0; SM-G930V Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.125 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibGlaZFpQSTlOREhid1lpamh5aGxKc1N3RWExY0w3b1BGY2YwTVVwQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHBzOi8vYXBpY29ucGFzdGVsLmluZmluaXR5ZnJlZWFwcC5jb20vbGFyYXZlbC9wdWJsaWMvYWRtaW4vbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1741185478),
('qKdQoQhghf52HnTspsntQQ1G3aT4Qf72zFIyfWIg', NULL, '66.249.83.69', 'Mozilla/5.0 (Linux; Android 7.0; SM-G930V Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.125 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYjR1Q21IOTBlU0U5Q3RheG9nMFR2c1hreGJ0TUpJUHZNYXhrT3RSMCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo4MzoiaHR0cHM6Ly9hcGljb25wYXN0ZWwuaW5maW5pdHlmcmVlYXBwLmNvbS9sYXJhdmVsL3B1YmxpYy9hZG1pbi90b3VyLWFjdGl2aWRhZC9jcmVhdGUiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4MzoiaHR0cHM6Ly9hcGljb25wYXN0ZWwuaW5maW5pdHlmcmVlYXBwLmNvbS9sYXJhdmVsL3B1YmxpYy9hZG1pbi90b3VyLWFjdGl2aWRhZC9jcmVhdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1741185516),
('QtYoO6JiKPEysPwJoDCOq4MZQJv0yN1p1R01XvX5', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoibnhOOXRLTnRnY2xwTWVNVENRVmliYlNTenhwbFhLMTU0WlROQmtWUSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMzOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4vYnJlYWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO30=', 1740792962),
('R16giVPyQfeQlun5QTW2boTxo97tOA9MQe4JRaLf', 1, '190.129.16.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiaXdpY1FaNVdjSzVoQVk3dElNeHZrUjJKU1o2bmUwRHM3NDdSS2R2bSI7czozOiJ1cmwiO2E6MDp7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjY3OiJodHRwczovL2FwaWNvbnBhc3RlbC5pbmZpbml0eWZyZWVhcHAuY29tL2xhcmF2ZWwvcHVibGljL2FkbWluL3VzZXJzIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1741195830),
('tkiVlTqvBWekEtc6Ty1kiifUge9HYnbZYjamiCk5', 1, '177.222.61.7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiS203ZzNYeEV5bGtFTDRQSTM3RjJZc2ZaNlBVWElreU9MNHNQUjJ5VyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vYXBpY29ucGFzdGVsLmluZmluaXR5ZnJlZWFwcC5jb20vbGFyYXZlbC9wdWJsaWMvYWRtaW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1740949863),
('U6M9JV6bMb54MmHqlRU5Bjt4UKcnakZf0nhqoFP8', NULL, '66.249.83.69', 'Mozilla/5.0 (Linux; Android 7.0; SM-G930V Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.125 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVkJUS1M1c3BTbWFYaHhDTkdtRU1WNE5yYnAyNTR0aEVPbTkwSkZlRiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo3NjoiaHR0cHM6Ly9hcGljb25wYXN0ZWwuaW5maW5pdHlmcmVlYXBwLmNvbS9sYXJhdmVsL3B1YmxpYy9hZG1pbi90b3VyLWFjdGl2aWRhZCI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjc2OiJodHRwczovL2FwaWNvbnBhc3RlbC5pbmZpbml0eWZyZWVhcHAuY29tL2xhcmF2ZWwvcHVibGljL2FkbWluL3RvdXItYWN0aXZpZGFkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741185478),
('UBh6DMmCK9kCRdTyq0LJbATzLrexuP1AgfUrM0yG', 2, '181.188.149.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiYVN5WFdyS2ZJOWFNNVVHVmtZMjJuRzFlUnZDMWVsTXhSS0M2ZzhDaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODc6Imh0dHBzOi8vYXBpY29ucGFzdGVsLmluZmluaXR5ZnJlZWFwcC5jb20vbGFyYXZlbC9wdWJsaWMvYWRtaW4vYnJlYWQvdG91cl9hY3RpdmlkYWQvZWRpdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO30=', 1740756761),
('wBuclK7aUQAJghQ9xF4GQGTHNQZWjPqf9CXquYXQ', 1, '181.115.146.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoicVN1WGFqU0h4ZVJzaXpWY2ZsTG5ZOGo4U21HUWV3dURaNWQ5OHF3NiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjY3OiJodHRwczovL2FwaWNvbnBhc3RlbC5pbmZpbml0eWZyZWVhcHAuY29tL2xhcmF2ZWwvcHVibGljL2FkbWluL3VzZXJzIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1741186424),
('wwT8baHsXKsADeaWRkDZxEFl22W7yKA6cogAHeHR', 1, '181.188.158.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiUVJ4b3V5TTltQ3J6cWFvZUtWMGVsTHlRS1Nqd2k5VmN3WGxDNlpDdSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjc0OiJodHRwczovL2FwaWNvbnBhc3RlbC5pbmZpbml0eWZyZWVhcHAuY29tL2xhcmF2ZWwvcHVibGljL2FkbWluL2FjdGl2aWRhZC8xMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1741186165),
('Yjutw4Hq4fZ9a2OMSn1ZDiYbVzl5KuS5xlcZWPdh', NULL, '66.249.83.68', 'Mozilla/5.0 (Linux; Android 7.0; SM-G930V Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.125 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWkJsaTlqczlMbzlZYnczYjN2bnBHR3c5Sm85d2owVzZPZ0h3N2hpdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHBzOi8vYXBpY29ucGFzdGVsLmluZmluaXR5ZnJlZWFwcC5jb20vbGFyYXZlbC9wdWJsaWMvYWRtaW4vbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1741185517),
('Z4sVWhGQymucd0xPfsjlBffPaex12jYVZGTXW6rE', 2, '190.129.196.198', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Mobile Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZnhTY2NoeENnWHV6UVBwVUVVOHdFTWhoM3hPUE8xRm9GTWFRVXhPMSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjY3OiJodHRwczovL2FwaWNvbnBhc3RlbC5pbmZpbml0eWZyZWVhcHAuY29tL2xhcmF2ZWwvcHVibGljL2FkbWluL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjt9', 1740760347),
('zFXr9M2fXplL2VhOdWodGVXdBV5sHTdKYQkvgq9a', 3, '181.115.189.210', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoidWlmNk9XQW9LcDV5QjlFUW1DRkhVZVJFdmhaRjdCMFp0aHNqVGh0QyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjY6Imh0dHBzOi8vYXBpY29ucGFzdGVsLmluZmluaXR5ZnJlZWFwcC5jb20vbGFyYXZlbC9wdWJsaWMvYWRtaW4vdG91ciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO30=', 1740761826);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `details` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Tarija Tours', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Los Hombres Detras del Sol', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings/March2025/Uj67WMWzikEYdR1ySJAx.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings/March2025/wuft4gNEmeiX08MsjxFh.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Tarija Tours', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Bienvenido al paner de Administración. Puedes ingresar si tienes unos roles.', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings/March2025/HG6MLmGzWWpyIZTXn2ID.png', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings/March2025/Ibu1rMhttDbPUWTzOLob.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '311009321920-iqjl5s784ndvufdo7ii8ue13e0vi1apf.apps.googleusercontent.com', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjeta`
--

CREATE TABLE `tarjeta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_turista` bigint(20) UNSIGNED NOT NULL,
  `numero_tarjeta` bigint(30) DEFAULT NULL,
  `nombre_titular` varchar(255) DEFAULT NULL,
  `ccv` varchar(255) DEFAULT NULL,
  `tipo_tarjeta` varchar(255) DEFAULT NULL,
  `estado` enum('Activo','Inactivo') NOT NULL DEFAULT 'Activo',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tarjeta`
--

INSERT INTO `tarjeta` (`id`, `id_turista`, `numero_tarjeta`, `nombre_titular`, `ccv`, `tipo_tarjeta`, `estado`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 66516516351645, 'Nicolas', '002', 'Debito', 'Activo', '2025-03-01 23:34:12', '2025-03-01 23:34:12', NULL),
(2, 2, 651651615, 'Homero', '22', 'visa', 'Activo', '2025-03-06 10:45:47', '2025-03-06 10:45:47', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tour`
--

CREATE TABLE `tour` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_operador` bigint(20) UNSIGNED DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `destino` varchar(255) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `fecha_inicio` timestamp NULL DEFAULT NULL,
  `fecha_fin` timestamp NULL DEFAULT NULL,
  `cupos_disponibles` int(11) DEFAULT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  `portada` varchar(255) NOT NULL,
  `fotos` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tour`
--

INSERT INTO `tour` (`id`, `id_operador`, `nombre`, `destino`, `descripcion`, `precio`, `fecha_inicio`, `fecha_fin`, `cupos_disponibles`, `estado`, `portada`, `fotos`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Media noche', 'Tarquia', '<p>Ver&nbsp;<strong>Los simpsons</strong></p>', '40.00', '2025-02-28 18:49:00', '2025-03-14 17:49:00', 40, 1, 'tour/March2025/Wi8eiV2w4IpFHvCBx2NJ.jpg', '[\"tour\\/March2025\\/Of9qdxoE2uHtXDNRO46F.jpg\",\"tour\\/March2025\\/CPUq1egRSKTsTCJ8EJpF.jpg\",\"tour\\/March2025\\/zr6oDizq6HQuRZhRGZqZ.jpg\",\"tour\\/March2025\\/j4YEvSHUxGCEAV3M4ZJn.jpg\"]', '2025-02-28 22:50:00', '2025-03-05 13:22:45', '2025-03-05 13:22:45'),
(2, 2, 'Lego', NULL, NULL, NULL, NULL, NULL, NULL, 1, '', '[\"tour\\\\March2025\\\\c0hHT1KfhBjvTBG25iEU.png\",\"tour\\\\March2025\\\\kWc9AhRWd2NDVLmCze2p.jpg\",\"tour\\\\March2025\\\\fstKHnn2di5nNCmuoH5U.jpg\",\"tour\\\\March2025\\\\aUJsJYNN84NUQeaTUIa5.png\"]', '2025-03-01 02:55:07', '2025-03-05 13:23:02', '2025-03-05 13:23:02'),
(3, 2, 'Ruta del Vino y Singani: Entre los viñedos más altos del mundo', 'Tarija', NULL, '1000.00', '2025-03-03 16:00:00', '2025-03-10 09:30:00', 2000, 1, 'tour/March2025/zk474sCCkRpVZWy8tDmr.jpg', NULL, '2025-03-04 10:40:41', '2025-03-05 13:22:39', '2025-03-05 13:22:39'),
(4, 1, 'Tour Vitivinícola en el Valle de la Concepción', 'Valle de la concepcion', '<p>Descubre por qu&eacute; Tarija es conocida como la capital del vino boliviano. Este tour te llevar&aacute; a bodegas tradicionales y modernas en el Valle de la Concepci&oacute;n, donde podr&aacute;s degustar vinos singulares como el \"Cepa de Oro\" y singanis (aguardiente de uva).</p>', '150.00', '2025-03-22 08:28:00', '2025-03-23 08:28:00', 10, 1, 'tour/March2025/V2GoYee6Ghup8pbHtYSL.jpg', NULL, '2025-03-05 13:28:52', '2025-03-05 13:28:52', NULL),
(5, 1, 'Tour Ecológico en la Reserva Biológica Cordillera de Sama', 'Cordillera de Sama', '<p>Explora la biodiversidad de los Andes en esta reserva protegida, hogar de lagunas altoandinas, que&ntilde;uales y fauna &uacute;nica como vicu&ntilde;as y flamencos andinos.</p>', '300.00', '2025-03-25 08:41:00', '2025-03-26 08:41:00', 20, 1, 'tour/March2025/9svA2E13fGUKa1wqkdME.jpg', NULL, '2025-03-05 13:45:23', '2025-03-05 13:45:23', NULL),
(6, 1, 'Tour Histórico-Cultural por el Centro de Tarija', 'Ciudad de Tarija', '<p>Sum&eacute;rgete en la historia colonial y republicana de Tarija, conocida como \"La Andaluc&iacute;a Boliviana\" por su arquitectura y tradiciones.</p>', '130.00', '2025-03-29 16:00:00', '2025-03-29 20:00:00', 10, 1, 'tour/March2025/Z920qqAm6e2xQLg4hZ6K.jpg', NULL, '2025-03-05 14:13:37', '2025-03-05 14:24:06', NULL),
(7, 1, 'Parque bolivar', 'Tarija', NULL, '900.00', '2025-03-05 18:46:00', '2025-03-20 17:46:00', 55, 1, 'tour/March2025/86h8919oISTGdqGBwdxZ.webp', NULL, '2025-03-05 22:48:16', '2025-03-05 22:48:16', NULL),
(8, 2, 'Restaurant Nano\'s', 'Tarija', NULL, '800.00', '2025-03-05 18:50:00', '2025-03-21 17:50:00', 556, 1, 'tour/March2025/EtcNxtfmlMTIoEUEubwB.jpg', NULL, '2025-03-05 22:50:27', '2025-03-06 01:28:48', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tour_actividad`
--

CREATE TABLE `tour_actividad` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_tour` bigint(20) UNSIGNED DEFAULT NULL,
  `id_actividad` bigint(20) UNSIGNED DEFAULT NULL,
  `id_guia` bigint(20) UNSIGNED DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  `estado` enum('Programada','Cancelada','En curso','Completada') NOT NULL DEFAULT 'Programada',
  `precio_total` decimal(10,2) DEFAULT NULL,
  `lugar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tour_actividad`
--

INSERT INTO `tour_actividad` (`id`, `id_tour`, `id_actividad`, `id_guia`, `orden`, `estado`, `precio_total`, `lugar`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 3, 1, 'Programada', '40.00', 'Tarija_cercado', '2025-02-28 23:15:40', '2025-03-05 13:34:45', '2025-03-05 13:34:45'),
(2, 2, 1, 5, 1, 'Programada', '92.11', 'Tarija_cercado', '2025-03-01 06:24:51', '2025-03-05 13:34:42', '2025-03-05 13:34:42'),
(3, 3, 2, 3, 1, 'Programada', '200.00', 'Tarija_valle', '2025-03-04 10:41:17', '2025-03-05 13:34:38', '2025-03-05 13:34:38'),
(4, 4, 3, 5, 1, 'Programada', '50.00', NULL, '2025-03-05 13:36:28', '2025-03-05 13:36:28', NULL),
(5, 4, 4, 5, 1, 'Programada', '50.00', NULL, '2025-03-05 13:36:49', '2025-03-05 13:36:49', NULL),
(6, 4, 5, 5, 1, 'Programada', '20.00', 'Valle de la Concepcion', '2025-03-05 13:37:25', '2025-03-05 13:37:25', NULL),
(7, 5, 6, 6, 1, 'Programada', '80.00', 'Cordillera de Sama', '2025-03-05 13:52:16', '2025-03-05 13:52:16', NULL),
(8, 5, 7, 6, 1, 'Programada', '20.00', 'Cordillera de Sama', '2025-03-05 13:52:53', '2025-03-05 13:52:53', NULL),
(9, 5, 8, 6, 1, 'Programada', '150.00', 'Cordillera de Sama', '2025-03-05 13:53:34', '2025-03-05 13:53:34', NULL),
(10, 6, 9, 3, 1, 'Programada', '40.00', 'Ciudad de Tarija', '2025-03-05 14:22:13', '2025-03-05 14:22:13', NULL),
(11, 6, 10, 3, 1, 'Programada', '50.00', 'Ciudad de Tarija', '2025-03-05 14:22:55', '2025-03-05 14:22:55', NULL),
(12, 6, 11, 3, 1, 'Programada', '40.00', 'Ciudad de Tarija', '2025-03-05 14:23:46', '2025-03-05 14:23:46', NULL),
(13, 7, 12, 3, 3, 'Programada', '800.00', 'Tarija', '2025-03-05 22:39:00', '2025-03-05 22:48:37', NULL),
(14, 8, 12, 6, NULL, 'Programada', '300.00', 'Tarija_cercado', '2025-03-05 22:51:13', '2025-03-05 22:51:13', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `column_name` varchar(255) NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2025-02-27 04:31:57', '2025-02-27 04:31:57'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2025-02-27 04:31:57', '2025-02-27 04:31:57'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2025-02-27 04:31:57', '2025-02-27 04:31:57'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2025-02-27 04:31:57', '2025-02-27 04:31:57'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2025-02-27 04:31:57', '2025-02-27 04:31:57'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2025-02-27 04:31:57', '2025-02-27 04:31:57'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2025-02-27 04:31:57', '2025-02-27 04:31:57'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2025-02-27 04:31:57', '2025-02-27 04:31:57'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2025-02-27 04:31:57', '2025-02-27 04:31:57'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2025-02-27 04:31:57', '2025-02-27 04:31:57'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2025-02-27 04:31:57', '2025-02-27 04:31:57'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2025-02-27 04:31:57', '2025-02-27 04:31:57'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2025-02-27 04:31:57', '2025-02-27 04:31:57'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2025-02-27 04:31:57', '2025-02-27 04:31:57'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2025-02-27 04:31:57', '2025-02-27 04:31:57'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2025-02-27 04:31:57', '2025-02-27 04:31:57'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2025-02-27 04:31:57', '2025-02-27 04:31:57'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2025-02-27 04:31:57', '2025-02-27 04:31:57'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2025-02-27 04:31:57', '2025-02-27 04:31:57'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2025-02-27 04:31:57', '2025-02-27 04:31:57'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2025-02-27 04:31:57', '2025-02-27 04:31:57'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2025-02-27 04:31:57', '2025-02-27 04:31:57'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2025-02-27 04:31:57', '2025-02-27 04:31:57'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2025-02-27 04:31:57', '2025-02-27 04:31:57'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2025-02-27 04:31:57', '2025-02-27 04:31:57'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2025-02-27 04:31:57', '2025-02-27 04:31:57'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2025-02-27 04:31:57', '2025-02-27 04:31:57'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2025-02-27 04:31:57', '2025-02-27 04:31:57'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2025-02-27 04:31:57', '2025-02-27 04:31:57'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2025-02-27 04:31:57', '2025-02-27 04:31:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `settings` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `estado_operador` enum('Activo','Inactivo') DEFAULT NULL,
  `especialidad_guia` text DEFAULT NULL,
  `estado_guia` enum('Disponible','En servicio','Asignado','Inactivo') DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`, `nombre`, `apellido`, `telefono`, `estado_operador`, `especialidad_guia`, `estado_guia`, `deleted_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users\\February2025\\E7rDTh6rDiGNeOlkKpd8.png', NULL, '$2y$12$N6yAl.DGmpXcUGPU4Ao1vO2DQmAcYfflZyFr2Rm6sYVTvDJj0WMUq', 'rzHN5u4A26XnA6MkseqfTlBDTF1THzETJs8voXpcqYmPhpOK1izTjBgxq6Md', '{\"locale\":\"es\"}', '2025-02-27 04:31:57', '2025-03-04 10:16:05', 'Nombre', 'Apellido', NULL, 'Activo', NULL, 'Disponible', NULL),
(2, 4, '982jdk', 'prueba.internet911@gmail.com', 'users/March2025/20250306_025303_264.webp', NULL, '$2y$12$JOL0rEh.qs6FNtavH2ayGuaSNGOSPYlUKES9xXB1n9kbtXNdDqdqO', '5bChxL4CodzZpjpLN4J9oksNy3zUcQq0YPiRI6LooWOFSWYd9iApBULHQdb9', '{\"locale\":\"es\"}', '2025-02-27 16:40:59', '2025-03-06 12:37:44', 'Juan Nicolas', 'Flores Delgado', 73495284, 'Activo', NULL, 'Disponible', NULL),
(3, 4, 'Homero', 'seniorX@gmail.com', 'users/March2025/TG23Z5rIb8ZNb45KZ7BI.jpg', NULL, '$2y$12$2KYa3OQOl0VaUtHgo5zQvOqukRkTy9UwUIgBI8uk8ejyPCnnnKBv6', '0mf22vCPcX2hGTDR4YK7w7XZL8ktmJ6luNZYOot0jJcCObqU2ppOrvMDPWo4', '{\"locale\":\"es\"}', '2025-02-28 07:19:01', '2025-03-05 22:53:43', 'Homero Jay', 'Simpson', NULL, 'Activo', NULL, 'Disponible', NULL),
(4, 2, 'Kevin Lazcano', 'beyonce123@gmail.com', 'users/February2025/qdKEYLei6Dtm41tc4EH2.png', NULL, '$2y$12$sj/HDiSybL9oAkrUykpwW.67VnP6wYokdjrTpdbbPpAEiysNaYYeO', NULL, '{\"locale\":\"es\"}', '2025-03-01 00:41:16', '2025-03-04 10:18:14', 'Kevin', 'Lazcano', NULL, 'Activo', NULL, 'Disponible', NULL),
(5, 3, 'Walkerazo', 'romero71243445@gmail.com', 'users/February2025/eHl3ZCKVwxR7sKRRgtGr.jpg', NULL, '$2y$12$SjRKC..et4SbukcDY/vVQOBqlNd2R0L5StVznPql2.fcfjaz0u3He', NULL, '{\"locale\":\"es\"}', '2025-03-01 00:42:10', '2025-03-04 10:18:35', 'Sergio', 'Walker', NULL, 'Activo', NULL, 'Disponible', NULL),
(6, 3, 'josema', 'montano@gmail.com', 'users/default.png', NULL, '$2y$12$x4.upl.kExsoKJTtcWTEaOC8F9A/1TIJopR06pE2IVZruWMduT0he', NULL, '{\"locale\":\"es\"}', '2025-03-05 12:55:20', '2025-03-05 12:55:20', 'Jose Maria', 'Montaño', NULL, 'Activo', NULL, 'Disponible', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(2, 4),
(3, 4),
(4, 3),
(5, 4),
(6, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `calificacion`
--
ALTER TABLE `calificacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `calificacion_id_turista_foreign` (`id_turista`),
  ADD KEY `calificacion_id_tour_actividad_foreign` (`id_tour_actividad`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indices de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indices de la tabla `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`id`),
  ADD KEY `factura_id_pago_foreign` (`id_pago`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indices de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pago_id_tarjeta_foreign` (`id_tarjeta`),
  ADD KEY `pago_id_reserva_foreign` (`id_reserva`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indices de la tabla `reporte_general`
--
ALTER TABLE `reporte_general`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reporte_general_id_operador_foreign` (`id_operador`);

--
-- Indices de la tabla `reporte_seguimiento`
--
ALTER TABLE `reporte_seguimiento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reporte_seguimiento_id_guia_foreign` (`id_guia`),
  ADD KEY `reporte_seguimiento_id_tour_actividad_foreign` (`id_tour_actividad`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reserva_id_turista_foreign` (`id_turista`),
  ADD KEY `reserva_id_tour_actividad_foreign` (`id_tour_actividad`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indices de la tabla `tarjeta`
--
ALTER TABLE `tarjeta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tarjeta_id_turista_foreign` (`id_turista`);

--
-- Indices de la tabla `tour`
--
ALTER TABLE `tour`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tour_id_operador_foreign` (`id_operador`);

--
-- Indices de la tabla `tour_actividad`
--
ALTER TABLE `tour_actividad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tour_actividad_id_tour_foreign` (`id_tour`),
  ADD KEY `tour_actividad_id_actividad_foreign` (`id_actividad`),
  ADD KEY `tour_actividad_id_guia_foreign` (`id_guia`);

--
-- Indices de la tabla `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividad`
--
ALTER TABLE `actividad`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `calificacion`
--
ALTER TABLE `calificacion`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT de la tabla `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pago`
--
ALTER TABLE `pago`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `reporte_general`
--
ALTER TABLE `reporte_general`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `reporte_seguimiento`
--
ALTER TABLE `reporte_seguimiento`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tarjeta`
--
ALTER TABLE `tarjeta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tour`
--
ALTER TABLE `tour`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tour_actividad`
--
ALTER TABLE `tour_actividad`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `calificacion`
--
ALTER TABLE `calificacion`
  ADD CONSTRAINT `calificacion_id_tour_actividad_foreign` FOREIGN KEY (`id_tour_actividad`) REFERENCES `tour_actividad` (`id`),
  ADD CONSTRAINT `calificacion_id_turista_foreign` FOREIGN KEY (`id_turista`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_id_pago_foreign` FOREIGN KEY (`id_pago`) REFERENCES `pago` (`id`);

--
-- Filtros para la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `pago`
--
ALTER TABLE `pago`
  ADD CONSTRAINT `pago_id_reserva_foreign` FOREIGN KEY (`id_reserva`) REFERENCES `reserva` (`id`),
  ADD CONSTRAINT `pago_id_tarjeta_foreign` FOREIGN KEY (`id_tarjeta`) REFERENCES `tarjeta` (`id`);

--
-- Filtros para la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `reporte_general`
--
ALTER TABLE `reporte_general`
  ADD CONSTRAINT `reporte_general_id_operador_foreign` FOREIGN KEY (`id_operador`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `reporte_seguimiento`
--
ALTER TABLE `reporte_seguimiento`
  ADD CONSTRAINT `reporte_seguimiento_id_guia_foreign` FOREIGN KEY (`id_guia`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `reporte_seguimiento_id_tour_actividad_foreign` FOREIGN KEY (`id_tour_actividad`) REFERENCES `tour_actividad` (`id`);

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_id_tour_actividad_foreign` FOREIGN KEY (`id_tour_actividad`) REFERENCES `tour_actividad` (`id`),
  ADD CONSTRAINT `reserva_id_turista_foreign` FOREIGN KEY (`id_turista`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `tarjeta`
--
ALTER TABLE `tarjeta`
  ADD CONSTRAINT `tarjeta_id_turista_foreign` FOREIGN KEY (`id_turista`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `tour`
--
ALTER TABLE `tour`
  ADD CONSTRAINT `tour_id_operador_foreign` FOREIGN KEY (`id_operador`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `tour_actividad`
--
ALTER TABLE `tour_actividad`
  ADD CONSTRAINT `tour_actividad_id_actividad_foreign` FOREIGN KEY (`id_actividad`) REFERENCES `actividad` (`id`),
  ADD CONSTRAINT `tour_actividad_id_guia_foreign` FOREIGN KEY (`id_guia`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `tour_actividad_id_tour_foreign` FOREIGN KEY (`id_tour`) REFERENCES `tour` (`id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
