-- phpMyAdmin SQL Dump
-- version 3.5.8.1
-- http://www.phpmyadmin.net
--
-- Machine: localhost:3306
-- Genereertijd: 06 jun 2019 om 09:14
-- Serverversie: 5.1.73
-- PHP-versie: 5.3.29

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databank: `pedicurepraktijdsol`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `concept`
--

CREATE TABLE IF NOT EXISTS `concept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page` varchar(255) NOT NULL,
  `pageOrder` int(11) NOT NULL,
  `content` mediumtext NOT NULL,
  `inputType` varchar(255) NOT NULL,
  `htmlID` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Gegevens worden uitgevoerd voor tabel `concept`
--

INSERT INTO `concept` (`id`, `page`, `pageOrder`, `content`, `inputType`, `htmlID`, `updated_at`) VALUES
(1, 'home', 2, 'Als medisch pedicure en beoefen mijn vak met hart en ziel. Of het nu om een ontspannende en cosmetisch verzorgende behandeling gaat of om een behandeling die gericht is op het verlichten van pijnlijke ongemakken aan de voeten. Vakkundig in het wegnemen van pijn door ingroeiende nagels, likdoorns of kloven. Nauwkeurig en zorgzaam in de behandeling van alle voeten die zorg vragen', 'text', 'Tekst onder title', '2019-06-06 07:02:58'),
(2, 'home', 1, 'Voor iedereen die verzorgde voeten wilt', 'varchar(255)', 'Titel', '2019-06-05 22:44:11'),
(3, 'behandelingen', 4, '', 'koppel_concept_behandelingen', 'Behandelingen', '2019-06-05 22:44:11'),
(4, 'over-mij', 2, 'Mijn naam is Joke Sol, ik ben gediplomeerd medisch pedicure', 'text', 'Tekst onder titel', '2019-06-05 22:44:11'),
(5, 'over-mij', 4, 'Na een carriere als loopbaanadviseur ontstond bij mijzelf de behoefte aan verandering.\n\n\nEen praktisch beroep waarbij ik mensen blij kon maken. Zo kwam het pedicurewerk voor mij in beeld: mensen helpen door de druk of pijn die ze aan hun voeten hebben voor een groot deel weg te nemen.\n\n\nTijdens mijn opleiding merkte ik hoe fijn het is om mensen weer op weg te helpen naar gezonde, verzorgde en minder pijnlijke voeten. De keuze om na de branche-opleiding pedicure door te leren voor Medisch Pedicure was dan ook vanzelfsprekend voor mij. Ik hoop nog heel lang mensen te kunnen helpen met goede voetzorg en nieuwe ontwikkelingen in het vakgebied te kunnen volgen en gebruiken voor mijn klanten.', 'text', 'Tekst van het blok', '2019-06-05 22:44:11'),
(6, 'over-mij', 3, 'Loopbaanswitch', 'varchar(255)', 'Title van het blok', '2019-06-05 22:44:11'),
(7, 'over-mij', 1, 'Uw voeten, in goede handen, daar maak ik graag werk van', 'varchar(255)', 'Titel', '2019-06-05 22:44:11'),
(8, 'over-mij', 4, '10-behandeling.png', 'longtext', 'Image van het blok', '2019-06-05 22:44:11'),
(9, 'tips', 2, 'Met wat dagelijkse aandacht en zorg kunt uw zelf invloed uitoefenen op de gezondheid van uw voeten zodat u klachten kunt voorkomen of verminderen.qwe \nweqe', 'text', 'Tekst onder title', '2019-06-05 22:44:11'),
(10, 'behandelingen', 1, 'Uw stap op weg naar verzorgde voeten', 'varchar(255)', 'Title', '2019-06-05 22:44:11'),
(11, 'behandelingen', 2, '"Algehele voetverzorging" is het uitgangspunt van de behandeling, of u uw voeten nu zomer klaar wilt maken; zelf moeite heeft uw voeten goed te verzorgen; klachten aan de voeten heeft of uw voeten eens wilt verwennen.', 'text', 'Tekst onder titel', '2019-06-05 22:44:11'),
(12, 'behandelingen', 3, 'Als er sprake is van klachten aan de voeten bijvoorbeeld door diabetes, reuma, bewegingsbeperking, of andere redenen dan wordt voorafgaand aan de behandeling een intake en voetonderzoek bij u afgenomen Zo wordt geïnventariseerd  wat verlichting van de klachten zou kunnen brengen. Een behandelplan wordt opgesteld, thuisadvies wordt meegegeven en vervolgafspraken worden gemaakt', 'text', 'Tekst in blok', '2019-06-05 22:47:08'),
(13, 'tips', 1, 'Voeten verdienen uw aandacht!', 'varchar(255)', 'Titel', '2019-06-06 07:10:52'),
(14, 'tips', 3, '', 'koppel_concept_tips', 'Tips', '2019-06-05 22:44:11'),
(15, 'prijslijst', 3, 'Voor specialistische behandelingen zoals het plaatsen van een\nnagelbeugel, repareren van een beschadigde nagel met \nGel of het toepassen van antidruktechnieken door \nmiddel van vilttoepassingen of maatwerkortheses, wordt \nvooraf een prijsopgaaf gegeven.', 'text', 'Tekst in blok', '2019-06-05 22:44:11'),
(16, 'prijslijst', 1, 'Prijslijst Pedicurepraktijk Sol', 'varchar(255)', 'Titel', '2019-06-06 07:10:45'),
(17, 'prijslijst', 2, 'Hier vindt u alle prijzen inclusief BTW van de verschillende behandelingen.', 'text', 'Tekst onder title', '2019-06-05 22:44:11'),
(18, 'prijslijst', 4, '', 'koppel_concept_prijzen', 'Prijzen', '2019-06-05 22:44:11'),
(19, 'prijslijst', 5, 'Zorgverzekering', 'varchar(255)', 'Title onderaan', '2019-06-05 22:44:11'),
(20, 'prijslijst', 5, 'Mensen met diabetes kunnen een verhoogd risico hebben op het ontstaan van voetproblemen. De praktijkondersteuner van uw huisartsenpraktijk is doorgaans degene die dit beoordeelt. Afhankelijk van uw risicoprofiel kunt u vanuit de basis en/of aanvullende zorgverzekering een deel van de kosten van de pedicurebehandeling vergoed krijgen. Ook voor enkele andere aandoeningen kunnen de kosten van de behandeling soms vergoed worden. Kijk voor een volledig overzicht op www.zorgwijzer.nl/vergoedingen/pedicure\n\nIndien verhinderd voor een gemaakte afspraak graag 24 uur voorafgaand afmelden, zonder afmelding wordt de behandeling voor 50% in rekening gebracht.\n\nBetaling geschiedt contant', 'text', 'Text onderaan', '2019-06-05 22:44:11'),
(21, 'contact', 1, 'Waar vindt u Pedicurepraktijk sol?', 'varchar(255)', 'Titel', '2019-06-05 22:44:11'),
(22, 'contact', 2, 'Alkmaar: praktijk aan huis', 'varchar(255)', 'Titel blok links', '2019-06-05 22:44:11'),
(23, 'contact', 3, 'Bergerweg 57, 1816 BN\n\nDe praktijkruimte bevindt zich op de 1e etage. Er is vrij parkeren aan de Bergerweg en in het Rembrandtkwartier achter de Bergerweg. ', 'text', 'Tekst blok links', '2019-06-05 22:44:11'),
(24, 'contact', 4, 'Castricum', 'varchar(255)', 'Titel blok rechts', '2019-06-05 22:44:11'),
(25, 'contact', 5, 'op dinsdag houdt Pedicurepraktijk Sol praktijk in sfeervolle salon van Cosmo Hairstyling aan het Bakkerspleintje 24 in Castricum. U kunt gedurende 2 uur gratis parkeren met een parkeerschijf in de nabije omgeving.', 'text', 'Tekst blok rechts', '2019-06-05 22:44:11'),
(26, 'contact', 6, '06 51 30 46 51', 'varchar(255)', 'Telefoonnummer', '2019-06-06 07:06:02'),
(27, 'contact', 7, 'pedicurepraktijksol@gmail.nl', 'varchar(255)', 'Email', '2019-06-05 22:44:11'),
(28, 'contact', 8, '74382713', 'varchar(255)', 'KVK', '2019-06-05 22:44:11'),
(29, 'contact', 9, 'NL55 ASNB 0781 2720 25', 'varchar(255)', 'Bank', '2019-06-05 22:44:11'),
(30, 'contact', 10, 'Voor een behandeling in Castricum kunt u ook bij de medewerkers van Cosmo Hairstyling een afspraak maken.', 'text', 'Quote tekst', '2019-06-05 22:44:11'),
(31, 'contact', 11, 'Joke Sol', 'varchar(255)', 'Quete naam', '2019-06-05 22:44:11'),
(32, 'behandelingen', 5, '', 'koppel_concept_technieken', 'Technieken', '2019-06-05 22:44:11');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `concept_behandelingen`
--

CREATE TABLE IF NOT EXISTS `concept_behandelingen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weergeven` int(1) NOT NULL,
  `deleted` int(1) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` text,
  `image` longtext,
  `pageOrder` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Gegevens worden uitgevoerd voor tabel `concept_behandelingen`
--

INSERT INTO `concept_behandelingen` (`id`, `weergeven`, `deleted`, `title`, `text`, `image`, `pageOrder`, `updated_at`) VALUES
(1, 1, 0, 'Behandeling met intake (90 minuten)', 'Intake en voetonderzoek, opstellen behandelplan; algehele voetverzorging: thuisadvies. Doel van het voetonderzoek is te inventariseren wat uw voetklachten zijn en waar deze uit voort kunnen komen/mee samenhangen; of er sprake is van een risicovoet; met welke behandeling uw klachten verlicht kunnen worden. Het resultaat is dat u een advies krijgt wat u zelf kunt doen aan uw voetverzorging en het verminderen van uw klachten en tevens een behandelvoorstel krijgt. Indien noodzakelijk zal u een verwijzing naar een medisch voetspecialist of de huisarts krijgen.', '1-behandeling.png', 1, '2019-06-05 22:44:11'),
(2, 1, 0, 'Algehele voetverzorging (45 minuten)', 'Iedere klant die op bezoek komt kan rekenen op een algehele voetverzorging. Of u nu uw voeten zomer klaar wilt maken of dat u klachten heeft bijvoorbeeld van pijnlijke drukplekken en likdoorns, kalknagels, ingroeiende nagels of kloven, iedereen wordt met de grootste aandacht behandeld. \n\nDe voeten worden gereinigd en gedesinfecteerd. De nagels worden, indien nodig, verdund en bijgeknipt en de nagelomgeving wordt gereinigd, nagelriemen worden bijgewerkt, zodat ze weer hun mooie verzorgde en gezonde uitstraling krijgen. Eelt wordt verwijderd en zo ook eventuele likdoorns en kloven. Is er sprake van beginnende ingroei van nagels dan wordt de nagelwal vrijgemaakt. Nadat de voeten en nagels zijn behandeld, krijgt u tot slot een heerlijke verzorgende crÃ¨me. De voeten worden kort gemasseerd zodat u weer op verzorgde en ontspannen voeten de praktijk kunt verlaten.', '21-behandeling.png', 3, '2019-06-05 22:44:11'),
(3, 1, 0, 'Pedicure plus', 'Deze behandeling geeft u naast een algehele voetverzorging ook ontspannende scrub en massage. (tot 60 min).', '23-behandeling.png', 4, '2019-06-05 22:44:11'),
(4, 1, 0, 'Nagels lakken', 'Het reinigen van de nagelomgeving en het aanbrengen van een kleurlak en een beschermende toplaag op uw teennagels na een algehele voetverzorging.', '24-behandeling.png', 5, '2019-06-05 22:44:11');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `concept_prijzen`
--

CREATE TABLE IF NOT EXISTS `concept_prijzen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weergeven` int(1) NOT NULL,
  `deleted` int(1) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `prijs` varchar(255) DEFAULT NULL,
  `pageOrder` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Gegevens worden uitgevoerd voor tabel `concept_prijzen`
--

INSERT INTO `concept_prijzen` (`id`, `weergeven`, `deleted`, `title`, `prijs`, `pageOrder`, `updated_at`) VALUES
(1, 1, 0, 'Algehele voetverzorging (45 min)', '35', 1, '2019-06-05 22:44:11'),
(2, 1, 0, '1e behandeling met intake/voetonderzoek', '55', 2, '2019-06-05 22:44:11'),
(3, 1, 0, 'algehele voetverzorging + scrub/massage', '45', 3, '2019-06-05 22:44:11'),
(4, 1, 0, 'algehele voetverzorging + nagels lakken', '45', 4, '2019-06-05 22:44:11'),
(5, 1, 0, 'Intake/voetonderzoek', '20', 5, '2019-06-05 22:44:11'),
(6, 1, 0, 'Nagels lakken (reinigen, kleurlak, topcoat)', '15', 6, '2019-06-05 22:44:11'),
(7, 1, 0, 'Cadeaubonnen vanaf', '20', 7, '2019-06-05 22:44:11'),
(8, 1, 0, 'Toeslag per 15 min', '10', 8, '2019-06-05 22:44:11'),
(9, 1, 0, 'Toeslag behandeling op locatie', '10', 9, '2019-06-05 22:44:11');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `concept_technieken`
--

CREATE TABLE IF NOT EXISTS `concept_technieken` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weergeven` int(1) NOT NULL,
  `deleted` int(1) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` text,
  `image` longtext,
  `pdf` longtext,
  `pageOrder` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Gegevens worden uitgevoerd voor tabel `concept_technieken`
--

INSERT INTO `concept_technieken` (`id`, `weergeven`, `deleted`, `title`, `text`, `image`, `pdf`, `pageOrder`, `updated_at`) VALUES
(1, 1, 0, 'Nagelbeugel plaatsen bij ingroeiende nagel.', 'Een nagelbeugel is een op maat gemaakt hulpmiddel om uw nagelgroei te reguleren. Ze begeleidt als het ware de groei van de nagel in de juiste richting. Er zijn verschillende typen nagelbeugels. Afhankelijk van uw nagels en uw situatie wordt voor de meest geschikte beugel gekozen.', '1-behandeling.png', '1-nagelbeugel klantenfolder', 1, '2019-06-05 22:44:11'),
(2, 1, 0, 'Nagelreparatie gel of acryl', 'Een nagelreparatie kan wenselijk zijn in verschillende situaties bijvoorbeeld als er een stuk van uw nagel afgebroken is; als er sprake van een gespleten of ernstig beschadigde nagel is. Met gel of acryl kan uw nagel weer opgebouwd worden waardoor uw nagelbed beschermd is en oogt als bij een gezonde nagel.', '2-behandeling.png', '2-Schimmelnagels en nagelreparatie', 2, '2019-06-05 22:44:11'),
(3, 1, 0, 'Ortheses', 'Een orthese is een op maat gemaakt hulpmiddel op basis van siliconen, waarmee complicaties die zich bijvoorbeeld voordoen door teenstandafwijkingen, verholpen kunnen worden. Zo kan een orthese een oplossing zijn voor een steeds terugkerende likdoorn tussen de tenen of op de top van hamertenen.', '3-behandeling.png', '', 3, '2019-06-05 22:44:11'),
(4, 1, 0, 'Antidruktechiek met vilt', 'Heeft u last van drukplekken die tijdelijk ontlast moeten worden dan kan een â€œviltpaddingâ€ een welkome oplossing bieden. Zo kan een gevoelige (druk)plek op de hiel of voorvoet door een wrat een likdoorn of een wond vrij gelegd worden. Een viltpadding kan een tijdelijke verlichting bieden in afwachting van een meer definitieve oplossing zoals een orthese of aangepast schoeisel.', '4-behandeling.png', '4-Viltpadding klantenfolder', 4, '2019-06-05 22:44:11');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `concept_tips`
--

CREATE TABLE IF NOT EXISTS `concept_tips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weergeven` int(1) NOT NULL,
  `deleted` int(1) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` text,
  `pageOrder` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Gegevens worden uitgevoerd voor tabel `concept_tips`
