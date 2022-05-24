-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 24 mai 2022 à 15:08
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
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `titre_fr` varchar(255) DEFAULT NULL,
  `titre_en` varchar(255) DEFAULT NULL,
  `contenu_fr` text DEFAULT NULL,
  `contenu_en` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `titre_fr`, `titre_en`, `contenu_fr`, `contenu_en`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Linus Torvalds publie la version 5.18 du noyau Linux qui marque le passage à la norme de compilation C11', 'Linus Torvalds releases Linux kernel version 5.18 which marks the move to the C11 compilation standard', 'Linus Torvalds a annoncé dimanche la disponibilité générale de la version stable de Linux 5.18. Les points forts de Linux 5.18 incluent le passage à la norme de compilation C11, la prise en charge des \"événements utilisateur\" dans le système de traçage, la prise en charge de la fonction \"port de gestion du système hôte\" d\'AMD, la prise en charge des sommes de contrôle d\'intégrité 64 bits sur les périphériques NVMe, la prise en charge de la fonction \"interface de retour matériel\" d\'Intel, la prise en charge du suivi indirect des branches pour l\'architecture x86, etc. Linux 5.18 apporte également de meilleures performances de planification des processus sur les CPU Zen d\'AMD.\r\n\r\nLinux 5.18 arrive précisément deux mois après la série de noyaux Linux 5.17 et a reçu huit étapes RC (Release Candidate) pendant tout son cycle de développement, ce qui a aidé les développeurs du noyau à corriger les bogues et à améliorer les fonctionnalités existantes. Le message du mainteneur en chef, Linus Torvalds, annonçant la sortie de cette version est typique de ceux qu\'il a rédigés pour chacune des huit versions candidates : cette fois-ci, il n\'a trouvé aucune mauvaise surprise, les ajouts n\'étaient ni majeurs ni complexes, et aucun problème n\'a affecté le processus de développement. Alors, quoi de neuf dans cette version ?\r\n\r\nLe nouveau noyau Linux 5.18 a beaucoup d\'ajouts Intel, y compris le nouveau pilote \"Hardware Feedback Interface\" (HFI) pour les processeurs hybrides comme Alder Lake, \"Software Defined Silicon\" (SDSi) a été fusionné pour activer les fonctionnalités de silicium sous licence avec les futurs CPU Intel, \"Intel Indirect Branch Tracking\" (IBT) dans le cadre de \"Control-Flow Enforcement Technology\", \"ENQCMD\" est réactivé pour Sapphire Rapids, et plus encore. Intel PECI, l\'interface de contrôle de l\'environnement de la plateforme, a également été fusionnée pour l\'interfaçage entre le CPU et les BMC sur les plateformes de serveurs Intel.', 'Linus Torvalds a annoncé dimanche la disponibilité générale de la version stable de Linux 5.18. Les points forts de Linux 5.18 incluent le passage à la norme de compilation C11, la prise en charge des \"événements utilisateur\" dans le système de traçage, la prise en charge de la fonction \"port de gestion du système hôte\" d\'AMD, la prise en charge des sommes de contrôle d\'intégrité 64 bits sur les périphériques NVMe, la prise en charge de la fonction \"interface de retour matériel\" d\'Intel, la prise en charge du suivi indirect des branches pour l\'architecture x86, etc. Linux 5.18 apporte également de meilleures performances de planification des processus sur les CPU Zen d\'AMD.\r\n\r\nLinux 5.18 arrive précisément deux mois après la série de noyaux Linux 5.17 et a reçu huit étapes RC (Release Candidate) pendant tout son cycle de développement, ce qui a aidé les développeurs du noyau à corriger les bogues et à améliorer les fonctionnalités existantes. Le message du mainteneur en chef, Linus Torvalds, annonçant la sortie de cette version est typique de ceux qu\'il a rédigés pour chacune des huit versions candidates : cette fois-ci, il n\'a trouvé aucune mauvaise surprise, les ajouts n\'étaient ni majeurs ni complexes, et aucun problème n\'a affecté le processus de développement. Alors, quoi de neuf dans cette version ?\r\n\r\nLe nouveau noyau Linux 5.18 a beaucoup d\'ajouts Intel, y compris le nouveau pilote \"Hardware Feedback Interface\" (HFI) pour les processeurs hybrides comme Alder Lake, \"Software Defined Silicon\" (SDSi) a été fusionné pour activer les fonctionnalités de silicium sous licence avec les futurs CPU Intel, \"Intel Indirect Branch Tracking\" (IBT) dans le cadre de \"Control-Flow Enforcement Technology\", \"ENQCMD\" est réactivé pour Sapphire Rapids, et plus encore. Intel PECI, l\'interface de contrôle de l\'environnement de la plateforme, a également été fusionnée pour l\'interfaçage entre le CPU et les BMC sur les plateformes de serveurs Intel.', '2022-05-24 02:19:20', '2022-05-24 02:20:34', 1),
