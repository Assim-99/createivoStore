-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2025 at 09:46 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `createivostore`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `short_description`, `description`, `price`, `quantity`, `image`, `status`, `created_by`, `category_id`, `brand_id`, `created_at`, `updated_at`) VALUES
(1, 'maxime non architecto', 'Veritatis eaque at esse qui voluptatum nemo porro.', 'Et asperiores magni atque eius dolore ut voluptatem. Sit id saepe est ipsa laboriosam corrupti pariatur sunt. Dolor sit sed aspernatur ut explicabo alias aut et. Tenetur incidunt adipisci et nesciunt esse. Voluptatem voluptatem aut vitae suscipit maxime voluptatem totam. Aperiam temporibus atque adipisci laboriosam.', 364.92, 26, 'https://dummyimage.com/300x300/dd0/fff&text=Product+14', 'inactive', 6, 3, 19, '2025-07-28 14:45:16', '2025-07-28 14:45:16'),
(2, 'rerum tenetur quis', 'Est et dolorum veritatis non.', 'Aut cum quia a asperiores vero non quasi pariatur. Pariatur earum molestias possimus. Quod sapiente ea porro quo. Odio dolor maiores non aliquam.', 189.70, 44, 'https://dummyimage.com/300x300/888/fff&text=Product+9', 'inactive', 6, 9, 4, '2025-07-28 14:45:16', '2025-07-28 14:45:16'),
(3, 'aliquam nulla distinctio', 'Est enim alias ut odit saepe.', 'Assumenda sed deleniti officiis quis voluptas impedit. Voluptas ipsum cum rerum alias in corporis et. Autem molestias aliquid doloremque est alias minima error.', 673.42, 64, 'https://dummyimage.com/300x300/111/fff&text=Product+2', 'inactive', 6, 5, 11, '2025-07-28 14:45:16', '2025-07-28 14:45:16'),
(4, 'quo repellendus inventore', 'Vel earum ut est quo veniam.', 'Aperiam repellendus nulla optio quis. Est saepe inventore temporibus quidem dicta incidunt. Quod numquam nesciunt voluptas rerum aperiam laudantium tempore reprehenderit.', 542.66, 6, 'https://dummyimage.com/300x300/333/fff&text=Product+4', 'inactive', 6, 6, 15, '2025-07-28 14:45:16', '2025-07-28 14:45:16'),
(5, 'possimus perspiciatis voluptatem', 'Iure quam exercitationem quia aperiam qui nobis dolorem.', 'Architecto provident recusandae ut temporibus ut molestiae ad. Quia voluptas occaecati fuga sed quis. Non veniam et sint aut non enim. Non culpa qui temporibus et cupiditate incidunt minus. Repudiandae dolorum ex alias quos.', 219.48, 41, 'https://dummyimage.com/300x300/777/fff&text=Product+8', 'inactive', 6, 3, 15, '2025-07-28 14:45:16', '2025-07-28 14:45:16'),
(6, 'officia cupiditate consequatur', 'Id sed voluptas tempora doloribus odio vitae.', 'Iste nemo inventore quam. Quia accusantium unde ea earum enim. Dolor quas dolores eum. Sunt voluptatibus quod voluptas reiciendis nisi omnis aut. Deleniti illum est sint quam mollitia omnis ut.', 706.69, 28, 'https://dummyimage.com/300x300/000/fff&text=Product+1', 'active', 6, 8, 22, '2025-07-28 14:45:16', '2025-07-28 14:45:16'),
(7, 'sequi est accusamus', 'Occaecati molestiae dignissimos possimus eaque quasi quos vel.', 'Fugit et voluptas voluptatem asperiores. Qui eaque accusamus mollitia sed. Rerum est et autem beatae ipsam dolorum. Provident sint aperiam quis aperiam temporibus ad reiciendis laboriosam. Qui quis illo ab dolor est in dolor.', 703.42, 2, 'https://dummyimage.com/300x300/000/fff&text=Product+1', 'inactive', 6, 8, 3, '2025-07-28 14:45:16', '2025-07-28 14:45:16'),
(8, 'eum et sit', 'Totam deserunt vel itaque et molestiae sed.', 'Adipisci minus voluptatem aut sequi sint illo. Corrupti aliquam deleniti alias quis. Perferendis dolor id est consectetur.', 187.36, 51, 'https://dummyimage.com/300x300/111/fff&text=Product+2', 'active', 6, 9, 10, '2025-07-28 14:45:16', '2025-07-28 14:45:16'),
(10, 'doloremque vero qui', 'Quia aut accusamus fugiat beatae.', 'Aperiam porro sint est consequatur officia omnis itaque. Recusandae ullam rerum autem consequatur magnam exercitationem illo. Odio dolor quibusdam fuga non nemo qui. At corrupti facilis est suscipit. Eligendi vel laborum maxime nesciunt commodi et possimus atque. Ipsa id corrupti eos exercitationem.', 328.02, 35, 'https://dummyimage.com/300x300/111/fff&text=Product+2', 'active', 6, 10, 14, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(11, 'ratione incidunt quas', 'Quas provident aliquam quo voluptas.', 'Aspernatur hic libero voluptatem dolor. Quisquam et nobis nemo qui omnis magni. Quas quo repellat et unde. Quis ea exercitationem qui minus sapiente sed. Corrupti qui eius numquam quo et facilis.', 197.59, 92, 'https://dummyimage.com/300x300/999/fff&text=Product+10', 'active', 6, 11, 22, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(12, 'voluptatem temporibus eius', 'Adipisci incidunt aut nihil sequi.', 'Quasi aut officia tenetur officia nihil non placeat. Veritatis officiis et praesentium consectetur repellat qui inventore. Sit illum qui voluptas aut quisquam. Rem totam illo voluptatem ipsa fugit corporis qui. Dicta vitae placeat ut eveniet ut quos. Assumenda qui in omnis.', 896.68, 10, 'https://dummyimage.com/300x300/bb0/fff&text=Product+12', 'inactive', 6, 10, 21, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(13, 'quod voluptas quibusdam', 'Corporis et qui omnis architecto eius fugiat ea.', 'Quae voluptate labore eaque amet rerum. Ut quam nemo dicta aperiam. Molestias sequi qui deserunt sit similique quo odio. Accusamus architecto qui sit dolorum iusto velit.', 448.55, 86, 'https://dummyimage.com/300x300/222/fff&text=Product+3', 'active', 6, 6, 6, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(14, 'consequatur exercitationem incidunt', 'Ullam facere aliquam quibusdam soluta facere ut.', 'Sunt accusamus possimus dolores. Consequatur et veritatis unde et aut. Ullam enim qui ipsa ipsa. Beatae facere id qui nam.', 666.73, 86, 'https://dummyimage.com/300x300/dd0/fff&text=Product+14', 'inactive', 6, 5, 8, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(15, 'possimus iure dolores', 'Autem repudiandae rerum quisquam velit.', 'Sequi sequi quo placeat tenetur. Omnis tenetur eius dolor laboriosam ut saepe. Molestiae quis omnis rerum et nemo quia.', 924.77, 0, 'https://dummyimage.com/300x300/ee0/fff&text=Product+15', 'inactive', 6, 6, 30, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(16, 'consequatur totam tempora', 'Excepturi blanditiis et aut tenetur.', 'Aut repudiandae eaque numquam laudantium quia et officia consequatur. Voluptate voluptas quasi ad hic eum asperiores. Quia quo qui iure nesciunt fugit fugit. Officiis fugiat laborum cumque.', 973.78, 80, 'https://dummyimage.com/300x300/aa0/fff&text=Product+11', 'active', 6, 2, 5, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(17, 'voluptatem sunt et', 'Dicta voluptatem non eaque officiis deserunt et.', 'Similique quas et dolorem modi omnis debitis nostrum. Odio earum voluptatibus eius doloremque aut. Nihil dolores molestiae dignissimos dolor saepe voluptates illo odio. Corrupti doloribus ea at.', 855.15, 38, 'https://dummyimage.com/300x300/333/fff&text=Product+4', 'active', 6, 3, 11, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(18, 'consequatur alias consectetur', 'Aut quae et sapiente facere.', 'Et exercitationem nobis consequatur eum. Voluptas cupiditate voluptatibus dolores tempore perspiciatis itaque sequi. Ipsa quisquam reiciendis ipsam. Et et eaque reiciendis officiis consequatur doloribus fuga aut. Dicta aut provident qui aut omnis. Fuga enim autem et unde fuga.', 721.17, 85, 'https://dummyimage.com/300x300/888/fff&text=Product+9', 'inactive', 6, 4, 30, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(19, 'qui eum magni', 'Voluptas consequuntur quo ipsa nemo quo.', 'Quisquam ducimus ea temporibus omnis cum amet. Quia nisi tempora et iure aut. Nemo molestiae quisquam neque ipsum. Eos repellendus non cupiditate dicta qui autem neque.', 592.70, 83, 'https://dummyimage.com/300x300/bb0/fff&text=Product+12', 'active', 6, 8, 22, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(20, 'in expedita sed', 'Facere non illo et inventore rerum.', 'Maxime ex rerum est molestiae praesentium quia neque. Aut adipisci est ut facere. Sed modi et aliquid cupiditate dicta est. Et et iure officiis eaque.', 809.33, 90, 'https://dummyimage.com/300x300/333/fff&text=Product+4', 'active', 6, 9, 10, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(21, 'deleniti cum numquam', 'Magni numquam dolores sit.', 'Quibusdam eaque eaque eveniet laboriosam aut alias voluptas. Accusantium veniam omnis voluptas recusandae ea provident. Aut deserunt aut maiores vel vel aut. Blanditiis tempora veritatis cum et. Non explicabo earum reprehenderit consequatur optio.', 477.55, 44, 'https://dummyimage.com/300x300/aa0/fff&text=Product+11', 'active', 6, 10, 19, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(22, 'et quidem repudiandae', 'Omnis dolorum voluptatum pariatur amet qui est.', 'Est excepturi qui ut autem iure explicabo possimus. Fugit similique minima consequuntur nihil est. Quaerat impedit et aut optio. Quod sed ipsa aut aliquid est.', 965.01, 5, 'https://dummyimage.com/300x300/bb0/fff&text=Product+12', 'inactive', 6, 2, 25, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(23, 'tenetur delectus corporis', 'Aut ab quasi accusantium optio neque pariatur.', 'Natus vitae aperiam consequuntur est hic accusantium dolores. In qui quia vel mollitia dolores velit magni. Facere laudantium quam deserunt earum. Dolores impedit praesentium inventore iste veniam quam.', 757.05, 16, 'https://dummyimage.com/300x300/888/fff&text=Product+9', 'active', 6, 3, 6, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(24, 'temporibus dolorem dolorem', 'Sed facere assumenda rerum consectetur mollitia.', 'Ducimus eius aliquam aut totam autem itaque. Ut numquam nemo distinctio. Voluptas possimus laborum labore et sunt rerum. Culpa aut qui sed minus omnis optio.', 702.85, 54, 'https://dummyimage.com/300x300/111/fff&text=Product+2', 'active', 6, 7, 11, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(25, 'et dicta sint', 'Voluptatem enim dignissimos consequatur pariatur.', 'Recusandae eos quos corrupti nostrum. Dolor distinctio dignissimos officiis voluptatem laboriosam repellat. Doloribus quod consequatur omnis dolorum minima. Aspernatur vero recusandae sequi provident quia consectetur eligendi consequatur.', 712.79, 3, 'https://dummyimage.com/300x300/000/fff&text=Product+1', 'inactive', 6, 11, 29, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(26, 'dignissimos commodi accusantium', 'Sunt et corporis voluptates rerum sint sit.', 'Eum aut dignissimos illo ut dolorem minus explicabo. Occaecati ratione deleniti laboriosam nostrum est rerum. Rerum voluptas voluptates possimus qui et rerum. Distinctio repudiandae voluptas ut at nulla quia.', 252.02, 31, 'https://dummyimage.com/300x300/555/fff&text=Product+6', 'inactive', 6, 6, 14, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(27, 'distinctio non non', 'Odit autem et voluptatem officia suscipit quaerat enim.', 'A rerum error sed laudantium. Quaerat culpa est quae inventore repellendus nam totam voluptatem. Omnis cumque iusto eum molestias saepe quae. Assumenda et sint ab praesentium adipisci voluptatem eius. Ullam nemo rem eveniet aut aliquid enim qui. Suscipit fuga eius eaque ut.', 803.92, 90, 'https://dummyimage.com/300x300/cc0/fff&text=Product+13', 'inactive', 6, 4, 3, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(28, 'ut iure labore', 'Alias occaecati reiciendis et earum aut ducimus possimus.', 'Tempora ipsum molestias reiciendis suscipit facere. Dolore rem non praesentium. Eum sunt odit et rerum. Explicabo vitae consequuntur est qui et rerum vel sed.', 804.66, 6, 'https://dummyimage.com/300x300/000/fff&text=Product+1', 'active', 6, 3, 20, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(29, 'molestiae et sed', 'Distinctio omnis sit natus officiis.', 'Eaque nemo ad recusandae quasi et corrupti reiciendis. Voluptatem aliquid porro deleniti labore sit odit eaque. Nesciunt eos ducimus consequuntur sunt molestiae nisi. Sit itaque qui vel repellat ratione iure ut. Nulla labore sint ut rem officiis. Molestiae repellat qui id nemo natus rerum porro delectus.', 768.39, 2, 'https://dummyimage.com/300x300/222/fff&text=Product+3', 'active', 6, 5, 6, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(30, 'molestiae qui ullam', 'Esse in quia eligendi nisi.', 'Corporis repellendus reprehenderit et expedita. Nulla beatae accusamus cupiditate sed sed architecto. Tenetur distinctio ut earum similique ad pariatur eaque. Neque iure tempore vel voluptas id ad.', 64.29, 99, 'https://dummyimage.com/300x300/ee0/fff&text=Product+15', 'inactive', 6, 5, 3, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(31, 'facere sint velit', 'Illo sed ut ducimus est voluptas nihil amet.', 'Nihil voluptatem ut libero et sequi rerum et. Ab atque eum tenetur eligendi nihil. Est perspiciatis consequatur repellat dignissimos aut accusamus molestiae. Quisquam et reiciendis beatae necessitatibus culpa vitae. Quia ipsum commodi nisi rerum.', 40.21, 95, 'https://dummyimage.com/300x300/777/fff&text=Product+8', 'inactive', 6, 11, 16, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(32, 'praesentium natus sed', 'Enim nihil consequuntur voluptate consequatur ea.', 'Deleniti quibusdam consequatur asperiores animi deserunt consequatur. Deserunt id excepturi necessitatibus et voluptas fugiat impedit. Qui iure rerum eos sit consectetur commodi rerum. Similique quidem voluptatem consequatur voluptas suscipit vel laudantium. Amet tempore aperiam quia sed necessitatibus in corrupti. Eos nihil non accusamus impedit molestiae.', 628.23, 65, 'https://dummyimage.com/300x300/888/fff&text=Product+9', 'active', 6, 4, 7, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(33, 'placeat laborum dolore', 'Repellendus optio est cum et molestiae sint porro.', 'Provident voluptates quia eum cupiditate quia mollitia expedita rem. Voluptate rerum possimus molestiae possimus dolor ut. Et consequuntur corrupti adipisci et. Provident dolor consequatur aut et.', 732.95, 75, 'https://dummyimage.com/300x300/ee0/fff&text=Product+15', 'active', 6, 5, 30, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(34, 'saepe qui sunt', 'Unde fugit provident libero corrupti voluptate id.', 'Sunt praesentium aut modi in et incidunt. Mollitia necessitatibus earum quo hic praesentium perferendis enim. Modi corrupti laboriosam vel deserunt. Quia velit dolore tempore. Nisi ducimus animi voluptatibus beatae exercitationem et.', 823.46, 46, 'https://dummyimage.com/300x300/888/fff&text=Product+9', 'active', 6, 8, 9, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(35, 'sint molestiae quaerat', 'Sed harum quasi sint placeat est.', 'Qui doloremque quas molestiae illo tempore. Tempora culpa sit sit nesciunt ipsum dolorum omnis. Nesciunt voluptatem minima tempora in est.', 307.59, 50, 'https://dummyimage.com/300x300/333/fff&text=Product+4', 'active', 6, 6, 9, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(36, 'dolores et hic', 'Doloremque dolores aut sequi repellat.', 'Beatae esse repudiandae quam quasi. Ullam reiciendis illum pariatur sint omnis. Sequi eos maxime vel omnis dolores. Corrupti ut delectus et est consequatur.', 175.71, 23, 'https://dummyimage.com/300x300/000/fff&text=Product+1', 'inactive', 6, 8, 2, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(37, 'voluptatem iusto voluptatem', 'Aut fugit voluptatibus voluptas nemo velit sed voluptas.', 'Quasi repudiandae ullam sit aut. Sit accusamus quo temporibus omnis. Beatae perferendis omnis laborum omnis quia eius aspernatur. Nam et nemo facere vitae reprehenderit. Reiciendis eos fuga in adipisci. Ipsam ea qui et pariatur.', 123.43, 86, 'https://dummyimage.com/300x300/ee0/fff&text=Product+15', 'active', 6, 8, 27, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(38, 'doloribus inventore illum', 'Error accusamus laboriosam ducimus molestias iusto.', 'Consectetur mollitia ea quos cumque ea quos fuga. Omnis reiciendis et magni commodi quos. Tenetur quos velit doloremque velit. Tenetur rem minus eligendi autem.', 714.99, 36, 'https://dummyimage.com/300x300/111/fff&text=Product+2', 'active', 6, 9, 3, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(39, 'maiores expedita ducimus', 'Nisi nulla sint rerum est.', 'Delectus quo ea accusamus saepe accusantium. Ratione nulla sint provident optio eveniet quas debitis. Sunt suscipit quis distinctio minus quia et eaque voluptatum. Aut nostrum nam molestiae est neque. Explicabo consequatur quibusdam possimus deserunt in dolorem. Cupiditate est ea officiis et et at.', 973.86, 6, 'https://dummyimage.com/300x300/bb0/fff&text=Product+12', 'inactive', 6, 5, 7, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(40, 'necessitatibus aut fuga', 'Est voluptatum rerum sed est velit adipisci aut.', 'Maxime qui a cupiditate ut. Ut impedit omnis perspiciatis qui ducimus sed quos. Iusto doloribus animi voluptatem. Sed delectus voluptas aut.', 776.14, 65, 'https://dummyimage.com/300x300/222/fff&text=Product+3', 'inactive', 6, 10, 2, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(41, 'et doloribus tempore', 'Alias sit dolor necessitatibus vitae.', 'Distinctio excepturi quo tempore laborum. Qui harum vitae consequatur perferendis autem quibusdam. Commodi dolorum voluptates quaerat alias perspiciatis aut. Impedit illo exercitationem commodi nihil harum dolores in. Et porro quibusdam reprehenderit dolorem consectetur qui minus.', 617.98, 36, 'https://dummyimage.com/300x300/666/fff&text=Product+7', 'active', 6, 10, 12, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(42, 'atque molestiae eveniet', 'Eum quo et qui ullam tempore.', 'Temporibus et dignissimos est. Earum at aliquam sequi cum maxime ut veniam. Vitae veritatis qui animi itaque. Veritatis enim esse hic quia eum aperiam. Ut nemo est tempore itaque officiis laboriosam velit dicta. Minus consequatur aspernatur commodi odio repudiandae iusto sapiente.', 122.82, 19, 'https://dummyimage.com/300x300/cc0/fff&text=Product+13', 'inactive', 6, 3, 22, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(43, 'pariatur ut perferendis', 'Nihil cum ab aut omnis enim minus eius.', 'Debitis maxime deserunt exercitationem corrupti voluptas dolores possimus. Dolor sit tenetur laboriosam consequatur ut ut. Consequatur id quam necessitatibus quia.', 335.24, 43, 'https://dummyimage.com/300x300/999/fff&text=Product+10', 'inactive', 6, 5, 27, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(44, 'odio et autem', 'Reiciendis dolorem sapiente beatae omnis.', 'Nesciunt asperiores libero voluptas molestiae. Ut voluptatem facere repellat veritatis ut occaecati consequatur. Numquam tempora accusantium nesciunt quibusdam asperiores.', 28.70, 17, 'https://dummyimage.com/300x300/cc0/fff&text=Product+13', 'inactive', 6, 10, 18, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(45, 'sint eum dolore', 'Modi sed impedit molestiae placeat est consequatur.', 'Quibusdam magni perferendis laboriosam esse nam. Quae suscipit enim eos ex rerum aspernatur vitae. Distinctio qui quidem quasi omnis aut omnis. Fuga dolorem molestias ut praesentium nemo.', 474.40, 16, 'https://dummyimage.com/300x300/444/fff&text=Product+5', 'active', 6, 8, 15, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(46, 'voluptatem deleniti aut', 'Inventore enim soluta earum.', 'Mollitia voluptates officia totam totam omnis et labore. Voluptatem tempora assumenda optio optio consequatur non. Sequi aut possimus atque rerum. Ducimus dolor saepe laboriosam ut necessitatibus. Optio et dolores nam ullam quisquam. Omnis qui optio laudantium aut.', 449.19, 4, 'https://dummyimage.com/300x300/444/fff&text=Product+5', 'inactive', 6, 8, 4, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(47, 'ullam modi ut', 'Distinctio enim et ea consequatur et commodi et.', 'Cum ut id non eveniet vitae. Repellendus natus occaecati nihil modi sint esse et qui. Voluptates cum inventore omnis tenetur. Placeat quidem quos repellendus corporis temporibus velit et. Ratione maxime sed saepe.', 140.52, 61, 'https://dummyimage.com/300x300/999/fff&text=Product+10', 'active', 6, 2, 18, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(48, 'ex laudantium qui', 'Atque atque explicabo alias quia quos.', 'Est voluptatem occaecati repellendus harum illum. Recusandae facilis exercitationem deleniti aut sit ut ut. Animi placeat voluptatem tempora iusto quia in sit. Et consequatur id suscipit dolor dolor dolorum voluptatibus.', 494.61, 62, 'https://dummyimage.com/300x300/666/fff&text=Product+7', 'active', 6, 10, 7, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(49, 'rerum nobis cumque', 'Vero rerum nemo consequatur rerum aliquam dolorum.', 'Beatae et vero et ea rerum. Quae deleniti quaerat eum. Repellendus consectetur eos neque quaerat. Est repudiandae placeat temporibus est vel ut inventore rem. Unde omnis rerum id et sed praesentium in.', 431.36, 72, 'https://dummyimage.com/300x300/666/fff&text=Product+7', 'active', 6, 10, 14, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(50, 'non minima repudiandae', 'Quam quae veritatis dolores soluta.', 'Aperiam veniam enim perspiciatis ipsum beatae iste. Facere perspiciatis ea sit officia quo blanditiis. Et quasi nisi maxime possimus maiores beatae voluptas.', 474.42, 51, 'https://dummyimage.com/300x300/bb0/fff&text=Product+12', 'active', 6, 11, 8, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(51, 'et aut ut', 'Molestias nostrum aut optio optio est ea.', 'Natus debitis doloribus quasi voluptates qui quia sunt. Amet laboriosam eum dolore nobis sed ut non. Qui optio numquam suscipit sint. Ducimus ex porro fugiat ut aut. Inventore nihil assumenda iusto quaerat.', 289.80, 91, 'https://dummyimage.com/300x300/ee0/fff&text=Product+15', 'inactive', 6, 7, 25, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(52, 'optio et ut', 'Ut praesentium occaecati ducimus quaerat voluptatem quia possimus.', 'Autem repellendus quaerat qui est eos porro repellendus ullam. Dicta temporibus autem adipisci iure ut consectetur enim omnis. Suscipit ullam eveniet pariatur mollitia possimus nobis dolores doloremque. Ut vero earum sit possimus sit. Consequatur aut qui harum consequatur.', 47.10, 35, 'https://dummyimage.com/300x300/111/fff&text=Product+2', 'active', 6, 5, 24, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(53, 'ipsum animi in', 'Nam maxime porro dolorem sequi dignissimos sunt quas.', 'Molestiae est cupiditate et architecto dolor quis autem. Distinctio odio magnam ut in in cumque. Adipisci distinctio dolores consequuntur fugit nostrum mollitia. Cum et vitae fugiat id corporis minus sunt. Voluptatem dolor doloribus et eius fugit placeat voluptatem doloremque.', 251.57, 72, 'https://dummyimage.com/300x300/222/fff&text=Product+3', 'active', 6, 7, 27, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(54, 'deserunt quia neque', 'Voluptas dolorem odio nam voluptas quis iusto voluptas.', 'In explicabo blanditiis aspernatur saepe ut aliquid. Laboriosam quod totam quo quia corrupti quae illum ut. Aut odit non aspernatur eius dolore magni. Hic rem harum est adipisci labore.', 601.61, 88, 'https://dummyimage.com/300x300/111/fff&text=Product+2', 'inactive', 6, 2, 19, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(55, 'nobis consequatur quod', 'Eligendi qui sit laudantium perspiciatis itaque molestiae eum minima.', 'Dolor reiciendis accusamus qui doloribus necessitatibus aliquam. Quae itaque odit inventore et. Quas omnis eveniet totam aut. Et et aut tempore aut corporis ut iste. Esse illo explicabo nostrum iure inventore eum. Quia minima vel illo nihil et qui.', 382.84, 13, 'https://dummyimage.com/300x300/555/fff&text=Product+6', 'inactive', 6, 3, 25, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(56, 'neque ut cumque', 'Doloribus fugiat molestias libero tenetur aut odit.', 'Cum dolores qui qui excepturi voluptatem. In voluptas esse rerum aut exercitationem ut. Soluta illum vero officiis. Voluptatem suscipit delectus et fugiat dolor perspiciatis sit. Odit eos incidunt perferendis neque et ipsum et.', 804.99, 12, 'https://dummyimage.com/300x300/000/fff&text=Product+1', 'active', 6, 2, 27, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(57, 'et est accusantium', 'Nihil voluptates aut officiis nesciunt adipisci commodi.', 'Dolor vero dolor sit omnis velit quae cupiditate. Quidem sunt quidem eligendi quis reprehenderit fuga quia officia. Minima doloribus repellendus soluta ipsam eum vero et et. Deleniti velit veritatis animi cupiditate. Autem in recusandae voluptas neque tempore. Minus temporibus illo sed libero.', 287.59, 37, 'https://dummyimage.com/300x300/000/fff&text=Product+1', 'active', 6, 3, 30, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(58, 'quis et et', 'Pariatur nihil rerum quia accusantium dolorem porro molestiae.', 'Doloremque in sit aut dignissimos. Vitae earum ipsum omnis laborum suscipit consequatur assumenda. Et dicta est occaecati.', 56.09, 19, 'https://dummyimage.com/300x300/ee0/fff&text=Product+15', 'inactive', 6, 8, 15, '2025-07-28 14:46:11', '2025-07-28 14:46:11'),
(59, 'ut perferendis tempore', 'Sequi ipsum nesciunt rerum ipsam omnis quaerat repudiandae dolor.', 'Officia aut deleniti minus quo fuga illo. Ea quia nihil beatae minima molestiae in odit. Ipsum et alias voluptatum quae cupiditate voluptatibus eum. Tempora possimus vitae non quibusdam blanditiis. Maxime sunt illum aliquid fugit fuga.', 326.73, 0, 'https://dummyimage.com/300x300/555/fff&text=Product+6', 'active', 6, 2, 16, '2025-07-28 14:46:11', '2025-07-28 14:46:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_created_by_foreign` (`created_by`),
  ADD KEY `items_category_id_foreign` (`category_id`),
  ADD KEY `items_brand_id_foreign` (`brand_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `items_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