--

INSERT INTO `concept_tips` (`id`, `weergeven`, `deleted`, `title`, `text`, `pageOrder`, `updated_at`) VALUES
(1, 1, 0, 'VOETEN WASSEN', 'Was uw voeten dagelijks met lauw water en bij voorkeur zonder zeep. Blijf ook niet te lang met uw voeten in het water, een droge huid kan hiervan het gevolg zijn. Droog natte voeten goed af, vooral tussen de tenen en geef ze even de tijd ook volledig te drogen.\n\nSmeer uw voeten dagelijks na het wassen in met wat lotion of hydraterende crÃ¨me zodat de huid niet uitdroogt.', 1, '2019-06-05 22:44:12'),
(2, 1, 0, 'SCHOEISEL EN SOKKEN', 'Draag bij voorkeur katoenen of wollen sokken zonder dikke naden en verschoon ze dagelijks. Goed passende schoenen, die bovendien voldoende ventileren, zijn essentieel in uw dagelijks loopcomfort en in het voorkomen van pijnlijke voeten. Laat u voorlichten in een goede schoenenzaak over de voor u juiste maat en pasvorm. Koop uw schoenen bovendien aan het einde van de dag dan kunnen uw voeten namelijk al wat opgezet zijn.\nWissel zo mogelijk dagelijks van schoenen\nVoorkom ingegroeide teennagels\nDe grootste risicofactoren voor het ontstaan van ingroeiende teennagels zijn:\n\n• Druk door slecht passend schoeisel\n• Het verkeerd (te kort en/of niet recht) knippen van de nagels\n• Een weke nagelomgeving door veel baden, transpiratie of synthetische sokken\n\nTip: "Pedi- of Wandelwol" is een 100% natuurproduct dat u als antidrukmiddel zelf goed kunt gebruiken en toepassen. Geschikt voor wandelaars, sporters of mensen die snel last van pijnlijke drukplekken, blaren of koude voeten hebben. Vraag er eens naar als u in de praktijk bent.', 2, '2019-06-05 22:51:07'),
(3, 1, 0, 'SCHIMMELINFECTIES', 'Gebruik badslippers in publieke natte ruimten zoals zwembaden, sauna''s, kleedkamers van sportschool of -vereniging, gymzalen.\n\nKomt u regelmatig in publieke natte ruimten controleer uw voeten goed op mogelijke signalen van voetschimmel zoals kleine blaasjes en nagels die van kleur veranderen.', 3, '2019-06-05 22:51:25'),
(4, 1, 0, 'EELT EN KLOVEN', 'Eelt doet zich voor op plaatsen op de voet waar veel druk of wrijving plaats vindt. Voortdurende druk en eeltvorming kan leiden tot likdoornvorming.\n\nKloven kunnen ontstaan op eeltlocaties waar het eelt erg droog is en de huid minder elastisch is geworden.\n\nDoor zelf regelmatig met een voetvijl u voeten te behandelen en de voeten in te smeren met een verzorgende créme kunt u klachten door overmatig eelt of kloven voorkomen.', 4, '2019-06-05 22:51:50');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `live`
--

