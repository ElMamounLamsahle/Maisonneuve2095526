-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 26 avr. 2022 à 08:03
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `maisonneuve2095526`
--

-- --------------------------------------------------------

--
-- Structure de la table `etudiants`
--

CREATE TABLE `etudiants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_naissance` date NOT NULL,
  `ville_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `etudiants`
--

INSERT INTO `etudiants` (`id`, `nom`, `adresse`, `phone`, `email`, `date_naissance`, `ville_id`, `created_at`, `updated_at`) VALUES
(1, 'Tabitha Okuneva', '209 Wilderman Point\nSouth Zoila, OH 57205', '+14075890514', 'hyman95@example.net', '1968-11-15', 9, '2022-04-24 09:32:04', '2022-04-24 09:32:04'),
(2, 'Prof. Myrtie Koss Sr.', '55274 Olson Gardens\nTurcotteview, PA 65294-0171', '+15309225430', 'ekessler@example.com', '1961-05-23', 13, '2022-04-24 09:32:04', '2022-04-24 09:32:04'),
(3, 'Dr. Nathen Casper', '9947 Farrell Station\nPort Ulicesland, CT 10162-4897', '+14134523291', 'mya.marquardt@example.org', '1968-08-06', 1, '2022-04-24 09:32:04', '2022-04-24 09:32:04'),
(4, 'Geoffrey Becker', '67095 Trevion Motorway Apt. 971\nEast Mohamedmouth, ID 16067', '+16815003179', 'sboehm@example.net', '1965-09-28', 12, '2022-04-24 09:32:04', '2022-04-24 09:32:04'),
(5, 'Imogene Murphy', '93725 Schiller Drive Apt. 801\nRoelburgh, KY 51790-3384', '+16826940732', 'ubayer@example.net', '1988-09-22', 2, '2022-04-24 09:32:04', '2022-04-24 09:32:04'),
(6, 'Mrs. Octavia Runolfsdottir MD', '62934 Jaron Harbor\nLake Vivianeland, KS 91929-8740', '+15628178849', 'towne.archibald@example.net', '1978-09-03', 11, '2022-04-24 09:32:04', '2022-04-24 09:32:04'),
(7, 'Harvey Green', '954 Sallie Loop Apt. 476\nNorth Mistyport, TN 29855', '+15418772972', 'abernathy.suzanne@example.com', '1967-04-06', 4, '2022-04-24 09:32:04', '2022-04-24 09:32:04'),
(8, 'Dr. Jenifer Swift', '52134 Swaniawski Fort Suite 382\nGaylordmouth, FL 58846', '+15713666117', 'olga.eichmann@example.org', '1957-12-27', 1, '2022-04-24 09:32:04', '2022-04-24 09:32:04'),
(9, 'Prof. Walker Mayert', '235 Renner Green Apt. 549\nMayland, GA 90918-1411', '+12539045728', 'pierre.haag@example.org', '2005-02-08', 13, '2022-04-24 09:32:04', '2022-04-24 09:32:04'),
(10, 'Ms. Allison Marks', '8310 Mara Throughway Suite 117\nAbernathystad, PA 41635-9640', '+12729768604', 'kali.champlin@example.com', '1970-03-30', 6, '2022-04-24 09:32:04', '2022-04-24 09:32:04'),
(11, 'Jovanny Wolf', '6111 Rempel Well\nLake Crawford, AK 60048-2542', '+16802030665', 'dayana04@example.net', '1993-05-20', 5, '2022-04-24 09:32:04', '2022-04-24 09:32:04'),
(12, 'Caterina Stanton', '378 O\'Conner Spurs Suite 884\nSouth Clevebury, NY 99815', '+17319540624', 'molly.runte@example.org', '1966-09-09', 13, '2022-04-24 09:32:05', '2022-04-24 09:32:05'),
(13, 'Prof. Adela Wisoky', '25021 Burley Skyway\nEast Pasqualeburgh, LA 82813-0602', '+14698334459', 'sauer.raymond@example.org', '1957-01-15', 6, '2022-04-24 09:32:05', '2022-04-24 09:32:05'),
(14, 'Prof. Rosamond Heaney V', '84400 Gulgowski Square Suite 426\nBransonstad, AL 80353', '+14692678032', 'pabshire@example.net', '2004-08-17', 15, '2022-04-24 09:32:05', '2022-04-24 09:32:05'),
(15, 'Sadie Swaniawski', '59690 Princess Pines Suite 947\nMorissetteside, ID 60283-3398', '+12402749213', 'horace.rowe@example.org', '1979-02-27', 5, '2022-04-24 09:32:05', '2022-04-24 09:32:05'),
(16, 'Mrs. Shanel Rodriguez', '24689 Tromp Well Apt. 109\nNorth Lemuelmouth, MT 33680-9030', '+12706105772', 'pacocha.odessa@example.net', '1966-05-04', 15, '2022-04-24 09:32:05', '2022-04-24 09:32:05'),
(17, 'Fiona Hodkiewicz', '2792 Geovanni Coves\nWest Dax, KS 31110', '+18164990058', 'kirlin.kirstin@example.org', '1976-10-10', 13, '2022-04-24 09:32:05', '2022-04-24 09:32:05'),
(18, 'Naomie Sipes', '6411 Melvin Street\nNew Rosaleemouth, MO 56529', '+19549935509', 'bahringer.samson@example.com', '2005-05-30', 7, '2022-04-24 09:32:05', '2022-04-24 09:32:05'),
(19, 'Prof. Mohammad Volkman', '439 Boehm Field\nLake Elmiraburgh, LA 55269-9565', '+17607018029', 'gussie43@example.net', '1959-05-18', 5, '2022-04-24 09:32:05', '2022-04-24 09:32:05'),
(20, 'Orval Beahan', '1581 Kihn Mission\nLake Bertramland, IN 60170-2842', '+14259461564', 'zulauf.tobin@example.org', '1981-09-18', 3, '2022-04-24 09:32:05', '2022-04-24 09:32:05'),
(21, 'Reed Kuvalis MD', '730 Hellen Groves Suite 016\nPinkport, KY 66570', '+18053126295', 'grover.buckridge@example.com', '2000-09-13', 3, '2022-04-24 09:32:05', '2022-04-24 09:32:05'),
(22, 'Dr. Dalton Jakubowski', '8033 Trantow Rapids Apt. 617\nJulesport, CA 82322-6097', '+18065475477', 'winfield.olson@example.net', '1972-04-19', 15, '2022-04-24 09:32:05', '2022-04-24 09:32:05'),
(23, 'Prof. Theron O\'Kon Jr.', '1284 Rice Lane\nLake Manuela, CT 29148-3318', '+12814745443', 'rosie55@example.com', '1966-02-27', 11, '2022-04-24 09:32:05', '2022-04-24 09:32:05'),
(24, 'Uriel Keeling', '4476 Stamm Valleys\nHershelport, MD 73606-6395', '+19867757213', 'vdavis@example.com', '1960-05-06', 4, '2022-04-24 09:32:05', '2022-04-24 09:32:05'),
(25, 'Esmeralda Osinski Jr.', '23692 Watson Camp Suite 644\nWest Lurlineborough, NJ 69561-0614', '+14054069586', 'marisa74@example.net', '1999-10-16', 9, '2022-04-24 09:32:05', '2022-04-24 09:32:05'),
(26, 'Braxton Jacobi', '8241 Wolff Ports\nEviebury, NJ 67941', '+15177841280', 'brogahn@example.com', '1990-04-24', 7, '2022-04-24 09:32:06', '2022-04-24 09:32:06'),
(27, 'Houston Renner', '8768 Wilkinson Pine\nNorth Jettieton, IL 24392', '+15863178968', 'morton.beier@example.net', '1963-10-29', 11, '2022-04-24 09:32:06', '2022-04-24 09:32:06'),
(28, 'Mr. Ignatius Gutmann', '8957 Krajcik Parkway Apt. 917\nLake Libby, WY 37892', '+16089378939', 'frolfson@example.net', '1977-02-06', 12, '2022-04-24 09:32:06', '2022-04-24 09:32:06'),
(29, 'Wilson Skiles', '14789 Filiberto Throughway Suite 306\nPort Jaylan, AK 58557', '+12548144327', 'yadira.gutmann@example.com', '2004-07-16', 4, '2022-04-24 09:32:06', '2022-04-24 09:32:06'),
(30, 'Aliza Donnelly III', '533 Cameron SpringsSouth Magalibury, AK 99747-8009', '+18643760169', 'oconner.sandy@example.com', '1980-08-23', 10, '2022-04-24 09:32:06', '2022-04-24 09:42:01'),
(31, 'Maxwell Braun PhD', '2671 Hahn Drive\nNorth Arvelville, NM 86669', '+15395854153', 'xrempel@example.net', '1968-08-08', 12, '2022-04-24 09:32:06', '2022-04-24 09:32:06'),
(32, 'Kathleen Dibbert', '8306 Clyde Fall Apt. 135\nGulgowskichester, IA 72968-9942', '+15318335363', 'hollis.grant@example.net', '1960-12-19', 11, '2022-04-24 09:32:06', '2022-04-24 09:32:06'),
(33, 'Sibyl Pouros', '2544 Jorge Estates\nPort Edison, OR 68444-7781', '+15857592914', 'barrows.nick@example.org', '1986-01-19', 9, '2022-04-24 09:32:06', '2022-04-24 09:32:06'),
(34, 'Ms. Alexa Rohan I', '77952 Darrel Island Apt. 017\nHarberchester, NC 41835-6680', '+17628227086', 'white.santina@example.net', '1988-01-28', 2, '2022-04-24 09:32:06', '2022-04-24 09:32:06'),
(35, 'Dr. Lila Cassin II', '65814 Frank Ports\nPort Ima, CA 18413', '+19363242423', 'margarett.runolfsson@example.com', '1991-09-01', 11, '2022-04-24 09:32:06', '2022-04-24 09:32:06'),
(36, 'Prof. Heather Adams Jr.', '1089 Kiehn Valley Suite 006\nKihnstad, DC 71193', '+17083319688', 'jeromy.huel@example.org', '1992-03-27', 10, '2022-04-24 09:32:06', '2022-04-24 09:32:06'),
(37, 'Ms. Mae Luettgen DVM', '1691 Otis Island Apt. 537\nSouth Deonbury, KY 81290-4026', '+12702869797', 'predovic.tara@example.net', '1963-04-08', 6, '2022-04-24 09:32:06', '2022-04-24 09:32:06'),
(38, 'Percy Stroman', '468 Billie Burg Apt. 328\nRichardshire, LA 36587', '+19546364253', 'addison.hamill@example.com', '1966-03-02', 5, '2022-04-24 09:32:06', '2022-04-24 09:32:06'),
(39, 'Donald Abbott', '304 Shanahan Passage Apt. 737\nLake Michael, OK 46172-7286', '+12818487946', 'kuphal.glenda@example.org', '1992-07-14', 5, '2022-04-24 09:32:06', '2022-04-24 09:32:06'),
(40, 'Amelie Will I', '380 Devante Gardens\nNorth Llewellynbury, LA 58813-2024', '+12624259462', 'wunsch.claudie@example.com', '1981-01-26', 8, '2022-04-24 09:32:06', '2022-04-24 09:32:06'),
(41, 'Sheldon Nader', '155 Johnpaul Stream\nSouth Samir, ND 41175-3527', '+15407370618', 'effie.yost@example.com', '1980-11-30', 2, '2022-04-24 09:32:06', '2022-04-24 09:32:06'),
(42, 'Jess Hegmann', '519 Samantha Estates Suite 840\nWavamouth, MN 67180-3482', '+18088370643', 'odicki@example.org', '1993-03-09', 11, '2022-04-24 09:32:06', '2022-04-24 09:32:06'),
(43, 'Theresa Kutch', '6264 Tianna Crescent Apt. 184\nSouth Leannaville, FL 63737', '+17379454005', 'casper.pearl@example.org', '1973-04-08', 15, '2022-04-24 09:32:06', '2022-04-24 09:32:06'),
(44, 'Angelita Ebert', '47283 Dickens Square Apt. 201\nLake Katelynmouth, MI 41116-5382', '+16205005867', 'mervin.reichert@example.com', '1990-10-20', 15, '2022-04-24 09:32:06', '2022-04-24 09:32:06'),
(45, 'Dr. Gertrude Schowalter I', '48082 Consuelo Ways\nLittlefurt, CA 42491-6300', '+18205659606', 'hagenes.domenica@example.org', '2003-10-24', 14, '2022-04-24 09:32:06', '2022-04-24 09:32:06'),
(46, 'Lynn Ullrich', '964 Camren Crest\nEast Lucienneberg, IN 30670', '+18785676521', 'savannah.trantow@example.net', '1961-03-20', 11, '2022-04-24 09:32:06', '2022-04-24 09:32:06'),
(47, 'Dr. Victor Funk', '5339 Willms Corner Suite 839\nAlexbury, OH 69309-3620', '+15167722164', 'arvilla25@example.com', '1970-01-23', 5, '2022-04-24 09:32:07', '2022-04-24 09:32:07'),
(48, 'Cara Bradtke III', '27146 Letha Branch\nEthelfort, MS 81853', '+13329855340', 'sharvey@example.net', '1988-05-06', 3, '2022-04-24 09:32:07', '2022-04-24 09:32:07'),
(49, 'Schuyler Stoltenberg', '46789 Kunze Pike Apt. 399\nTheahaven, LA 32621-6828', '+16408784617', 'adriana.gleason@example.com', '1982-02-19', 4, '2022-04-24 09:32:07', '2022-04-24 09:32:07'),
(50, 'Zoe Mayer', '90968 Ilene Fork Apt. 247\nSpinkaview, KS 39034', '+13374890591', 'vmoore@example.org', '1966-12-07', 11, '2022-04-24 09:32:07', '2022-04-24 09:32:07'),
(51, 'Willis Kessler', '7482 Orn Court Suite 513\nWest Felicia, IL 86550', '+18282124258', 'nadia.fritsch@example.net', '2004-04-06', 15, '2022-04-24 09:32:07', '2022-04-24 09:32:07'),
(52, 'Jakob Lynch', '4209 Douglas Mews\nRunolfssonshire, LA 48895', '+16418942109', 'ohegmann@example.org', '1987-09-17', 4, '2022-04-24 09:32:07', '2022-04-24 09:32:07'),
(53, 'Ramona Turcotte', '6882 Ernestina Landing Apt. 489\nGerholdside, NV 63099-9846', '+17323091020', 'bogan.adrienne@example.com', '1963-01-07', 1, '2022-04-24 09:32:07', '2022-04-24 09:32:07'),
(54, 'Lennie Hodkiewicz', '708 Durgan Courts\nStaceymouth, DC 74924-0687', '+14147687758', 'elena02@example.org', '1999-03-16', 6, '2022-04-24 09:32:07', '2022-04-24 09:32:07'),
(55, 'Lauretta Braun', '58701 Funk Land Suite 594\nHarmonyville, MS 47535', '+12818132678', 'evalyn71@example.net', '1989-03-22', 12, '2022-04-24 09:32:07', '2022-04-24 09:32:07'),
(56, 'Mckenna Lesch', '287 Gay Point Apt. 968\nMathewville, SC 98747-0870', '+16803700086', 'kihn.aaron@example.org', '1988-10-17', 4, '2022-04-24 09:32:07', '2022-04-24 09:32:07'),
(57, 'Mariela Hudson', '519 Kertzmann Roads\nLueilwitztown, SC 86336', '+13396997737', 'brielle.hane@example.net', '1996-11-25', 5, '2022-04-24 09:32:07', '2022-04-24 09:32:07'),
(58, 'Mikayla Beatty', '7998 Koelpin Point\nMayertchester, CA 91822-6135', '+18182150134', 'delia39@example.org', '1965-07-04', 15, '2022-04-24 09:32:07', '2022-04-24 09:32:07'),
(59, 'Jovany Kohler', '8297 Ava Wells\nHanefurt, NY 92936', '+14584128771', 'hschaden@example.org', '1977-04-29', 14, '2022-04-24 09:32:07', '2022-04-24 09:32:07'),
(60, 'Mrs. Lottie Monahan', '683 O\'Keefe Branch Apt. 353\nWest Lilyberg, PA 04815-1859', '+16573428272', 'roberto12@example.net', '2000-11-15', 10, '2022-04-24 09:32:07', '2022-04-24 09:32:07'),
(61, 'Leta Hane', '1071 Leon Branch\nNew Marisa, RI 66326', '+14246693368', 'magdalena.koch@example.net', '1964-06-22', 5, '2022-04-24 09:32:07', '2022-04-24 09:32:07'),
(62, 'Julio Hessel', '79761 Savion Mountains\nWest Krystina, ME 44571', '+16363264886', 'dominic.macejkovic@example.com', '1960-10-28', 1, '2022-04-24 09:32:07', '2022-04-24 09:32:07'),
(63, 'Miss Marguerite Thompson', '21771 Taya Track Apt. 371\nBeermouth, WA 70064-2724', '+15808572692', 'juanita.barton@example.org', '1961-03-25', 2, '2022-04-24 09:32:07', '2022-04-24 09:32:07'),
(64, 'Miss Roslyn Corwin', '19080 Sydni Mill\nWest Freddy, IA 81927', '+16572904700', 'silas.dietrich@example.org', '1992-05-22', 12, '2022-04-24 09:32:07', '2022-04-24 09:32:07'),
(65, 'Prof. Royal Pagac III', '40700 White Falls Apt. 282\nEast Adrian, SC 03929', '+15106382527', 'gregory.friesen@example.net', '1976-10-20', 9, '2022-04-24 09:32:07', '2022-04-24 09:32:07'),
(66, 'Prof. Abdul Gislason IV', '39814 Haag Stream\nEast Kyliechester, MN 85896', '+17796391326', 'geraldine.dooley@example.com', '1996-08-02', 12, '2022-04-24 09:32:07', '2022-04-24 09:32:07'),
(67, 'Miss Desiree Adams', '5637 Margarita Roads\nAstridborough, FL 95448-0568', '+18645183523', 'zrosenbaum@example.org', '1957-05-31', 10, '2022-04-24 09:32:07', '2022-04-24 09:32:07'),
(68, 'Prof. Darron Hamill MD', '5445 Schowalter Forges Apt. 988\nNorth Colbyland, VA 68569-0267', '+16513060039', 'langosh.domenic@example.com', '1963-03-25', 3, '2022-04-24 09:32:08', '2022-04-24 09:32:08'),
(69, 'Brandy Gorczany', '1259 Hector Loaf\nEast Rosariohaven, RI 08947-5958', '+16065184956', 'jconsidine@example.net', '1976-08-22', 11, '2022-04-24 09:32:08', '2022-04-24 09:32:08'),
(70, 'Nikolas Hamill', '2663 Irving Alley Apt. 980\nHandside, MT 37301', '+13076587476', 'jalon.wolff@example.org', '1970-12-23', 13, '2022-04-24 09:32:08', '2022-04-24 09:32:08'),
(71, 'Dr. Roslyn Reilly', '991 Laverne Causeway\nHallieshire, AZ 28575-0582', '+14256992913', 'aubree13@example.org', '2002-03-12', 5, '2022-04-24 09:32:08', '2022-04-24 09:32:08'),
(72, 'Dr. Kenneth Skiles DDS', '820 Lind Summit Suite 283\nLake Annafurt, MS 28179', '+19379274992', 'wilburn16@example.org', '1978-08-14', 1, '2022-04-24 09:32:08', '2022-04-24 09:32:08'),
(73, 'Shaun Cormier', '42264 Batz Corner\nCalebview, MA 67306-9884', '+15597762108', 'arno.doyle@example.org', '2000-05-30', 10, '2022-04-24 09:32:08', '2022-04-24 09:32:08'),
(74, 'Alvina Auer Jr.', '185 Cremin Pines Apt. 533\nGersonburgh, OK 05051', '+13328951859', 'eulah.kiehn@example.net', '1993-01-12', 12, '2022-04-24 09:32:08', '2022-04-24 09:32:08'),
(75, 'Mrs. Christina Greenfelder III', '5612 Collier Mission Suite 245\nWest Sarinaberg, NC 71161-7198', '+17379761206', 'trevor.kemmer@example.net', '1960-01-11', 5, '2022-04-24 09:32:08', '2022-04-24 09:32:08'),
(76, 'Eleonore Bruen', '23989 Mitchell Turnpike Suite 786\nWest Keyshawnview, WI 62936-2597', '+12566152200', 'stehr.winifred@example.com', '1989-12-03', 6, '2022-04-24 09:32:08', '2022-04-24 09:32:08'),
(77, 'Lura O\'Kon', '28800 Anissa Course Apt. 710\nFloshire, MS 67666', '+17323610713', 'senger.ryleigh@example.net', '1976-06-06', 9, '2022-04-24 09:32:08', '2022-04-24 09:32:08'),
(78, 'Shanny Steuber', '7166 Stracke Throughway\nNorth Wadeside, FL 98881-6499', '+18549744816', 'skiles.donny@example.org', '1960-05-22', 10, '2022-04-24 09:32:08', '2022-04-24 09:32:08'),
(79, 'Derek Heathcote', '546 Pouros Estate\nKozeyborough, CT 50698', '+15178051198', 'jbatz@example.com', '2003-06-24', 1, '2022-04-24 09:32:08', '2022-04-24 09:32:08'),
(80, 'Prof. Otis Toy DDS', '439 Mathias Port Apt. 223\nWest Clifton, NC 90344', '+12404698528', 'louie.douglas@example.com', '2005-11-27', 14, '2022-04-24 09:32:08', '2022-04-24 09:32:08'),
(81, 'Marquis Muller', '8688 Bayer Rapid Apt. 661\nMayertton, MO 00304', '+16075974918', 'arnulfo18@example.org', '1969-09-07', 11, '2022-04-24 09:32:08', '2022-04-24 09:32:08'),
(82, 'Susie Lehner', '206 Oberbrunner Neck Suite 007\nSouth Audra, ND 70279-8811', '+18703265000', 'gkutch@example.org', '2003-01-02', 8, '2022-04-24 09:32:08', '2022-04-24 09:32:08'),
(83, 'Mrs. Electa Carroll Jr.', '1976 Edwardo Mission Suite 284\nPort Elyseberg, MD 05208-7870', '+18586474709', 'antonette20@example.org', '1959-04-04', 4, '2022-04-24 09:32:08', '2022-04-24 09:32:08'),
(84, 'Hiram Koepp PhD', '71941 Mckenzie Prairie\nWillardview, WI 53621-2102', '+19562384795', 'collier.icie@example.net', '1975-07-24', 3, '2022-04-24 09:32:08', '2022-04-24 09:32:08'),
(85, 'Prof. Carmine Trantow', '9571 Grady Station Apt. 696\nPort Wileyfurt, NE 55700', '+14696313454', 'zetta.gulgowski@example.com', '1975-01-12', 5, '2022-04-24 09:32:08', '2022-04-24 09:32:08'),
(86, 'Virginie Waters', '51393 McCullough Causeway Suite 657\nEast Karineborough, OH 71899-6462', '+19736460413', 'hbode@example.net', '1965-11-29', 10, '2022-04-24 09:32:09', '2022-04-24 09:32:09'),
(87, 'Mr. Collin Stroman', '231 Rogahn Cliff Suite 961\nKarsonstad, ME 17956', '+16155560822', 'sokon@example.org', '1960-12-26', 11, '2022-04-24 09:32:09', '2022-04-24 09:32:09'),
(88, 'Mia Lesch', '4483 Wiegand Radial Suite 618\nEast Katelin, HI 39141', '+13048249394', 'zemlak.jules@example.org', '1971-08-23', 15, '2022-04-24 09:32:09', '2022-04-24 09:32:09'),
(89, 'Alec Ritchie', '69317 Hoeger Isle Apt. 509\nNew Braeden, KS 26003', '+14234311722', 'henriette.tromp@example.org', '1987-09-25', 8, '2022-04-24 09:32:09', '2022-04-24 09:32:09'),
(90, 'William Dibbert', '78634 West Mountains\nPort Jayceebury, GA 39177', '+15415302004', 'ybeatty@example.net', '1969-04-21', 1, '2022-04-24 09:32:09', '2022-04-24 09:32:09'),
(91, 'Nelda Ratke', '98965 London Ville\nWillmouth, WY 45478-0022', '+19293097968', 'bell53@example.org', '1983-03-26', 8, '2022-04-24 09:32:09', '2022-04-24 09:32:09'),
(92, 'Tessie Gerhold II', '5576 Joshuah Place Suite 438\nSouth Tessie, CO 83377-6929', '+14123836178', 'paucek.chadd@example.com', '1973-11-29', 4, '2022-04-24 09:32:09', '2022-04-24 09:32:09'),
(93, 'Prof. Gaston Corkery', '4206 Boyer Rapids Suite 522\nNorth Stacy, AK 83617', '+15346339719', 'gleason.oral@example.net', '2005-05-07', 10, '2022-04-24 09:32:09', '2022-04-24 09:32:09'),
(94, 'Jameson Hintz MD', '11770 Walker Lake\nBlandaview, PA 71911', '+12294529768', 'markus08@example.net', '1998-12-29', 9, '2022-04-24 09:32:09', '2022-04-24 09:32:09'),
(95, 'Shanel Maggio Jr.', '734 Herta Ports\nElisatown, AL 82989', '+12152722295', 'trinity.leffler@example.net', '2003-12-28', 1, '2022-04-24 09:32:09', '2022-04-24 09:32:09'),
(96, 'Spencer Yundt DDS', '362 Trantow Bypass Suite 996\nLake Norvalton, ME 43045', '+12814017974', 'dickinson.ursula@example.org', '1976-12-24', 14, '2022-04-24 09:32:09', '2022-04-24 09:32:09'),
(97, 'Prof. Nathaniel Stehr', '3882 Terry Neck Apt. 655\nWeissnatton, MN 17205-5531', '+19363969230', 'soconner@example.net', '2002-05-19', 8, '2022-04-24 09:32:09', '2022-04-24 09:32:09'),
(98, 'Alisa Nitzsche', '997 Rosina Landing Suite 137Port Renee, SD 89568', '+17313978792', 'zschinner@example.org', '1965-10-19', 6, '2022-04-24 09:32:09', '2022-04-24 09:56:32'),
(99, 'Alexane Thiel', '408 Ezequiel Mountain\nBreannemouth, WA 75543', '+19419094519', 'edwina.russel@example.org', '1982-12-29', 5, '2022-04-24 09:32:09', '2022-04-24 09:32:09'),
(100, 'Athena Shields', '71488 Leuschke Crossing Suite 666\nGoldnermouth, OH 67819-6960', '+17744552725', 'guadalupe85@example.net', '1960-01-17', 8, '2022-04-24 09:32:09', '2022-04-24 09:32:09');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_12_050105_create_villes_table', 1),
(6, '2022_04_12_050143_create_etudiants_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
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
-- Structure de la table `users`
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

-- --------------------------------------------------------

--
-- Structure de la table `villes`
--

CREATE TABLE `villes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `villes`
--

