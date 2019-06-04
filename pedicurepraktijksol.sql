-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 04, 2019 at 11:16 AM
-- Server version: 5.7.24-log
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pedicurepraktijksol`
--

-- --------------------------------------------------------

--
-- Table structure for table `concept`
--

CREATE TABLE `concept` (
  `id` int(11) NOT NULL,
  `page` varchar(255) NOT NULL,
  `pageOrder` int(11) NOT NULL,
  `content` mediumtext NOT NULL,
  `inputType` varchar(255) NOT NULL,
  `htmlID` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `concept`
--

INSERT INTO `concept` (`id`, `page`, `pageOrder`, `content`, `inputType`, `htmlID`, `updated_at`) VALUES
(1, 'home', 2, 'Medisch pedicure en beoefen mijn vak met hart en ziel in Alkmaar West en 1 dag per week in Castricum. Of het nu om een ontspannende en cosmetisch verzorgende behandeling gaat of om een behandeling die gericht is op het verlichten van pijnlijke ongemakken aan de voeten. Vakkundig in het wegnemen van pijn door ingroeiende nagels, likdoorns of kloven. Nauwkeurig en zorgzaam in de behandeling van alle voeten die zorg vragen', 'text', 'Tekst onder title', '2019-05-22 11:27:01'),
(2, 'home', 1, 'Voor iedereen die verzorgde voeten wilt', 'varchar(255)', 'Titel', '2019-05-22 10:11:17'),
(5, 'behandelingen', 4, '', 'koppel_concept_behandelingen', 'Behandelingen', '2019-06-04 09:48:02'),
(6, 'over-mij', 2, 'Mijn naam is Joke Sol, ik ben gediplomeerd medisch pedicure', 'text', 'Tekst onder titel', '2019-05-13 08:50:50'),
(8, 'over-mij', 4, 'Na een carriere als loopbaanadviseur ontstond bij mijzelf de behoefte aan verandering.\n\n\nEen praktisch beroep waarbij ik mensen blij kon maken. Zo kwam het pedicurewerk voor mij in beeld: mensen helpen door de druk of pijn die ze aan hun voeten hebben voor een groot deel weg te nemen.\n\n\nTijdens mijn opleiding merkte ik hoe fijn het is om mensen weer op weg te helpen naar gezonde, verzorgde en minder pijnlijke voeten. De keuze om na de branche-opleiding pedicure door te leren voor Medisch Pedicure was dan ook vanzelfsprekend voor mij. Ik hoop nog heel lang mensen te kunnen helpen met goede voetzorg en nieuwe ontwikkelingen in het vakgebied te kunnen volgen en gebruiken voor mijn klanten.', 'text', 'Tekst van het blok', '2019-05-09 11:50:12'),
(9, 'over-mij', 3, 'Loopbaanswitch', 'varchar(255)', 'Title van het blok', '2019-05-09 11:50:05'),
(7, 'over-mij', 1, 'Uw voeten, in goede handen, daar maak ik graag werk van', 'varchar(255)', 'Titel', '2019-05-13 08:50:42'),
(10, 'over-mij', 4, '10-thumb-1920-411820.jpg', 'longtext', 'Image van het blok', '2019-05-15 07:08:36'),
(15, 'tips', 2, 'Met wat dagelijkse aandacht en zorg kunt uw zelf invloed uitoefenen op de gezondheid van uw voeten zodat u klachten kunt voorkomen of verminderen.qwe \nweqe', 'text', 'Tekst onder title', '2019-05-22 11:21:00'),
(12, 'behandelingen', 1, 'Uw stap op weg naar verzorgde voeten', 'varchar(255)', 'Title', '2019-05-13 09:17:02'),
(13, 'behandelingen', 2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus hic sapiente sed unde repudiandae quaerat eligendi, facilis dolorum molestiae obcaecati.', 'text', 'Tekst onder titel', '2019-05-13 09:17:04'),
(14, 'behandelingen', 3, 'Als er sprake is van klachten aan de voeten bijvoorbeeld door diabetes, reuma, bewegingsbeperking, of andere redenen dan wordt voorafgaand aan de behandeling een intake en voetonderzoek bij u afgenomen Zo wordt geïnventariseerd wat verlichting van de klachten zou kunnen brengen. Een behandelplan wordt opgesteld, thuisadvies wordt meegegeven en vervolgafspraken worden gemaakt', 'text', 'Tekst in blok', '2019-05-22 10:11:48'),
(16, 'tips', 1, 'voeten verdienen uw aandacht!', 'varchar(255)', 'Titel', '2019-05-22 10:11:17'),
(17, 'tips', 3, '', 'koppel_concept_tips', 'Tips', '2019-05-22 10:29:00'),
(18, 'prijslijst', 3, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo labore vero soluta itaque possimus impedit repellat ipsa odit maiores, debitis sed doloribus, cupiditate? Voluptatem laborum, totam est quisquam ea, sapiente?', 'text', 'Tekst in blok', '2019-06-04 07:40:47'),
(19, 'prijslijst', 1, 'PRIJSLIJST PEDICUREPRAKTIJK SOL', 'varchar(255)', 'Titel', '2019-06-04 11:15:06'),
(20, 'prijslijst', 2, 'Hier vindt u alle prijzen inclusief BTW van de verschillende behandelingen.', 'text', 'Tekst onder title', '2019-06-04 07:40:45'),
(21, 'prijslijst', 4, '', 'koppel_concept_prijzen', 'Prijzen', '2019-05-07 12:24:43'),
(22, 'prijslijst', 5, 'Zorgverzekering', 'varchar(255)', 'Title onderaan', '2019-06-04 07:40:45'),
(23, 'prijslijst', 5, 'Mensen met diabetes kunnen een verhoogd risico hebben op het ontstaan van voetproblemen. De praktijkondersteuner van uw huisartsenpraktijk is doorgaans degene die dit beoordeelt. Afhankelijk van uw risicoprofiel kunt u vanuit de basis en/of aanvullende zorgverzekering een deel van de kosten van de pedicurebehandeling vergoed krijgen. Ook voor enkele andere aandoeningen kunnen de kosten van de behandeling soms vergoed worden. Kijk voor een volledig overzicht op www.zorgwijzer.nl/vergoedingen/pedicure\n\nIndien verhinderd voor een gemaakte afspraak graag 24 uur voorafgaand afmelden, zonder afmelding wordt de behandeling voor 50% in rekening gebracht.\n\nBetaling geschiedt contant', 'text', 'Text onderaan', '2019-06-04 11:14:32'),
(24, 'contact', 1, 'Waar vindt u Pedicurepraktijk sol?', 'varchar(255)', 'Titel', '2019-05-13 08:50:42'),
(25, 'contact', 2, 'Alkmaar: praktijk aan huis', 'varchar(255)', 'Titel blok links', '2019-05-13 09:17:04'),
(26, 'contact', 3, 'Bergerweg 57, 1816 BN\r\n\r\nDe praktijkruimte bevindt zich op de 1e etage. Er is vrij parkeren aan de Bergerweg en in het Rembrandtkwartier achter de Bergerweg.', 'text', 'Tekst blok links', '2019-05-22 10:11:48'),
(27, 'contact', 4, 'Castricum', 'varchar(255)', 'Titel blok rechts', '2019-05-13 09:17:04'),
(28, 'contact', 5, 'op dinsdag houdt Pedicurepraktijk Sol praktijk in sfeervolle salon van Cosmo Hairstyling aan het Bakkerspleintje 24 in Castricum. U kunt gedurende 2 uur gratis parkeren met een parkeerschijf in de nabije omgeving.', 'text', 'Tekst blok rechts', '2019-05-22 10:11:48'),
(29, 'contact', 6, '06 51304651', 'varchar(255)', 'Telefoonnummer', '2019-06-04 08:33:10'),
(30, 'contact', 7, 'pedicurepraktijksol@gmail.nl', 'varchar(255)', 'Email', '2019-06-04 08:33:10'),
(31, 'contact', 8, '74382713', 'varchar(255)', 'KVK', '2019-06-04 08:33:10'),
(32, 'contact', 9, 'NL55 ASNB 0781 2720 25', 'varchar(255)', 'Bank', '2019-06-04 08:33:10'),
(33, 'contact', 10, 'Voor een behandeling in Castricum kunt u ook bij de medewerkers van Cosmo Hairstyling een afspraak maken.', 'text', 'Quote tekst', '2019-06-04 08:33:10'),
(34, 'contact', 11, 'Joke Sol', 'varchar(255)', 'Quete naam', '2019-06-04 08:33:10'),
(35, 'behandelingen', 5, '', 'koppel_concept_technieken', 'Technieken', '2019-06-04 10:19:13');

-- --------------------------------------------------------

--
-- Table structure for table `concept_behandelingen`
--

CREATE TABLE `concept_behandelingen` (
  `id` int(11) NOT NULL,
  `weergeven` int(1) NOT NULL,
  `deleted` int(1) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` text,
  `image` longtext,
  `pageOrder` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `concept_behandelingen`
