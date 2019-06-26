-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.7.23-log


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema portal_noticias
--

CREATE DATABASE IF NOT EXISTS portal_noticias;
USE portal_noticias;

--
-- Definition of table `noticias`
--

DROP TABLE IF EXISTS `noticias`;
CREATE TABLE `noticias` (
  `id_noticia` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `noticia` text NOT NULL,
  `data_criacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_noticia`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `noticias`
--

/*!40000 ALTER TABLE `noticias` DISABLE KEYS */;
INSERT INTO `noticias` (`id_noticia`,`titulo`,`noticia`,`data_criacao`) VALUES 
 (1,'Titulo da notícia','Contenúdo da notícia','2019-06-26 13:01:53'),
 (11,'Titulo da outra notícia','Contenúdo da outra notícia','2019-06-26 13:12:42'),
 (21,'noticia 3','teste noticia 3','2019-06-26 18:53:38'),
 (31,'noticia 4','teste noticia 4','2019-06-26 18:54:59'),
 (41,'noticia 4','teste noticia 4','2019-06-26 18:57:25'),
 (51,'outra noticia','outra noticia\r\n','2019-06-26 19:10:14'),
 (61,'classe','classe','2019-06-26 19:15:03'),
 (71,'asdasdas','asdasd','2019-06-26 19:24:55');
/*!40000 ALTER TABLE `noticias` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