(2, 'Electronic Arts chercherait un acheteur et aurait eu des discussions avec Disney, Apple et Amazon,', 'Electronic Arts is reportedly looking for a buyer and has been in talks with Disney, Apple and Amazon,', 'Des sources anonymes ont indiqué récemment qu\'Electronic Arts, l\'un des principaux développeurs et producteurs mondiaux de jeux vidéo, serait à la recherche d\'un repreneur. Dans le cadre de cette démarche, la société aurait approché des géants technologiques tels que Disney, Amazon, Apple et Comcast-NBCUniversal. Selon ces sources, les discussions avec NBCUniversal auraient bien progressé, avant d\'échouer brusquement le mois dernier à cause de certains désaccords sur la valeur de l\'éditeur de jeux. Jusqu\'ici, l\'éditeur américain de jeux vidéo n\'a pas commenté les rumeurs sur ce potentiel rachat.\r\n\r\nCes dernières années ont vu une vague de consolidation au sein de l\'industrie du jeu vidéo. Les géants de la technologie comme Microsoft, qui est en train de racheter Activision Blizzard pour 69 milliards de dollars, les grands éditeurs comme Take-Two, qui rachète le géant de la téléphonie mobile Zynga pour 12,7 milliards de dollars, et les holdings financés par des investisseurs comme Embracer Group, qui possède aujourd\'hui 124 studios et a ajouté Crystal Dynamics et Eidos Montréal au début du mois, en font partie. Electronic Arts a également été actif, rachetant Codemasters pour 1,2 milliard de dollars l\'année dernière.\r\n\r\nElectronic Arts, un géant de l\'industrie du jeu vidéo souvent controversé, propose des jeux comme Madden, Apex Legends, FIFA (qui changera de nom en \"Electronic Arts Sports FC\" en 2023) et Battlefield. Les rumeurs circulant sur la supposée volonté d\'Electronic Arts de vendre ses activités n\'ont pas mentionné les raisons qui pourraient expliquer une telle décision. Selon les sources, si Electronic Arts a approché Amazon, Apple et Disney également, l\'opération qui a failli se réaliser est une fusion avec NBCUniversal. Plutôt qu\'une acquisition, le chef de Comcast-NBCU, Brian Roberts, avait prévu de séparer NBCU et la fusionner avec Electronic Arts.', 'Anonymous sources recently indicated that Electronic Arts, one of the world\'s leading developers and producers of video games, is looking for a buyer. As part of the move, the company is said to have approached tech giants like Disney, Amazon, Apple, and Comcast-NBCUniversal. According to these sources, talks with NBCUniversal have progressed well, before collapsing abruptly last month over some disagreements over the value of the game publisher. So far, the American video game publisher has not commented on the rumors about this potential takeover.\r\n\r\nThe last few years have seen a wave of consolidation within the video game industry. Tech giants like Microsoft, which is buying Activision Blizzard for $69 billion, big publishers like Take-Two, which is buying mobile phone giant Zynga for $12.7 billion, and holdings funded by investors like Embracer Group, which now owns 124 studios and added Crystal Dynamics and Eidos Montreal earlier this month, are among them. Electronic Arts has also been active, buying Codemasters for $1.2 billion last year.\r\n\r\nElectronic Arts, an oft-controversial gaming industry giant, offers games like Madden, Apex Legends, FIFA (which will change its name to \"Electronic Arts Sports FC\" in 2023) and Battlefield. The rumors circulating on the supposed will of Electronic Arts to sell its activities did not mention the reasons which could explain such a decision. According to the sources, while Electronic Arts has approached Amazon, Apple and Disney as well, the deal that almost went through was a merger with NBCUniversal. Rather than an acquisition, Comcast-NBCU chief Brian Roberts had planned to spin off NBCU and merge it with Electronic Arts.', '2022-05-24 06:24:12', '2022-05-24 06:24:12', 1),
(3, 'Les employés de Google Maps s\'opposent au plan de reprise du travail en présentiel', 'Google Maps employees oppose face-to-face return-to-work plan', 'Google, tout comme Apple, s\'est efforcé d\'inciter ses employés à revenir au bureau. L\'entreprise a eu recours à des scooters électriques pour faciliter les déplacements de ses employés. Malheureusement, ce n\'est pas vraiment une solution pour les employés de la division Maps sur son site de l\'État de Washington. Selon le New York Times, 200 employés qui travaillent pour Google par l\'intermédiaire de la société d\'externalisation Cognizant Technology Solutions affirment qu\'ils ne peuvent pas se permettre de faire la navette avec le bureau de la société à Bothell cinq jours par semaine. Il est intéressant de noter que les employés directs de Google ne sont tenus de revenir au bureau que trois jours par semaine. En revanche, les employés de Cognizant sont tenus de revenir cinq jours par semaine et demandent donc la même considération que les employés directs.\r\n\r\nLes employés contractuels de Google Maps qui sont tenus de retourner à leur bureau dans l\'État de Washington ont récemment fait circuler une pétition pour continuer à travailler à domicile, car certains d\'entre eux ne peuvent pas se permettre de faire la navette. Le problème concerne plus de 200 travailleurs employés par la société de sous-traitance Cognizant Technology Solutions. Ces travailleurs jouent un rôle essentiel dans la mise à jour des itinéraires et des destinations sur Google Maps, un service utilisé par plus d\'un milliard de personnes par mois.\r\n\r\nEnviron 60 % des 200 travailleurs ont signé la pétition. Ils ont exigé que les dirigeants suspendent le calendrier de retour au bureau et répondent d\'abord aux préoccupations des employés en matière de finances, de santé et de garde d\'enfants. « L\'essence coûte actuellement environ 5 dollars le litre et beaucoup d\'entre nous n\'ont pas les moyens de vivre près du bureau en raison de nos bas salaires et du coût élevé du logement à Bothell », ont écrit les employés de Cognizant. La pétition a été soutenue par l\'Alphabet Workers Union, qui compte plus de 900 membres employés par Alphabet, la société mère de Google, et ses fournisseurs.', 'Google, like Apple, has worked hard to entice its employees back to the office. The company has used electric scooters to facilitate the movement of its employees. Unfortunately, that\'s not really a solution for employees of the Maps division on its Washington State site. According to the New York Times, 200 employees who work for Google through outsourcing company Cognizant Technology Solutions say they cannot afford to commute to the company\'s office in Bothell five days a week. . Interestingly, direct Google employees are only required to return to the office three days a week. In contrast, Cognizant employees are required to return five days a week and therefore require the same consideration as direct employees.\r\n\r\nGoogle Maps contract workers who are required to return to their offices in Washington state recently circulated a petition to continue working from home, as some of them cannot afford to commute. The issue affects more than 200 workers employed by outsourcing company Cognizant Technology Solutions. These workers play a vital role in updating directions and destinations on Google Maps, a service used by more than a billion people per month.\r\n\r\nAbout 60% of the 200 workers signed the petition. They demanded that leaders suspend the return-to-office schedule and address employee concerns about finances, health and childcare first. \"Gasoline currently costs around $5 a liter and many of us cannot afford to live near the office due to our low wages and the high cost of housing in Bothell,\" Cognizant employees wrote. . The petition was backed by the Alphabet Workers Union, which has more than 900 members employed by Alphabet, Google\'s parent company, and its suppliers.', '2022-05-24 16:28:41', '2022-05-24 16:28:41', 10),
(4, 'Le procureur général de Washington DC poursuit Mark Zuckerberg suite à la violation de données de Cambridge Analytica', 'Washington DC Attorney General sues Mark Zuckerberg over Cambridge Analytica data breach', 'Le procureur général Karl A. Racine a poursuivi le PDG de Facebook, Mark Zuckerberg, pour avoir participé directement à la prise de décision qui a permis la violation de données de Cambridge Analytica – le plus grand scandale de confidentialité des consommateurs de l\'histoire du pays – tandis que Facebook a trompé les utilisateurs avec des allégations de confidentialité et de protection des données. Dans la plainte, le Bureau du procureur général évoque des preuves compilées dans le cadre d\'une enquête approfondie pour alléguer que Zuckerberg a contribué à la surveillance laxiste des données des utilisateurs par Facebook et à la mise en œuvre d\'accords de confidentialité trompeurs. En conséquence, cela a permis à des tiers, tels que la société de conseil politique Cambridge Analytica, d\'obtenir des données personnelles de 87 millions d\'Américains, dont plus de la moitié des résidents du district, et d\'utiliser ces données pour manipuler les élections de 2016.\r\n\r\nCambridge Analytica est de retour pour hanter Mark Zuckerberg*: le procureur général de Washington DC a intenté une action en justice dans laquelle il accuse directement le PDG de Meta d\'être personnellement impliqué dans les abus qui ont conduit au scandale de l\'extraction de données.\r\n\r\nKarl Racine, le procureur général de Washington DC, a déposé une plainte civile lundi matin, heure de Washington, affirmant que les enquêtes de son bureau ont trouvé de nombreuses preuves que Mark Zuckerberg pourrait être tenu responsable de ce scandale de 2018.', 'Attorney General Karl A. Racine has sued Facebook CEO Mark Zuckerberg for directly participating in the decision-making that enabled the Cambridge Analytica data breach – the biggest consumer privacy scandal in Facebook history. countries – while Facebook misled users with claims of privacy and data protection. In the complaint, the Attorney General\'s Office cites evidence compiled as part of an extensive investigation to allege that Zuckerberg contributed to Facebook\'s lax monitoring of user data and the implementation of misleading confidentiality agreements. As a result, it has allowed third parties, such as political consultancy Cambridge Analytica, to obtain personal data from 87 million Americans, including more than half of District residents, and use that data to manipulate the 2016 elections.\r\n\r\nCambridge Analytica is back to haunt Mark Zuckerberg*: The Washington DC Attorney General has filed a lawsuit in which he directly accuses the CEO of Meta of being personally involved in the abuses that led to the data mining scandal. data.\r\n\r\nKarl Racine, the Washington DC attorney general, filed a civil lawsuit Monday morning Washington time, saying his office\'s investigations have found ample evidence that Mark Zuckerberg could be held responsible for the 2018 scandal.', '2022-05-24 16:33:02', '2022-05-24 16:33:02', 4),
(5, 'Les bots occupent une place de plus en plus importante sur le Web, représentant plus de 42 % du trafic global', 'Bots are increasingly prominent on the web, accounting for over 42% of overall traffic', 'Le dernier Bad Bot Report d\'Imperva montre que les bots occupent une place de plus en plus importante sur le Web, représentant plus de 42 % du trafic global.\r\nPlus inquiétant encore, les mauvais bots ont représenté un pourcentage record de 27,7 % de l\'ensemble du trafic mondial des sites Web en 2021, contre 25,6 % en 2020.\r\n\r\nLes trois attaques de bots les plus courantes sont la prise de contrôle de comptes, le grattage de contenu ou de prix, et le scalpage pour obtenir des articles à disponibilité limitée.\r\n\r\nLes mauvais bots peuvent souvent être le premier indicateur de fraude en ligne et représentent un risque pour les entreprises numériques, ainsi que pour leurs clients. En 2021, les \"bad bots\" évasifs - un groupe de \"bad bots\" modérés et avancés qui échappent aux défenses de sécurité standard - représentaient 65,6 % de l\'ensemble du trafic des \"bad bots\".\r\n\r\nCette catégorie de robots utilise les dernières techniques d\'évasion, notamment en passant par des adresses IP aléatoires, en entrant par des proxys anonymes, en changeant d\'identité et en imitant le comportement humain pour échapper à la détection.\r\n\r\n\"Les entreprises ne peuvent pas négliger l\'impact de l\'activité des robots malveillants, car elle contribue à la compromission d\'un plus grand nombre de comptes, à l\'augmentation des coûts d\'infrastructure et de support, à la perte de clients et à la dégradation des services en ligne\", déclare Ryan Windham, vice-président de la sécurité des applications chez Imperva. \"La fraude automatisée gagnant en intensité et en complexité, une protection avancée contre les bots est essentielle pour prévenir la menace croissante à laquelle les entreprises numériques et les consommateurs sont confrontés de la part des mauvais bots.\"', 'Imperva\'s latest Bad Bot Report shows that bots are becoming increasingly prominent on the web, accounting for over 42% of overall traffic.\r\nMore worryingly, bad bots accounted for a record 27.7% of all global website traffic in 2021, up from 25.6% in 2020.\r\n\r\nThe three most common bot attacks are account takeover, content or price scraping, and scalping for limited availability items.\r\n\r\nBad bots can often be the first indicator of online fraud and pose a risk to digital businesses, as well as their customers. In 2021, evasive bad bots – a group of moderate and advanced bad bots that evade standard security defenses – accounted for 65.6% of all bad bot traffic.\r\n\r\nThis category of bots uses the latest evasion techniques, including passing through random IP addresses, entering through anonymous proxies, changing identities, and mimicking human behavior to evade detection.\r\n\r\n“Enterprises cannot overlook the impact of malicious bot activity, as it contributes to more accounts being compromised, increased infrastructure and support costs, loss of customers and the degradation of online services,\" said Ryan Windham, vice president of application security at Imperva. \"As automated fraud grows in intensity and complexity, advanced bot protection is essential to prevent the growing threat that digital businesses and consumers face from bad bots.\"', '2022-05-24 16:36:54', '2022-05-24 16:36:54', 11),
(6, 'Microsoft annonce que Windows 11 est désormais prêt pour (presque) tout le monde qui répond aux exigences minimales', 'Microsoft announces that Windows 11 is now ready for (almost) everyone who meets the minimum requirements', 'Quelque sept mois et demi après la première publication de son système d\'exploitation, Microsoft a annoncé que Windows 11 est désormais « conçu pour un déploiement à grande échelle ». Nous utilisons ici le mot « annoncé » même si l\'entreprise a communiqué sur la situation dans un changement de statut sur la page de santé de la version pour Windows 11. Cela signifie que tout ordinateur qui répond aux exigences minimales se verra désormais proposer la mise à niveau, et cela pose les bases du déploiement de Windows 11 22H2 dans les mois à venir.\r\n\r\nCela ne veut pas dire que tout le monde pourra passer à Windows 11 même si son système répond aux exigences minimales. Il peut toujours y avoir des éléments spécifiques à l\'appareil qui font obstacle. Mais pour tous les utilisateurs de Windows 10 qui ont retardé la mise à niveau vers Windows 11, c\'est le bon moment. Bien qu\'un large déploiement ne soit en aucun cas une indication que Windows 11 est exempt de problèmes, la majorité des problèmes importants ont maintenant été résolus.\r\n\r\nMicrosoft a discrètement mis à jour son tableau de bord de santé des versions et déclaré Windows 11 « conçu pour un déploiement à grande échelle ». Rendez-vous sur le tableau de bord de santé des versions pour Windows 11 et vous verrez que Microsoft a effectué une mise à jour discrète le 17 mai 2022. Après avoir noté que « Windows 11 est conçu pour un large déploiement », Microsoft poursuit en disant :\r\n\r\n« Si vous utilisez Windows 10, vous pouvez déterminer si votre appareil est éligible pour la mise à niveau à l\'aide de l\'application PC Health Check ou en vérifiant les spécifications, fonctionnalités et exigences informatiques de Windows 11. Notez que vous devez également exécuter Windows 10, version 2004 ou ultérieure, et ne pas avoir de conservation de protection appliquée à votre appareil. Nous encourageons l\'utilisation d\'un compte Microsoft (MSA) pour tirer le meilleur parti de votre expérience Windows 11 ».', 'Some seven and a half months after the first release of its operating system, Microsoft has announced that Windows 11 is now \"designed for large-scale deployment\". We use the word \"announced\" here even though the company communicated the situation in a status change on the release health page for Windows 11. This means that any computer that meets the minimum requirements will now be offered the upgrade, and that lays the groundwork for rolling out Windows 11 22H2 in the coming months.\r\n\r\nThis does not mean that everyone will be able to upgrade to Windows 11 even if their system meets the minimum requirements. There can always be device-specific things that get in the way. But for all Windows 10 users who have delayed upgrading to Windows 11, now is the right time. While a wide rollout is by no means an indication that Windows 11 is free of issues, the majority of significant issues have now been resolved.\r\n\r\nMicrosoft quietly updated its release health dashboard and declared Windows 11 \"designed for large-scale deployment.\" Head over to the Release Health Dashboard for Windows 11 and you\'ll see that Microsoft made a quiet update on May 17, 2022. After noting that \"Windows 11 is designed for broad deployment,\" Microsoft goes on to saying:\r\n\r\n\"If you\'re using Windows 10, you can determine if your device is eligible for the upgrade using the PC Health Check app or by checking Windows 11 specs, features, and computing requirements. Note that you should also running Windows 10, version 2004 or later, and not having any retention protection applied to your device. We encourage the use of a Microsoft Account (MSA) to get the most out of your Windows 11 experience.”', '2022-05-24 16:43:42', '2022-05-24 16:43:42', 1);

-- --------------------------------------------------------

