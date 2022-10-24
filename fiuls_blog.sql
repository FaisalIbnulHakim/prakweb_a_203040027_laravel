-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Okt 2022 pada 08.36
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fiuls_blog`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2022-10-23 02:02:23', '2022-10-23 02:02:23'),
(2, 'Web Design', 'web-design', '2022-10-23 02:02:23', '2022-10-23 02:02:23'),
(3, 'Personal', 'personal', '2022-10-23 02:02:23', '2022-10-23 02:02:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_17_071339_create_posts_table', 1),
(6, '2022_10_23_014620_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'Fuga maxime ipsam.', 'voluptas-sed-totam-esse-nostrum', 'Amet illum optio accusantium perspiciatis rerum ratione rerum. Quia voluptas iure explicabo atque. Vitae veritatis inventore consequuntur et.', '<p>Sunt recusandae perferendis non est sit quia consequatur minus. Asperiores quae dolorem voluptatem corporis consequatur expedita. Quod sit omnis excepturi vitae in. Omnis aliquam et quam quo quo qui est.</p><p>Praesentium incidunt qui et aut eos nesciunt. Eos quas natus sed. Enim consequuntur est et temporibus et doloribus dignissimos. Est sequi qui sed eius qui.</p><p>Sapiente animi qui rerum ut omnis sequi neque. Qui praesentium occaecati minima quia reiciendis. Natus est quod et nulla. Quam beatae iusto magni quos nihil quod. Qui facere ut cum.</p><p>Explicabo provident ut ratione. Culpa id quam dolor sunt unde omnis. Nam saepe nam veniam est illo. Unde nesciunt autem molestiae ex quae eaque. Illo quo quia qui exercitationem voluptatem enim.</p><p>Eum laborum saepe excepturi aut dignissimos officia vel. Reprehenderit numquam soluta ad occaecati ut eveniet quam enim. Vel est dolorem culpa qui.</p><p>Qui dolorem aut et iusto totam quas. Officiis est ab laboriosam delectus omnis et veritatis accusantium.</p>', NULL, '2022-10-23 02:02:23', '2022-10-23 02:02:23'),
(2, 1, 3, 'Animi fugit nulla vel.', 'quas-totam-voluptate-voluptatem', 'Expedita natus modi velit natus reiciendis reiciendis quis. Cum debitis voluptatem eligendi aperiam tempore cupiditate.', '<p>Quisquam sapiente quia odit quasi placeat pariatur hic similique. Ad consequuntur id et consequatur ut nesciunt.</p><p>Et quis quas dolorem cupiditate. Atque et voluptatem praesentium architecto commodi. Ullam omnis aut deserunt similique quasi fugiat quaerat. Velit dignissimos aliquid quisquam assumenda.</p><p>Ut et architecto et non enim consequatur officiis. Exercitationem cumque quis dolor dolores. Et magni nam eos perspiciatis.</p><p>Expedita qui qui cupiditate numquam ut hic a. Iusto et alias temporibus.</p><p>Non qui autem assumenda cupiditate rerum dolor. Voluptatem consequuntur hic in omnis. Voluptatem modi et beatae iusto voluptatum exercitationem.</p><p>Autem inventore veritatis voluptatem itaque. Velit pariatur repellat quasi quia et. Aperiam tempora nobis quis dolores.</p><p>Inventore qui non perferendis doloribus. Animi omnis molestiae dicta non porro soluta. Quasi cum sapiente aliquam et placeat. Ipsam eum nemo facere.</p><p>Non id qui atque neque perferendis et possimus culpa. Repudiandae nisi voluptatem eveniet exercitationem.</p>', NULL, '2022-10-23 02:02:23', '2022-10-23 02:02:23'),
(3, 1, 3, 'Veniam voluptas corrupti.', 'consequatur-saepe-corrupti-expedita-magnam-voluptas', 'Quia fugit quia eius cupiditate nisi. Accusantium occaecati voluptate voluptatem iusto. Et iusto sunt expedita debitis consectetur ex aut quis.', '<p>Voluptates totam dignissimos ipsa dolor sit laudantium sapiente. Alias voluptatem dolores dolor autem. Consequuntur harum et molestiae ipsa vel consequuntur vitae.</p><p>Reiciendis dolorem ex iusto velit veniam vel quia porro. Et quis dolorum vero ipsa doloremque ut quia. Quam corporis qui praesentium adipisci. Est et quibusdam consequatur cumque ad nihil omnis.</p><p>Reprehenderit a ut nostrum repudiandae. Enim blanditiis vitae possimus alias. Est odit asperiores sit distinctio.</p><p>Et quaerat quam unde iste voluptatem in. Voluptatibus distinctio et provident omnis aut. Consequatur reprehenderit sit illum est. Quaerat ab est enim veritatis quis.</p><p>Atque natus incidunt in aut esse commodi nisi. Inventore tempora magni saepe libero laudantium. Deserunt vitae suscipit debitis et sit.</p><p>In rerum aut eos aut quia optio. Est hic tempora fugit velit quo similique quas. Voluptas tempora itaque sint ea atque minima.</p><p>At quia libero sequi corporis minus numquam. Et et rerum et consequatur sunt quia. Aut sed quasi odit ipsam aut qui.</p>', NULL, '2022-10-23 02:02:23', '2022-10-23 02:02:23'),
(4, 1, 1, 'Voluptatibus odit quis.', 'quia-mollitia-earum-ipsum-tenetur-eum', 'Vel distinctio esse aut eaque molestiae aliquid. Quia consequatur earum aut ipsa officia exercitationem sed officiis. Consequuntur commodi quisquam aliquid perferendis rem omnis.', '<p>Nemo sint voluptatum iure quibusdam. Culpa et aspernatur corporis perspiciatis non totam culpa. Deleniti similique rerum aspernatur eligendi itaque facilis voluptatem. Blanditiis soluta perspiciatis quidem fuga.</p><p>Perspiciatis natus voluptate ex consectetur reprehenderit possimus. Dolorum ut voluptatem autem et cumque vel nihil. Est qui placeat voluptates voluptates et. Dolorum quis laborum voluptatem minus. Dicta sapiente saepe eveniet et quam.</p><p>Temporibus fuga explicabo et consequuntur. Et exercitationem numquam tempore molestiae voluptas. Non aliquid consequatur eveniet consectetur corrupti illum.</p><p>Veniam corrupti nostrum illum nulla impedit explicabo. Nobis architecto magnam reprehenderit laboriosam dolorum. Placeat quasi eligendi nesciunt nam facere nihil magni vitae.</p><p>Enim quibusdam iusto assumenda quam. Id qui consectetur eligendi deleniti voluptas rerum. Dolorum alias aut assumenda dolorum. Provident omnis ut cupiditate qui fugiat sed.</p>', NULL, '2022-10-23 02:02:23', '2022-10-23 02:02:23'),
(5, 1, 3, 'Voluptates velit eum delectus.', 'repudiandae-molestiae-est-distinctio-impedit-sit-esse-dolorem-unde', 'Maiores expedita inventore tenetur sint esse eius qui. Ducimus accusamus ut sapiente voluptas. Ullam nesciunt eum sit repellendus accusamus repudiandae voluptates consequatur. Illum possimus sapiente aut delectus pariatur nulla et.', '<p>Similique itaque repellat blanditiis velit voluptatum nisi. Sed fuga magnam occaecati ducimus ratione eum eos.</p><p>Qui non quidem vel ut incidunt dolorum sed. Necessitatibus dolorem velit ut qui. Minima dolores numquam porro et quae sint consequatur. Et deleniti voluptatibus quia qui magni accusamus.</p><p>Autem illo unde et quibusdam. Voluptatem aperiam neque aut ea. Quo quia omnis nobis amet autem tempore. Reprehenderit dolorem nobis ipsa et.</p><p>Cumque iure temporibus aliquid occaecati ut molestiae omnis eligendi. Nulla qui dicta quam voluptate qui non. Est dicta molestiae commodi nulla.</p><p>Autem autem nesciunt tempora porro quae. Tempore qui vel dolores sapiente et. Molestiae impedit ut quidem numquam veritatis. Repellat rerum molestias quia rem.</p><p>Sequi ab rem velit eum magni aut esse aut. Harum mollitia dolor nisi aut aut. Iure nihil dolores doloremque ut. Voluptatum fugiat laborum iusto porro ut est sapiente.</p><p>Ut velit et facere non sapiente. Est non quam et quia dicta sit. Ut voluptas temporibus pariatur. Libero ratione alias labore natus.</p><p>Ut et explicabo ut quis. Ea aut voluptatem dolor perferendis possimus modi. Assumenda aut dolor nostrum repellat. Deleniti voluptatem consequatur deleniti et enim cum qui possimus.</p><p>Id accusantium quisquam quia voluptas quam quia. Culpa hic quia voluptates officiis iusto sed. Earum mollitia non autem nobis dolores sapiente. Facilis soluta qui reiciendis magnam sint quo ut.</p>', NULL, '2022-10-23 02:02:23', '2022-10-23 02:02:23'),
(6, 3, 1, 'Amet ut maiores magnam.', 'libero-sed-voluptatem-consequatur', 'Quidem provident explicabo quia eius. Debitis et et a suscipit quod. Dolor aliquid labore nesciunt.', '<p>Officia quibusdam voluptatem cupiditate error dolor. Sint est mollitia sit in. Eum delectus illo accusantium.</p><p>Non voluptatum praesentium porro sequi. Labore blanditiis non id. Et repellat ab fuga quia eum necessitatibus. Fugiat ullam commodi repudiandae amet dolorem ut.</p><p>Sunt aliquam aut laboriosam quidem qui eum. Atque explicabo veniam illum nesciunt voluptas. Quidem tenetur veritatis quia aliquid dolor optio voluptatem. Distinctio molestiae expedita quia reprehenderit debitis perferendis.</p><p>Quisquam sunt non error facere nesciunt. Ut sit fugit sit voluptatibus quo omnis et.</p><p>Corrupti dignissimos dolor optio. Ipsum nulla inventore neque voluptatem reprehenderit alias ipsam. Voluptas voluptatem praesentium omnis nulla enim.</p><p>Cumque natus repudiandae harum vitae velit excepturi. Voluptatem voluptatum eaque amet optio earum dolor eum. Non dolorum amet veniam magnam. Quia officiis natus quod et et.</p><p>Dolores dolor ut architecto vitae aut vel. Voluptas quidem explicabo rem reprehenderit at. Autem maxime beatae et hic quibusdam ex corrupti saepe. Dicta corporis non ut tenetur iste et.</p><p>Nam maxime et nostrum vel. Earum omnis eligendi rerum non assumenda illo cumque. Iste non omnis voluptates voluptas consequuntur totam id rerum.</p><p>Qui quo molestias id magnam. Possimus quia ab incidunt et consequuntur. Temporibus itaque iste hic vel qui repellendus cumque non. Nisi labore vitae hic ad vero laborum.</p><p>Et et magnam enim alias modi velit. Est et veritatis qui reiciendis dolores quo. Molestiae totam autem suscipit. Dolore eveniet amet porro. Debitis odit aliquid nihil reiciendis ea omnis qui.</p>', NULL, '2022-10-23 02:02:23', '2022-10-23 02:02:23'),
(7, 2, 3, 'Et reprehenderit perspiciatis.', 'maxime-sunt-velit-error-eius-non-ex-vitae', 'Harum ad aut repudiandae quam officia occaecati est. Doloremque ipsa provident cum necessitatibus sed possimus. Iure enim nesciunt eos aliquid aperiam.', '<p>Explicabo delectus corrupti quia est. Molestiae numquam voluptas expedita sit et quo. Assumenda quisquam molestias cum praesentium commodi doloribus. Rerum ut occaecati molestiae doloribus.</p><p>Dignissimos maxime numquam dolores ad aut quia accusamus doloremque. Dolorem porro est quidem error. Optio nobis porro quia rerum voluptates saepe unde fugiat. Facilis consequatur ipsum molestias fugit voluptas rerum saepe.</p><p>Saepe est vitae ut tempore laboriosam maiores. Iste sint asperiores vero at et corporis eligendi. Et et ullam accusantium architecto blanditiis et illum.</p><p>Sunt perspiciatis quaerat tempora. Fugiat voluptatem quia repudiandae sunt. Dolor necessitatibus tenetur atque repellat.</p><p>Ut rerum necessitatibus maiores modi vel qui magnam. Qui natus autem est voluptatem doloremque. Fuga voluptate accusamus voluptatibus dolores neque nemo. Aut recusandae rerum commodi omnis temporibus nostrum cumque.</p><p>Quas est aperiam cum dolor id. Debitis voluptas voluptas pariatur velit. Ipsa repellendus voluptatem itaque aliquid in non. Omnis omnis adipisci et nihil suscipit.</p><p>Et illo nulla non unde. Inventore quod sunt voluptatem quo et quo. Minima nihil numquam magnam et sunt molestiae.</p><p>Assumenda est ex explicabo accusantium. Odit sit ut temporibus qui aut vel quasi ad. Doloribus voluptatem quia eum nemo voluptates. Nemo deleniti dolore eum fuga necessitatibus aut dolor. Veniam deserunt vitae sint deserunt itaque.</p><p>Accusamus iure qui voluptatibus est. Quasi quia repellat nihil dolore suscipit. Quia nulla fugit non maiores doloremque culpa dolore. Totam amet praesentium suscipit.</p>', NULL, '2022-10-23 02:02:23', '2022-10-23 02:02:23'),
(8, 2, 2, 'Unde laudantium et omnis sapiente minima.', 'ut-culpa-totam-nulla-ut-tempora-veritatis-ut-ducimus', 'Impedit rerum et sit a consequatur quo. Veniam quas sed vel est molestias possimus. Doloribus esse et eos pariatur maxime. Cupiditate rerum aut cupiditate architecto quas.', '<p>Accusantium officia aut at ipsum ipsam ipsam. Sint voluptas sed est velit aut exercitationem laborum. Veniam occaecati tenetur placeat labore nobis repellat.</p><p>Impedit earum quam id eum. Sunt voluptatibus molestiae possimus. Libero corporis aut qui doloremque.</p><p>Ut qui nobis saepe repudiandae. Odio enim aut at consequuntur eum laudantium. Reprehenderit sed perspiciatis autem quo soluta occaecati natus eos. Enim veniam neque eaque nihil qui. Ipsum in sint omnis sint ut alias et.</p><p>Et numquam qui ratione soluta maxime ad perferendis. Hic aut tempora rerum molestiae. Vitae rerum illum ut iure. Non quod ut ut ut.</p><p>Delectus et officia tempore similique sit ut saepe. Voluptas eaque illo dolore eius facere reprehenderit. Excepturi omnis sunt ut architecto quisquam omnis cupiditate. Hic magni qui quam eveniet.</p><p>Perspiciatis non reprehenderit ut est nemo. Facilis repellat nostrum temporibus ea laboriosam maiores illo.</p><p>Magnam qui non voluptatem est. Consequuntur dolore quo ex minus dolorem aliquam. Dolore temporibus minima quam mollitia numquam eius. Asperiores modi natus velit tenetur libero exercitationem. Quaerat itaque sit sunt eveniet quis nihil.</p><p>Et ut consequatur culpa qui perferendis quia enim. Saepe consequuntur illo veniam ea nam. Nisi dolore corporis magni aliquid. Excepturi veritatis optio officiis perferendis magnam possimus et repudiandae. Eius incidunt fugit et at odit debitis adipisci.</p><p>Dolorum est dolor fugiat adipisci. Odit eaque minus eligendi aliquam et velit. Commodi aut illum dolorem aut.</p>', NULL, '2022-10-23 02:02:23', '2022-10-23 02:02:23'),
(9, 3, 2, 'Doloribus accusantium quaerat.', 'nostrum-porro-sunt-sunt-praesentium-rerum', 'Molestias dolor ducimus facilis delectus quos non. Iusto similique voluptatem accusamus dolore et necessitatibus voluptatem cum. Maiores eum in nemo tenetur accusantium voluptatibus.', '<p>Perspiciatis eum suscipit consectetur ratione. Deserunt perferendis voluptatum labore dolore qui voluptate.</p><p>Provident fuga et fugiat illo adipisci soluta. Aut animi dolor quos iste debitis magni quo. Voluptatem culpa earum porro ut blanditiis ipsum similique.</p><p>Consequuntur ut quisquam et officia beatae. Atque animi perferendis culpa aut. Sed repudiandae laborum qui.</p><p>Culpa praesentium omnis laborum. Est fugiat aspernatur inventore accusantium ducimus. Ullam quam quod quia dicta voluptate dolor. Necessitatibus voluptatem est pariatur quo placeat quaerat debitis. Sed placeat et eos a aut nulla possimus.</p><p>Natus architecto et non delectus nisi. Mollitia rerum ea modi laborum autem asperiores praesentium fugiat. Eos consectetur sed laudantium magni nulla reiciendis dicta.</p><p>Ducimus molestiae voluptatem enim. Eius omnis quibusdam ipsa amet vel perferendis omnis perspiciatis. Est suscipit voluptatem aperiam sed deleniti qui.</p>', NULL, '2022-10-23 02:02:23', '2022-10-23 02:02:23'),
(10, 3, 1, 'Dolores accusantium quia corrupti quo.', 'et-quibusdam-provident-sint-in-consectetur-beatae-sit-eveniet', 'Cum dolor amet ut dicta sit quis. Quisquam omnis non sapiente quia pariatur. Ratione quia numquam distinctio itaque voluptates saepe commodi.', '<p>Ipsum quasi placeat aut. Voluptatem quibusdam omnis est molestiae. Tenetur repellat nisi eligendi dignissimos. Blanditiis commodi rerum qui vel.</p><p>Est et ut iste vel quidem. Animi perspiciatis quidem nisi iste tenetur. Eos aliquid ducimus repellat consequuntur. Architecto esse optio non quo nulla deleniti sequi.</p><p>Ab aut est id occaecati iusto deserunt sed. Inventore sunt odio distinctio vel porro. Odit quia adipisci quis iusto. Ab ducimus nam consequatur aut. Et omnis dolores voluptatem quia porro occaecati sint quo.</p><p>Libero sed libero facere pariatur aliquid consequuntur laboriosam optio. Maxime est laudantium neque. Nemo laborum eveniet dolorem quia.</p><p>Quis placeat qui quia similique. Est quia qui accusantium vero quisquam. Ab unde omnis deleniti in eaque expedita molestiae.</p>', NULL, '2022-10-23 02:02:23', '2022-10-23 02:02:23'),
(11, 2, 1, 'In ab expedita ab.', 'maiores-ut-eaque-perspiciatis-repellat', 'Officiis qui ad expedita eveniet voluptatem. Saepe reprehenderit repellendus voluptatum sit tenetur. Ullam doloribus est est reiciendis fugit quis saepe. Qui qui cupiditate explicabo alias mollitia debitis.', '<p>Provident minus culpa dolor explicabo perferendis maiores deleniti corporis. Et laboriosam aut voluptas in quo voluptatibus. Aspernatur in nostrum in illum. Iste rerum dolorem quos ipsum commodi eius. Ratione facere voluptatem quis eveniet quos impedit aut.</p><p>Aut quam earum eum ut enim quo voluptas. Voluptatem exercitationem optio qui laborum repellendus ut ut. Aut est doloremque atque velit. Sed velit in sunt nobis quae reprehenderit.</p><p>Et repudiandae dolorem et. Id dolorem fugiat rerum est repellat sit quasi. Quia delectus et fugiat error. Asperiores quisquam pariatur repudiandae molestias soluta qui.</p><p>Ex vel earum quod earum illo inventore. Voluptatem reiciendis porro fugiat et qui non non. Voluptatem rerum incidunt quia aliquid voluptatibus recusandae ut. Natus voluptatem magni quos qui assumenda labore. Nihil voluptatem architecto sapiente temporibus enim aut.</p><p>Sapiente sunt illo facere ad nulla. Voluptatem sit dolorum quia quis.</p><p>Nihil id voluptatem dolores et sit. Nesciunt tempore dolorum repellendus aut et. Aperiam quam velit hic velit et.</p>', NULL, '2022-10-23 02:02:23', '2022-10-23 02:02:23'),
(12, 3, 3, 'Ut optio nesciunt praesentium rerum et.', 'error-dolorem-ratione-esse-distinctio', 'Ut ad voluptatem quo voluptatem blanditiis. Fugit dignissimos laboriosam quis commodi perspiciatis numquam. Enim voluptates ipsa vitae laborum a facilis assumenda.', '<p>Quibusdam hic quos maxime blanditiis provident doloremque suscipit nulla. Sed sed expedita voluptas aut qui. Eligendi possimus soluta deserunt dolorem. Molestiae sed modi voluptas veniam et excepturi.</p><p>At libero corrupti et esse tempore dignissimos illum minima. Inventore eos quaerat dolor omnis quam magnam. Vitae maiores error sequi deserunt sunt qui. Eos accusamus sed neque dolorem aliquid aliquid dolores.</p><p>Qui consequatur voluptatibus tempora nisi libero. Aut et accusamus molestias qui et earum expedita. Animi quia sed et. Inventore voluptate et delectus eos atque. Minus illo labore hic et labore et temporibus.</p><p>Aut ea quam nemo quis amet quidem sit iure. Repellat natus eos ut quis. Repellendus sunt iusto consequuntur velit. Sint rerum veritatis sunt.</p><p>Dolore impedit culpa corrupti fugit neque et aliquam. Aut est voluptas et voluptatibus ab. Accusantium fugit dolores voluptates officia sit placeat velit. Voluptatum incidunt dolorem optio dolorem cumque aut nemo.</p>', NULL, '2022-10-23 02:02:23', '2022-10-23 02:02:23'),
(13, 3, 3, 'Qui non ut similique.', 'cupiditate-ad-sapiente-optio-veniam-autem-distinctio-odio-aut', 'Ea esse et consequatur ea. Assumenda dignissimos quasi rerum alias. Dolor ut dolore sit natus veniam.', '<p>Fuga vel et autem ea illo similique. Atque eveniet sed fugit est.</p><p>Ut est dolores quis dolorem perspiciatis dolorum. Maiores deleniti dicta sit sit. Nam voluptatem tempore aut quod reiciendis error.</p><p>Architecto eius voluptatibus nam recusandae similique. Quia quibusdam corrupti officiis eum eum sequi. Aut voluptas tempore ea rerum praesentium.</p><p>Aut eligendi pariatur in quos laboriosam sint voluptas. Et commodi ut repudiandae dolor aut aliquam.</p><p>Deleniti quisquam ea deserunt voluptatem commodi. Voluptatum aspernatur alias recusandae et magni voluptas. Ex laudantium tempora officiis tempora excepturi vel. Optio quos dignissimos earum dicta.</p><p>Ut repellendus est sunt minima. Dolor voluptatem officia corporis veniam reprehenderit velit nemo quia. Voluptas ut repudiandae ipsa ea magni.</p>', NULL, '2022-10-23 02:02:23', '2022-10-23 02:02:23'),
(14, 1, 1, 'Quasi sequi quas.', 'aut-qui-blanditiis-laboriosam', 'Reprehenderit laboriosam in omnis itaque voluptas. Deserunt aut vitae corrupti dolorem. Quidem consequatur praesentium officiis ipsum. Eius inventore laboriosam aliquid voluptates id enim. Tenetur et minima omnis qui.', '<p>Quibusdam excepturi ut qui ratione beatae. Magni ad dolore deserunt aut voluptatem. Dolores laboriosam aut explicabo iusto. Facere non illum eaque et consequatur ut doloribus.</p><p>Reprehenderit voluptatem delectus aut iusto ea. Similique nihil ratione eaque reiciendis. Velit maiores debitis maiores enim ratione natus.</p><p>Qui et tenetur similique aut. Velit dignissimos alias assumenda magnam necessitatibus. Non fugiat aut laboriosam cum. Accusantium officia sunt cupiditate impedit recusandae.</p><p>Commodi minus doloribus dolorum cumque ipsa sequi nihil quia. Ullam quia cum accusamus molestiae atque. Laboriosam magni neque voluptatem et omnis qui labore.</p><p>Repellendus aut minus excepturi illo quas fugiat sed. Delectus enim ipsum quia itaque maxime. Laborum adipisci inventore ipsum velit consequatur distinctio et. Quia ut voluptate voluptatem minima.</p><p>Sit minima amet voluptatum maxime hic animi. Quas itaque nemo aut ut et. Voluptatibus voluptatibus omnis autem sapiente recusandae aut excepturi. Voluptas et aliquid voluptatem doloremque tempore accusantium.</p><p>Temporibus earum vero ea eos error laboriosam consequatur. Fuga fuga natus consequatur omnis esse. Atque voluptas id minus eum et id porro placeat. Enim blanditiis provident natus est.</p><p>Tempore rerum quae porro. Labore quisquam quas rem. Voluptas debitis omnis assumenda qui aut neque et. Magnam sit veniam et expedita culpa voluptatem est.</p><p>Perferendis expedita reprehenderit ut deserunt corporis. Doloremque quidem eveniet ut delectus et. Reprehenderit natus consectetur ipsum omnis qui labore.</p><p>Rerum dolorem temporibus voluptas id. Facilis numquam sit omnis. Cum qui molestias voluptatem omnis rerum. Suscipit voluptatum dolore quia.</p>', NULL, '2022-10-23 02:02:23', '2022-10-23 02:02:23'),
(15, 1, 1, 'Mollitia dolore delectus alias dolorem.', 'earum-omnis-minus-adipisci', 'Ad quae ea quidem nemo molestiae. Hic cum voluptate qui et. Corrupti minima quod minima quia rerum ut commodi. Modi qui voluptatem a id ducimus veniam.', '<p>Accusamus quidem repellat laudantium rerum aut voluptatibus. Vel et sed ullam quam quia libero. Iste consequuntur odit dignissimos atque ut enim deleniti. Consequatur in minus voluptatem necessitatibus repudiandae deserunt dolorem.</p><p>Quis aut rerum consequatur ea sunt dignissimos provident nostrum. Nihil et vitae est ut ex. Sit ut excepturi consectetur.</p><p>Dolorem dolores non perferendis ratione atque. Laboriosam aut aliquid mollitia et blanditiis. Illo dolorem aut et rerum quia. Ab ullam quia iusto earum autem enim et.</p><p>Qui architecto sint laborum voluptas libero voluptatem. Ea sint dolore omnis. Consequatur sunt nisi quia aut.</p><p>Architecto enim ex voluptatem vel. Unde dolores non in quidem. Culpa inventore voluptatem qui voluptatem aut aut architecto dignissimos. Quae aut autem excepturi quo dolore eos id.</p><p>Voluptates et error distinctio. Et veritatis qui dolores quaerat qui qui doloribus.</p><p>Tempora consectetur autem non nisi. Voluptas in dolor quae. Aut eveniet ut qui voluptatem quia minima et.</p>', NULL, '2022-10-23 02:02:23', '2022-10-23 02:02:23'),
(16, 2, 2, 'Mollitia et accusamus eos quasi.', 'et-voluptatum-quia-id-earum-quia-eius-et-unde', 'Aut totam ratione dolorem est accusamus. Eaque cum sit dolor sit excepturi. Iusto possimus ut ratione suscipit. Tempora eaque tempore natus explicabo. Error voluptatem omnis expedita id.', '<p>Ut in eos vel mollitia. Iure aperiam quis dolor in magni quo dolor. Fugiat totam tempora natus qui est. Non a soluta laborum porro quia voluptatem odit. Nihil est aut voluptates.</p><p>Dicta et accusantium consequuntur consequatur. Aliquid occaecati saepe ducimus est ut dolorum dolorem. Hic corporis debitis distinctio earum aut nisi. Voluptatum esse voluptatum ad magnam non.</p><p>Voluptas ipsam fuga quasi est exercitationem voluptas ab. Autem et velit enim totam. Ut culpa nostrum odit labore architecto tenetur. Unde a dolor harum cumque molestiae iure quia.</p><p>Maiores voluptatem odit dolor delectus unde odit. Et consequatur ad qui deserunt.</p><p>Quam consequatur sit et maxime quibusdam aut. Sint aliquam tempore consequatur. Fuga veritatis nihil rerum quia aut.</p><p>Deleniti iure a voluptatem quis laboriosam consequatur consectetur. Quidem deleniti atque dolorum eligendi delectus rerum. Laboriosam rerum officia architecto non perspiciatis ut sit. Odit recusandae accusantium ipsum et possimus non et. Velit quis sunt ut illo ea minima assumenda.</p><p>Minus cumque doloribus eaque provident. Est dignissimos voluptatum modi dolores ut laboriosam facere consectetur. Et perspiciatis facere reprehenderit. Excepturi reiciendis deserunt omnis veritatis est sint atque nihil. Et dicta non eligendi et dolore.</p><p>Cupiditate inventore nam aut quo. Et commodi recusandae eligendi voluptas aut incidunt. In voluptates sint iste nam velit. Ad mollitia quia vel vitae ut.</p><p>Et maiores dolorem iste minus. Eos officia sunt facere quia reiciendis id. Dolore omnis velit pariatur veritatis numquam non atque.</p>', NULL, '2022-10-23 02:02:23', '2022-10-23 02:02:23'),
(17, 2, 3, 'Dolores dolor et et praesentium accusamus.', 'vel-ut-rerum-earum', 'Tenetur explicabo odit totam animi. Neque maiores maiores est vel. Quia cumque nemo enim quidem.', '<p>Facilis sequi sunt dolorum est. Non placeat aliquam velit laborum illum laborum. Voluptas accusamus ipsam odit voluptates repellat perferendis quis.</p><p>Possimus neque praesentium ipsa perspiciatis ut voluptate qui delectus. Nulla autem quam culpa corrupti. Quas est sit quidem quisquam odio non.</p><p>Enim autem laudantium officia et voluptatem et. Fugit blanditiis inventore id omnis. Facilis quas occaecati fugiat. Molestias illo sapiente voluptas harum eum quibusdam.</p><p>Voluptatum harum assumenda a cumque quam voluptatem est. Quos rerum at veritatis nobis odit. Cupiditate cum expedita corrupti reiciendis voluptas dolore molestiae quia. Amet in voluptates facere ut repudiandae eligendi rerum omnis.</p><p>Repellat vel et nobis facilis ut vitae. Ut ratione unde cum quod doloremque perspiciatis.</p><p>Facilis officia doloremque dolores voluptas. Sequi nesciunt eligendi cupiditate labore aspernatur dolor voluptas. Distinctio officia quam sed incidunt vero. Voluptate quos voluptas voluptas aut sapiente quia.</p><p>Sed ea neque commodi eligendi. Quia omnis in earum harum quos. Nemo aliquid magni aut qui magni.</p><p>Perspiciatis recusandae ut minus quod suscipit. Aut harum facilis deserunt voluptatem itaque alias fuga. Suscipit error aliquid pariatur hic veniam nostrum eius.</p>', NULL, '2022-10-23 02:02:23', '2022-10-23 02:02:23'),
(18, 1, 3, 'Non laboriosam mollitia harum.', 'consequatur-nostrum-ea-repellat-quo-accusantium-dolore', 'Maxime ut voluptas dolorem itaque et. Perferendis est excepturi corrupti nisi. Commodi qui amet laborum placeat ipsam. Aliquam est provident natus odio sunt sunt ut deleniti. Aliquid eos vitae repellat eum odit.', '<p>Explicabo voluptatem minima quis laboriosam dignissimos quae. Ipsum illum est consequatur facilis in voluptatem perspiciatis. Iste velit corporis hic eligendi. Et ea sequi ut voluptatum et saepe culpa mollitia.</p><p>Provident et voluptatum rerum. Laboriosam numquam nemo labore aspernatur rerum aperiam. Minima odio blanditiis doloremque quia qui.</p><p>Molestiae itaque deserunt itaque ipsa non iure nihil est. Non perspiciatis inventore non magni iure. Unde dolorem sequi repellendus. Perspiciatis assumenda sunt ut sit blanditiis at ea nam.</p><p>Recusandae ut ratione earum temporibus. Dolorem fuga est consectetur porro nemo. Ex et voluptas unde doloribus. Nemo ad velit nobis eum delectus consequatur amet.</p><p>Ea repudiandae et repellat cupiditate rerum necessitatibus minus. Voluptates eos omnis magni et sit qui eos facere. Consectetur illum ex voluptas autem. Quo enim ad sed quos repudiandae.</p><p>Non dolor velit odio voluptas ut eos. Error numquam rerum possimus soluta expedita. Sequi veniam voluptas sint est et omnis atque.</p><p>Perspiciatis ea voluptas enim quos dignissimos recusandae. Laudantium non quia debitis corrupti tempore illum culpa suscipit. Aliquam esse ea ut libero suscipit molestias fugiat.</p><p>Qui est assumenda architecto aut molestiae eum. Saepe officia ipsam eveniet quis. Voluptatem non rerum eveniet architecto. Fuga eum est ut ea consequuntur dignissimos debitis similique.</p><p>Quasi sapiente sint reiciendis unde consequatur. Ipsum accusantium veritatis aspernatur est velit exercitationem ratione. Mollitia asperiores dolores ipsum et ut voluptas aut.</p><p>Voluptatem reprehenderit quod porro voluptas aut nostrum debitis. Placeat sequi consequatur tempora quam et amet consequatur. Iure qui soluta commodi. Sit qui adipisci dignissimos architecto numquam sint laborum magnam.</p>', NULL, '2022-10-23 02:02:23', '2022-10-23 02:02:23'),
(19, 3, 3, 'Quis sit ut aut.', 'tempora-est-aut-fugiat-fuga-necessitatibus-similique-qui', 'Officiis non est illo veniam est et. Voluptatem natus sed beatae voluptatem atque ratione nobis. Similique atque reiciendis sit est.', '<p>Asperiores aut corporis vero dolorem. Voluptatem non dolorem occaecati aut voluptatem ea. Eaque corporis non nisi autem doloremque possimus.</p><p>Eos accusamus quis quidem nostrum deserunt ea cum. Autem dolores porro incidunt nam ullam sint laudantium quis. Tenetur temporibus hic sed.</p><p>Nesciunt beatae consequatur voluptas illo vero. Ipsum vitae praesentium labore in dicta dolorum ut. Alias consequuntur quae et velit omnis sed.</p><p>Saepe quos dicta pariatur ipsam. Dignissimos et corrupti voluptates nostrum qui voluptatem minus. Aut possimus dolore sint aut dolorum quaerat ut deserunt.</p><p>Iste expedita nihil minima maiores voluptatem soluta. Ratione quo aspernatur vitae nesciunt ducimus quibusdam. Totam et occaecati ab. Asperiores commodi ipsum soluta quae.</p><p>Enim rerum voluptas molestias eligendi suscipit incidunt. Similique in beatae rerum quam culpa. Praesentium nihil exercitationem dolore dolor aut quo iste.</p><p>Commodi quaerat voluptatem consequatur sit animi. Voluptatem dolor totam quis nobis nihil. Sint magni non aut tenetur quisquam. Distinctio officia nobis aliquam est qui cum.</p>', NULL, '2022-10-23 02:02:23', '2022-10-23 02:02:23'),
(20, 3, 3, 'Exercitationem ut blanditiis veritatis aut.', 'sit-harum-voluptates-praesentium-corporis-praesentium-et-neque', 'Nam et ratione reprehenderit. At molestiae quidem facere ut. Optio ipsam recusandae numquam eveniet id minus dolorem.', '<p>Aut quam quae non quibusdam odio facere. Voluptatem corporis eligendi possimus magni et odit veritatis. Nihil enim sit soluta et nam rerum eos. Qui numquam id consequatur qui vitae ullam.</p><p>Doloribus fugiat enim eum ut. Aliquam commodi unde aut nostrum ipsum corporis dolorem. Voluptas culpa suscipit quae eius laboriosam mollitia culpa. Et et nihil vitae autem minus consequatur. Delectus nisi rerum dolores odit temporibus illum dolores vel.</p><p>Aspernatur illum et perferendis vel labore magnam quae enim. Nihil cupiditate libero quia. Delectus tenetur cum et natus in voluptate nesciunt et. Fuga nulla eius vitae. Perspiciatis qui accusantium nobis recusandae nam consequatur.</p><p>Nam ex repudiandae ut. Nihil doloremque natus deleniti minima. Incidunt vel necessitatibus voluptatibus nulla. A quas expedita ex repellendus.</p><p>Non eum enim recusandae est possimus quam non et. Est ipsum omnis sint et et labore dignissimos. Porro iure consectetur et qui tempore dolorum consequatur. Quia quasi placeat numquam dicta expedita aspernatur sit.</p><p>Omnis quam quod voluptas reprehenderit repellat corrupti. Facilis totam et enim aperiam dignissimos excepturi recusandae. Eum voluptas sed ea excepturi.</p><p>Porro debitis et provident qui dolor nihil neque. Est eligendi quia corporis est expedita. Quaerat sed eius enim. Laboriosam quasi neque at consequuntur velit itaque aperiam.</p><p>Qui soluta autem amet et voluptatem numquam. Voluptatum dolor autem pariatur libero ducimus sit. Earum temporibus consectetur est ducimus suscipit laudantium corporis magni. Rerum velit illo ut. Libero qui minus in animi sed.</p><p>Voluptatem quasi sit recusandae minus fuga velit fugit. Illo qui tempore esse quas dolores quos aliquam. Expedita qui est quisquam rerum fugiat esse. Consectetur quae repellat nam magnam ut quia consequuntur.</p><p>Veniam dolorem aspernatur consequatur soluta fuga. Reiciendis natus commodi pariatur et aut perferendis rerum vitae. Corporis saepe quo atque assumenda libero.</p>', NULL, '2022-10-23 02:02:23', '2022-10-23 02:02:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sadina Palastri', 'samosir.rina', 'nharyanto@example.org', '2022-10-23 09:02:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yEYJ7QHeo7', '2022-10-23 02:02:23', '2022-10-23 02:02:23'),
(2, 'Umi Usada', 'budiyanto.martana', 'iswahyudi.amalia@example.org', '2022-10-23 09:02:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ac66B5mJxS', '2022-10-23 02:02:23', '2022-10-23 02:02:23'),
(3, 'Lala Aryani', 'bagus87', 'zahra.wastuti@example.org', '2022-10-23 09:02:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ohtkpzGJCw', '2022-10-23 02:02:23', '2022-10-23 02:02:23');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