CREATE TABLE IF NOT EXISTS `live` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page` varchar(255) NOT NULL,
  `pageOrder` int(11) NOT NULL,
  `content` mediumtext NOT NULL,
  `inputType` varchar(255) NOT NULL,
  `htmlID` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `weergeven` int(1) NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=225 ;

--
-- Gegevens worden uitgevoerd voor tabel `live`
--

INSERT INTO `live` (`id`, `page`, `pageOrder`, `content`, `inputType`, `htmlID`, `updated_at`, `weergeven`, `version`) VALUES
(1, 'home', 2, 'Medisch pedicure en beoefen mijn vak met hart en ziel in Alkmaar West en 1 dag per week in Castricum. Of het nu om een ontspannende en cosmetisch verzorgende behandeling gaat of om een behandeling die gericht is op het verlichten van pijnlijke ongemakken aan de voeten. Vakkundig in het wegnemen van pijn door ingroeiende nagels, likdoorns of kloven. Nauwkeurig en zorgzaam in de behandeling van alle voeten die zorg vragen', 'text', 'Tekst onder title', '2019-06-05 22:44:11', 0, 1),
(2, 'home', 1, 'Voor iedereen die verzorgde voeten wilt', 'varchar(255)', 'Titel', '2019-06-05 22:44:11', 0, 1),
(3, 'behandelingen', 4, '', 'koppel_concept_behandelingen', 'Behandelingen', '2019-06-05 22:44:11', 0, 1),
(4, 'over-mij', 2, 'Mijn naam is Joke Sol, ik ben gediplomeerd medisch pedicure', 'text', 'Tekst onder titel', '2019-06-05 22:44:11', 0, 1),
(5, 'over-mij', 4, 'Na een carriere als loopbaanadviseur ontstond bij mijzelf de behoefte aan verandering.\n\n\nEen praktisch beroep waarbij ik mensen blij kon maken. Zo kwam het pedicurewerk voor mij in beeld: mensen helpen door de druk of pijn die ze aan hun voeten hebben voor een groot deel weg te nemen.\n\n\nTijdens mijn opleiding merkte ik hoe fijn het is om mensen weer op weg te helpen naar gezonde, verzorgde en minder pijnlijke voeten. De keuze om na de branche-opleiding pedicure door te leren voor Medisch Pedicure was dan ook vanzelfsprekend voor mij. Ik hoop nog heel lang mensen te kunnen helpen met goede voetzorg en nieuwe ontwikkelingen in het vakgebied te kunnen volgen en gebruiken voor mijn klanten.', 'text', 'Tekst van het blok', '2019-06-05 22:44:11', 0, 1),
(6, 'over-mij', 3, 'Loopbaanswitch', 'varchar(255)', 'Title van het blok', '2019-06-05 22:44:11', 0, 1),
(7, 'over-mij', 1, 'Uw voeten, in goede handen, daar maak ik graag werk van', 'varchar(255)', 'Titel', '2019-06-05 22:44:11', 0, 1),
(8, 'over-mij', 4, '10-behandeling.png', 'longtext', 'Image van het blok', '2019-06-05 22:44:11', 0, 1),
(9, 'tips', 2, 'Met wat dagelijkse aandacht en zorg kunt uw zelf invloed uitoefenen op de gezondheid van uw voeten zodat u klachten kunt voorkomen of verminderen.qwe \nweqe', 'text', 'Tekst onder title', '2019-06-05 22:44:11', 0, 1),
(10, 'behandelingen', 1, 'Uw stap op weg naar verzorgde voeten', 'varchar(255)', 'Title', '2019-06-05 22:44:11', 0, 1),
(11, 'behandelingen', 2, '"Algehele voetverzorging" is het uitgangspunt van de behandeling, of u uw voeten nu zomer klaar wilt maken; zelf moeite heeft uw voeten goed te verzorgen; klachten aan de voeten heeft of uw voeten eens wilt verwennen.', 'text', 'Tekst onder titel', '2019-06-05 22:44:11', 0, 1),
(12, 'behandelingen', 3, 'Als er sprake is van klachten aan de voeten bijvoorbeeld door diabetes, reuma, bewegingsbeperking, of andere redenen dan wordt voorafgaand aan de behandeling een intake en voetonderzoek bij u afgenomen Zo wordt geÃ¯nventariseerd  wat verlichting van de klachten zou kunnen brengen. Een behandelplan wordt opgesteld, thuisadvies wordt meegegeven en vervolgafspraken worden gemaakt', 'text', 'Tekst in blok', '2019-06-05 22:44:11', 0, 1),
(13, 'tips', 1, 'voeten verdienen uw aandacht!', 'varchar(255)', 'Titel', '2019-06-05 22:44:11', 0, 1),
(14, 'tips', 3, '', 'koppel_concept_tips', 'Tips', '2019-06-05 22:44:11', 0, 1),
(15, 'prijslijst', 3, 'Voor specialistische behandelingen zoals het plaatsen van een\nnagelbeugel, repareren van een beschadigde nagel met \nGel of het toepassen van antidruktechnieken door \nmiddel van vilttoepassingen of maatwerkortheses, wordt \nvooraf een prijsopgaaf gegeven.', 'text', 'Tekst in blok', '2019-06-05 22:44:11', 0, 1),
(16, 'prijslijst', 1, 'PRIJSLIJST PEDICUREPRAKTIJK SOL', 'varchar(255)', 'Titel', '2019-06-05 22:44:11', 0, 1),
(17, 'prijslijst', 2, 'Hier vindt u alle prijzen inclusief BTW van de verschillende behandelingen.', 'text', 'Tekst onder title', '2019-06-05 22:44:11', 0, 1),
(18, 'prijslijst', 4, '', 'koppel_concept_prijzen', 'Prijzen', '2019-06-05 22:44:11', 0, 1),
(19, 'prijslijst', 5, 'Zorgverzekering', 'varchar(255)', 'Title onderaan', '2019-06-05 22:44:11', 0, 1),
(20, 'prijslijst', 5, 'Mensen met diabetes kunnen een verhoogd risico hebben op het ontstaan van voetproblemen. De praktijkondersteuner van uw huisartsenpraktijk is doorgaans degene die dit beoordeelt. Afhankelijk van uw risicoprofiel kunt u vanuit de basis en/of aanvullende zorgverzekering een deel van de kosten van de pedicurebehandeling vergoed krijgen. Ook voor enkele andere aandoeningen kunnen de kosten van de behandeling soms vergoed worden. Kijk voor een volledig overzicht op www.zorgwijzer.nl/vergoedingen/pedicure\n\nIndien verhinderd voor een gemaakte afspraak graag 24 uur voorafgaand afmelden, zonder afmelding wordt de behandeling voor 50% in rekening gebracht.\n\nBetaling geschiedt contant', 'text', 'Text onderaan', '2019-06-05 22:44:11', 0, 1),
(21, 'contact', 1, 'Waar vindt u Pedicurepraktijk sol?', 'varchar(255)', 'Titel', '2019-06-05 22:44:11', 0, 1),
(22, 'contact', 2, 'Alkmaar: praktijk aan huis', 'varchar(255)', 'Titel blok links', '2019-06-05 22:44:11', 0, 1),
(23, 'contact', 3, 'Bergerweg 57, 1816 BN\n\nDe praktijkruimte bevindt zich op de 1e etage. Er is vrij parkeren aan de Bergerweg en in het Rembrandtkwartier achter de Bergerweg. ', 'text', 'Tekst blok links', '2019-06-05 22:44:11', 0, 1),
(24, 'contact', 4, 'Castricum', 'varchar(255)', 'Titel blok rechts', '2019-06-05 22:44:11', 0, 1),
(25, 'contact', 5, 'op dinsdag houdt Pedicurepraktijk Sol praktijk in sfeervolle salon van Cosmo Hairstyling aan het Bakkerspleintje 24 in Castricum. U kunt gedurende 2 uur gratis parkeren met een parkeerschijf in de nabije omgeving.', 'text', 'Tekst blok rechts', '2019-06-05 22:44:11', 0, 1),
(26, 'contact', 6, '13', 'varchar(255)', 'Telefoonnummer', '2019-06-05 22:44:11', 0, 1),
(27, 'contact', 7, 'pedicurepraktijksol@gmail.nl', 'varchar(255)', 'Email', '2019-06-05 22:44:11', 0, 1),
(28, 'contact', 8, '74382713', 'varchar(255)', 'KVK', '2019-06-05 22:44:11', 0, 1),
(29, 'contact', 9, 'NL55 ASNB 0781 2720 25', 'varchar(255)', 'Bank', '2019-06-05 22:44:11', 0, 1),
(30, 'contact', 10, 'Voor een behandeling in Castricum kunt u ook bij de medewerkers van Cosmo Hairstyling een afspraak maken.', 'text', 'Quote tekst', '2019-06-05 22:44:11', 0, 1),
(31, 'contact', 11, 'Joke Sol', 'varchar(255)', 'Quete naam', '2019-06-05 22:44:11', 0, 1),
(32, 'behandelingen', 5, '', 'koppel_concept_technieken', 'Technieken', '2019-06-05 22:44:11', 0, 1),
(65, 'home', 2, 'qweqwe', 'text', 'Tekst onder title', '2019-06-05 22:41:26', 0, 2),
(66, 'home', 1, 'Voor iedereen die verzorgde voeten wilt', 'varchar(255)', 'Titel', '2019-06-05 22:41:26', 0, 2),
(67, 'behandelingen', 4, '', 'koppel_concept_behandelingen', 'Behandelingen', '2019-06-05 22:41:26', 0, 2),
(68, 'over-mij', 2, 'Mijn naam is Joke Sol, ik ben gediplomeerd medisch pedicure', 'text', 'Tekst onder titel', '2019-06-05 22:41:26', 0, 2),
(69, 'over-mij', 4, 'Na een carriere als loopbaanadviseur ontstond bij mijzelf de behoefte aan verandering.\n\n\nEen praktisch beroep waarbij ik mensen blij kon maken. Zo kwam het pedicurewerk voor mij in beeld: mensen helpen door de druk of pijn die ze aan hun voeten hebben voor een groot deel weg te nemen.\n\n\nTijdens mijn opleiding merkte ik hoe fijn het is om mensen weer op weg te helpen naar gezonde, verzorgde en minder pijnlijke voeten. De keuze om na de branche-opleiding pedicure door te leren voor Medisch Pedicure was dan ook vanzelfsprekend voor mij. Ik hoop nog heel lang mensen te kunnen helpen met goede voetzorg en nieuwe ontwikkelingen in het vakgebied te kunnen volgen en gebruiken voor mijn klanten.', 'text', 'Tekst van het blok', '2019-06-05 22:41:26', 0, 2),
(70, 'over-mij', 3, 'Loopbaanswitch', 'varchar(255)', 'Title van het blok', '2019-06-05 22:41:26', 0, 2),
(71, 'over-mij', 1, 'Uw voeten, in goede handen, daar maak ik graag werk van', 'varchar(255)', 'Titel', '2019-06-05 22:41:26', 0, 2),
(72, 'over-mij', 4, '10-behandeling.png', 'longtext', 'Image van het blok', '2019-06-05 22:41:26', 0, 2),
(73, 'tips', 2, 'Met wat dagelijkse aandacht en zorg kunt uw zelf invloed uitoefenen op de gezondheid van uw voeten zodat u klachten kunt voorkomen of verminderen.qwe \nweqe', 'text', 'Tekst onder title', '2019-06-05 22:41:26', 0, 2),
(74, 'behandelingen', 1, 'Uw stap op weg naar verzorgde voeten', 'varchar(255)', 'Title', '2019-06-05 22:41:26', 0, 2),
(75, 'behandelingen', 2, '"Algehele voetverzorging" is het uitgangspunt van de behandeling, of u uw voeten nu zomer klaar wilt maken; zelf moeite heeft uw voeten goed te verzorgen; klachten aan de voeten heeft of uw voeten eens wilt verwennen.', 'text', 'Tekst onder titel', '2019-06-05 22:41:26', 0, 2),
(76, 'behandelingen', 3, 'Als er sprake is van klachten aan de voeten bijvoorbeeld door diabetes, reuma, bewegingsbeperking, of andere redenen dan wordt voorafgaand aan de behandeling een intake en voetonderzoek bij u afgenomen Zo wordt genventariseerd  wat verlichting van de klachten zou kunnen brengen. Een behandelplan wordt opgesteld, thuisadvies wordt meegegeven en vervolgafspraken worden gemaakt', 'text', 'Tekst in blok', '2019-06-05 22:41:26', 0, 2),
(77, 'tips', 1, 'voeten verdienen uw aandacht!', 'varchar(255)', 'Titel', '2019-06-05 22:41:26', 0, 2),
(78, 'tips', 3, '', 'koppel_concept_tips', 'Tips', '2019-06-05 22:41:26', 0, 2),
(79, 'prijslijst', 3, 'Voor specialistische behandelingen zoals het plaatsen van een\nnagelbeugel, repareren van een beschadigde nagel met \nGel of het toepassen van antidruktechnieken door \nmiddel van vilttoepassingen of maatwerkortheses, wordt \nvooraf een prijsopgaaf gegeven.', 'text', 'Tekst in blok', '2019-06-05 22:41:26', 0, 2),
(80, 'prijslijst', 1, 'PRIJSLIJST PEDICUREPRAKTIJK SOL', 'varchar(255)', 'Titel', '2019-06-05 22:41:26', 0, 2),
(81, 'prijslijst', 2, 'Hier vindt u alle prijzen inclusief BTW van de verschillende behandelingen.', 'text', 'Tekst onder title', '2019-06-05 22:41:26', 0, 2),
(82, 'prijslijst', 4, '', 'koppel_concept_prijzen', 'Prijzen', '2019-06-05 22:41:26', 0, 2),
(83, 'prijslijst', 5, 'Zorgverzekering', 'varchar(255)', 'Title onderaan', '2019-06-05 22:41:26', 0, 2),
(84, 'prijslijst', 5, 'Mensen met diabetes kunnen een verhoogd risico hebben op het ontstaan van voetproblemen. De praktijkondersteuner van uw huisartsenpraktijk is doorgaans degene die dit beoordeelt. Afhankelijk van uw risicoprofiel kunt u vanuit de basis en/of aanvullende zorgverzekering een deel van de kosten van de pedicurebehandeling vergoed krijgen. Ook voor enkele andere aandoeningen kunnen de kosten van de behandeling soms vergoed worden. Kijk voor een volledig overzicht op www.zorgwijzer.nl/vergoedingen/pedicure\n\nIndien verhinderd voor een gemaakte afspraak graag 24 uur voorafgaand afmelden, zonder afmelding wordt de behandeling voor 50% in rekening gebracht.\n\nBetaling geschiedt contant', 'text', 'Text onderaan', '2019-06-05 22:41:26', 0, 2),
(85, 'contact', 1, 'Waar vindt u Pedicurepraktijk sol?', 'varchar(255)', 'Titel', '2019-06-05 22:41:26', 0, 2),
(86, 'contact', 2, 'Alkmaar: praktijk aan huis', 'varchar(255)', 'Titel blok links', '2019-06-05 22:41:26', 0, 2),
(87, 'contact', 3, 'Bergerweg 57, 1816 BN\n\nDe praktijkruimte bevindt zich op de 1e etage. Er is vrij parkeren aan de Bergerweg en in het Rembrandtkwartier achter de Bergerweg. ', 'text', 'Tekst blok links', '2019-06-05 22:41:26', 0, 2),
(88, 'contact', 4, 'Castricum', 'varchar(255)', 'Titel blok rechts', '2019-06-05 22:41:26', 0, 2),
(89, 'contact', 5, 'op dinsdag houdt Pedicurepraktijk Sol praktijk in sfeervolle salon van Cosmo Hairstyling aan het Bakkerspleintje 24 in Castricum. U kunt gedurende 2 uur gratis parkeren met een parkeerschijf in de nabije omgeving.', 'text', 'Tekst blok rechts', '2019-06-05 22:41:26', 0, 2),
(90, 'contact', 6, '13', 'varchar(255)', 'Telefoonnummer', '2019-06-05 22:41:26', 0, 2),
(91, 'contact', 7, 'pedicurepraktijksol@gmail.nl', 'varchar(255)', 'Email', '2019-06-05 22:41:26', 0, 2),
(92, 'contact', 8, '74382713', 'varchar(255)', 'KVK', '2019-06-05 22:41:26', 0, 2),
(93, 'contact', 9, 'NL55 ASNB 0781 2720 25', 'varchar(255)', 'Bank', '2019-06-05 22:41:26', 0, 2),
(94, 'contact', 10, 'Voor een behandeling in Castricum kunt u ook bij de medewerkers van Cosmo Hairstyling een afspraak maken.', 'text', 'Quote tekst', '2019-06-05 22:41:26', 0, 2),
(95, 'contact', 11, 'Joke Sol', 'varchar(255)', 'Quete naam', '2019-06-05 22:41:26', 0, 2),
(96, 'behandelingen', 5, '', 'koppel_concept_technieken', 'Technieken', '2019-06-05 22:41:26', 0, 2),
(97, 'home', 2, 'qweqwe', 'text', 'Tekst onder title', '2019-06-05 22:44:11', 0, 3),
(98, 'home', 1, 'Voor iedereen die verzorgde voeten wilt', 'varchar(255)', 'Titel', '2019-06-05 22:44:11', 0, 3),
(99, 'behandelingen', 4, '', 'koppel_concept_behandelingen', 'Behandelingen', '2019-06-05 22:44:11', 0, 3),
(100, 'over-mij', 2, 'Mijn naam is Joke Sol, ik ben gediplomeerd medisch pedicure', 'text', 'Tekst onder titel', '2019-06-05 22:44:11', 0, 3),
(101, 'over-mij', 4, 'Na een carriere als loopbaanadviseur ontstond bij mijzelf de behoefte aan verandering.\n\n\nEen praktisch beroep waarbij ik mensen blij kon maken. Zo kwam het pedicurewerk voor mij in beeld: mensen helpen door de druk of pijn die ze aan hun voeten hebben voor een groot deel weg te nemen.\n\n\nTijdens mijn opleiding merkte ik hoe fijn het is om mensen weer op weg te helpen naar gezonde, verzorgde en minder pijnlijke voeten. De keuze om na de branche-opleiding pedicure door te leren voor Medisch Pedicure was dan ook vanzelfsprekend voor mij. Ik hoop nog heel lang mensen te kunnen helpen met goede voetzorg en nieuwe ontwikkelingen in het vakgebied te kunnen volgen en gebruiken voor mijn klanten.', 'text', 'Tekst van het blok', '2019-06-05 22:44:11', 0, 3),
(102, 'over-mij', 3, 'Loopbaanswitch', 'varchar(255)', 'Title van het blok', '2019-06-05 22:44:11', 0, 3),
(103, 'over-mij', 1, 'Uw voeten, in goede handen, daar maak ik graag werk van', 'varchar(255)', 'Titel', '2019-06-05 22:44:11', 0, 3),
(104, 'over-mij', 4, '10-behandeling.png', 'longtext', 'Image van het blok', '2019-06-05 22:44:11', 0, 3),
(105, 'tips', 2, 'Met wat dagelijkse aandacht en zorg kunt uw zelf invloed uitoefenen op de gezondheid van uw voeten zodat u klachten kunt voorkomen of verminderen.qwe \nweqe', 'text', 'Tekst onder title', '2019-06-05 22:44:11', 0, 3),
(106, 'behandelingen', 1, 'Uw stap op weg naar verzorgde voeten', 'varchar(255)', 'Title', '2019-06-05 22:44:11', 0, 3),
(107, 'behandelingen', 2, '"Algehele voetverzorging" is het uitgangspunt van de behandeling, of u uw voeten nu zomer klaar wilt maken; zelf moeite heeft uw voeten goed te verzorgen; klachten aan de voeten heeft of uw voeten eens wilt verwennen.', 'text', 'Tekst onder titel', '2019-06-05 22:44:11', 0, 3),
(108, 'behandelingen', 3, 'Als er sprake is van klachten aan de voeten bijvoorbeeld door diabetes, reuma, bewegingsbeperking, of andere redenen dan wordt voorafgaand aan de behandeling een intake en voetonderzoek bij u afgenomen Zo wordt genventariseerd  wat verlichting van de klachten zou kunnen brengen. Een behandelplan wordt opgesteld, thuisadvies wordt meegegeven en vervolgafspraken worden gemaakt', 'text', 'Tekst in blok', '2019-06-05 22:44:11', 0, 3),
(109, 'tips', 1, 'voeten verdienen uw aandacht!', 'varchar(255)', 'Titel', '2019-06-05 22:44:11', 0, 3),
(110, 'tips', 3, '', 'koppel_concept_tips', 'Tips', '2019-06-05 22:44:11', 0, 3),
(111, 'prijslijst', 3, 'Voor specialistische behandelingen zoals het plaatsen van een\nnagelbeugel, repareren van een beschadigde nagel met \nGel of het toepassen van antidruktechnieken door \nmiddel van vilttoepassingen of maatwerkortheses, wordt \nvooraf een prijsopgaaf gegeven.', 'text', 'Tekst in blok', '2019-06-05 22:44:11', 0, 3),
(112, 'prijslijst', 1, 'PRIJSLIJST PEDICUREPRAKTIJK SOL', 'varchar(255)', 'Titel', '2019-06-05 22:44:11', 0, 3),
(113, 'prijslijst', 2, 'Hier vindt u alle prijzen inclusief BTW van de verschillende behandelingen.', 'text', 'Tekst onder title', '2019-06-05 22:44:11', 0, 3),
(114, 'prijslijst', 4, '', 'koppel_concept_prijzen', 'Prijzen', '2019-06-05 22:44:11', 0, 3),
(115, 'prijslijst', 5, 'Zorgverzekering', 'varchar(255)', 'Title onderaan', '2019-06-05 22:44:11', 0, 3),
(116, 'prijslijst', 5, 'Mensen met diabetes kunnen een verhoogd risico hebben op het ontstaan van voetproblemen. De praktijkondersteuner van uw huisartsenpraktijk is doorgaans degene die dit beoordeelt. Afhankelijk van uw risicoprofiel kunt u vanuit de basis en/of aanvullende zorgverzekering een deel van de kosten van de pedicurebehandeling vergoed krijgen. Ook voor enkele andere aandoeningen kunnen de kosten van de behandeling soms vergoed worden. Kijk voor een volledig overzicht op www.zorgwijzer.nl/vergoedingen/pedicure\n\nIndien verhinderd voor een gemaakte afspraak graag 24 uur voorafgaand afmelden, zonder afmelding wordt de behandeling voor 50% in rekening gebracht.\n\nBetaling geschiedt contant', 'text', 'Text onderaan', '2019-06-05 22:44:11', 0, 3),
(117, 'contact', 1, 'Waar vindt u Pedicurepraktijk sol?', 'varchar(255)', 'Titel', '2019-06-05 22:44:11', 0, 3),
(118, 'contact', 2, 'Alkmaar: praktijk aan huis', 'varchar(255)', 'Titel blok links', '2019-06-05 22:44:11', 0, 3),
(119, 'contact', 3, 'Bergerweg 57, 1816 BN\n\nDe praktijkruimte bevindt zich op de 1e etage. Er is vrij parkeren aan de Bergerweg en in het Rembrandtkwartier achter de Bergerweg. ', 'text', 'Tekst blok links', '2019-06-05 22:44:11', 0, 3),
(120, 'contact', 4, 'Castricum', 'varchar(255)', 'Titel blok rechts', '2019-06-05 22:44:11', 0, 3),
(121, 'contact', 5, 'op dinsdag houdt Pedicurepraktijk Sol praktijk in sfeervolle salon van Cosmo Hairstyling aan het Bakkerspleintje 24 in Castricum. U kunt gedurende 2 uur gratis parkeren met een parkeerschijf in de nabije omgeving.', 'text', 'Tekst blok rechts', '2019-06-05 22:44:11', 0, 3),
(122, 'contact', 6, '13', 'varchar(255)', 'Telefoonnummer', '2019-06-05 22:44:11', 0, 3),
(123, 'contact', 7, 'pedicurepraktijksol@gmail.nl', 'varchar(255)', 'Email', '2019-06-05 22:44:11', 0, 3),
(124, 'contact', 8, '74382713', 'varchar(255)', 'KVK', '2019-06-05 22:44:11', 0, 3),
(125, 'contact', 9, 'NL55 ASNB 0781 2720 25', 'varchar(255)', 'Bank', '2019-06-05 22:44:11', 0, 3),
(126, 'contact', 10, 'Voor een behandeling in Castricum kunt u ook bij de medewerkers van Cosmo Hairstyling een afspraak maken.', 'text', 'Quote tekst', '2019-06-05 22:44:11', 0, 3),
(127, 'contact', 11, 'Joke Sol', 'varchar(255)', 'Quete naam', '2019-06-05 22:44:11', 0, 3),
(128, 'behandelingen', 5, '', 'koppel_concept_technieken', 'Technieken', '2019-06-05 22:44:11', 0, 3),
(129, 'home', 2, 'Medisch pedicure en beoefen mijn vak met hart en ziel in Alkmaar West en 1 dag per week in Castricum. Of het nu om een ontspannende en cosmetisch verzorgende behandeling gaat of om een behandeling die gericht is op het verlichten van pijnlijke ongemakken aan de voeten. Vakkundig in het wegnemen van pijn door ingroeiende nagels, likdoorns of kloven. Nauwkeurig en zorgzaam in de behandeling van alle voeten die zorg vragen', 'text', 'Tekst onder title', '2019-06-05 22:47:27', 0, 4),
(130, 'home', 1, 'Voor iedereen die verzorgde voeten wilt', 'varchar(255)', 'Titel', '2019-06-05 22:47:27', 0, 4),
(131, 'behandelingen', 4, '', 'koppel_concept_behandelingen', 'Behandelingen', '2019-06-05 22:47:27', 0, 4),
(132, 'over-mij', 2, 'Mijn naam is Joke Sol, ik ben gediplomeerd medisch pedicure', 'text', 'Tekst onder titel', '2019-06-05 22:47:27', 0, 4),
(133, 'over-mij', 4, 'Na een carriere als loopbaanadviseur ontstond bij mijzelf de behoefte aan verandering.\n\n\nEen praktisch beroep waarbij ik mensen blij kon maken. Zo kwam het pedicurewerk voor mij in beeld: mensen helpen door de druk of pijn die ze aan hun voeten hebben voor een groot deel weg te nemen.\n\n\nTijdens mijn opleiding merkte ik hoe fijn het is om mensen weer op weg te helpen naar gezonde, verzorgde en minder pijnlijke voeten. De keuze om na de branche-opleiding pedicure door te leren voor Medisch Pedicure was dan ook vanzelfsprekend voor mij. Ik hoop nog heel lang mensen te kunnen helpen met goede voetzorg en nieuwe ontwikkelingen in het vakgebied te kunnen volgen en gebruiken voor mijn klanten.', 'text', 'Tekst van het blok', '2019-06-05 22:47:27', 0, 4),
(134, 'over-mij', 3, 'Loopbaanswitch', 'varchar(255)', 'Title van het blok', '2019-06-05 22:47:27', 0, 4),
(135, 'over-mij', 1, 'Uw voeten, in goede handen, daar maak ik graag werk van', 'varchar(255)', 'Titel', '2019-06-05 22:47:27', 0, 4),
(136, 'over-mij', 4, '10-behandeling.png', 'longtext', 'Image van het blok', '2019-06-05 22:47:27', 0, 4),
(137, 'tips', 2, 'Met wat dagelijkse aandacht en zorg kunt uw zelf invloed uitoefenen op de gezondheid van uw voeten zodat u klachten kunt voorkomen of verminderen.qwe \nweqe', 'text', 'Tekst onder title', '2019-06-05 22:47:27', 0, 4),
(138, 'behandelingen', 1, 'Uw stap op weg naar verzorgde voeten', 'varchar(255)', 'Title', '2019-06-05 22:47:27', 0, 4),
(139, 'behandelingen', 2, '"Algehele voetverzorging" is het uitgangspunt van de behandeling, of u uw voeten nu zomer klaar wilt maken; zelf moeite heeft uw voeten goed te verzorgen; klachten aan de voeten heeft of uw voeten eens wilt verwennen.', 'text', 'Tekst onder titel', '2019-06-05 22:47:27', 0, 4),
(140, 'behandelingen', 3, 'Als er sprake is van klachten aan de voeten bijvoorbeeld door diabetes, reuma, bewegingsbeperking, of andere redenen dan wordt voorafgaand aan de behandeling een intake en voetonderzoek bij u afgenomen Zo wordt geïnventariseerd  wat verlichting van de klachten zou kunnen brengen. Een behandelplan wordt opgesteld, thuisadvies wordt meegegeven en vervolgafspraken worden gemaakt', 'text', 'Tekst in blok', '2019-06-05 22:47:27', 0, 4),
(141, 'tips', 1, 'voeten verdienen uw aandacht!', 'varchar(255)', 'Titel', '2019-06-05 22:47:27', 0, 4),
(142, 'tips', 3, '', 'koppel_concept_tips', 'Tips', '2019-06-05 22:47:27', 0, 4),
(143, 'prijslijst', 3, 'Voor specialistische behandelingen zoals het plaatsen van een\nnagelbeugel, repareren van een beschadigde nagel met \nGel of het toepassen van antidruktechnieken door \nmiddel van vilttoepassingen of maatwerkortheses, wordt \nvooraf een prijsopgaaf gegeven.', 'text', 'Tekst in blok', '2019-06-05 22:47:27', 0, 4),
(144, 'prijslijst', 1, 'PRIJSLIJST PEDICUREPRAKTIJK SOL', 'varchar(255)', 'Titel', '2019-06-05 22:47:27', 0, 4),
(145, 'prijslijst', 2, 'Hier vindt u alle prijzen inclusief BTW van de verschillende behandelingen.', 'text', 'Tekst onder title', '2019-06-05 22:47:27', 0, 4),
(146, 'prijslijst', 4, '', 'koppel_concept_prijzen', 'Prijzen', '2019-06-05 22:47:27', 0, 4),
(147, 'prijslijst', 5, 'Zorgverzekering', 'varchar(255)', 'Title onderaan', '2019-06-05 22:47:27', 0, 4),
(148, 'prijslijst', 5, 'Mensen met diabetes kunnen een verhoogd risico hebben op het ontstaan van voetproblemen. De praktijkondersteuner van uw huisartsenpraktijk is doorgaans degene die dit beoordeelt. Afhankelijk van uw risicoprofiel kunt u vanuit de basis en/of aanvullende zorgverzekering een deel van de kosten van de pedicurebehandeling vergoed krijgen. Ook voor enkele andere aandoeningen kunnen de kosten van de behandeling soms vergoed worden. Kijk voor een volledig overzicht op www.zorgwijzer.nl/vergoedingen/pedicure\n\nIndien verhinderd voor een gemaakte afspraak graag 24 uur voorafgaand afmelden, zonder afmelding wordt de behandeling voor 50% in rekening gebracht.\n\nBetaling geschiedt contant', 'text', 'Text onderaan', '2019-06-05 22:47:27', 0, 4),
(149, 'contact', 1, 'Waar vindt u Pedicurepraktijk sol?', 'varchar(255)', 'Titel', '2019-06-05 22:47:27', 0, 4),
(150, 'contact', 2, 'Alkmaar: praktijk aan huis', 'varchar(255)', 'Titel blok links', '2019-06-05 22:47:27', 0, 4),
(151, 'contact', 3, 'Bergerweg 57, 1816 BN\n\nDe praktijkruimte bevindt zich op de 1e etage. Er is vrij parkeren aan de Bergerweg en in het Rembrandtkwartier achter de Bergerweg. ', 'text', 'Tekst blok links', '2019-06-05 22:47:27', 0, 4),
(152, 'contact', 4, 'Castricum', 'varchar(255)', 'Titel blok rechts', '2019-06-05 22:47:27', 0, 4),
(153, 'contact', 5, 'op dinsdag houdt Pedicurepraktijk Sol praktijk in sfeervolle salon van Cosmo Hairstyling aan het Bakkerspleintje 24 in Castricum. U kunt gedurende 2 uur gratis parkeren met een parkeerschijf in de nabije omgeving.', 'text', 'Tekst blok rechts', '2019-06-05 22:47:27', 0, 4),
(154, 'contact', 6, '13', 'varchar(255)', 'Telefoonnummer', '2019-06-05 22:47:27', 0, 4),
(155, 'contact', 7, 'pedicurepraktijksol@gmail.nl', 'varchar(255)', 'Email', '2019-06-05 22:47:27', 0, 4),
(156, 'contact', 8, '74382713', 'varchar(255)', 'KVK', '2019-06-05 22:47:27', 0, 4),
(157, 'contact', 9, 'NL55 ASNB 0781 2720 25', 'varchar(255)', 'Bank', '2019-06-05 22:47:27', 0, 4),
(158, 'contact', 10, 'Voor een behandeling in Castricum kunt u ook bij de medewerkers van Cosmo Hairstyling een afspraak maken.', 'text', 'Quote tekst', '2019-06-05 22:47:27', 0, 4),
(159, 'contact', 11, 'Joke Sol', 'varchar(255)', 'Quete naam', '2019-06-05 22:47:27', 0, 4),
(160, 'behandelingen', 5, '', 'koppel_concept_technieken', 'Technieken', '2019-06-05 22:47:27', 0, 4),
(161, 'home', 2, 'Als medisch pedicure en beoefen mijn vak met hart en ziel. Of het nu om een ontspannende en cosmetisch verzorgende behandeling gaat of om een behandeling die gericht is op het verlichten van pijnlijke ongemakken aan de voeten. Vakkundig in het wegnemen van pijn door ingroeiende nagels, likdoorns of kloven. Nauwkeurig en zorgzaam in de behandeling van alle voeten die zorg vragen', 'text', 'Tekst onder title', '2019-06-06 07:12:33', 0, 5),
(162, 'home', 1, 'Voor iedereen die verzorgde voeten wilt', 'varchar(255)', 'Titel', '2019-06-06 07:12:33', 0, 5),
(163, 'behandelingen', 4, '', 'koppel_concept_behandelingen', 'Behandelingen', '2019-06-06 07:12:33', 0, 5),
(164, 'over-mij', 2, 'Mijn naam is Joke Sol, ik ben gediplomeerd medisch pedicure', 'text', 'Tekst onder titel', '2019-06-06 07:12:33', 0, 5),
(165, 'over-mij', 4, 'Na een carriere als loopbaanadviseur ontstond bij mijzelf de behoefte aan verandering.\n\n\nEen praktisch beroep waarbij ik mensen blij kon maken. Zo kwam het pedicurewerk voor mij in beeld: mensen helpen door de druk of pijn die ze aan hun voeten hebben voor een groot deel weg te nemen.\n\n\nTijdens mijn opleiding merkte ik hoe fijn het is om mensen weer op weg te helpen naar gezonde, verzorgde en minder pijnlijke voeten. De keuze om na de branche-opleiding pedicure door te leren voor Medisch Pedicure was dan ook vanzelfsprekend voor mij. Ik hoop nog heel lang mensen te kunnen helpen met goede voetzorg en nieuwe ontwikkelingen in het vakgebied te kunnen volgen en gebruiken voor mijn klanten.', 'text', 'Tekst van het blok', '2019-06-06 07:12:33', 0, 5),
(166, 'over-mij', 3, 'Loopbaanswitch', 'varchar(255)', 'Title van het blok', '2019-06-06 07:12:33', 0, 5),
(167, 'over-mij', 1, 'Uw voeten, in goede handen, daar maak ik graag werk van', 'varchar(255)', 'Titel', '2019-06-06 07:12:33', 0, 5),
(168, 'over-mij', 4, '10-behandeling.png', 'longtext', 'Image van het blok', '2019-06-06 07:12:33', 0, 5),
(169, 'tips', 2, 'Met wat dagelijkse aandacht en zorg kunt uw zelf invloed uitoefenen op de gezondheid van uw voeten zodat u klachten kunt voorkomen of verminderen.qwe \nweqe', 'text', 'Tekst onder title', '2019-06-06 07:12:33', 0, 5),
(170, 'behandelingen', 1, 'Uw stap op weg naar verzorgde voeten', 'varchar(255)', 'Title', '2019-06-06 07:12:33', 0, 5),
(171, 'behandelingen', 2, '"Algehele voetverzorging" is het uitgangspunt van de behandeling, of u uw voeten nu zomer klaar wilt maken; zelf moeite heeft uw voeten goed te verzorgen; klachten aan de voeten heeft of uw voeten eens wilt verwennen.', 'text', 'Tekst onder titel', '2019-06-06 07:12:33', 0, 5),
(172, 'behandelingen', 3, 'Als er sprake is van klachten aan de voeten bijvoorbeeld door diabetes, reuma, bewegingsbeperking, of andere redenen dan wordt voorafgaand aan de behandeling een intake en voetonderzoek bij u afgenomen Zo wordt geïnventariseerd  wat verlichting van de klachten zou kunnen brengen. Een behandelplan wordt opgesteld, thuisadvies wordt meegegeven en vervolgafspraken worden gemaakt', 'text', 'Tekst in blok', '2019-06-06 07:12:33', 0, 5),
(173, 'tips', 1, 'Voeten verdienen uw aandacht!', 'varchar(255)', 'Titel', '2019-06-06 07:12:33', 0, 5),
(174, 'tips', 3, '', 'koppel_concept_tips', 'Tips', '2019-06-06 07:12:33', 0, 5),
(175, 'prijslijst', 3, 'Voor specialistische behandelingen zoals het plaatsen van een\nnagelbeugel, repareren van een beschadigde nagel met \nGel of het toepassen van antidruktechnieken door \nmiddel van vilttoepassingen of maatwerkortheses, wordt \nvooraf een prijsopgaaf gegeven.', 'text', 'Tekst in blok', '2019-06-06 07:12:33', 0, 5),
(176, 'prijslijst', 1, 'Prijslijst Pedicurepraktijk Sol', 'varchar(255)', 'Titel', '2019-06-06 07:12:33', 0, 5),
(177, 'prijslijst', 2, 'Hier vindt u alle prijzen inclusief BTW van de verschillende behandelingen.', 'text', 'Tekst onder title', '2019-06-06 07:12:33', 0, 5),
(178, 'prijslijst', 4, '', 'koppel_concept_prijzen', 'Prijzen', '2019-06-06 07:12:33', 0, 5),
(179, 'prijslijst', 5, 'Zorgverzekering', 'varchar(255)', 'Title onderaan', '2019-06-06 07:12:33', 0, 5),
(180, 'prijslijst', 5, 'Mensen met diabetes kunnen een verhoogd risico hebben op het ontstaan van voetproblemen. De praktijkondersteuner van uw huisartsenpraktijk is doorgaans degene die dit beoordeelt. Afhankelijk van uw risicoprofiel kunt u vanuit de basis en/of aanvullende zorgverzekering een deel van de kosten van de pedicurebehandeling vergoed krijgen. Ook voor enkele andere aandoeningen kunnen de kosten van de behandeling soms vergoed worden. Kijk voor een volledig overzicht op www.zorgwijzer.nl/vergoedingen/pedicure\n\nIndien verhinderd voor een gemaakte afspraak graag 24 uur voorafgaand afmelden, zonder afmelding wordt de behandeling voor 50% in rekening gebracht.\n\nBetaling geschiedt contant', 'text', 'Text onderaan', '2019-06-06 07:12:33', 0, 5),
(181, 'contact', 1, 'Waar vindt u Pedicurepraktijk sol?', 'varchar(255)', 'Titel', '2019-06-06 07:12:33', 0, 5),
(182, 'contact', 2, 'Alkmaar: praktijk aan huis', 'varchar(255)', 'Titel blok links', '2019-06-06 07:12:33', 0, 5),
(183, 'contact', 3, 'Bergerweg 57, 1816 BN\n\nDe praktijkruimte bevindt zich op de 1e etage. Er is vrij parkeren aan de Bergerweg en in het Rembrandtkwartier achter de Bergerweg. ', 'text', 'Tekst blok links', '2019-06-06 07:12:33', 0, 5),
(184, 'contact', 4, 'Castricum', 'varchar(255)', 'Titel blok rechts', '2019-06-06 07:12:33', 0, 5),
(185, 'contact', 5, 'op dinsdag houdt Pedicurepraktijk Sol praktijk in sfeervolle salon van Cosmo Hairstyling aan het Bakkerspleintje 24 in Castricum. U kunt gedurende 2 uur gratis parkeren met een parkeerschijf in de nabije omgeving.', 'text', 'Tekst blok rechts', '2019-06-06 07:12:33', 0, 5),
(186, 'contact', 6, '06 51 30 46 51', 'varchar(255)', 'Telefoonnummer', '2019-06-06 07:12:33', 0, 5),
(187, 'contact', 7, 'pedicurepraktijksol@gmail.nl', 'varchar(255)', 'Email', '2019-06-06 07:12:33', 0, 5),
(188, 'contact', 8, '74382713', 'varchar(255)', 'KVK', '2019-06-06 07:12:33', 0, 5),
(189, 'contact', 9, 'NL55 ASNB 0781 2720 25', 'varchar(255)', 'Bank', '2019-06-06 07:12:33', 0, 5),
(190, 'contact', 10, 'Voor een behandeling in Castricum kunt u ook bij de medewerkers van Cosmo Hairstyling een afspraak maken.', 'text', 'Quote tekst', '2019-06-06 07:12:33', 0, 5),
(191, 'contact', 11, 'Joke Sol', 'varchar(255)', 'Quete naam', '2019-06-06 07:12:33', 0, 5),
(192, 'behandelingen', 5, '', 'koppel_concept_technieken', 'Technieken', '2019-06-06 07:12:33', 0, 5),
(193, 'home', 2, 'Als medisch pedicure en beoefen mijn vak met hart en ziel. Of het nu om een ontspannende en cosmetisch verzorgende behandeling gaat of om een behandeling die gericht is op het verlichten van pijnlijke ongemakken aan de voeten. Vakkundig in het wegnemen van pijn door ingroeiende nagels, likdoorns of kloven. Nauwkeurig en zorgzaam in de behandeling van alle voeten die zorg vragen', 'text', 'Tekst onder title', '2019-06-06 07:12:45', 1, 6),
(194, 'home', 1, 'Voor iedereen die verzorgde voeten wilt', 'varchar(255)', 'Titel', '2019-06-06 07:12:45', 1, 6),
(195, 'behandelingen', 4, '', 'koppel_concept_behandelingen', 'Behandelingen', '2019-06-06 07:12:45', 1, 6),
(196, 'over-mij', 2, 'Mijn naam is Joke Sol, ik ben gediplomeerd medisch pedicure', 'text', 'Tekst onder titel', '2019-06-06 07:12:45', 1, 6),
(197, 'over-mij', 4, 'Na een carriere als loopbaanadviseur ontstond bij mijzelf de behoefte aan verandering.\n\n\nEen praktisch beroep waarbij ik mensen blij kon maken. Zo kwam het pedicurewerk voor mij in beeld: mensen helpen door de druk of pijn die ze aan hun voeten hebben voor een groot deel weg te nemen.\n\n\nTijdens mijn opleiding merkte ik hoe fijn het is om mensen weer op weg te helpen naar gezonde, verzorgde en minder pijnlijke voeten. De keuze om na de branche-opleiding pedicure door te leren voor Medisch Pedicure was dan ook vanzelfsprekend voor mij. Ik hoop nog heel lang mensen te kunnen helpen met goede voetzorg en nieuwe ontwikkelingen in het vakgebied te kunnen volgen en gebruiken voor mijn klanten.', 'text', 'Tekst van het blok', '2019-06-06 07:12:45', 1, 6),
(198, 'over-mij', 3, 'Loopbaanswitch', 'varchar(255)', 'Title van het blok', '2019-06-06 07:12:45', 1, 6),
(199, 'over-mij', 1, 'Uw voeten, in goede handen, daar maak ik graag werk van', 'varchar(255)', 'Titel', '2019-06-06 07:12:45', 1, 6),
(200, 'over-mij', 4, '10-behandeling.png', 'longtext', 'Image van het blok', '2019-06-06 07:12:45', 1, 6),
(201, 'tips', 2, 'Met wat dagelijkse aandacht en zorg kunt uw zelf invloed uitoefenen op de gezondheid van uw voeten zodat u klachten kunt voorkomen of verminderen.qwe \nweqe', 'text', 'Tekst onder title', '2019-06-06 07:12:45', 1, 6),
(202, 'behandelingen', 1, 'Uw stap op weg naar verzorgde voeten', 'varchar(255)', 'Title', '2019-06-06 07:12:45', 1, 6),
(203, 'behandelingen', 2, '"Algehele voetverzorging" is het uitgangspunt van de behandeling, of u uw voeten nu zomer klaar wilt maken; zelf moeite heeft uw voeten goed te verzorgen; klachten aan de voeten heeft of uw voeten eens wilt verwennen.', 'text', 'Tekst onder titel', '2019-06-06 07:12:45', 1, 6),
(204, 'behandelingen', 3, 'Als er sprake is van klachten aan de voeten bijvoorbeeld door diabetes, reuma, bewegingsbeperking, of andere redenen dan wordt voorafgaand aan de behandeling een intake en voetonderzoek bij u afgenomen Zo wordt geïnventariseerd  wat verlichting van de klachten zou kunnen brengen. Een behandelplan wordt opgesteld, thuisadvies wordt meegegeven en vervolgafspraken worden gemaakt', 'text', 'Tekst in blok', '2019-06-06 07:12:45', 1, 6),
(205, 'tips', 1, 'Voeten verdienen uw aandacht!', 'varchar(255)', 'Titel', '2019-06-06 07:12:45', 1, 6),
(206, 'tips', 3, '', 'koppel_concept_tips', 'Tips', '2019-06-06 07:12:45', 1, 6),
(207, 'prijslijst', 3, 'Voor specialistische behandelingen zoals het plaatsen van een\nnagelbeugel, repareren van een beschadigde nagel met \nGel of het toepassen van antidruktechnieken door \nmiddel van vilttoepassingen of maatwerkortheses, wordt \nvooraf een prijsopgaaf gegeven.', 'text', 'Tekst in blok', '2019-06-06 07:12:45', 1, 6),
(208, 'prijslijst', 1, 'Prijslijst Pedicurepraktijk Sol', 'varchar(255)', 'Titel', '2019-06-06 07:12:45', 1, 6),
(209, 'prijslijst', 2, 'Hier vindt u alle prijzen inclusief BTW van de verschillende behandelingen.', 'text', 'Tekst onder title', '2019-06-06 07:12:45', 1, 6),
(210, 'prijslijst', 4, '', 'koppel_concept_prijzen', 'Prijzen', '2019-06-06 07:12:45', 1, 6),
(211, 'prijslijst', 5, 'Zorgverzekering', 'varchar(255)', 'Title onderaan', '2019-06-06 07:12:45', 1, 6),
(212, 'prijslijst', 5, 'Mensen met diabetes kunnen een verhoogd risico hebben op het ontstaan van voetproblemen. De praktijkondersteuner van uw huisartsenpraktijk is doorgaans degene die dit beoordeelt. Afhankelijk van uw risicoprofiel kunt u vanuit de basis en/of aanvullende zorgverzekering een deel van de kosten van de pedicurebehandeling vergoed krijgen. Ook voor enkele andere aandoeningen kunnen de kosten van de behandeling soms vergoed worden. Kijk voor een volledig overzicht op www.zorgwijzer.nl/vergoedingen/pedicure\n\nIndien verhinderd voor een gemaakte afspraak graag 24 uur voorafgaand afmelden, zonder afmelding wordt de behandeling voor 50% in rekening gebracht.\n\nBetaling geschiedt contant', 'text', 'Text onderaan', '2019-06-06 07:12:45', 1, 6),
(213, 'contact', 1, 'Waar vindt u Pedicurepraktijk sol?', 'varchar(255)', 'Titel', '2019-06-06 07:12:45', 1, 6),
(214, 'contact', 2, 'Alkmaar: praktijk aan huis', 'varchar(255)', 'Titel blok links', '2019-06-06 07:12:45', 1, 6),
(215, 'contact', 3, 'Bergerweg 57, 1816 BN\n\nDe praktijkruimte bevindt zich op de 1e etage. Er is vrij parkeren aan de Bergerweg en in het Rembrandtkwartier achter de Bergerweg. ', 'text', 'Tekst blok links', '2019-06-06 07:12:45', 1, 6),
(216, 'contact', 4, 'Castricum', 'varchar(255)', 'Titel blok rechts', '2019-06-06 07:12:45', 1, 6),
(217, 'contact', 5, 'op dinsdag houdt Pedicurepraktijk Sol praktijk in sfeervolle salon van Cosmo Hairstyling aan het Bakkerspleintje 24 in Castricum. U kunt gedurende 2 uur gratis parkeren met een parkeerschijf in de nabije omgeving.', 'text', 'Tekst blok rechts', '2019-06-06 07:12:45', 1, 6),
(218, 'contact', 6, '06 51 30 46 51', 'varchar(255)', 'Telefoonnummer', '2019-06-06 07:12:45', 1, 6),
(219, 'contact', 7, 'pedicurepraktijksol@gmail.nl', 'varchar(255)', 'Email', '2019-06-06 07:12:45', 1, 6),
(220, 'contact', 8, '74382713', 'varchar(255)', 'KVK', '2019-06-06 07:12:45', 1, 6),
(221, 'contact', 9, 'NL55 ASNB 0781 2720 25', 'varchar(255)', 'Bank', '2019-06-06 07:12:45', 1, 6),
(222, 'contact', 10, 'Voor een behandeling in Castricum kunt u ook bij de medewerkers van Cosmo Hairstyling een afspraak maken.', 'text', 'Quote tekst', '2019-06-06 07:12:45', 1, 6),
(223, 'contact', 11, 'Joke Sol', 'varchar(255)', 'Quete naam', '2019-06-06 07:12:45', 1, 6),
(224, 'behandelingen', 5, '', 'koppel_concept_technieken', 'Technieken', '2019-06-06 07:12:45', 1, 6);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `live_behandelingen`
--

CREATE TABLE IF NOT EXISTS `live_behandelingen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weergeven` int(1) NOT NULL,
  `version` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` text,
  `image` longtext,
  `pageOrder` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Gegevens worden uitgevoerd voor tabel `live_behandelingen`