INSERT INTO `villes` (`id`, `nom`, `created_at`, `updated_at`) VALUES
(1, 'Lake Allyview', '2022-04-24 09:28:51', '2022-04-24 09:28:51'),
(2, 'Goldnermouth', '2022-04-24 09:28:51', '2022-04-24 09:28:51'),
(3, 'Port Fabiolaberg', '2022-04-24 09:28:51', '2022-04-24 09:28:51'),
(4, 'Gislasonview', '2022-04-24 09:28:51', '2022-04-24 09:28:51'),
(5, 'Lake Mitchel', '2022-04-24 09:28:51', '2022-04-24 09:28:51'),
(6, 'East Garrisonside', '2022-04-24 09:28:51', '2022-04-24 09:28:51'),
(7, 'Huelville', '2022-04-24 09:28:51', '2022-04-24 09:28:51'),
(8, 'North Demetris', '2022-04-24 09:28:51', '2022-04-24 09:28:51'),
(9, 'Cartermouth', '2022-04-24 09:28:51', '2022-04-24 09:28:51'),
(10, 'New Grover', '2022-04-24 09:28:51', '2022-04-24 09:28:51'),
(11, 'West Ceasarland', '2022-04-24 09:28:51', '2022-04-24 09:28:51'),
(12, 'Ratkeport', '2022-04-24 09:28:51', '2022-04-24 09:28:51'),
(13, 'Millsstad', '2022-04-24 09:28:51', '2022-04-24 09:28:51'),
(14, 'West Lyric', '2022-04-24 09:28:51', '2022-04-24 09:28:51'),
(15, 'Lake Keyshawnstad', '2022-04-24 09:28:51', '2022-04-24 09:28:51');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `etudiants`
--
ALTER TABLE `etudiants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `etudiants_ville_id_foreign` (`ville_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Index pour la table `villes`
--
ALTER TABLE `villes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `etudiants`
--
ALTER TABLE `etudiants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `villes`
--
ALTER TABLE `villes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `etudiants`
--
ALTER TABLE `etudiants`
  ADD CONSTRAINT `etudiants_ville_id_foreign` FOREIGN KEY (`ville_id`) REFERENCES `villes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