--

INSERT INTO `concept_behandelingen` (`id`, `weergeven`, `deleted`, `title`, `text`, `image`, `pageOrder`, `updated_at`) VALUES
(1, 1, 0, 'BEHANDELING MET INTAKE  (90 MINUTEN)', 'Intake en voetonderzoek, opstellen behandelplan; algehele voetverzorging: thuisadvies. Doel van het voetonderzoek is te inventariseren wat uw voetklachten zijn en waar deze uit voort kunnen komen/mee samenhangen; of er sprake is van een risicovoet; met welke behandeling uw klachten verlicht kunnen worden. Het resultaat is dat u een advies krijgt wat u zelf kunt doen aan uw voetverzorging en het verminderen van uw klachten en tevens een behandelvoorstel krijgt. Indien noodzakelijk zal u een verwijzing naar een medisch voetspecialist of de huisarts krijgen.', '1-behandeling.png', 1, '2019-06-04 09:52:59'),
(2, 0, 1, 'test tekst', 'ietjse meer test ', 'behandeling.png', 2, '2019-05-09 08:36:03'),
(18, 0, 1, NULL, NULL, NULL, 3, '2019-05-08 10:08:05'),
(19, 0, 1, NULL, NULL, NULL, 4, '2019-05-08 10:08:01'),
(20, 0, 1, NULL, NULL, NULL, 5, '2019-05-08 10:07:58'),
(21, 1, 0, 'ALGEHELE VOETVERZORGING  (45 MINUTEN)', 'Iedere klant die op bezoek komt kan rekenen op een algehele voetverzorging. Of u nu uw voeten zomer klaar wilt maken of dat u klachten heeft bijvoorbeeld van pijnlijke drukplekken en likdoorns, kalknagels, ingroeiende nagels of kloven, iedereen wordt met de grootste aandacht behandeld. \n\nDe voeten worden gereinigd en gedesinfecteerd. De nagels worden, indien nodig, verdund en bijgeknipt en de nagelomgeving wordt gereinigd, nagelriemen worden bijgewerkt, zodat ze weer hun mooie verzorgde en gezonde uitstraling krijgen. Eelt wordt verwijderd en zo ook eventuele likdoorns en kloven. Is er sprake van beginnende ingroei van nagels dan wordt de nagelwal vrijgemaakt. Nadat de voeten en nagels zijn behandeld, krijgt u tot slot een heerlijke verzorgende crème. De voeten worden kort gemasseerd zodat u weer op verzorgde en ontspannen voeten de praktijk kunt verlaten.', '21-behandeling.png', 3, '2019-06-04 09:49:31'),
(22, 0, 1, NULL, NULL, NULL, 4, '2019-05-22 09:34:26'),
(23, 1, 0, 'PEDICURE PLUS', 'Deze behandeling geeft u naast een algehele voetverzorging ook ontspannende scrub en massage. (tot 60 min).', '23-behandeling.png', 4, '2019-06-04 09:55:12'),
(24, 1, 0, 'NAGELS LAKKEN', 'Het reinigen van de nagelomgeving en het aanbrengen van een kleurlak en een beschermende toplaag op uw teennagels na een algehele voetverzorging.', '24-behandeling.png', 5, '2019-06-04 10:07:26');

