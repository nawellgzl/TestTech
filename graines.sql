-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 04 déc. 2019 à 12:18
-- Version du serveur :  10.4.6-MariaDB
-- Version de PHP :  7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `babylone`
--

-- --------------------------------------------------------

--
-- Structure de la table `graines`
--

CREATE TABLE `graines` (
  `id` int(11) NOT NULL,
  `nom_graine` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `famille` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plantation` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recolte` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visuel` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `conseils` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `graines`
--

INSERT INTO `graines` (`id`, `nom_graine`, `famille`, `plantation`, `recolte`, `visuel`, `conseils`, `stock`) VALUES
(1, 'Citrouille', 'Cucurbitacées', 'printemps', 'automne', 'https://static.aujardin.info/cache/th/par/citrouille-600x450.webp', 'Cucurbita pepo ssp pepo est une annuelle qui aime la chaleur. Gélive, elle ne peut être installée au jardin qu’après les derniers risques de gel. De plus, elle demande pour croître une température supérieure à 10 °C. La citrouille met 4 à 5 mois pour accomplir son cycle jusqu’au fruit mûr. La citrouille est cultivée en plein soleil dans un sol meuble et très riche en matière organique: culture sur lasagnes ou en sol ordinaire avec paillage organique en surface et important apport de compost ou de fumier en profondeur. Elle est résistante à la sécheresse (elle ploie ses feuilles lorsqu’il fait trop chaud pour ne pas consommer trop d’eau) mais pousse davantage dans un sol qui ne se dessèche pas. Plus la plante se développe, plus elle sera productive.\r\n\r\nElle est semée en mai par poquet de 3 graines, espacé d’1 m au potager, avec une pelletée de compost sous le semis. La citrouille aussi peut être avancée en semis forcé en avril sous châssis ou en serre, 3 graines par pot de 2 litres. Le semis bien arrosés germe en 1 semaine à 20 °C. On ne laisse qu’une plantule bien développée par poquet.\r\n\r\nLes jeunes citrouilles en pot sont repiquées en les démoulant délicatement pour ne pas perturber les racines. Elles sont particulièrement appétissantes pour les limaces à ce moment -là.\r\n\r\nOn peut obliger la citrouille à se ramifier en pinçant le bourgeon apical. Par exemple, sur le plant à 4 feuilles pour lui faire faire 2 tiges, une qui part de chaque côté. Plus le nombre de fruits sera important sur le pied, moins ils seront gros. Une tuile ou une planche sous chaque fruit permettra d’éviter que l’humidité du sol ne les abime.', 100),
(2, 'Aubergine', 'Solanacées', 'printemps', 'ete', 'https://static.aujardin.info/cache/th/img9/solanum-melongena-600x450.webp', 'Le plant d‘aubergine mesure à maturité de 50 cm à 1 min 50 s, il montre une tige coriace, peu ramifiée (sauf s’il a été pincé, portant de grandes feuilles vert glauque, plus ou moins poudreuses, opposées, entières, parfois à la marge doucement lobée ; il arrive que les tiges ou les nervures principales des feuilles soient épineuses.\r\n\r\nLes fleurs naissent souvent par paire, à l’aisselle des feuilles. Elles montrent des corolles d’un violet terne.\r\n\r\nLe fruit est une grosse baie charnue qui renferme de petites graines réniformes. Il existe des aubergines presque noires, roses, tigrées, blanches.., rondes ou allongées. \r\nNon seulement l’aubergine n’est pas rustique, mais elle demande soleil, chaleur, arrosages réguliers sur un sol riche pour réussir. Elle ne croît qu’à partir de 12 ° C. Elle est introduite au jardin après les dernières gelées. Dans les régions froides, elle se développera mieux dans une zone où la chaleur s’accumule : devant un mur au sud ou dans un microclimat chaud, protégée par d’autres plantes. Elle se prête également très bien à la culture en conteneur.\r\n\r\nL’aubergine demande 4 à 6 mois pour produire ses fruits. Si dans le sud, sa culture est très facile, dans la moitié nord de la France, les plants d’aubergine doivent être forcés au chaud avant d’être repiqués au jardin. Il sera judicieux de choisir des variétés hâtives.\r\n\r\nLes plants sont achetés à des producteurs spécialisés ou obtenus par semis maison.\r\n\r\nLes semis maison se font au chaud en mars.\r\n\r\nLes graines d’aubergines germent en 7 à 10 Jours à 25 °C, si possible dans un mélange terreau et terre du jardin. Lorsque les plantules montrent leurs premières feuilles [celles après les cotylédons] elles sont repiquées en pot individuel. A chaque repiquage, il faut arroser la terre copieusement et éventuellement couvrir un jour ou deux : l’humidité favorise la reprise.\r\n\r\nToujours maintenus hors gel, les plants d’aubergines sont sortis le jour, d’abord à l’ombre puis au soleil, quand le temps est beau, afin d’endurcir les jeunes plants.\r\n\r\nArrivés au mois de mai, ils doivent avoir environ 4 feuilles. Ils sont repiqués au potager lorsqu’il ne gèle plus. La terre doit être meuble, enrichie de fumier et/ou de compost.\r\n\r\nLe plant est repiqué profondément parce l’aubergine est capable de produire de nouvelles racines au niveau du collet. Un arrosage copieux tasse la terre autour des racines ; une cloche de forçage favorise la reprise.', 100),
(3, 'Concombre', 'Cucurbitacées', 'printemps', 'ete', 'https://static.aujardin.info/cache/th/img10/cucumis-sativus-600x450.webp', 'Les concombres aiment les terres riches, humifères et fraiches, ainsi que la chaleur. À la plantation, effectuez un apport de compost mûr et, si à la fin du printemps les températures restent fraiches, n\'hésitez pas à protéger les plants d\'un tunnel ou d\'un voile de forçage.\r\n\r\nDurant l\'été, effectuez des arrosages réguliers (avec de l\'eau tempérée) et installez un paillis.\r\n\r\nConseil : lors des arrosages, évitez l\'eau sur les feuilles. Cela peut favoriser le développement de certaines maladies comme le mildiou ou l\'oïdium.\r\nLe concombre se sème sous abris en mars-avril, soit environ 7 semaines avant le repiquage (les semis en pleine terre ne démarrent pas avant la mi-mai).\r\n\r\nLes semis se font en poquets de 3 ou 4 graines, dans des godets ou sous châssis, voire à l\'intérieur (température de germination : plus de 16°C).  Ne conservez qu\'un seul plant par poquet après la levée des plants. Fin mai ou courant juin, repiquez les, en les espaçant de 60 cm sur des rangs distants de 1,20 mètres environ.\r\n\r\nAstuce : pour réduire l\'emprise au sol des pieds de concombres, faites-les grimper sur un grillage.', 90),
(4, 'Poivron', 'Solanacées', 'hiver', 'automne', 'https://static.aujardin.info/cache/th/img10/capsicum-annuum-600x450.webp', 'Un sol léger et aéré permet au réseau complexe du système racinaire des poivrons et des piments de se développer en profondeur et en largeur. Si cette condition de base est remplie, la plante peut profiter au mieux de l\'eau stockée dans le sol ; qu\'elle économie sur les arrosages !\r\n\r\nLe sol doit être également chaud pour que les plants puissent croître ; optez donc pour une situation abritée et bien chauffée par le soleil. Dans de bonnes conditions de chaleur et d\'ensoleillement, les piments se développent rapidement.\r\n\r\nLes récoltes s\'étalent de la fin août à la fin du mois d\'octobre : les piments sont cueillis à maturité, lorsqu\'ils sont rouges, tandis que les poivrons peuvent être ramassés avant leur coloration, s\'ils ont acquis leur taille définitive.', 150);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `graines`
--
ALTER TABLE `graines`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `graines`
--
ALTER TABLE `graines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