--
-- Structure de la table `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `titre_fr` varchar(100) DEFAULT NULL,
  `titre_en` varchar(100) DEFAULT NULL,
  `fichier` varchar(255) DEFAULT NULL,
  `extension` varchar(5) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `documents`
--

INSERT INTO `documents` (`id`, `titre_fr`, `titre_en`, `fichier`, `extension`, `created_at`, `updated_at`, `user_id`) VALUES
(2, 'Travail pratique 2 Laravel', 'Practical work 2 Laravel', '63300ee6bc79ec29d60a776d6ee971530d629169.pdf', 'pdf', '2022-05-24 16:30:23', '2022-05-24 16:30:23', 10),
(3, 'Exercice 2 Laravel', 'Exercise 2 Laravel', '1c089352ea3646dcf06f729a57e38071f2e16622.pdf', 'pdf', '2022-05-24 16:34:30', '2022-05-24 16:34:30', 4),
(4, 'Exercice 1 Laravel', 'Exercise 1 Laravel', '2cc17be031542e17507685dad77cd2d5a5716569.pdf', 'pdf', '2022-05-24 16:38:37', '2022-05-24 16:38:37', 11),
(5, 'Travail pratique 1 Laravel', 'Practical work 1 Laravel', '63c5d6b3ae00c220b22fa49b303303132461053f.pdf', 'pdf', '2022-05-24 16:41:23', '2022-05-24 16:41:23', 5),
(6, 'CV Lamsahle El Mamoun', 'Lamsahle El Mamoun CV', 'e642bcefba834ba7627d086a5cc69665368a0c85.pdf', 'pdf', '2022-05-24 16:44:48', '2022-05-24 16:44:48', 1);

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
(1, 'Tabitha Okuneva', '209 Wilderman Point\nSouth Zoila, OH 57205', '+14075890514', 'hyman95@example.net', '1968-11-15', 9, '2022-04-24 13:32:04', '2022-04-24 13:32:04'),
(2, 'Prof. Myrtie Koss Sr.', '55274 Olson Gardens\nTurcotteview, PA 65294-0171', '+15309225430', 'ekessler@example.com', '1961-05-23', 13, '2022-04-24 13:32:04', '2022-04-24 13:32:04'),
(3, 'Dr. Nathen Casper', '9947 Farrell Station\nPort Ulicesland, CT 10162-4897', '+14134523291', 'mya.marquardt@example.org', '1968-08-06', 1, '2022-04-24 13:32:04', '2022-04-24 13:32:04'),
(4, 'Geoffrey Becker', '67095 Trevion Motorway Apt. 971\nEast Mohamedmouth, ID 16067', '+16815003179', 'sboehm@example.net', '1965-09-28', 12, '2022-04-24 13:32:04', '2022-04-24 13:32:04'),
(5, 'Imogene Murphy', '93725 Schiller Drive Apt. 801\nRoelburgh, KY 51790-3384', '+16826940732', 'ubayer@example.net', '1988-09-22', 2, '2022-04-24 13:32:04', '2022-04-24 13:32:04'),
(6, 'Mrs. Octavia Runolfsdottir MD', '62934 Jaron Harbor\nLake Vivianeland, KS 91929-8740', '+15628178849', 'towne.archibald@example.net', '1978-09-03', 11, '2022-04-24 13:32:04', '2022-04-24 13:32:04'),
(7, 'Harvey Green', '954 Sallie Loop Apt. 476\nNorth Mistyport, TN 29855', '+15418772972', 'abernathy.suzanne@example.com', '1967-04-06', 4, '2022-04-24 13:32:04', '2022-04-24 13:32:04'),
(8, 'Dr. Jenifer Swift', '52134 Swaniawski Fort Suite 382\nGaylordmouth, FL 58846', '+15713666117', 'olga.eichmann@example.org', '1957-12-27', 1, '2022-04-24 13:32:04', '2022-04-24 13:32:04'),
(9, 'Prof. Walker Mayert', '235 Renner Green Apt. 549\nMayland, GA 90918-1411', '+12539045728', 'pierre.haag@example.org', '2005-02-08', 13, '2022-04-24 13:32:04', '2022-04-24 13:32:04'),
(10, 'Ms. Allison Marks', '8310 Mara Throughway Suite 117\nAbernathystad, PA 41635-9640', '+12729768604', 'kali.champlin@example.com', '1970-03-30', 6, '2022-04-24 13:32:04', '2022-04-24 13:32:04'),
(11, 'Jovanny Wolf', '6111 Rempel Well\nLake Crawford, AK 60048-2542', '+16802030665', 'dayana04@example.net', '1993-05-20', 5, '2022-04-24 13:32:04', '2022-04-24 13:32:04'),
(12, 'Caterina Stanton', '378 O\'Conner Spurs Suite 884\nSouth Clevebury, NY 99815', '+17319540624', 'molly.runte@example.org', '1966-09-09', 13, '2022-04-24 13:32:05', '2022-04-24 13:32:05'),
(13, 'Prof. Adela Wisoky', '25021 Burley Skyway\nEast Pasqualeburgh, LA 82813-0602', '+14698334459', 'sauer.raymond@example.org', '1957-01-15', 6, '2022-04-24 13:32:05', '2022-04-24 13:32:05'),
(14, 'Prof. Rosamond Heaney V', '84400 Gulgowski Square Suite 426\nBransonstad, AL 80353', '+14692678032', 'pabshire@example.net', '2004-08-17', 15, '2022-04-24 13:32:05', '2022-04-24 13:32:05'),
(15, 'Sadie Swaniawski', '59690 Princess Pines Suite 947\nMorissetteside, ID 60283-3398', '+12402749213', 'horace.rowe@example.org', '1979-02-27', 5, '2022-04-24 13:32:05', '2022-04-24 13:32:05'),
(16, 'Mrs. Shanel Rodriguez', '24689 Tromp Well Apt. 109\nNorth Lemuelmouth, MT 33680-9030', '+12706105772', 'pacocha.odessa@example.net', '1966-05-04', 15, '2022-04-24 13:32:05', '2022-04-24 13:32:05'),
(17, 'Fiona Hodkiewicz', '2792 Geovanni Coves\nWest Dax, KS 31110', '+18164990058', 'kirlin.kirstin@example.org', '1976-10-10', 13, '2022-04-24 13:32:05', '2022-04-24 13:32:05'),
(18, 'Naomie Sipes', '6411 Melvin Street\nNew Rosaleemouth, MO 56529', '+19549935509', 'bahringer.samson@example.com', '2005-05-30', 7, '2022-04-24 13:32:05', '2022-04-24 13:32:05'),
(19, 'Prof. Mohammad Volkman', '439 Boehm Field\nLake Elmiraburgh, LA 55269-9565', '+17607018029', 'gussie43@example.net', '1959-05-18', 5, '2022-04-24 13:32:05', '2022-04-24 13:32:05'),
(20, 'Orval Beahan', '1581 Kihn Mission\nLake Bertramland, IN 60170-2842', '+14259461564', 'zulauf.tobin@example.org', '1981-09-18', 3, '2022-04-24 13:32:05', '2022-04-24 13:32:05'),
(21, 'Reed Kuvalis MD', '730 Hellen Groves Suite 016\nPinkport, KY 66570', '+18053126295', 'grover.buckridge@example.com', '2000-09-13', 3, '2022-04-24 13:32:05', '2022-04-24 13:32:05'),
(22, 'Dr. Dalton Jakubowski', '8033 Trantow Rapids Apt. 617\nJulesport, CA 82322-6097', '+18065475477', 'winfield.olson@example.net', '1972-04-19', 15, '2022-04-24 13:32:05', '2022-04-24 13:32:05'),
(23, 'Prof. Theron O\'Kon Jr.', '1284 Rice Lane\nLake Manuela, CT 29148-3318', '+12814745443', 'rosie55@example.com', '1966-02-27', 11, '2022-04-24 13:32:05', '2022-04-24 13:32:05'),
(24, 'Uriel Keeling', '4476 Stamm Valleys\nHershelport, MD 73606-6395', '+19867757213', 'vdavis@example.com', '1960-05-06', 4, '2022-04-24 13:32:05', '2022-04-24 13:32:05'),
(25, 'Esmeralda Osinski Jr.', '23692 Watson Camp Suite 644\nWest Lurlineborough, NJ 69561-0614', '+14054069586', 'marisa74@example.net', '1999-10-16', 9, '2022-04-24 13:32:05', '2022-04-24 13:32:05'),
(26, 'Braxton Jacobi', '8241 Wolff Ports\nEviebury, NJ 67941', '+15177841280', 'brogahn@example.com', '1990-04-24', 7, '2022-04-24 13:32:06', '2022-04-24 13:32:06'),
(27, 'Houston Renner', '8768 Wilkinson Pine\nNorth Jettieton, IL 24392', '+15863178968', 'morton.beier@example.net', '1963-10-29', 11, '2022-04-24 13:32:06', '2022-04-24 13:32:06'),
(28, 'Mr. Ignatius Gutmann', '8957 Krajcik Parkway Apt. 917\nLake Libby, WY 37892', '+16089378939', 'frolfson@example.net', '1977-02-06', 12, '2022-04-24 13:32:06', '2022-04-24 13:32:06'),
(29, 'Wilson Skiles', '14789 Filiberto Throughway Suite 306\nPort Jaylan, AK 58557', '+12548144327', 'yadira.gutmann@example.com', '2004-07-16', 4, '2022-04-24 13:32:06', '2022-04-24 13:32:06'),
(30, 'Aliza Donnelly III', '533 Cameron SpringsSouth Magalibury, AK 99747-8009', '+18643760169', 'oconner.sandy@example.com', '1980-08-23', 10, '2022-04-24 13:32:06', '2022-04-24 13:42:01'),
(31, 'Maxwell Braun PhD', '2671 Hahn Drive\nNorth Arvelville, NM 86669', '+15395854153', 'xrempel@example.net', '1968-08-08', 12, '2022-04-24 13:32:06', '2022-04-24 13:32:06'),
(32, 'Kathleen Dibbert', '8306 Clyde Fall Apt. 135\nGulgowskichester, IA 72968-9942', '+15318335363', 'hollis.grant@example.net', '1960-12-19', 11, '2022-04-24 13:32:06', '2022-04-24 13:32:06'),
(33, 'Sibyl Pouros', '2544 Jorge Estates\nPort Edison, OR 68444-7781', '+15857592914', 'barrows.nick@example.org', '1986-01-19', 9, '2022-04-24 13:32:06', '2022-04-24 13:32:06'),
(34, 'Ms. Alexa Rohan I', '77952 Darrel Island Apt. 017\nHarberchester, NC 41835-6680', '+17628227086', 'white.santina@example.net', '1988-01-28', 2, '2022-04-24 13:32:06', '2022-04-24 13:32:06'),
(35, 'Dr. Lila Cassin II', '65814 Frank Ports\nPort Ima, CA 18413', '+19363242423', 'margarett.runolfsson@example.com', '1991-09-01', 11, '2022-04-24 13:32:06', '2022-04-24 13:32:06'),
(36, 'Prof. Heather Adams Jr.', '1089 Kiehn Valley Suite 006\nKihnstad, DC 71193', '+17083319688', 'jeromy.huel@example.org', '1992-03-27', 10, '2022-04-24 13:32:06', '2022-04-24 13:32:06'),
(37, 'Ms. Mae Luettgen DVM', '1691 Otis Island Apt. 537\nSouth Deonbury, KY 81290-4026', '+12702869797', 'predovic.tara@example.net', '1963-04-08', 6, '2022-04-24 13:32:06', '2022-04-24 13:32:06'),
(38, 'Percy Stroman', '468 Billie Burg Apt. 328\nRichardshire, LA 36587', '+19546364253', 'addison.hamill@example.com', '1966-03-02', 5, '2022-04-24 13:32:06', '2022-04-24 13:32:06'),
(39, 'Donald Abbott', '304 Shanahan Passage Apt. 737\nLake Michael, OK 46172-7286', '+12818487946', 'kuphal.glenda@example.org', '1992-07-14', 5, '2022-04-24 13:32:06', '2022-04-24 13:32:06'),
(40, 'Amelie Will I', '380 Devante Gardens\nNorth Llewellynbury, LA 58813-2024', '+12624259462', 'wunsch.claudie@example.com', '1981-01-26', 8, '2022-04-24 13:32:06', '2022-04-24 13:32:06'),
(41, 'Sheldon Nader', '155 Johnpaul Stream\nSouth Samir, ND 41175-3527', '+15407370618', 'effie.yost@example.com', '1980-11-30', 2, '2022-04-24 13:32:06', '2022-04-24 13:32:06'),
(42, 'Jess Hegmann', '519 Samantha Estates Suite 840\nWavamouth, MN 67180-3482', '+18088370643', 'odicki@example.org', '1993-03-09', 11, '2022-04-24 13:32:06', '2022-04-24 13:32:06'),
(43, 'Theresa Kutch', '6264 Tianna Crescent Apt. 184\nSouth Leannaville, FL 63737', '+17379454005', 'casper.pearl@example.org', '1973-04-08', 15, '2022-04-24 13:32:06', '2022-04-24 13:32:06'),
(44, 'Angelita Ebert', '47283 Dickens Square Apt. 201\nLake Katelynmouth, MI 41116-5382', '+16205005867', 'mervin.reichert@example.com', '1990-10-20', 15, '2022-04-24 13:32:06', '2022-04-24 13:32:06'),
(45, 'Dr. Gertrude Schowalter I', '48082 Consuelo Ways\nLittlefurt, CA 42491-6300', '+18205659606', 'hagenes.domenica@example.org', '2003-10-24', 14, '2022-04-24 13:32:06', '2022-04-24 13:32:06'),
(46, 'Lynn Ullrich', '964 Camren Crest\nEast Lucienneberg, IN 30670', '+18785676521', 'savannah.trantow@example.net', '1961-03-20', 11, '2022-04-24 13:32:06', '2022-04-24 13:32:06'),
(47, 'Dr. Victor Funk', '5339 Willms Corner Suite 839\nAlexbury, OH 69309-3620', '+15167722164', 'arvilla25@example.com', '1970-01-23', 5, '2022-04-24 13:32:07', '2022-04-24 13:32:07'),
(48, 'Cara Bradtke III', '27146 Letha Branch\nEthelfort, MS 81853', '+13329855340', 'sharvey@example.net', '1988-05-06', 3, '2022-04-24 13:32:07', '2022-04-24 13:32:07'),
(49, 'Schuyler Stoltenberg', '46789 Kunze Pike Apt. 399\nTheahaven, LA 32621-6828', '+16408784617', 'adriana.gleason@example.com', '1982-02-19', 4, '2022-04-24 13:32:07', '2022-04-24 13:32:07'),
(50, 'Zoe Mayer', '90968 Ilene Fork Apt. 247\nSpinkaview, KS 39034', '+13374890591', 'vmoore@example.org', '1966-12-07', 11, '2022-04-24 13:32:07', '2022-04-24 13:32:07'),
(51, 'Willis Kessler', '7482 Orn Court Suite 513\nWest Felicia, IL 86550', '+18282124258', 'nadia.fritsch@example.net', '2004-04-06', 15, '2022-04-24 13:32:07', '2022-04-24 13:32:07'),
(52, 'Jakob Lynch', '4209 Douglas Mews\nRunolfssonshire, LA 48895', '+16418942109', 'ohegmann@example.org', '1987-09-17', 4, '2022-04-24 13:32:07', '2022-04-24 13:32:07'),
(53, 'Ramona Turcotte', '6882 Ernestina Landing Apt. 489\nGerholdside, NV 63099-9846', '+17323091020', 'bogan.adrienne@example.com', '1963-01-07', 1, '2022-04-24 13:32:07', '2022-04-24 13:32:07'),
(54, 'Lennie Hodkiewicz', '708 Durgan Courts\nStaceymouth, DC 74924-0687', '+14147687758', 'elena02@example.org', '1999-03-16', 6, '2022-04-24 13:32:07', '2022-04-24 13:32:07'),
(55, 'Lauretta Braun', '58701 Funk Land Suite 594\nHarmonyville, MS 47535', '+12818132678', 'evalyn71@example.net', '1989-03-22', 12, '2022-04-24 13:32:07', '2022-04-24 13:32:07'),
(56, 'Mckenna Lesch', '287 Gay Point Apt. 968\nMathewville, SC 98747-0870', '+16803700086', 'kihn.aaron@example.org', '1988-10-17', 4, '2022-04-24 13:32:07', '2022-04-24 13:32:07'),
(57, 'Mariela Hudson', '519 Kertzmann Roads\nLueilwitztown, SC 86336', '+13396997737', 'brielle.hane@example.net', '1996-11-25', 5, '2022-04-24 13:32:07', '2022-04-24 13:32:07'),
(58, 'Mikayla Beatty', '7998 Koelpin Point\nMayertchester, CA 91822-6135', '+18182150134', 'delia39@example.org', '1965-07-04', 15, '2022-04-24 13:32:07', '2022-04-24 13:32:07'),
(59, 'Jovany Kohler', '8297 Ava Wells\nHanefurt, NY 92936', '+14584128771', 'hschaden@example.org', '1977-04-29', 14, '2022-04-24 13:32:07', '2022-04-24 13:32:07'),
(60, 'Mrs. Lottie Monahan', '683 O\'Keefe Branch Apt. 353\nWest Lilyberg, PA 04815-1859', '+16573428272', 'roberto12@example.net', '2000-11-15', 10, '2022-04-24 13:32:07', '2022-04-24 13:32:07'),
(61, 'Leta Hane', '1071 Leon Branch\nNew Marisa, RI 66326', '+14246693368', 'magdalena.koch@example.net', '1964-06-22', 5, '2022-04-24 13:32:07', '2022-04-24 13:32:07'),
(62, 'Julio Hessel', '79761 Savion Mountains\nWest Krystina, ME 44571', '+16363264886', 'dominic.macejkovic@example.com', '1960-10-28', 1, '2022-04-24 13:32:07', '2022-04-24 13:32:07'),
(63, 'Miss Marguerite Thompson', '21771 Taya Track Apt. 371\nBeermouth, WA 70064-2724', '+15808572692', 'juanita.barton@example.org', '1961-03-25', 2, '2022-04-24 13:32:07', '2022-04-24 13:32:07'),
(64, 'Miss Roslyn Corwin', '19080 Sydni Mill\nWest Freddy, IA 81927', '+16572904700', 'silas.dietrich@example.org', '1992-05-22', 12, '2022-04-24 13:32:07', '2022-04-24 13:32:07'),
(65, 'Prof. Royal Pagac III', '40700 White Falls Apt. 282\nEast Adrian, SC 03929', '+15106382527', 'gregory.friesen@example.net', '1976-10-20', 9, '2022-04-24 13:32:07', '2022-04-24 13:32:07'),
(66, 'Prof. Abdul Gislason IV', '39814 Haag Stream\nEast Kyliechester, MN 85896', '+17796391326', 'geraldine.dooley@example.com', '1996-08-02', 12, '2022-04-24 13:32:07', '2022-04-24 13:32:07'),
(67, 'Miss Desiree Adams', '5637 Margarita Roads\nAstridborough, FL 95448-0568', '+18645183523', 'zrosenbaum@example.org', '1957-05-31', 10, '2022-04-24 13:32:07', '2022-04-24 13:32:07'),
(68, 'Prof. Darron Hamill MD', '5445 Schowalter Forges Apt. 988\nNorth Colbyland, VA 68569-0267', '+16513060039', 'langosh.domenic@example.com', '1963-03-25', 3, '2022-04-24 13:32:08', '2022-04-24 13:32:08'),
(69, 'Brandy Gorczany', '1259 Hector Loaf\nEast Rosariohaven, RI 08947-5958', '+16065184956', 'jconsidine@example.net', '1976-08-22', 11, '2022-04-24 13:32:08', '2022-04-24 13:32:08'),
(70, 'Nikolas Hamill', '2663 Irving Alley Apt. 980\nHandside, MT 37301', '+13076587476', 'jalon.wolff@example.org', '1970-12-23', 13, '2022-04-24 13:32:08', '2022-04-24 13:32:08'),
(71, 'Dr. Roslyn Reilly', '991 Laverne Causeway\nHallieshire, AZ 28575-0582', '+14256992913', 'aubree13@example.org', '2002-03-12', 5, '2022-04-24 13:32:08', '2022-04-24 13:32:08'),
(72, 'Dr. Kenneth Skiles DDS', '820 Lind Summit Suite 283\nLake Annafurt, MS 28179', '+19379274992', 'wilburn16@example.org', '1978-08-14', 1, '2022-04-24 13:32:08', '2022-04-24 13:32:08'),
(73, 'Shaun Cormier', '42264 Batz Corner\nCalebview, MA 67306-9884', '+15597762108', 'arno.doyle@example.org', '2000-05-30', 10, '2022-04-24 13:32:08', '2022-04-24 13:32:08'),
(74, 'Alvina Auer Jr.', '185 Cremin Pines Apt. 533\nGersonburgh, OK 05051', '+13328951859', 'eulah.kiehn@example.net', '1993-01-12', 12, '2022-04-24 13:32:08', '2022-04-24 13:32:08'),
(75, 'Mrs. Christina Greenfelder III', '5612 Collier Mission Suite 245\nWest Sarinaberg, NC 71161-7198', '+17379761206', 'trevor.kemmer@example.net', '1960-01-11', 5, '2022-04-24 13:32:08', '2022-04-24 13:32:08'),
(76, 'Eleonore Bruen', '23989 Mitchell Turnpike Suite 786\nWest Keyshawnview, WI 62936-2597', '+12566152200', 'stehr.winifred@example.com', '1989-12-03', 6, '2022-04-24 13:32:08', '2022-04-24 13:32:08'),
(77, 'Lura O\'Kon', '28800 Anissa Course Apt. 710\nFloshire, MS 67666', '+17323610713', 'senger.ryleigh@example.net', '1976-06-06', 9, '2022-04-24 13:32:08', '2022-04-24 13:32:08'),
(78, 'Shanny Steuber', '7166 Stracke Throughway\nNorth Wadeside, FL 98881-6499', '+18549744816', 'skiles.donny@example.org', '1960-05-22', 10, '2022-04-24 13:32:08', '2022-04-24 13:32:08'),
(79, 'Derek Heathcote', '546 Pouros Estate\nKozeyborough, CT 50698', '+15178051198', 'jbatz@example.com', '2003-06-24', 1, '2022-04-24 13:32:08', '2022-04-24 13:32:08'),
(80, 'Prof. Otis Toy DDS', '439 Mathias Port Apt. 223\nWest Clifton, NC 90344', '+12404698528', 'louie.douglas@example.com', '2005-11-27', 14, '2022-04-24 13:32:08', '2022-04-24 13:32:08'),
(81, 'Marquis Muller', '8688 Bayer Rapid Apt. 661\nMayertton, MO 00304', '+16075974918', 'arnulfo18@example.org', '1969-09-07', 11, '2022-04-24 13:32:08', '2022-04-24 13:32:08'),
(82, 'Susie Lehner', '206 Oberbrunner Neck Suite 007\nSouth Audra, ND 70279-8811', '+18703265000', 'gkutch@example.org', '2003-01-02', 8, '2022-04-24 13:32:08', '2022-04-24 13:32:08'),
(83, 'Mrs. Electa Carroll Jr.', '1976 Edwardo Mission Suite 284\nPort Elyseberg, MD 05208-7870', '+18586474709', 'antonette20@example.org', '1959-04-04', 4, '2022-04-24 13:32:08', '2022-04-24 13:32:08'),
(84, 'Hiram Koepp PhD', '71941 Mckenzie Prairie\nWillardview, WI 53621-2102', '+19562384795', 'collier.icie@example.net', '1975-07-24', 3, '2022-04-24 13:32:08', '2022-04-24 13:32:08'),
(85, 'Prof. Carmine Trantow', '9571 Grady Station Apt. 696\nPort Wileyfurt, NE 55700', '+14696313454', 'zetta.gulgowski@example.com', '1975-01-12', 5, '2022-04-24 13:32:08', '2022-04-24 13:32:08'),
(86, 'Virginie Waters', '51393 McCullough Causeway Suite 657\nEast Karineborough, OH 71899-6462', '+19736460413', 'hbode@example.net', '1965-11-29', 10, '2022-04-24 13:32:09', '2022-04-24 13:32:09'),
(87, 'Mr. Collin Stroman', '231 Rogahn Cliff Suite 961\nKarsonstad, ME 17956', '+16155560822', 'sokon@example.org', '1960-12-26', 11, '2022-04-24 13:32:09', '2022-04-24 13:32:09'),
(88, 'Mia Lesch', '4483 Wiegand Radial Suite 618\nEast Katelin, HI 39141', '+13048249394', 'zemlak.jules@example.org', '1971-08-23', 15, '2022-04-24 13:32:09', '2022-04-24 13:32:09'),
(89, 'Alec Ritchie', '69317 Hoeger Isle Apt. 509\nNew Braeden, KS 26003', '+14234311722', 'henriette.tromp@example.org', '1987-09-25', 8, '2022-04-24 13:32:09', '2022-04-24 13:32:09'),
(90, 'William Dibbert', '78634 West Mountains\nPort Jayceebury, GA 39177', '+15415302004', 'ybeatty@example.net', '1969-04-21', 1, '2022-04-24 13:32:09', '2022-04-24 13:32:09'),
(91, 'Nelda Ratke', '98965 London Ville\nWillmouth, WY 45478-0022', '+19293097968', 'bell53@example.org', '1983-03-26', 8, '2022-04-24 13:32:09', '2022-04-24 13:32:09'),
(92, 'Tessie Gerhold II', '5576 Joshuah Place Suite 438\nSouth Tessie, CO 83377-6929', '+14123836178', 'paucek.chadd@example.com', '1973-11-29', 4, '2022-04-24 13:32:09', '2022-04-24 13:32:09'),
(93, 'Prof. Gaston Corkery', '4206 Boyer Rapids Suite 522\nNorth Stacy, AK 83617', '+15346339719', 'gleason.oral@example.net', '2005-05-07', 10, '2022-04-24 13:32:09', '2022-04-24 13:32:09'),
(94, 'Jameson Hintz MD', '11770 Walker Lake\nBlandaview, PA 71911', '+12294529768', 'markus08@example.net', '1998-12-29', 9, '2022-04-24 13:32:09', '2022-04-24 13:32:09'),
(95, 'Shanel Maggio Jr.', '734 Herta Ports\nElisatown, AL 82989', '+12152722295', 'trinity.leffler@example.net', '2003-12-28', 1, '2022-04-24 13:32:09', '2022-04-24 13:32:09'),
(96, 'Spencer Yundt DDS', '362 Trantow Bypass Suite 996\nLake Norvalton, ME 43045', '+12814017974', 'dickinson.ursula@example.org', '1976-12-24', 14, '2022-04-24 13:32:09', '2022-04-24 13:32:09'),
(97, 'Prof. Nathaniel Stehr', '3882 Terry Neck Apt. 655\nWeissnatton, MN 17205-5531', '+19363969230', 'soconner@example.net', '2002-05-19', 8, '2022-04-24 13:32:09', '2022-04-24 13:32:09'),
(98, 'Alisa Nitzsche', '997 Rosina Landing Suite 137Port Renee, SD 89568', '+17313978792', 'zschinner@example.org', '1965-10-19', 6, '2022-04-24 13:32:09', '2022-04-24 13:56:32'),
(99, 'Alexane Thiel', '408 Ezequiel Mountain\nBreannemouth, WA 75543', '+19419094519', 'edwina.russel@example.org', '1982-12-29', 5, '2022-04-24 13:32:09', '2022-04-24 13:32:09'),
(100, 'Athena Shields', '71488 Leuschke Crossing Suite 666\nGoldnermouth, OH 67819-6960', '+17744552725', 'guadalupe85@example.net', '1960-01-17', 8, '2022-04-24 13:32:09', '2022-04-24 13:32:09');

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
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `adresse` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_naissance` date NOT NULL,
  `ville_id` bigint(20) UNSIGNED NOT NULL,
  `actif` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `nom`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `adresse`, `telephone`, `date_naissance`, `ville_id`, `actif`) VALUES