--

INSERT INTO `live_behandelingen` (`id`, `weergeven`, `version`, `title`, `text`, `image`, `pageOrder`, `updated_at`) VALUES
(1, 0, 1, 'Behandeling met intake (90 minuten)', 'Intake en voetonderzoek, opstellen behandelplan; algehele voetverzorging: thuisadvies. Doel van het voetonderzoek is te inventariseren wat uw voetklachten zijn en waar deze uit voort kunnen komen/mee samenhangen; of er sprake is van een risicovoet; met welke behandeling uw klachten verlicht kunnen worden. Het resultaat is dat u een advies krijgt wat u zelf kunt doen aan uw voetverzorging en het verminderen van uw klachten en tevens een behandelvoorstel krijgt. Indien noodzakelijk zal u een verwijzing naar een medisch voetspecialist of de huisarts krijgen.', '1-behandeling.png', 1, '2019-06-05 22:47:27'),
(2, 0, 1, 'Algehele voetverzorging (45 minuten)', 'Iedere klant die op bezoek komt kan rekenen op een algehele voetverzorging. Of u nu uw voeten zomer klaar wilt maken of dat u klachten heeft bijvoorbeeld van pijnlijke drukplekken en likdoorns, kalknagels, ingroeiende nagels of kloven, iedereen wordt met de grootste aandacht behandeld. \n\nDe voeten worden gereinigd en gedesinfecteerd. De nagels worden, indien nodig, verdund en bijgeknipt en de nagelomgeving wordt gereinigd, nagelriemen worden bijgewerkt, zodat ze weer hun mooie verzorgde en gezonde uitstraling krijgen. Eelt wordt verwijderd en zo ook eventuele likdoorns en kloven. Is er sprake van beginnende ingroei van nagels dan wordt de nagelwal vrijgemaakt. Nadat de voeten en nagels zijn behandeld, krijgt u tot slot een heerlijke verzorgende crÃ¨me. De voeten worden kort gemasseerd zodat u weer op verzorgde en ontspannen voeten de praktijk kunt verlaten.', '21-behandeling.png', 3, '2019-06-05 22:47:27'),
(3, 0, 1, 'Pedicure plus', 'Deze behandeling geeft u naast een algehele voetverzorging ook ontspannende scrub en massage. (tot 60 min).', '23-behandeling.png', 4, '2019-06-05 22:47:27'),
(4, 0, 1, 'Nagels lakken', 'Het reinigen van de nagelomgeving en het aanbrengen van een kleurlak en een beschermende toplaag op uw teennagels na een algehele voetverzorging.', '24-behandeling.png', 5, '2019-06-05 22:47:27'),
(9, 0, 2, 'Behandeling met intake (90 minuten)', 'Intake en voetonderzoek, opstellen behandelplan; algehele voetverzorging: thuisadvies. Doel van het voetonderzoek is te inventariseren wat uw voetklachten zijn en waar deze uit voort kunnen komen/mee samenhangen; of er sprake is van een risicovoet; met welke behandeling uw klachten verlicht kunnen worden. Het resultaat is dat u een advies krijgt wat u zelf kunt doen aan uw voetverzorging en het verminderen van uw klachten en tevens een behandelvoorstel krijgt. Indien noodzakelijk zal u een verwijzing naar een medisch voetspecialist of de huisarts krijgen.', '1-behandeling.png', 1, '2019-06-05 22:41:26'),
(10, 0, 2, 'Algehele voetverzorging (45 minuten)', 'Iedere klant die op bezoek komt kan rekenen op een algehele voetverzorging. Of u nu uw voeten zomer klaar wilt maken of dat u klachten heeft bijvoorbeeld van pijnlijke drukplekken en likdoorns, kalknagels, ingroeiende nagels of kloven, iedereen wordt met de grootste aandacht behandeld. \n\nDe voeten worden gereinigd en gedesinfecteerd. De nagels worden, indien nodig, verdund en bijgeknipt en de nagelomgeving wordt gereinigd, nagelriemen worden bijgewerkt, zodat ze weer hun mooie verzorgde en gezonde uitstraling krijgen. Eelt wordt verwijderd en zo ook eventuele likdoorns en kloven. Is er sprake van beginnende ingroei van nagels dan wordt de nagelwal vrijgemaakt. Nadat de voeten en nagels zijn behandeld, krijgt u tot slot een heerlijke verzorgende crÃ¨me. De voeten worden kort gemasseerd zodat u weer op verzorgde en ontspannen voeten de praktijk kunt verlaten.', '21-behandeling.png', 3, '2019-06-05 22:41:26'),
(11, 0, 2, 'Pedicure plus', 'Deze behandeling geeft u naast een algehele voetverzorging ook ontspannende scrub en massage. (tot 60 min).', '23-behandeling.png', 4, '2019-06-05 22:41:26'),
(12, 0, 2, 'Nagels lakken', 'Het reinigen van de nagelomgeving en het aanbrengen van een kleurlak en een beschermende toplaag op uw teennagels na een algehele voetverzorging.', '24-behandeling.png', 5, '2019-06-05 22:41:26'),
(13, 0, 3, 'Behandeling met intake (90 minuten)', 'Intake en voetonderzoek, opstellen behandelplan; algehele voetverzorging: thuisadvies. Doel van het voetonderzoek is te inventariseren wat uw voetklachten zijn en waar deze uit voort kunnen komen/mee samenhangen; of er sprake is van een risicovoet; met welke behandeling uw klachten verlicht kunnen worden. Het resultaat is dat u een advies krijgt wat u zelf kunt doen aan uw voetverzorging en het verminderen van uw klachten en tevens een behandelvoorstel krijgt. Indien noodzakelijk zal u een verwijzing naar een medisch voetspecialist of de huisarts krijgen.', '1-behandeling.png', 1, '2019-06-05 22:44:11'),
(14, 0, 3, 'Algehele voetverzorging (45 minuten)', 'Iedere klant die op bezoek komt kan rekenen op een algehele voetverzorging. Of u nu uw voeten zomer klaar wilt maken of dat u klachten heeft bijvoorbeeld van pijnlijke drukplekken en likdoorns, kalknagels, ingroeiende nagels of kloven, iedereen wordt met de grootste aandacht behandeld. \n\nDe voeten worden gereinigd en gedesinfecteerd. De nagels worden, indien nodig, verdund en bijgeknipt en de nagelomgeving wordt gereinigd, nagelriemen worden bijgewerkt, zodat ze weer hun mooie verzorgde en gezonde uitstraling krijgen. Eelt wordt verwijderd en zo ook eventuele likdoorns en kloven. Is er sprake van beginnende ingroei van nagels dan wordt de nagelwal vrijgemaakt. Nadat de voeten en nagels zijn behandeld, krijgt u tot slot een heerlijke verzorgende crÃ¨me. De voeten worden kort gemasseerd zodat u weer op verzorgde en ontspannen voeten de praktijk kunt verlaten.', '21-behandeling.png', 3, '2019-06-05 22:44:11'),
(15, 0, 3, 'Pedicure plus', 'Deze behandeling geeft u naast een algehele voetverzorging ook ontspannende scrub en massage. (tot 60 min).', '23-behandeling.png', 4, '2019-06-05 22:44:11'),
(16, 0, 3, 'Nagels lakken', 'Het reinigen van de nagelomgeving en het aanbrengen van een kleurlak en een beschermende toplaag op uw teennagels na een algehele voetverzorging.', '24-behandeling.png', 5, '2019-06-05 22:44:11'),
(17, 0, 4, 'Behandeling met intake (90 minuten)', 'Intake en voetonderzoek, opstellen behandelplan; algehele voetverzorging: thuisadvies. Doel van het voetonderzoek is te inventariseren wat uw voetklachten zijn en waar deze uit voort kunnen komen/mee samenhangen; of er sprake is van een risicovoet; met welke behandeling uw klachten verlicht kunnen worden. Het resultaat is dat u een advies krijgt wat u zelf kunt doen aan uw voetverzorging en het verminderen van uw klachten en tevens een behandelvoorstel krijgt. Indien noodzakelijk zal u een verwijzing naar een medisch voetspecialist of de huisarts krijgen.', '1-behandeling.png', 1, '2019-06-06 07:12:33'),
(18, 0, 4, 'Algehele voetverzorging (45 minuten)', 'Iedere klant die op bezoek komt kan rekenen op een algehele voetverzorging. Of u nu uw voeten zomer klaar wilt maken of dat u klachten heeft bijvoorbeeld van pijnlijke drukplekken en likdoorns, kalknagels, ingroeiende nagels of kloven, iedereen wordt met de grootste aandacht behandeld. \n\nDe voeten worden gereinigd en gedesinfecteerd. De nagels worden, indien nodig, verdund en bijgeknipt en de nagelomgeving wordt gereinigd, nagelriemen worden bijgewerkt, zodat ze weer hun mooie verzorgde en gezonde uitstraling krijgen. Eelt wordt verwijderd en zo ook eventuele likdoorns en kloven. Is er sprake van beginnende ingroei van nagels dan wordt de nagelwal vrijgemaakt. Nadat de voeten en nagels zijn behandeld, krijgt u tot slot een heerlijke verzorgende crÃ¨me. De voeten worden kort gemasseerd zodat u weer op verzorgde en ontspannen voeten de praktijk kunt verlaten.', '21-behandeling.png', 3, '2019-06-06 07:12:33'),
(19, 0, 4, 'Pedicure plus', 'Deze behandeling geeft u naast een algehele voetverzorging ook ontspannende scrub en massage. (tot 60 min).', '23-behandeling.png', 4, '2019-06-06 07:12:33'),
(20, 0, 4, 'Nagels lakken', 'Het reinigen van de nagelomgeving en het aanbrengen van een kleurlak en een beschermende toplaag op uw teennagels na een algehele voetverzorging.', '24-behandeling.png', 5, '2019-06-06 07:12:33'),
(21, 0, 5, 'Behandeling met intake (90 minuten)', 'Intake en voetonderzoek, opstellen behandelplan; algehele voetverzorging: thuisadvies. Doel van het voetonderzoek is te inventariseren wat uw voetklachten zijn en waar deze uit voort kunnen komen/mee samenhangen; of er sprake is van een risicovoet; met welke behandeling uw klachten verlicht kunnen worden. Het resultaat is dat u een advies krijgt wat u zelf kunt doen aan uw voetverzorging en het verminderen van uw klachten en tevens een behandelvoorstel krijgt. Indien noodzakelijk zal u een verwijzing naar een medisch voetspecialist of de huisarts krijgen.', '1-behandeling.png', 1, '2019-06-06 07:12:45'),
(22, 0, 5, 'Algehele voetverzorging (45 minuten)', 'Iedere klant die op bezoek komt kan rekenen op een algehele voetverzorging. Of u nu uw voeten zomer klaar wilt maken of dat u klachten heeft bijvoorbeeld van pijnlijke drukplekken en likdoorns, kalknagels, ingroeiende nagels of kloven, iedereen wordt met de grootste aandacht behandeld. \n\nDe voeten worden gereinigd en gedesinfecteerd. De nagels worden, indien nodig, verdund en bijgeknipt en de nagelomgeving wordt gereinigd, nagelriemen worden bijgewerkt, zodat ze weer hun mooie verzorgde en gezonde uitstraling krijgen. Eelt wordt verwijderd en zo ook eventuele likdoorns en kloven. Is er sprake van beginnende ingroei van nagels dan wordt de nagelwal vrijgemaakt. Nadat de voeten en nagels zijn behandeld, krijgt u tot slot een heerlijke verzorgende crÃ¨me. De voeten worden kort gemasseerd zodat u weer op verzorgde en ontspannen voeten de praktijk kunt verlaten.', '21-behandeling.png', 3, '2019-06-06 07:12:45'),
(23, 0, 5, 'Pedicure plus', 'Deze behandeling geeft u naast een algehele voetverzorging ook ontspannende scrub en massage. (tot 60 min).', '23-behandeling.png', 4, '2019-06-06 07:12:45'),
(24, 0, 5, 'Nagels lakken', 'Het reinigen van de nagelomgeving en het aanbrengen van een kleurlak en een beschermende toplaag op uw teennagels na een algehele voetverzorging.', '24-behandeling.png', 5, '2019-06-06 07:12:45'),
(25, 1, 6, 'Behandeling met intake (90 minuten)', 'Intake en voetonderzoek, opstellen behandelplan; algehele voetverzorging: thuisadvies. Doel van het voetonderzoek is te inventariseren wat uw voetklachten zijn en waar deze uit voort kunnen komen/mee samenhangen; of er sprake is van een risicovoet; met welke behandeling uw klachten verlicht kunnen worden. Het resultaat is dat u een advies krijgt wat u zelf kunt doen aan uw voetverzorging en het verminderen van uw klachten en tevens een behandelvoorstel krijgt. Indien noodzakelijk zal u een verwijzing naar een medisch voetspecialist of de huisarts krijgen.', '1-behandeling.png', 1, '2019-06-06 07:12:45'),
(26, 1, 6, 'Algehele voetverzorging (45 minuten)', 'Iedere klant die op bezoek komt kan rekenen op een algehele voetverzorging. Of u nu uw voeten zomer klaar wilt maken of dat u klachten heeft bijvoorbeeld van pijnlijke drukplekken en likdoorns, kalknagels, ingroeiende nagels of kloven, iedereen wordt met de grootste aandacht behandeld. \n\nDe voeten worden gereinigd en gedesinfecteerd. De nagels worden, indien nodig, verdund en bijgeknipt en de nagelomgeving wordt gereinigd, nagelriemen worden bijgewerkt, zodat ze weer hun mooie verzorgde en gezonde uitstraling krijgen. Eelt wordt verwijderd en zo ook eventuele likdoorns en kloven. Is er sprake van beginnende ingroei van nagels dan wordt de nagelwal vrijgemaakt. Nadat de voeten en nagels zijn behandeld, krijgt u tot slot een heerlijke verzorgende crÃ¨me. De voeten worden kort gemasseerd zodat u weer op verzorgde en ontspannen voeten de praktijk kunt verlaten.', '21-behandeling.png', 3, '2019-06-06 07:12:45'),
(27, 1, 6, 'Pedicure plus', 'Deze behandeling geeft u naast een algehele voetverzorging ook ontspannende scrub en massage. (tot 60 min).', '23-behandeling.png', 4, '2019-06-06 07:12:45'),
(28, 1, 6, 'Nagels lakken', 'Het reinigen van de nagelomgeving en het aanbrengen van een kleurlak en een beschermende toplaag op uw teennagels na een algehele voetverzorging.', '24-behandeling.png', 5, '2019-06-06 07:12:45');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `live_prijzen`
--