-- --------------------------------------------------------

--
-- Table structure for table `concept_prijzen`
--

CREATE TABLE `concept_prijzen` (
  `id` int(11) NOT NULL,
  `weergeven` int(1) NOT NULL,
  `deleted` int(1) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `prijs` varchar(255) DEFAULT NULL,
  `pageOrder` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `concept_prijzen`
--

INSERT INTO `concept_prijzen` (`id`, `weergeven`, `deleted`, `title`, `prijs`, `pageOrder`, `updated_at`) VALUES
(1, 1, 0, 'Algehele voetverzorging (45 min)', '35', 1, '2019-06-04 11:08:27'),
(2, 1, 0, '1e behandeling met intake/voetonderzoek', '55', 2, '2019-06-04 11:08:28'),
(3, 1, 0, 'algehele voetverzorging + scrub/massage', '45', 3, '2019-06-04 11:08:31'),
(4, 1, 0, 'algehele voetverzorging + nagels lakken', '45', 4, '2019-06-04 11:08:32'),
(5, 1, 0, 'Intake/voetonderzoek', '20', 5, '2019-06-04 11:08:34'),
(6, 1, 0, 'Nagels lakken (reinigen, kleurlak, topcoat)', '15', 6, '2019-06-04 11:08:35'),
(7, 1, 0, 'Cadeaubonnen vanaf', '20', 7, '2019-06-04 11:09:14'),
(8, 1, 0, 'Toeslag per 15 min', '10', 8, '2019-06-04 11:08:39'),
(9, 1, 0, 'Toeslag behandeling op locatie', '10', 9, '2019-06-04 11:10:41');

-- --------------------------------------------------------

--
-- Table structure for table `concept_technieken`
--

CREATE TABLE `concept_technieken` (
  `id` int(11) NOT NULL,
  `weergeven` int(1) NOT NULL,
  `deleted` int(1) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` text,
  `image` longtext,
  `pageOrder` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `concept_technieken`
--

INSERT INTO `concept_technieken` (`id`, `weergeven`, `deleted`, `title`, `text`, `image`, `pageOrder`, `updated_at`) VALUES
(1, 1, 0, 'Nagelbeugel plaatsen bij ingroeiende nagel.', 'Een nagelbeugel is een op maat gemaakt hulpmiddel om uw nagelgroei te reguleren. Ze begeleidt als het ware de groei van de nagel in de juiste richting. Er zijn verschillende typen nagelbeugels. Afhankelijk van uw nagels en uw situatie wordt voor de meest geschikte beugel gekozen.', '1-behandeling.png', 1, '2019-06-04 10:41:41'),
(2, 1, 0, 'Nagelreparatie gel of acryl', 'Een nagelreparatie kan wenselijk zijn in verschillende situaties bijvoorbeeld als er een stuk van uw nagel afgebroken is; als er sprake van een gespleten of ernstig beschadigde nagel is. Met gel of acryl kan uw nagel weer opgebouwd worden waardoor uw nagelbed beschermd is en oogt als bij een gezonde nagel.', '2-behandeling.png', 2, '2019-06-04 10:41:37'),
(3, 1, 0, 'Ortheses', 'Een orthese is een op maat gemaakt hulpmiddel op basis van siliconen, waarmee complicaties die zich bijvoorbeeld voordoen door teenstandafwijkingen, verholpen kunnen worden. Zo kan een orthese een oplossing zijn voor een steeds terugkerende likdoorn tussen de tenen of op de top van hamertenen.', '3-behandeling.png', 3, '2019-06-04 10:41:26'),
(4, 1, 0, 'Antidruktechiek met vilt', 'Heeft u last van drukplekken die tijdelijk ontlast moeten worden dan kan een “viltpadding” een welkome oplossing bieden. Zo kan een gevoelige (druk)plek op de hiel of voorvoet door een wrat een likdoorn of een wond vrij gelegd worden. Een viltpadding kan een tijdelijke verlichting bieden in afwachting van een meer definitieve oplossing zoals een orthese of aangepast schoeisel.', '4-behandeling.png', 4, '2019-06-04 10:59:02');

-- --------------------------------------------------------

--
-- Table structure for table `concept_tips`
--

CREATE TABLE `concept_tips` (
  `id` int(11) NOT NULL,
  `weergeven` int(1) NOT NULL,
  `deleted` int(1) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` text,
  `pageOrder` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `concept_tips`
--

INSERT INTO `concept_tips` (`id`, `weergeven`, `deleted`, `title`, `text`, `pageOrder`, `updated_at`) VALUES
(1, 0, 1, NULL, NULL, 1, '2019-05-22 10:28:34'),
(2, 0, 1, NULL, NULL, 2, '2019-05-22 10:28:35'),
(3, 1, 0, 'VOETEN WASSEN', 'Was uw voeten dagelijks met lauw water en bij voorkeur zonder zeep. Blijf ook niet te lang met uw voeten in het water, een droge huid kan hiervan het gevolg zijn. Droog natte voeten goed af, vooral tussen de tenen en geef ze even de tijd ook volledig te drogen.\n\nSmeer uw voeten dagelijks na het wassen in met wat lotion of hydraterende crème zodat de huid niet uitdroogt.', 1, '2019-05-22 11:39:25'),
(4, 1, 0, 'SCHOEISEL EN SOKKEN', 'Draag bij voorkeur katoenen of wollen sokken zonder dikke naden en verschoon ze dagelijks. Goed passende schoenen, die bovendien voldoende ventileren, zijn essentieel in uw dagelijks loopcomfort en in het voorkomen van pijnlijke voeten. Laat u voorlichten in een goede schoenenzaak over de voor u juiste maat en pasvorm. Koop uw schoenen bovendien aan het einde van de dag dan kunnen uw voeten namelijk al wat opgezet zijn.\nWissel zo mogelijk dagelijks van schoenen\nVoorkom ingegroeide teennagels\nDe grootste risicofactoren voor het ontstaan van ingroeiende teennagels zijn:\n\n•	Druk door slecht passend schoeisel\n•	Het verkeerd (te kort en/of niet recht) knippen van de nagels\n•	Een weke nagelomgeving door veel baden, transpiratie of synthetische sokken\n\nTip: “Pedi- of Wandelwol”is een 100% natuurproduct dat u als antidrukmiddel zelf goed kunt gebruiken en toepassen. Geschikt voor wandelaars, sporters of mensen die snel last van pijnlijke drukplekken, blaren of koude voeten hebben. Vraag er eens naar als u in de praktijk bent.', 2, '2019-05-22 11:23:38'),
(5, 1, 0, 'SCHIMMELINFECTIES', 'Gebruik badslippers in publieke natte ruimten zoals zwembaden, sauna’s, kleedkamers van sportschool of -vereniging, gymzalen.\n\nKomt u regelmatig in publieke natte ruimten controleer uw voeten goed op mogelijke signalen van voetschimmel zoals kleine blaasjes en nagels die van kleur veranderen.', 3, '2019-05-22 10:43:17'),
(6, 1, 0, 'EELT EN KLOVEN', 'Eelt doet zich voor op plaatsen op de voet waar veel druk of wrijving plaats vindt. Voortdurende druk en eeltvorming kan leiden tot likdoornvorming.\n\nKloven kunnen ontstaan op eeltlocaties waar het eelt erg droog is en de huid minder elastisch is geworden.\n\nDoor zelf regelmatig met een voetvijl u voeten te behandelen en de voeten in te smeren met een verzorgende crème kunt u klachten door overmatig eelt of kloven voorkomen.', 4, '2019-05-22 10:43:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`) VALUES
(1, 'Nanko Prinzhorn', 'Nankow', 'nanko.prinzhorn@gmail.com', '123123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `concept`
--
ALTER TABLE `concept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `concept_behandelingen`
--
ALTER TABLE `concept_behandelingen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `concept_prijzen`
--
ALTER TABLE `concept_prijzen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `concept_technieken`
--
ALTER TABLE `concept_technieken`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `concept_tips`
--
ALTER TABLE `concept_tips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `concept`
--
ALTER TABLE `concept`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `concept_behandelingen`
--
ALTER TABLE `concept_behandelingen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `concept_prijzen`
--
ALTER TABLE `concept_prijzen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `concept_technieken`
--
ALTER TABLE `concept_technieken`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `concept_tips`
--
ALTER TABLE `concept_tips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