(1, 'El Mamoun Lamsahle', 'mlamsahle@gmail.com', NULL, '$2y$10$9ZfESS1jDseh3pZ1VlMo6ONh85FsWyELsua6z8/1fabV2bZoXhLd6', NULL, '2022-05-24 01:56:00', '2022-05-24 01:56:00', '5061 Avenue Randall', '+14382265575', '1980-10-10', 182, 1),
(2, 'Nathen Casper', 'mya.marquardt@example.org', NULL, '$2y$10$9ZfESS1jDseh3pZ1VlMo6ONh85FsWyELsua6z8/1fabV2bZoXhLd6', NULL, '2022-04-24 13:32:00', '2022-04-24 13:32:00', '9947 Farrell Station\nPort Ulicesland, CT 10162-4897', '+14134523291', '1968-08-06', 45, 1),
(3, 'Jenifer Swift', 'olga.eichmann@example.org', NULL, '$2y$10$9ZfESS1jDseh3pZ1VlMo6ONh85FsWyELsua6z8/1fabV2bZoXhLd6', NULL, '2022-04-24 13:32:00', '2022-04-24 13:32:00', '52134 Swaniawski Fort Suite 382\nGaylordmouth, FL 58846', '+15713666117', '1957-12-27', 16, 1),
(4, 'Ramona Turcotte', 'bogan.adrienne@example.com', NULL, '$2y$10$9ZfESS1jDseh3pZ1VlMo6ONh85FsWyELsua6z8/1fabV2bZoXhLd6', NULL, '2022-04-24 13:32:00', '2022-04-24 13:32:00', '6882 Ernestina Landing Apt. 489\nGerholdside, NV 63099-9846', '+17323091020', '1963-01-07', 23, 1),
(5, 'Julio Hessel', 'dominic.macejkovic@example.com', NULL, '$2y$10$9ZfESS1jDseh3pZ1VlMo6ONh85FsWyELsua6z8/1fabV2bZoXhLd6', NULL, '2022-04-24 13:32:00', '2022-04-24 13:32:00', '79761 Savion Mountains\nWest Krystina, ME 44571', '+16363264886', '1960-10-28', 55, 1),
(6, 'Dr. Kenneth Skiles DDS', 'wilburn16@example.org', NULL, '$2y$10$9ZfESS1jDseh3pZ1VlMo6ONh85FsWyELsua6z8/1fabV2bZoXhLd6', NULL, '2022-04-24 13:32:00', '2022-04-24 13:32:00', '820 Lind Summit Suite 283\nLake Annafurt, MS 28179', '+19379274992', '1978-08-14', 95, 1),
(7, 'Derek Heathcote', 'jbatz@example.com', NULL, '$2y$10$9ZfESS1jDseh3pZ1VlMo6ONh85FsWyELsua6z8/1fabV2bZoXhLd6', NULL, '2022-04-24 13:32:00', '2022-04-24 13:32:00', '546 Pouros Estate\nKozeyborough, CT 50698', '+15178051198', '2003-06-24', 65, 1),
(8, 'William Dibbert', 'ybeatty@example.net', NULL, '$2y$10$9ZfESS1jDseh3pZ1VlMo6ONh85FsWyELsua6z8/1fabV2bZoXhLd6', NULL, '2022-04-24 13:32:00', '2022-04-24 13:32:00', '78634 West Mountains\nPort Jayceebury, GA 39177', '+15415302004', '1969-04-21', 18, 1),
(9, 'Shanel Maggio Jr.', 'trinity.leffler@example.net', NULL, '$2y$10$9ZfESS1jDseh3pZ1VlMo6ONh85FsWyELsua6z8/1fabV2bZoXhLd6', NULL, '2022-04-24 13:32:00', '2022-04-24 13:32:00', '734 Herta Ports\nElisatown, AL 82989', '+12152722295', '2003-12-28', 27, 1),
(10, 'Imogene Murphy', 'ubayer@example.net', NULL, '$2y$10$9ZfESS1jDseh3pZ1VlMo6ONh85FsWyELsua6z8/1fabV2bZoXhLd6', NULL, '2022-04-24 13:32:00', '2022-04-24 13:32:00', '93725 Schiller Drive Apt. 801\nRoelburgh, KY 51790-3384', '+16826940732', '1988-09-22', 14, 1),
(11, 'Ms. Alexa Rohan I', 'white.santina@example.net', NULL, '$2y$10$9ZfESS1jDseh3pZ1VlMo6ONh85FsWyELsua6z8/1fabV2bZoXhLd6', NULL, '2022-04-24 13:32:00', '2022-04-24 13:32:00', '77952 Darrel Island Apt. 017\nHarberchester, NC 41835-6680', '+17628227086', '1988-01-28', 38, 1),
(12, 'Sheldon Nader', 'effie.yost@example.com', NULL, '$2y$10$9ZfESS1jDseh3pZ1VlMo6ONh85FsWyELsua6z8/1fabV2bZoXhLd6', NULL, '2022-04-24 13:32:00', '2022-04-24 13:32:00', '155 Johnpaul Stream\nSouth Samir, ND 41175-3527', '+15407370618', '1980-11-30', 64, 1),
(13, 'Marguerite Thompson', 'juanita.barton@example.org', NULL, '$2y$10$9ZfESS1jDseh3pZ1VlMo6ONh85FsWyELsua6z8/1fabV2bZoXhLd6', NULL, '2022-04-24 13:32:00', '2022-04-24 13:32:00', '21771 Taya Track Apt. 371\nBeermouth, WA 70064-2724', '+15808572692', '1961-03-25', 175, 1),
(14, 'Orval Beahan', 'zulauf.tobin@example.org', NULL, '$2y$10$9ZfESS1jDseh3pZ1VlMo6ONh85FsWyELsua6z8/1fabV2bZoXhLd6', NULL, '2022-04-24 13:32:00', '2022-04-24 13:32:00', '1581 Kihn Mission\nLake Bertramland, IN 60170-2842', '+14259461564', '1981-09-18', 77, 1),
(15, 'Reed Kuvalis MD', 'grover.buckridge@example.com', NULL, '$2y$10$9ZfESS1jDseh3pZ1VlMo6ONh85FsWyELsua6z8/1fabV2bZoXhLd6', NULL, '2022-04-24 13:32:00', '2022-04-24 13:32:00', '730 Hellen Groves Suite 016\nPinkport, KY 66570', '+18053126295', '2000-09-13', 297, 1),
(16, 'Cara Bradtke III', 'sharvey@example.net', NULL, '$2y$10$9ZfESS1jDseh3pZ1VlMo6ONh85FsWyELsua6z8/1fabV2bZoXhLd6', NULL, '2022-04-24 13:32:00', '2022-04-24 13:32:00', '27146 Letha Branch\nEthelfort, MS 81853', '+13329855340', '1988-05-06', 30, 1),
(17, 'Darron Hamill MD', 'langosh.domenic@example.com', NULL, '$2y$10$9ZfESS1jDseh3pZ1VlMo6ONh85FsWyELsua6z8/1fabV2bZoXhLd6', NULL, '2022-04-24 13:32:00', '2022-04-24 13:32:00', '5445 Schowalter Forges Apt. 988\nNorth Colbyland, VA 68569-0267', '+16513060039', '1963-03-25', 65, 1),
(18, 'Hiram Koepp PhD', 'collier.icie@example.net', NULL, '$2y$10$9ZfESS1jDseh3pZ1VlMo6ONh85FsWyELsua6z8/1fabV2bZoXhLd6', NULL, '2022-04-24 13:32:00', '2022-04-24 13:32:00', '71941 Mckenzie Prairie\nWillardview, WI 53621-2102', '+19562384795', '1975-07-24', 12, 1),
(19, 'Harvey Green', 'abernathy.suzanne@example.com', NULL, '$2y$10$9ZfESS1jDseh3pZ1VlMo6ONh85FsWyELsua6z8/1fabV2bZoXhLd6', NULL, '2022-04-24 13:32:00', '2022-04-24 13:32:00', '954 Sallie Loop Apt. 476\nNorth Mistyport, TN 29855', '+15418772972', '1967-04-06', 20, 1),
(20, 'Uriel Keeling', 'vdavis@example.com', NULL, '$2y$10$9ZfESS1jDseh3pZ1VlMo6ONh85FsWyELsua6z8/1fabV2bZoXhLd6', NULL, '2022-04-24 13:32:00', '2022-04-24 13:32:00', '4476 Stamm Valleys\nHershelport, MD 73606-6395', '+19867757213', '1960-05-06', 73, 1),
(21, 'Wilson Skiles', 'yadira.gutmann@example.com', NULL, '$2y$10$9ZfESS1jDseh3pZ1VlMo6ONh85FsWyELsua6z8/1fabV2bZoXhLd6', NULL, '2022-04-24 13:32:00', '2022-04-24 13:32:00', '14789 Filiberto Throughway Suite 306\nPort Jaylan, AK 58557', '+12548144327', '2004-07-16', 186, 1),
(22, 'Schuyler Stoltenberg', 'adriana.gleason@example.com', NULL, '$2y$10$9ZfESS1jDseh3pZ1VlMo6ONh85FsWyELsua6z8/1fabV2bZoXhLd6', NULL, '2022-04-24 13:32:00', '2022-04-24 13:32:00', '46789 Kunze Pike Apt. 399\nTheahaven, LA 32621-6828', '+16408784617', '1982-02-19', 182, 1),
(23, 'Jakob Lynch', 'ohegmann@example.org', NULL, '$2y$10$9ZfESS1jDseh3pZ1VlMo6ONh85FsWyELsua6z8/1fabV2bZoXhLd6', NULL, '2022-04-24 13:32:00', '2022-04-24 13:32:00', '4209 Douglas Mews\nRunolfssonshire, LA 48895', '+16418942109', '1987-09-17', 8, 1),
(24, 'Mckenna Lesch', 'kihn.aaron@example.org', NULL, '$2y$10$9ZfESS1jDseh3pZ1VlMo6ONh85FsWyELsua6z8/1fabV2bZoXhLd6', NULL, '2022-04-24 13:32:00', '2022-04-24 13:32:00', '287 Gay Point Apt. 968\nMathewville, SC 98747-0870', '+16803700086', '1988-10-17', 89, 1),
(25, 'Electa Carroll Jr.', 'antonette20@example.org', NULL, '$2y$10$9ZfESS1jDseh3pZ1VlMo6ONh85FsWyELsua6z8/1fabV2bZoXhLd6', NULL, '2022-04-24 13:32:00', '2022-04-24 13:32:00', '1976 Edwardo Mission Suite 284\nPort Elyseberg, MD 05208-7870', '+18586474709', '1959-04-04', 176, 1),
(26, 'Tessie Gerhold II', 'paucek.chadd@example.com', NULL, '$2y$10$9ZfESS1jDseh3pZ1VlMo6ONh85FsWyELsua6z8/1fabV2bZoXhLd6', NULL, '2022-04-24 13:32:00', '2022-04-24 13:32:00', '5576 Joshuah Place Suite 438\nSouth Tessie, CO 83377-6929', '+14123836178', '1973-11-29', 145, 1),
(27, 'Jovanny Wolf', 'dayana04@example.net', NULL, '$2y$10$9ZfESS1jDseh3pZ1VlMo6ONh85FsWyELsua6z8/1fabV2bZoXhLd6', NULL, '2022-04-24 13:32:00', '2022-04-24 13:32:00', '6111 Rempel Well\nLake Crawford, AK 60048-2542', '+16802030665', '1993-05-20', 80, 1),
(28, 'Sadie Swaniawski', 'horace.rowe@example.org', NULL, '$2y$10$9ZfESS1jDseh3pZ1VlMo6ONh85FsWyELsua6z8/1fabV2bZoXhLd6', NULL, '2022-04-24 13:32:00', '2022-04-24 13:32:00', '59690 Princess Pines Suite 947\nMorissetteside, ID 60283-3398', '+12402749213', '1979-02-27', 39, 1),
(29, 'Mohammad Volkman', 'gussie43@example.net', NULL, '$2y$10$9ZfESS1jDseh3pZ1VlMo6ONh85FsWyELsua6z8/1fabV2bZoXhLd6', NULL, '2022-04-24 13:32:00', '2022-04-24 13:32:00', '439 Boehm Field\nLake Elmiraburgh, LA 55269-9565', '+17607018029', '1959-05-18', 90, 1),
(30, 'Percy Stroman', 'addison.hamill@example.com', NULL, '$2y$10$9ZfESS1jDseh3pZ1VlMo6ONh85FsWyELsua6z8/1fabV2bZoXhLd6', NULL, '2022-04-24 13:32:00', '2022-04-24 13:32:00', '468 Billie Burg Apt. 328\nRichardshire, LA 36587', '+19546364253', '1966-03-02', 45, 1);

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
(1, 'Abord a Plouffe', '2022-05-17 01:00:19', NULL),
(2, 'Acton Vale', '2022-05-17 01:00:19', NULL),
(3, 'Albanel', '2022-05-17 01:00:19', NULL),
(4, 'Alma', '2022-05-17 01:00:19', NULL),
(5, 'Amos', '2022-05-17 01:00:19', NULL),
(6, 'Amqui', '2022-05-17 01:00:19', NULL),
(7, 'Ancienne Lorette', '2022-05-17 01:00:19', NULL),
(8, 'Anjou', '2022-05-17 01:00:19', NULL),
(9, 'Anteuil', '2022-05-17 01:00:19', NULL),
(10, 'Arthabaska', '2022-05-17 01:00:19', NULL),
(11, 'Arvida', '2022-05-17 01:00:19', NULL),
(12, 'Asbestos', '2022-05-17 01:00:19', NULL),
(13, 'Aston Junction', '2022-05-17 01:00:19', NULL),
(14, 'Auteuil', '2022-05-17 01:00:19', NULL),
(15, 'Authier', '2022-05-17 01:00:19', NULL),
(16, 'Ayers Cliff', '2022-05-17 01:00:19', NULL),
(17, 'Aylmer', '2022-05-17 01:00:19', NULL),
(18, 'Bagotville', '2022-05-17 01:00:19', NULL),
(19, 'Baie-Comeau', '2022-05-17 01:00:19', NULL),
(20, 'Baie-dUrfe', '2022-05-17 01:00:19', NULL),
(21, 'Baie-Saint-Paul', '2022-05-17 01:00:19', NULL),
(22, 'Barachois', '2022-05-17 01:00:19', NULL),
(23, 'Barraute', '2022-05-17 01:00:19', NULL),
(24, 'Batiscan', '2022-05-17 01:00:19', NULL),
(25, 'Beaconsfield', '2022-05-17 01:00:19', NULL),
(26, 'Beauceville', '2022-05-17 01:00:19', NULL),
(27, 'Beauharnois', '2022-05-17 01:00:19', NULL),
(28, 'Beauport', '2022-05-17 01:00:19', NULL),
(29, 'Beaupre', '2022-05-17 01:00:19', NULL),
(30, 'Beaver', '2022-05-17 01:00:19', NULL),
(31, 'Becancour', '2022-05-17 01:00:19', NULL),
(32, 'Beebe', '2022-05-17 01:00:19', NULL),
(33, 'Beloeil', '2022-05-17 01:00:19', NULL),
(34, 'Berthier', '2022-05-17 01:00:19', NULL),
(35, 'Berthier-sur-Mer', '2022-05-17 01:00:19', NULL),
(36, 'Berthierville', '2022-05-17 01:00:19', NULL),
(37, 'Betsiamites', '2022-05-17 01:00:19', NULL),
(38, 'Bois-des-Filion', '2022-05-17 01:00:19', NULL),
(39, 'Boischatel', '2022-05-17 01:00:19', NULL),
(40, 'Bonaventure', '2022-05-17 01:00:19', NULL),
(41, 'Bromptonville', '2022-05-17 01:00:19', NULL),
(42, 'Brossard', '2022-05-17 01:00:19', NULL),
(43, 'Bryson', '2022-05-17 01:00:19', NULL),
(44, 'Buckingham', '2022-05-17 01:00:19', NULL),
(45, 'Cabano', '2022-05-17 01:00:19', NULL),
(46, 'Cacouna', '2022-05-17 01:00:19', NULL),
(47, 'Candiac', '2022-05-17 01:00:19', NULL),
(48, 'Cap-aux-Meules', '2022-05-17 01:00:19', NULL),
(49, 'Cap-Chat', '2022-05-17 01:00:19', NULL),
(50, 'Cap-de-la-Madeleine', '2022-05-17 01:00:19', NULL),
(51, 'Cap-Rouge', '2022-05-17 01:00:19', NULL),
(52, 'Caughnawaga', '2022-05-17 01:00:19', NULL),
(53, 'Chambly', '2022-05-17 01:00:19', NULL),
(54, 'Chambord', '2022-05-17 01:00:19', NULL),
(55, 'Champlain', '2022-05-17 01:00:19', NULL),
(56, 'Chandler', '2022-05-17 01:00:19', NULL),
(57, 'Chapais', '2022-05-17 01:00:19', NULL),
(58, 'Charlemagne', '2022-05-17 01:00:19', NULL),
(59, 'Charlesbourg', '2022-05-17 01:00:19', NULL),
(60, 'Charny', '2022-05-17 01:00:19', NULL),
(61, 'Chateauguay', '2022-05-17 01:00:19', NULL),
(62, 'Chibougamau', '2022-05-17 01:00:19', NULL),
(63, 'Chicoutimi', '2022-05-17 01:00:19', NULL),
(64, 'Chicoutimi-Nord', '2022-05-17 01:00:19', NULL),
(65, 'Chomedey', '2022-05-17 01:00:19', NULL),
(66, 'Chute-aux-Outardes', '2022-05-17 01:00:19', NULL),
(67, 'Chute-Shipshaw', '2022-05-17 01:00:19', NULL),
(68, 'Clericy', '2022-05-17 01:00:19', NULL),
(69, 'Clermont', '2022-05-17 01:00:19', NULL),
(70, 'Coaticook', '2022-05-17 01:00:19', NULL),
(71, 'Contrecoeur', '2022-05-17 01:00:19', NULL),
(72, 'Cookshire', '2022-05-17 01:00:19', NULL),
(73, 'Cote-Saint-Luc', '2022-05-17 01:00:19', NULL),
(74, 'Cowansville', '2022-05-17 01:00:19', NULL),
(75, 'Crabtree', '2022-05-17 01:00:19', NULL),
(76, 'Danville', '2022-05-17 01:00:19', NULL),
(77, 'De Lery', '2022-05-17 01:00:19', NULL),
(78, 'Delson', '2022-05-17 01:00:19', NULL),
(79, 'Derval', '2022-05-17 01:00:19', NULL),
(80, 'Desbiens', '2022-05-17 01:00:19', NULL),
(81, 'Deschambault', '2022-05-17 01:00:19', NULL),
(82, 'Deux-Montagnes', '2022-05-17 01:00:19', NULL),
(83, 'Disraeli', '2022-05-17 01:00:19', NULL),
(84, 'Dolbeau', '2022-05-17 01:00:19', NULL),
(85, 'Dollard-des-Ormeaux', '2022-05-17 01:00:19', NULL),
(86, 'Donnacona', '2022-05-17 01:00:19', NULL),
(87, 'Dorion', '2022-05-17 01:00:19', NULL),
(88, 'Dorion-Vaudreuil', '2022-05-17 01:00:19', NULL),
(89, 'Dorval', '2022-05-17 01:00:19', NULL),
(90, 'Drummondville', '2022-05-17 01:00:19', NULL),
(91, 'Dubuisson', '2022-05-17 01:00:19', NULL),
(92, 'Duvernay', '2022-05-17 01:00:19', NULL),
(93, 'East Angus', '2022-05-17 01:00:19', NULL),
(94, 'Eastmain', '2022-05-17 01:00:19', NULL),
(95, 'Eastman', '2022-05-17 01:00:19', NULL),
(96, 'Etang-du-Nord', '2022-05-17 01:00:19', NULL),
(97, 'Fabreville', '2022-05-17 01:00:19', NULL),
(98, 'Farnham', '2022-05-17 01:00:19', NULL),
(99, 'Ferme-Neuve', '2022-05-17 01:00:19', NULL),
(100, 'Forestville', '2022-05-17 01:00:19', NULL),
(101, 'Gaspe', '2022-05-17 01:00:19', NULL),
(102, 'Gatineau', '2022-05-17 01:00:19', NULL),
(103, 'Godbout', '2022-05-17 01:00:19', NULL),
(104, 'Granby', '2022-05-17 01:00:19', NULL),
(105, 'Grande-Riviere', '2022-05-17 01:00:19', NULL),
(106, 'Greenfield Park', '2022-05-17 01:00:19', NULL),
(107, 'Grosses-Roches', '2022-05-17 01:00:19', NULL),
(108, 'Guigues', '2022-05-17 01:00:19', NULL),
(109, 'Hebertville', '2022-05-17 01:00:19', NULL),
(110, 'Hemmingford', '2022-05-17 01:00:19', NULL),
(111, 'Hudson', '2022-05-17 01:00:19', NULL),
(112, 'Hudson Heights', '2022-05-17 01:00:19', NULL),
(113, 'Hull', '2022-05-17 01:00:19', NULL),
(114, 'Huntingdon', '2022-05-17 01:00:19', NULL),
(115, 'Iberville', '2022-05-17 01:00:19', NULL),
(116, 'Ile-Perrot', '2022-05-17 01:00:19', NULL),
(117, 'Jacques-Cartier', '2022-05-17 01:00:19', NULL),
(118, 'Joliette', '2022-05-17 01:00:19', NULL),
(119, 'Jonquiere', '2022-05-17 01:00:19', NULL),
(120, 'Knowlton', '2022-05-17 01:00:19', NULL),
(121, 'Kuujjuaq', '2022-05-17 01:00:19', NULL),
(122, 'LAssomption', '2022-05-17 01:00:19', NULL),
(123, 'LEpiphanie', '2022-05-17 01:00:19', NULL),
(124, 'La Baie', '2022-05-17 01:00:19', NULL),
(125, 'La Guadeloupe', '2022-05-17 01:00:19', NULL),
(126, 'La Macaza', '2022-05-17 01:00:19', NULL),
(127, 'La Malbaie', '2022-05-17 01:00:19', NULL),
(128, 'La Salle', '2022-05-17 01:00:19', NULL),
(129, 'La Sarre', '2022-05-17 01:00:19', NULL),
(130, 'La Tuque', '2022-05-17 01:00:19', NULL),
(131, 'Labelle', '2022-05-17 01:00:19', NULL),
(132, 'Lac-Megantic', '2022-05-17 01:00:19', NULL),
(133, 'Lachine', '2022-05-17 01:00:19', NULL),
(134, 'Lachute', '2022-05-17 01:00:19', NULL),
(135, 'Lacolle', '2022-05-17 01:00:19', NULL),
(136, 'Lafontaine', '2022-05-17 01:00:19', NULL),
(137, 'Lanoraie', '2022-05-17 01:00:19', NULL),
(138, 'Laprairie', '2022-05-17 01:00:19', NULL),
(139, 'Laurentides', '2022-05-17 01:00:19', NULL),
(140, 'Lauzon', '2022-05-17 01:00:19', NULL),
(141, 'Laval', '2022-05-17 01:00:19', NULL),
(142, 'Laval-des-Rapides', '2022-05-17 01:00:19', NULL),
(143, 'Laval-Ouest', '2022-05-17 01:00:19', NULL),
(144, 'Lavaltrie', '2022-05-17 01:00:19', NULL),
(145, 'Lennoxville', '2022-05-17 01:00:19', NULL),
(146, 'Lery', '2022-05-17 01:00:19', NULL),
(147, 'Les Escoumins', '2022-05-17 01:00:19', NULL),
(148, 'Levis', '2022-05-17 01:00:19', NULL),
(149, 'Liniere', '2022-05-17 01:00:19', NULL),
(150, 'Longueuil', '2022-05-17 01:00:19', NULL),
(151, 'Loretteville', '2022-05-17 01:00:19', NULL),
(152, 'Louiseville', '2022-05-17 01:00:19', NULL),
(153, 'Luceville', '2022-05-17 01:00:19', NULL),
(154, 'Luskville', '2022-05-17 01:00:19', NULL),
(155, 'Lyster', '2022-05-17 01:00:19', NULL),
(156, 'Macamic', '2022-05-17 01:00:19', NULL),
(157, 'Magog', '2022-05-17 01:00:19', NULL),
(158, 'Magpie', '2022-05-17 01:00:19', NULL),
(159, 'Malartic', '2022-05-17 01:00:19', NULL),
(160, 'Maniwaki', '2022-05-17 01:00:19', NULL),
(161, 'Manseau', '2022-05-17 01:00:19', NULL),
(162, 'Maple Grove', '2022-05-17 01:00:19', NULL),
(163, 'Marieville', '2022-05-17 01:00:19', NULL),
(164, 'Masson', '2022-05-17 01:00:19', NULL),
(165, 'Matagami', '2022-05-17 01:00:19', NULL),
(166, 'Matane', '2022-05-17 01:00:19', NULL),
(167, 'Mauricie', '2022-05-17 01:00:19', NULL),
(168, 'McMasterville', '2022-05-17 01:00:19', NULL),
(169, 'McWatters', '2022-05-17 01:00:19', NULL),
(170, 'Melocheville', '2022-05-17 01:00:19', NULL),
(171, 'Metabetchouan', '2022-05-17 01:00:19', NULL),
(172, 'Millstream', '2022-05-17 01:00:19', NULL),
(173, 'Mirabel', '2022-05-17 01:00:19', NULL),
(174, 'Mont-Apica', '2022-05-17 01:00:19', NULL),
(175, 'Mont-Joli', '2022-05-17 01:00:19', NULL),
(176, 'Mont-Laurier', '2022-05-17 01:00:19', NULL),
(177, 'Mont-Royal', '2022-05-17 01:00:19', NULL),
(178, 'Mont-Saint-Hilaire', '2022-05-17 01:00:19', NULL),
(179, 'Mont-Tremblant', '2022-05-17 01:00:19', NULL),
(180, 'Montebello', '2022-05-17 01:00:19', NULL),
(181, 'Montmagny', '2022-05-17 01:00:19', NULL),
(182, 'Montreal', '2022-05-17 01:00:19', NULL),
(183, 'Montreal-Est', '2022-05-17 01:00:19', NULL),
(184, 'Montreal-Nord', '2022-05-17 01:00:19', NULL),
(185, 'Mount-Royal', '2022-05-17 01:00:19', NULL),
(186, 'Murdochville', '2022-05-17 01:00:19', NULL),
(187, 'Napierville', '2022-05-17 01:00:19', NULL),
(188, 'Natashquan', '2022-05-17 01:00:19', NULL),
(189, 'Neuville', '2022-05-17 01:00:19', NULL),
(190, 'New Richmond', '2022-05-17 01:00:19', NULL),
(191, 'Nicolet', '2022-05-17 01:00:19', NULL),
(192, 'Noranda', '2022-05-17 01:00:19', NULL),
(193, 'Normandin', '2022-05-17 01:00:19', NULL),
(194, 'Notre-Dame-des-Monts', '2022-05-17 01:00:19', NULL),
(195, 'Notre-Dame-du-Lac', '2022-05-17 01:00:19', NULL),
(196, 'Notre-Dame-du-Laus', '2022-05-17 01:00:19', NULL),
(197, 'Notre-Dame-du-Nord', '2022-05-17 01:00:19', NULL),
(198, 'Omerville', '2022-05-17 01:00:19', NULL),
(199, 'Ormstown', '2022-05-17 01:00:19', NULL),
(200, 'Otterburn Park', '2022-05-17 01:00:19', NULL),
(201, 'Outremont', '2022-05-17 01:00:19', NULL),
(202, 'Papineauville', '2022-05-17 01:00:19', NULL),
(203, 'Parent', '2022-05-17 01:00:19', NULL),
(204, 'Pierrefonds', '2022-05-17 01:00:19', NULL),
(205, 'Pierreville', '2022-05-17 01:00:19', NULL),
(206, 'Pincourt', '2022-05-17 01:00:19', NULL),
(207, 'Plessisville', '2022-05-17 01:00:19', NULL),
(208, 'Point Claire', '2022-05-17 01:00:19', NULL),
(209, 'Pointe-aux-Trembles', '2022-05-17 01:00:19', NULL),
(210, 'Pointe-Calumet', '2022-05-17 01:00:19', NULL),
(211, 'Pointe-Claire', '2022-05-17 01:00:19', NULL),
(212, 'Pointe-Lebel', '2022-05-17 01:00:19', NULL),
(213, 'Pont-Rouge', '2022-05-17 01:00:19', NULL),
(214, 'Port-Cartier', '2022-05-17 01:00:19', NULL),
(215, 'Portneuf', '2022-05-17 01:00:19', NULL),
(216, 'Price', '2022-05-17 01:00:19', NULL),
(217, 'Princeville', '2022-05-17 01:00:19', NULL),
(218, 'Puvirnituq', '2022-05-17 01:00:19', NULL),
(219, 'Rawdon', '2022-05-17 01:00:19', NULL),
(220, 'Repentigny', '2022-05-17 01:00:19', NULL),
(221, 'Richelieu', '2022-05-17 01:00:19', NULL),
(222, 'Rigaud', '2022-05-17 01:00:19', NULL),
(223, 'Rimouski', '2022-05-17 01:00:19', NULL),
(224, 'Ripon', '2022-05-17 01:00:19', NULL),
(225, 'Riviere-des-Prairies', '2022-05-17 01:00:19', NULL),
(226, 'Riviere-du-Loup', '2022-05-17 01:00:19', NULL),
(227, 'Riviere-Pigou', '2022-05-17 01:00:19', NULL),
(228, 'Roberval', '2022-05-17 01:00:19', NULL),
(229, 'Rosemere', '2022-05-17 01:00:19', NULL),
(230, 'Rouyn', '2022-05-17 01:00:19', NULL),
(231, 'Roxboro', '2022-05-17 01:00:19', NULL),
(232, 'Sacre-Coeur', '2022-05-17 01:00:19', NULL),
(233, 'Saint Antoine', '2022-05-17 01:00:19', NULL),
(234, 'Saint Bruno', '2022-05-17 01:00:19', NULL),
(235, 'Saint Georges De Beauce', '2022-05-17 01:00:19', NULL),
(236, 'Saint Guillaume', '2022-05-17 01:00:19', NULL),
(237, 'Saint Isidore', '2022-05-17 01:00:19', NULL),
(238, 'Saint Leonard', '2022-05-17 01:00:19', NULL),
(239, 'Saint-Agapit', '2022-05-17 01:00:19', NULL),
(240, 'Saint-Ambroise', '2022-05-17 01:00:19', NULL),
(241, 'Saint-Anselme', '2022-05-17 01:00:19', NULL),
(242, 'Saint-Augustin', '2022-05-17 01:00:19', NULL),
(243, 'Saint-Basile', '2022-05-17 01:00:19', NULL),
(244, 'Saint-Bruno-de-Montarville', '2022-05-17 01:00:19', NULL),
(245, 'Saint-Cesaire', '2022-05-17 01:00:19', NULL),
(246, 'Saint-Denis', '2022-05-17 01:00:19', NULL),
(247, 'Saint-Eustache', '2022-05-17 01:00:19', NULL),
(248, 'Saint-Fabien', '2022-05-17 01:00:19', NULL),
(249, 'Saint-Felicien', '2022-05-17 01:00:19', NULL),
(250, 'Saint-Felix-de-Valois', '2022-05-17 01:00:19', NULL),
(251, 'Saint-Francois', '2022-05-17 01:00:19', NULL),
(252, 'Saint-Gabriel', '2022-05-17 01:00:19', NULL),
(253, 'Saint-Gedeon', '2022-05-17 01:00:19', NULL),
(254, 'Saint-Georges', '2022-05-17 01:00:19', NULL),
(255, 'Saint-Germain-de-Grantham', '2022-05-17 01:00:19', NULL),
(256, 'Saint-Henri-de-Levis', '2022-05-17 01:00:19', NULL),
(257, 'Saint-Henri-de-Taillon', '2022-05-17 01:00:19', NULL),
(258, 'Saint-Hilaire', '2022-05-17 01:00:19', NULL),
(259, 'Saint-Honore', '2022-05-17 01:00:19', NULL),
(260, 'Saint-Hubert', '2022-05-17 01:00:19', NULL),
(261, 'Saint-Hyacinthe', '2022-05-17 01:00:19', NULL),
(262, 'Saint-Jacques', '2022-05-17 01:00:19', NULL),
(263, 'Saint-Jean', '2022-05-17 01:00:19', NULL),
(264, 'Saint-Jean-Eudes', '2022-05-17 01:00:19', NULL),
(265, 'Saint-Jerome', '2022-05-17 01:00:19', NULL),
(266, 'Saint-Joseph-de-Beauce', '2022-05-17 01:00:19', NULL),
(267, 'Saint-Joseph-de-Kamouraska', '2022-05-17 01:00:19', NULL),
(268, 'Saint-Jovite', '2022-05-17 01:00:19', NULL),
(269, 'Saint-Lambert', '2022-05-17 01:00:19', NULL),
(270, 'Saint-Lambert-Chambly', '2022-05-17 01:00:19', NULL),
(271, 'Saint-Laurent', '2022-05-17 01:00:19', NULL),
(272, 'Saint-Lazare', '2022-05-17 01:00:19', NULL),
(273, 'Saint-Leonard', '2022-05-17 01:00:19', NULL),
(274, 'Saint-Malo', '2022-05-17 01:00:19', NULL),
(275, 'Saint-Marc-des-Carrieres', '2022-05-17 01:00:19', NULL),
(276, 'Saint-Michel-des-Saints', '2022-05-17 01:00:19', NULL),
(277, 'Saint-Nicolas', '2022-05-17 01:00:19', NULL),
(278, 'Saint-Pascal', '2022-05-17 01:00:19', NULL),
(279, 'Saint-Pie', '2022-05-17 01:00:19', NULL),
(280, 'Saint-Prosper', '2022-05-17 01:00:19', NULL),
(281, 'Saint-Raphael', '2022-05-17 01:00:19', NULL),
(282, 'Saint-Raymond', '2022-05-17 01:00:19', NULL),
(283, 'Saint-Remi', '2022-05-17 01:00:19', NULL),
(284, 'Saint-Roch-de-Richelieu', '2022-05-17 01:00:19', NULL),
(285, 'Saint-Romuald', '2022-05-17 01:00:19', NULL),
(286, 'Saint-Sauveur', '2022-05-17 01:00:19', NULL),
(287, 'Saint-Sauveur-des-Monts', '2022-05-17 01:00:19', NULL),
(288, 'Saint-Stanislas-de-Kostka', '2022-05-17 01:00:19', NULL),
(289, 'Saint-Tite', '2022-05-17 01:00:19', NULL),
(290, 'Saint-Tite-des-Caps', '2022-05-17 01:00:19', NULL),
(291, 'Saint-Vallier', '2022-05-17 01:00:19', NULL),
(292, 'Saint-Vincent-de-Paul', '2022-05-17 01:00:19', NULL),
(293, 'Saint-Zotique', '2022-05-17 01:00:19', NULL),
(294, 'Sainte-Adele', '2022-05-17 01:00:19', NULL),
(295, 'Sainte-Agathe', '2022-05-17 01:00:19', NULL),
(296, 'Sainte-Agathe-des-Monts', '2022-05-17 01:00:19', NULL),
(297, 'Sainte-Anne-de-Beaupre', '2022-05-17 01:00:19', NULL),
(298, 'Sainte-Anne-de-Bellevue', '2022-05-17 01:00:19', NULL),
(299, 'Sainte-Anne-des-Monts', '2022-05-17 01:00:19', NULL),
(300, 'Sainte-Catherine', '2022-05-17 01:00:19', NULL),
(301, 'Sainte-Cecile-de-Masham', '2022-05-17 01:00:19', NULL),
(302, 'Sainte-Claire', '2022-05-17 01:00:19', NULL),
(303, 'Sainte-Dorothee', '2022-05-17 01:00:19', NULL),
(304, 'Sainte-Foy', '2022-05-17 01:00:19', NULL),
(305, 'Sainte-Genevieve-de-Batiscan', '2022-05-17 01:00:19', NULL),
(306, 'Sainte-Julienne', '2022-05-17 01:00:19', NULL),
(307, 'Sainte-Marie', '2022-05-17 01:00:19', NULL),
(308, 'Sainte-Martine', '2022-05-17 01:00:19', NULL),
(309, 'Sainte-Rose', '2022-05-17 01:00:19', NULL),
(310, 'Sainte-Therese', '2022-05-17 01:00:19', NULL),
(311, 'Sainte-Therese-de-Blainville', '2022-05-17 01:00:19', NULL),
(312, 'Salaberry-de-Valleyfield', '2022-05-17 01:00:19', NULL),
(313, 'Sayabec', '2022-05-17 01:00:19', NULL),
(314, 'Senneterre', '2022-05-17 01:00:19', NULL),
(315, 'Senneville', '2022-05-17 01:00:19', NULL),
(316, 'Sept-Iles', '2022-05-17 01:00:19', NULL),
(317, 'Shawinigan', '2022-05-17 01:00:19', NULL),
(318, 'Shawinigan-Sud', '2022-05-17 01:00:19', NULL),
(319, 'Shawville', '2022-05-17 01:00:19', NULL),
(320, 'Shefford', '2022-05-17 01:00:19', NULL),
(321, 'Sheldrake', '2022-05-17 01:00:19', NULL),
(322, 'Sherbrook', '2022-05-17 01:00:19', NULL),
(323, 'Sherbrooke', '2022-05-17 01:00:19', NULL),
(324, 'Shipshaw', '2022-05-17 01:00:19', NULL),
(325, 'Sillery', '2022-05-17 01:00:19', NULL),
(326, 'Sorel', '2022-05-17 01:00:19', NULL),
(327, 'Stanstead', '2022-05-17 01:00:19', NULL),
(328, 'Stoneham', '2022-05-17 01:00:19', NULL),
(329, 'Sutton', '2022-05-17 01:00:19', NULL),
(330, 'Tadoussac', '2022-05-17 01:00:19', NULL),
(331, 'Taschereau', '2022-05-17 01:00:19', NULL),
(332, 'Temiscaming', '2022-05-17 01:00:19', NULL),
(333, 'Templeton', '2022-05-17 01:00:19', NULL),
(334, 'Terrebonne', '2022-05-17 01:00:19', NULL),
(335, 'Thetford Mines', '2022-05-17 01:00:19', NULL),
(336, 'Thurso', '2022-05-17 01:00:19', NULL),
(337, 'Tracy', '2022-05-17 01:00:19', NULL),
(338, 'Trois-Pistoles', '2022-05-17 01:00:19', NULL),
(339, 'Trois-Rivieres', '2022-05-17 01:00:19', NULL),
(340, 'Val-Barrette', '2022-05-17 01:00:19', NULL),
(341, 'Val-dOr', '2022-05-17 01:00:19', NULL),
(342, 'Val-David', '2022-05-17 01:00:19', NULL),
(343, 'Valcourt', '2022-05-17 01:00:19', NULL),
(344, 'Vallee-Jonction', '2022-05-17 01:00:19', NULL),
(345, 'Valleyfield', '2022-05-17 01:00:19', NULL),
(346, 'Varennes', '2022-05-17 01:00:19', NULL),
(347, 'Vaudreuil', '2022-05-17 01:00:19', NULL),
(348, 'Vercheres', '2022-05-17 01:00:19', NULL),
(349, 'Verdun', '2022-05-17 01:00:19', NULL),
(350, 'Victoriaville', '2022-05-17 01:00:19', NULL),
(351, 'Ville-Marie', '2022-05-17 01:00:19', NULL),
(352, 'Wakefield', '2022-05-17 01:00:19', NULL),
(353, 'Warwick', '2022-05-17 01:00:19', NULL),
(354, 'Waswanipi', '2022-05-17 01:00:19', NULL),
(355, 'Waterville', '2022-05-17 01:00:19', NULL),
(356, 'Weedon', '2022-05-17 01:00:19', NULL),
(357, 'Westmount', '2022-05-17 01:00:19', NULL),
(358, 'Yamachiche', '2022-05-17 01:00:19', NULL),
(359, 'Yamaska', '2022-05-17 01:00:19', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Articles_users1_idx` (`user_id`);

--
-- Index pour la table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_documents_users1_idx` (`user_id`);

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
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_ville_id` (`ville_id`);

--
-- Index pour la table `villes`
--
ALTER TABLE `villes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `villes`
--
ALTER TABLE `villes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=360;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `fk_Articles_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `fk_documents_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ville_id` FOREIGN KEY (`ville_id`) REFERENCES `villes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