CREATE TABLE IF NOT EXISTS `live_prijzen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `prijs` varchar(255) DEFAULT NULL,
  `pageOrder` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `weergeven` int(1) NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=64 ;

--
-- Gegevens worden uitgevoerd voor tabel `live_prijzen`
--

INSERT INTO `live_prijzen` (`id`, `title`, `prijs`, `pageOrder`, `updated_at`, `weergeven`, `version`) VALUES
(1, 'Algehele voetverzorging (45 min)', '35', 1, '2019-06-05 22:47:27', 0, 1),
(2, '1e behandeling met intake/voetonderzoek', '55', 2, '2019-06-05 22:47:27', 0, 1),
(3, 'algehele voetverzorging + scrub/massage', '45', 3, '2019-06-05 22:47:27', 0, 1),
(4, 'algehele voetverzorging + nagels lakken', '45', 4, '2019-06-05 22:47:27', 0, 1),
(5, 'Intake/voetonderzoek', '20', 5, '2019-06-05 22:47:27', 0, 1),
(6, 'Nagels lakken (reinigen, kleurlak, topcoat)', '15', 6, '2019-06-05 22:47:27', 0, 1),
(7, 'Cadeaubonnen vanaf', '20', 7, '2019-06-05 22:47:27', 0, 1),
(8, 'Toeslag per 15 min', '10', 8, '2019-06-05 22:47:27', 0, 1),
(9, 'Toeslag behandeling op locatie', '10', 9, '2019-06-05 22:47:27', 0, 1),
(19, 'Algehele voetverzorging (45 min)', '35', 1, '2019-06-05 22:41:26', 0, 2),
(20, '1e behandeling met intake/voetonderzoek', '55', 2, '2019-06-05 22:41:26', 0, 2),
(21, 'algehele voetverzorging + scrub/massage', '45', 3, '2019-06-05 22:41:26', 0, 2),
(22, 'algehele voetverzorging + nagels lakken', '45', 4, '2019-06-05 22:41:26', 0, 2),
(23, 'Intake/voetonderzoek', '20', 5, '2019-06-05 22:41:26', 0, 2),
(24, 'Nagels lakken (reinigen, kleurlak, topcoat)', '15', 6, '2019-06-05 22:41:26', 0, 2),
(25, 'Cadeaubonnen vanaf', '20', 7, '2019-06-05 22:41:26', 0, 2),
(26, 'Toeslag per 15 min', '10', 8, '2019-06-05 22:41:26', 0, 2),
(27, 'Toeslag behandeling op locatie', '10', 9, '2019-06-05 22:41:26', 0, 2),
(28, 'Algehele voetverzorging (45 min)', '35', 1, '2019-06-05 22:44:11', 0, 3),
(29, '1e behandeling met intake/voetonderzoek', '55', 2, '2019-06-05 22:44:11', 0, 3),
(30, 'algehele voetverzorging + scrub/massage', '45', 3, '2019-06-05 22:44:11', 0, 3),
(31, 'algehele voetverzorging + nagels lakken', '45', 4, '2019-06-05 22:44:11', 0, 3),
(32, 'Intake/voetonderzoek', '20', 5, '2019-06-05 22:44:11', 0, 3),
(33, 'Nagels lakken (reinigen, kleurlak, topcoat)', '15', 6, '2019-06-05 22:44:11', 0, 3),
(34, 'Cadeaubonnen vanaf', '20', 7, '2019-06-05 22:44:11', 0, 3),
(35, 'Toeslag per 15 min', '10', 8, '2019-06-05 22:44:11', 0, 3),
(36, 'Toeslag behandeling op locatie', '10', 9, '2019-06-05 22:44:11', 0, 3),
(37, 'Algehele voetverzorging (45 min)', '35', 1, '2019-06-06 07:12:33', 0, 4),
(38, '1e behandeling met intake/voetonderzoek', '55', 2, '2019-06-06 07:12:33', 0, 4),
(39, 'algehele voetverzorging + scrub/massage', '45', 3, '2019-06-06 07:12:33', 0, 4),
(40, 'algehele voetverzorging + nagels lakken', '45', 4, '2019-06-06 07:12:33', 0, 4),
(41, 'Intake/voetonderzoek', '20', 5, '2019-06-06 07:12:33', 0, 4),
(42, 'Nagels lakken (reinigen, kleurlak, topcoat)', '15', 6, '2019-06-06 07:12:33', 0, 4),
(43, 'Cadeaubonnen vanaf', '20', 7, '2019-06-06 07:12:33', 0, 4),
(44, 'Toeslag per 15 min', '10', 8, '2019-06-06 07:12:33', 0, 4),
(45, 'Toeslag behandeling op locatie', '10', 9, '2019-06-06 07:12:33', 0, 4),
(46, 'Algehele voetverzorging (45 min)', '35', 1, '2019-06-06 07:12:45', 0, 5),
(47, '1e behandeling met intake/voetonderzoek', '55', 2, '2019-06-06 07:12:45', 0, 5),
(48, 'algehele voetverzorging + scrub/massage', '45', 3, '2019-06-06 07:12:45', 0, 5),
(49, 'algehele voetverzorging + nagels lakken', '45', 4, '2019-06-06 07:12:45', 0, 5),
(50, 'Intake/voetonderzoek', '20', 5, '2019-06-06 07:12:45', 0, 5),
(51, 'Nagels lakken (reinigen, kleurlak, topcoat)', '15', 6, '2019-06-06 07:12:45', 0, 5),
(52, 'Cadeaubonnen vanaf', '20', 7, '2019-06-06 07:12:45', 0, 5),
(53, 'Toeslag per 15 min', '10', 8, '2019-06-06 07:12:45', 0, 5),
(54, 'Toeslag behandeling op locatie', '10', 9, '2019-06-06 07:12:45', 0, 5),
(55, 'Algehele voetverzorging (45 min)', '35', 1, '2019-06-06 07:12:45', 1, 6),
(56, '1e behandeling met intake/voetonderzoek', '55', 2, '2019-06-06 07:12:45', 1, 6),
(57, 'algehele voetverzorging + scrub/massage', '45', 3, '2019-06-06 07:12:45', 1, 6),
(58, 'algehele voetverzorging + nagels lakken', '45', 4, '2019-06-06 07:12:45', 1, 6),
(59, 'Intake/voetonderzoek', '20', 5, '2019-06-06 07:12:45', 1, 6),
(60, 'Nagels lakken (reinigen, kleurlak, topcoat)', '15', 6, '2019-06-06 07:12:45', 1, 6),
(61, 'Cadeaubonnen vanaf', '20', 7, '2019-06-06 07:12:45', 1, 6),
(62, 'Toeslag per 15 min', '10', 8, '2019-06-06 07:12:45', 1, 6),
(63, 'Toeslag behandeling op locatie', '10', 9, '2019-06-06 07:12:45', 1, 6);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `live_technieken`
--

CREATE TABLE IF NOT EXISTS `live_technieken` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `text` text,
  `image` longtext,
  `pdf` longtext,
  `pageOrder` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `weergeven` int(1) NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Gegevens worden uitgevoerd voor tabel `live_technieken`
--

INSERT INTO `live_technieken` (`id`, `title`, `text`, `image`, `pdf`, `pageOrder`, `updated_at`, `weergeven`, `version`) VALUES
(1, 'Nagelbeugel plaatsen bij ingroeiende nagel.', 'Een nagelbeugel is een op maat gemaakt hulpmiddel om uw nagelgroei te reguleren. Ze begeleidt als het ware de groei van de nagel in de juiste richting. Er zijn verschillende typen nagelbeugels. Afhankelijk van uw nagels en uw situatie wordt voor de meest geschikte beugel gekozen.', '1-behandeling.png', '1-nagelbeugel klantenfolder', 1, '2019-06-05 22:47:27', 0, 1),
(2, 'Nagelreparatie gel of acryl', 'Een nagelreparatie kan wenselijk zijn in verschillende situaties bijvoorbeeld als er een stuk van uw nagel afgebroken is; als er sprake van een gespleten of ernstig beschadigde nagel is. Met gel of acryl kan uw nagel weer opgebouwd worden waardoor uw nagelbed beschermd is en oogt als bij een gezonde nagel.', '2-behandeling.png', '2-Schimmelnagels en nagelreparatie', 2, '2019-06-05 22:47:27', 0, 1),
(3, 'Ortheses', 'Een orthese is een op maat gemaakt hulpmiddel op basis van siliconen, waarmee complicaties die zich bijvoorbeeld voordoen door teenstandafwijkingen, verholpen kunnen worden. Zo kan een orthese een oplossing zijn voor een steeds terugkerende likdoorn tussen de tenen of op de top van hamertenen.', '3-behandeling.png', '', 3, '2019-06-05 22:47:27', 0, 1),
(4, 'Antidruktechiek met vilt', 'Heeft u last van drukplekken die tijdelijk ontlast moeten worden dan kan een â€œviltpaddingâ€ een welkome oplossing bieden. Zo kan een gevoelige (druk)plek op de hiel of voorvoet door een wrat een likdoorn of een wond vrij gelegd worden. Een viltpadding kan een tijdelijke verlichting bieden in afwachting van een meer definitieve oplossing zoals een orthese of aangepast schoeisel.', '4-behandeling.png', '4-Viltpadding klantenfolder', 4, '2019-06-05 22:47:27', 0, 1),
(9, 'Nagelbeugel plaatsen bij ingroeiende nagel.', 'Een nagelbeugel is een op maat gemaakt hulpmiddel om uw nagelgroei te reguleren. Ze begeleidt als het ware de groei van de nagel in de juiste richting. Er zijn verschillende typen nagelbeugels. Afhankelijk van uw nagels en uw situatie wordt voor de meest geschikte beugel gekozen.', '1-behandeling.png', '1-nagelbeugel klantenfolder', 1, '2019-06-05 22:41:26', 0, 2),
(10, 'Nagelreparatie gel of acryl', 'Een nagelreparatie kan wenselijk zijn in verschillende situaties bijvoorbeeld als er een stuk van uw nagel afgebroken is; als er sprake van een gespleten of ernstig beschadigde nagel is. Met gel of acryl kan uw nagel weer opgebouwd worden waardoor uw nagelbed beschermd is en oogt als bij een gezonde nagel.', '2-behandeling.png', '2-Schimmelnagels en nagelreparatie', 2, '2019-06-05 22:41:26', 0, 2),
(11, 'Ortheses', 'Een orthese is een op maat gemaakt hulpmiddel op basis van siliconen, waarmee complicaties die zich bijvoorbeeld voordoen door teenstandafwijkingen, verholpen kunnen worden. Zo kan een orthese een oplossing zijn voor een steeds terugkerende likdoorn tussen de tenen of op de top van hamertenen.', '3-behandeling.png', '', 3, '2019-06-05 22:41:26', 0, 2),
(12, 'Antidruktechiek met vilt', 'Heeft u last van drukplekken die tijdelijk ontlast moeten worden dan kan een â€œviltpaddingâ€ een welkome oplossing bieden. Zo kan een gevoelige (druk)plek op de hiel of voorvoet door een wrat een likdoorn of een wond vrij gelegd worden. Een viltpadding kan een tijdelijke verlichting bieden in afwachting van een meer definitieve oplossing zoals een orthese of aangepast schoeisel.', '4-behandeling.png', '4-Viltpadding klantenfolder', 4, '2019-06-05 22:41:26', 0, 2),
(13, 'Nagelbeugel plaatsen bij ingroeiende nagel.', 'Een nagelbeugel is een op maat gemaakt hulpmiddel om uw nagelgroei te reguleren. Ze begeleidt als het ware de groei van de nagel in de juiste richting. Er zijn verschillende typen nagelbeugels. Afhankelijk van uw nagels en uw situatie wordt voor de meest geschikte beugel gekozen.', '1-behandeling.png', '1-nagelbeugel klantenfolder', 1, '2019-06-05 22:44:11', 0, 3),
(14, 'Nagelreparatie gel of acryl', 'Een nagelreparatie kan wenselijk zijn in verschillende situaties bijvoorbeeld als er een stuk van uw nagel afgebroken is; als er sprake van een gespleten of ernstig beschadigde nagel is. Met gel of acryl kan uw nagel weer opgebouwd worden waardoor uw nagelbed beschermd is en oogt als bij een gezonde nagel.', '2-behandeling.png', '2-Schimmelnagels en nagelreparatie', 2, '2019-06-05 22:44:11', 0, 3),
(15, 'Ortheses', 'Een orthese is een op maat gemaakt hulpmiddel op basis van siliconen, waarmee complicaties die zich bijvoorbeeld voordoen door teenstandafwijkingen, verholpen kunnen worden. Zo kan een orthese een oplossing zijn voor een steeds terugkerende likdoorn tussen de tenen of op de top van hamertenen.', '3-behandeling.png', '', 3, '2019-06-05 22:44:11', 0, 3),
(16, 'Antidruktechiek met vilt', 'Heeft u last van drukplekken die tijdelijk ontlast moeten worden dan kan een â€œviltpaddingâ€ een welkome oplossing bieden. Zo kan een gevoelige (druk)plek op de hiel of voorvoet door een wrat een likdoorn of een wond vrij gelegd worden. Een viltpadding kan een tijdelijke verlichting bieden in afwachting van een meer definitieve oplossing zoals een orthese of aangepast schoeisel.', '4-behandeling.png', '4-Viltpadding klantenfolder', 4, '2019-06-05 22:44:11', 0, 3),
(17, 'Nagelbeugel plaatsen bij ingroeiende nagel.', 'Een nagelbeugel is een op maat gemaakt hulpmiddel om uw nagelgroei te reguleren. Ze begeleidt als het ware de groei van de nagel in de juiste richting. Er zijn verschillende typen nagelbeugels. Afhankelijk van uw nagels en uw situatie wordt voor de meest geschikte beugel gekozen.', '1-behandeling.png', '1-nagelbeugel klantenfolder', 1, '2019-06-06 07:12:33', 0, 4),
(18, 'Nagelreparatie gel of acryl', 'Een nagelreparatie kan wenselijk zijn in verschillende situaties bijvoorbeeld als er een stuk van uw nagel afgebroken is; als er sprake van een gespleten of ernstig beschadigde nagel is. Met gel of acryl kan uw nagel weer opgebouwd worden waardoor uw nagelbed beschermd is en oogt als bij een gezonde nagel.', '2-behandeling.png', '2-Schimmelnagels en nagelreparatie', 2, '2019-06-06 07:12:33', 0, 4),
(19, 'Ortheses', 'Een orthese is een op maat gemaakt hulpmiddel op basis van siliconen, waarmee complicaties die zich bijvoorbeeld voordoen door teenstandafwijkingen, verholpen kunnen worden. Zo kan een orthese een oplossing zijn voor een steeds terugkerende likdoorn tussen de tenen of op de top van hamertenen.', '3-behandeling.png', '', 3, '2019-06-06 07:12:33', 0, 4),
(20, 'Antidruktechiek met vilt', 'Heeft u last van drukplekken die tijdelijk ontlast moeten worden dan kan een â€œviltpaddingâ€ een welkome oplossing bieden. Zo kan een gevoelige (druk)plek op de hiel of voorvoet door een wrat een likdoorn of een wond vrij gelegd worden. Een viltpadding kan een tijdelijke verlichting bieden in afwachting van een meer definitieve oplossing zoals een orthese of aangepast schoeisel.', '4-behandeling.png', '4-Viltpadding klantenfolder', 4, '2019-06-06 07:12:33', 0, 4),
(21, 'Nagelbeugel plaatsen bij ingroeiende nagel.', 'Een nagelbeugel is een op maat gemaakt hulpmiddel om uw nagelgroei te reguleren. Ze begeleidt als het ware de groei van de nagel in de juiste richting. Er zijn verschillende typen nagelbeugels. Afhankelijk van uw nagels en uw situatie wordt voor de meest geschikte beugel gekozen.', '1-behandeling.png', '1-nagelbeugel klantenfolder', 1, '2019-06-06 07:12:45', 0, 5),
(22, 'Nagelreparatie gel of acryl', 'Een nagelreparatie kan wenselijk zijn in verschillende situaties bijvoorbeeld als er een stuk van uw nagel afgebroken is; als er sprake van een gespleten of ernstig beschadigde nagel is. Met gel of acryl kan uw nagel weer opgebouwd worden waardoor uw nagelbed beschermd is en oogt als bij een gezonde nagel.', '2-behandeling.png', '2-Schimmelnagels en nagelreparatie', 2, '2019-06-06 07:12:45', 0, 5),
(23, 'Ortheses', 'Een orthese is een op maat gemaakt hulpmiddel op basis van siliconen, waarmee complicaties die zich bijvoorbeeld voordoen door teenstandafwijkingen, verholpen kunnen worden. Zo kan een orthese een oplossing zijn voor een steeds terugkerende likdoorn tussen de tenen of op de top van hamertenen.', '3-behandeling.png', '', 3, '2019-06-06 07:12:45', 0, 5),
(24, 'Antidruktechiek met vilt', 'Heeft u last van drukplekken die tijdelijk ontlast moeten worden dan kan een â€œviltpaddingâ€ een welkome oplossing bieden. Zo kan een gevoelige (druk)plek op de hiel of voorvoet door een wrat een likdoorn of een wond vrij gelegd worden. Een viltpadding kan een tijdelijke verlichting bieden in afwachting van een meer definitieve oplossing zoals een orthese of aangepast schoeisel.', '4-behandeling.png', '4-Viltpadding klantenfolder', 4, '2019-06-06 07:12:45', 0, 5),
(25, 'Nagelbeugel plaatsen bij ingroeiende nagel.', 'Een nagelbeugel is een op maat gemaakt hulpmiddel om uw nagelgroei te reguleren. Ze begeleidt als het ware de groei van de nagel in de juiste richting. Er zijn verschillende typen nagelbeugels. Afhankelijk van uw nagels en uw situatie wordt voor de meest geschikte beugel gekozen.', '1-behandeling.png', '1-nagelbeugel klantenfolder', 1, '2019-06-06 07:12:45', 1, 6),
(26, 'Nagelreparatie gel of acryl', 'Een nagelreparatie kan wenselijk zijn in verschillende situaties bijvoorbeeld als er een stuk van uw nagel afgebroken is; als er sprake van een gespleten of ernstig beschadigde nagel is. Met gel of acryl kan uw nagel weer opgebouwd worden waardoor uw nagelbed beschermd is en oogt als bij een gezonde nagel.', '2-behandeling.png', '2-Schimmelnagels en nagelreparatie', 2, '2019-06-06 07:12:45', 1, 6),
(27, 'Ortheses', 'Een orthese is een op maat gemaakt hulpmiddel op basis van siliconen, waarmee complicaties die zich bijvoorbeeld voordoen door teenstandafwijkingen, verholpen kunnen worden. Zo kan een orthese een oplossing zijn voor een steeds terugkerende likdoorn tussen de tenen of op de top van hamertenen.', '3-behandeling.png', '', 3, '2019-06-06 07:12:45', 1, 6),
(28, 'Antidruktechiek met vilt', 'Heeft u last van drukplekken die tijdelijk ontlast moeten worden dan kan een â€œviltpaddingâ€ een welkome oplossing bieden. Zo kan een gevoelige (druk)plek op de hiel of voorvoet door een wrat een likdoorn of een wond vrij gelegd worden. Een viltpadding kan een tijdelijke verlichting bieden in afwachting van een meer definitieve oplossing zoals een orthese of aangepast schoeisel.', '4-behandeling.png', '4-Viltpadding klantenfolder', 4, '2019-06-06 07:12:45', 1, 6);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `live_tips`
--

CREATE TABLE IF NOT EXISTS `live_tips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `text` text,
  `pageOrder` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `weergeven` int(1) NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Gegevens worden uitgevoerd voor tabel `live_tips`
--

INSERT INTO `live_tips` (`id`, `title`, `text`, `pageOrder`, `updated_at`, `weergeven`, `version`) VALUES
(1, 'VOETEN WASSEN', 'Was uw voeten dagelijks met lauw water en bij voorkeur zonder zeep. Blijf ook niet te lang met uw voeten in het water, een droge huid kan hiervan het gevolg zijn. Droog natte voeten goed af, vooral tussen de tenen en geef ze even de tijd ook volledig te drogen.\n\nSmeer uw voeten dagelijks na het wassen in met wat lotion of hydraterende crÃ¨me zodat de huid niet uitdroogt.', 1, '2019-06-05 22:47:27', 0, 1),
(2, 'SCHOEISEL EN SOKKEN', 'Draag bij voorkeur katoenen of wollen sokken zonder dikke naden en verschoon ze dagelijks. Goed passende schoenen, die bovendien voldoende ventileren, zijn essentieel in uw dagelijks loopcomfort en in het voorkomen van pijnlijke voeten. Laat u voorlichten in een goede schoenenzaak over de voor u juiste maat en pasvorm. Koop uw schoenen bovendien aan het einde van de dag dan kunnen uw voeten namelijk al wat opgezet zijn.\nWissel zo mogelijk dagelijks van schoenen\nVoorkom ingegroeide teennagels\nDe grootste risicofactoren voor het ontstaan van ingroeiende teennagels zijn:\n\nâ€¢	Druk door slecht passend schoeisel\nâ€¢	Het verkeerd (te kort en/of niet recht) knippen van de nagels\nâ€¢	Een weke nagelomgeving door veel baden, transpiratie of synthetische sokken\n\nTip: â€œPedi- of Wandelwolâ€is een 100% natuurproduct dat u als antidrukmiddel zelf goed kunt gebruiken en toepassen. Geschikt voor wandelaars, sporters of mensen die snel last van pijnlijke drukplekken, blaren of koude voeten hebben. Vraag er eens naar als u in de praktijk bent.', 2, '2019-06-05 22:47:27', 0, 1),
(3, 'SCHIMMELINFECTIES', 'Gebruik badslippers in publieke natte ruimten zoals zwembaden, saunaâ€™s, kleedkamers van sportschool of -vereniging, gymzalen.\n\nKomt u regelmatig in publieke natte ruimten controleer uw voeten goed op mogelijke signalen van voetschimmel zoals kleine blaasjes en nagels die van kleur veranderen.', 3, '2019-06-05 22:47:27', 0, 1),
(4, 'EELT EN KLOVEN', 'Eelt doet zich voor op plaatsen op de voet waar veel druk of wrijving plaats vindt. Voortdurende druk en eeltvorming kan leiden tot likdoornvorming.\n\nKloven kunnen ontstaan op eeltlocaties waar het eelt erg droog is en de huid minder elastisch is geworden.\n\nDoor zelf regelmatig met een voetvijl u voeten te behandelen en de voeten in te smeren met een verzorgende crÃ¨me kunt u klachten door overmatig eelt of kloven voorkomen.', 4, '2019-06-05 22:47:27', 0, 1),
(9, 'VOETEN WASSEN', 'Was uw voeten dagelijks met lauw water en bij voorkeur zonder zeep. Blijf ook niet te lang met uw voeten in het water, een droge huid kan hiervan het gevolg zijn. Droog natte voeten goed af, vooral tussen de tenen en geef ze even de tijd ook volledig te drogen.\n\nSmeer uw voeten dagelijks na het wassen in met wat lotion of hydraterende crÃ¨me zodat de huid niet uitdroogt.', 1, '2019-06-05 22:41:26', 0, 2),
(10, 'SCHOEISEL EN SOKKEN', 'Draag bij voorkeur katoenen of wollen sokken zonder dikke naden en verschoon ze dagelijks. Goed passende schoenen, die bovendien voldoende ventileren, zijn essentieel in uw dagelijks loopcomfort en in het voorkomen van pijnlijke voeten. Laat u voorlichten in een goede schoenenzaak over de voor u juiste maat en pasvorm. Koop uw schoenen bovendien aan het einde van de dag dan kunnen uw voeten namelijk al wat opgezet zijn.\nWissel zo mogelijk dagelijks van schoenen\nVoorkom ingegroeide teennagels\nDe grootste risicofactoren voor het ontstaan van ingroeiende teennagels zijn:\n\nâ€¢	Druk door slecht passend schoeisel\nâ€¢	Het verkeerd (te kort en/of niet recht) knippen van de nagels\nâ€¢	Een weke nagelomgeving door veel baden, transpiratie of synthetische sokken\n\nTip: â€œPedi- of Wandelwolâ€is een 100% natuurproduct dat u als antidrukmiddel zelf goed kunt gebruiken en toepassen. Geschikt voor wandelaars, sporters of mensen die snel last van pijnlijke drukplekken, blaren of koude voeten hebben. Vraag er eens naar als u in de praktijk bent.', 2, '2019-06-05 22:41:26', 0, 2),
(11, 'SCHIMMELINFECTIES', 'Gebruik badslippers in publieke natte ruimten zoals zwembaden, saunaâ€™s, kleedkamers van sportschool of -vereniging, gymzalen.\n\nKomt u regelmatig in publieke natte ruimten controleer uw voeten goed op mogelijke signalen van voetschimmel zoals kleine blaasjes en nagels die van kleur veranderen.', 3, '2019-06-05 22:41:26', 0, 2),
(12, 'EELT EN KLOVEN', 'Eelt doet zich voor op plaatsen op de voet waar veel druk of wrijving plaats vindt. Voortdurende druk en eeltvorming kan leiden tot likdoornvorming.\n\nKloven kunnen ontstaan op eeltlocaties waar het eelt erg droog is en de huid minder elastisch is geworden.\n\nDoor zelf regelmatig met een voetvijl u voeten te behandelen en de voeten in te smeren met een verzorgende crÃ¨me kunt u klachten door overmatig eelt of kloven voorkomen.', 4, '2019-06-05 22:41:26', 0, 2),
(13, 'VOETEN WASSEN', 'Was uw voeten dagelijks met lauw water en bij voorkeur zonder zeep. Blijf ook niet te lang met uw voeten in het water, een droge huid kan hiervan het gevolg zijn. Droog natte voeten goed af, vooral tussen de tenen en geef ze even de tijd ook volledig te drogen.\n\nSmeer uw voeten dagelijks na het wassen in met wat lotion of hydraterende crÃ¨me zodat de huid niet uitdroogt.', 1, '2019-06-05 22:44:11', 0, 3),
(14, 'SCHOEISEL EN SOKKEN', 'Draag bij voorkeur katoenen of wollen sokken zonder dikke naden en verschoon ze dagelijks. Goed passende schoenen, die bovendien voldoende ventileren, zijn essentieel in uw dagelijks loopcomfort en in het voorkomen van pijnlijke voeten. Laat u voorlichten in een goede schoenenzaak over de voor u juiste maat en pasvorm. Koop uw schoenen bovendien aan het einde van de dag dan kunnen uw voeten namelijk al wat opgezet zijn.\nWissel zo mogelijk dagelijks van schoenen\nVoorkom ingegroeide teennagels\nDe grootste risicofactoren voor het ontstaan van ingroeiende teennagels zijn:\n\nâ€¢	Druk door slecht passend schoeisel\nâ€¢	Het verkeerd (te kort en/of niet recht) knippen van de nagels\nâ€¢	Een weke nagelomgeving door veel baden, transpiratie of synthetische sokken\n\nTip: â€œPedi- of Wandelwolâ€is een 100% natuurproduct dat u als antidrukmiddel zelf goed kunt gebruiken en toepassen. Geschikt voor wandelaars, sporters of mensen die snel last van pijnlijke drukplekken, blaren of koude voeten hebben. Vraag er eens naar als u in de praktijk bent.', 2, '2019-06-05 22:44:11', 0, 3),
(15, 'SCHIMMELINFECTIES', 'Gebruik badslippers in publieke natte ruimten zoals zwembaden, saunaâ€™s, kleedkamers van sportschool of -vereniging, gymzalen.\n\nKomt u regelmatig in publieke natte ruimten controleer uw voeten goed op mogelijke signalen van voetschimmel zoals kleine blaasjes en nagels die van kleur veranderen.', 3, '2019-06-05 22:44:11', 0, 3),
(16, 'EELT EN KLOVEN', 'Eelt doet zich voor op plaatsen op de voet waar veel druk of wrijving plaats vindt. Voortdurende druk en eeltvorming kan leiden tot likdoornvorming.\n\nKloven kunnen ontstaan op eeltlocaties waar het eelt erg droog is en de huid minder elastisch is geworden.\n\nDoor zelf regelmatig met een voetvijl u voeten te behandelen en de voeten in te smeren met een verzorgende crÃ¨me kunt u klachten door overmatig eelt of kloven voorkomen.', 4, '2019-06-05 22:44:11', 0, 3),
(17, 'VOETEN WASSEN', 'Was uw voeten dagelijks met lauw water en bij voorkeur zonder zeep. Blijf ook niet te lang met uw voeten in het water, een droge huid kan hiervan het gevolg zijn. Droog natte voeten goed af, vooral tussen de tenen en geef ze even de tijd ook volledig te drogen.\n\nSmeer uw voeten dagelijks na het wassen in met wat lotion of hydraterende crÃ¨me zodat de huid niet uitdroogt.', 1, '2019-06-06 07:12:33', 0, 4),
(18, 'SCHOEISEL EN SOKKEN', 'Draag bij voorkeur katoenen of wollen sokken zonder dikke naden en verschoon ze dagelijks. Goed passende schoenen, die bovendien voldoende ventileren, zijn essentieel in uw dagelijks loopcomfort en in het voorkomen van pijnlijke voeten. Laat u voorlichten in een goede schoenenzaak over de voor u juiste maat en pasvorm. Koop uw schoenen bovendien aan het einde van de dag dan kunnen uw voeten namelijk al wat opgezet zijn.\nWissel zo mogelijk dagelijks van schoenen\nVoorkom ingegroeide teennagels\nDe grootste risicofactoren voor het ontstaan van ingroeiende teennagels zijn:\n\nâ€¢	Druk door slecht passend schoeisel\nâ€¢	Het verkeerd (te kort en/of niet recht) knippen van de nagels\nâ€¢	Een weke nagelomgeving door veel baden, transpiratie of synthetische sokken\n\nTip: â€œPedi- of Wandelwolâ€is een 100% natuurproduct dat u als antidrukmiddel zelf goed kunt gebruiken en toepassen. Geschikt voor wandelaars, sporters of mensen die snel last van pijnlijke drukplekken, blaren of koude voeten hebben. Vraag er eens naar als u in de praktijk bent.', 2, '2019-06-06 07:12:33', 0, 4),
(19, 'SCHIMMELINFECTIES', 'Gebruik badslippers in publieke natte ruimten zoals zwembaden, saunaâ€™s, kleedkamers van sportschool of -vereniging, gymzalen.\n\nKomt u regelmatig in publieke natte ruimten controleer uw voeten goed op mogelijke signalen van voetschimmel zoals kleine blaasjes en nagels die van kleur veranderen.', 3, '2019-06-06 07:12:33', 0, 4),
(20, 'EELT EN KLOVEN', 'Eelt doet zich voor op plaatsen op de voet waar veel druk of wrijving plaats vindt. Voortdurende druk en eeltvorming kan leiden tot likdoornvorming.\n\nKloven kunnen ontstaan op eeltlocaties waar het eelt erg droog is en de huid minder elastisch is geworden.\n\nDoor zelf regelmatig met een voetvijl u voeten te behandelen en de voeten in te smeren met een verzorgende crÃ¨me kunt u klachten door overmatig eelt of kloven voorkomen.', 4, '2019-06-06 07:12:33', 0, 4),
(21, 'VOETEN WASSEN', 'Was uw voeten dagelijks met lauw water en bij voorkeur zonder zeep. Blijf ook niet te lang met uw voeten in het water, een droge huid kan hiervan het gevolg zijn. Droog natte voeten goed af, vooral tussen de tenen en geef ze even de tijd ook volledig te drogen.\n\nSmeer uw voeten dagelijks na het wassen in met wat lotion of hydraterende crÃ¨me zodat de huid niet uitdroogt.', 1, '2019-06-06 07:12:45', 0, 5),
(22, 'SCHOEISEL EN SOKKEN', 'Draag bij voorkeur katoenen of wollen sokken zonder dikke naden en verschoon ze dagelijks. Goed passende schoenen, die bovendien voldoende ventileren, zijn essentieel in uw dagelijks loopcomfort en in het voorkomen van pijnlijke voeten. Laat u voorlichten in een goede schoenenzaak over de voor u juiste maat en pasvorm. Koop uw schoenen bovendien aan het einde van de dag dan kunnen uw voeten namelijk al wat opgezet zijn.\nWissel zo mogelijk dagelijks van schoenen\nVoorkom ingegroeide teennagels\nDe grootste risicofactoren voor het ontstaan van ingroeiende teennagels zijn:\n\n• Druk door slecht passend schoeisel\n• Het verkeerd (te kort en/of niet recht) knippen van de nagels\n• Een weke nagelomgeving door veel baden, transpiratie of synthetische sokken\n\nTip: "Pedi- of Wandelwol" is een 100% natuurproduct dat u als antidrukmiddel zelf goed kunt gebruiken en toepassen. Geschikt voor wandelaars, sporters of mensen die snel last van pijnlijke drukplekken, blaren of koude voeten hebben. Vraag er eens naar als u in de praktijk bent.', 2, '2019-06-06 07:12:45', 0, 5),
(23, 'SCHIMMELINFECTIES', 'Gebruik badslippers in publieke natte ruimten zoals zwembaden, sauna''s, kleedkamers van sportschool of -vereniging, gymzalen.\n\nKomt u regelmatig in publieke natte ruimten controleer uw voeten goed op mogelijke signalen van voetschimmel zoals kleine blaasjes en nagels die van kleur veranderen.', 3, '2019-06-06 07:12:45', 0, 5),
(24, 'EELT EN KLOVEN', 'Eelt doet zich voor op plaatsen op de voet waar veel druk of wrijving plaats vindt. Voortdurende druk en eeltvorming kan leiden tot likdoornvorming.\n\nKloven kunnen ontstaan op eeltlocaties waar het eelt erg droog is en de huid minder elastisch is geworden.\n\nDoor zelf regelmatig met een voetvijl u voeten te behandelen en de voeten in te smeren met een verzorgende créme kunt u klachten door overmatig eelt of kloven voorkomen.', 4, '2019-06-06 07:12:45', 0, 5),
(25, 'VOETEN WASSEN', 'Was uw voeten dagelijks met lauw water en bij voorkeur zonder zeep. Blijf ook niet te lang met uw voeten in het water, een droge huid kan hiervan het gevolg zijn. Droog natte voeten goed af, vooral tussen de tenen en geef ze even de tijd ook volledig te drogen.\n\nSmeer uw voeten dagelijks na het wassen in met wat lotion of hydraterende crÃ¨me zodat de huid niet uitdroogt.', 1, '2019-06-06 07:12:45', 1, 6),
(26, 'SCHOEISEL EN SOKKEN', 'Draag bij voorkeur katoenen of wollen sokken zonder dikke naden en verschoon ze dagelijks. Goed passende schoenen, die bovendien voldoende ventileren, zijn essentieel in uw dagelijks loopcomfort en in het voorkomen van pijnlijke voeten. Laat u voorlichten in een goede schoenenzaak over de voor u juiste maat en pasvorm. Koop uw schoenen bovendien aan het einde van de dag dan kunnen uw voeten namelijk al wat opgezet zijn.\nWissel zo mogelijk dagelijks van schoenen\nVoorkom ingegroeide teennagels\nDe grootste risicofactoren voor het ontstaan van ingroeiende teennagels zijn:\n\n• Druk door slecht passend schoeisel\n• Het verkeerd (te kort en/of niet recht) knippen van de nagels\n• Een weke nagelomgeving door veel baden, transpiratie of synthetische sokken\n\nTip: "Pedi- of Wandelwol" is een 100% natuurproduct dat u als antidrukmiddel zelf goed kunt gebruiken en toepassen. Geschikt voor wandelaars, sporters of mensen die snel last van pijnlijke drukplekken, blaren of koude voeten hebben. Vraag er eens naar als u in de praktijk bent.', 2, '2019-06-06 07:12:45', 1, 6),
(27, 'SCHIMMELINFECTIES', 'Gebruik badslippers in publieke natte ruimten zoals zwembaden, sauna''s, kleedkamers van sportschool of -vereniging, gymzalen.\n\nKomt u regelmatig in publieke natte ruimten controleer uw voeten goed op mogelijke signalen van voetschimmel zoals kleine blaasjes en nagels die van kleur veranderen.', 3, '2019-06-06 07:12:45', 1, 6),
(28, 'EELT EN KLOVEN', 'Eelt doet zich voor op plaatsen op de voet waar veel druk of wrijving plaats vindt. Voortdurende druk en eeltvorming kan leiden tot likdoornvorming.\n\nKloven kunnen ontstaan op eeltlocaties waar het eelt erg droog is en de huid minder elastisch is geworden.\n\nDoor zelf regelmatig met een voetvijl u voeten te behandelen en de voeten in te smeren met een verzorgende créme kunt u klachten door overmatig eelt of kloven voorkomen.', 4, '2019-06-06 07:12:45', 1, 6);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Gegevens worden uitgevoerd voor tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`) VALUES
(1, 'Nanko Prinzhorn', 'Nankow', 'nanko.prinzhorn@gmail.com', '5e917ca6eff13bfba682129214274c823129702066930f3409fa982774fb04f4');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
