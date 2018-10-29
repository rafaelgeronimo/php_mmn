-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.1.34-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para php_mmn
CREATE DATABASE IF NOT EXISTS `php_mmn` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `php_mmn`;

-- Copiando estrutura para tabela php_mmn.patentes
CREATE TABLE IF NOT EXISTS `patentes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL DEFAULT '0',
  `min` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela php_mmn.patentes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `patentes` DISABLE KEYS */;
INSERT INTO `patentes` (`id`, `nome`, `min`) VALUES
	(1, 'iniciante', 0),
	(2, 'junior', 1),
	(3, 'pleno', 3),
	(4, 'senior', 5),
	(5, 'mestre', 10);
/*!40000 ALTER TABLE `patentes` ENABLE KEYS */;

-- Copiando estrutura para tabela php_mmn.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_pai` int(11) DEFAULT '0',
  `patente` int(11) NOT NULL DEFAULT '1',
  `nome` varchar(100) NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL DEFAULT '0',
  `senha` varchar(32) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela php_mmn.usuarios: ~14 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`id`, `id_pai`, `patente`, `nome`, `email`, `senha`) VALUES
	(1, 0, 5, 'Sistema', 'sistema@mmn.com', '698dc19d489c4e4db73e28a713eab07b'),
	(2, 1, 4, 'Rafael', 'rafaelgeronimo@outlook.com', '5824af1c01b5bb2196293a35cf3e44e0'),
	(3, 2, 2, 'Teste', 'teste@teste.com', 'ce11fce876c93ed5d2a72da660496473'),
	(4, 2, 1, 'Fulano', 'fulano@gmail.com', 'fbad19c19e9c4baff8b963e8fc6f794b'),
	(5, 2, 1, 'Beltrano', 'beltrano@gmail.com', 'cb45fa12a469c24be4afe692d68250c3'),
	(6, 3, 2, 'Gilberto', 'gilberto@hotmail.com', '2b6d9008d5543005f7ece18d720c1ea9'),
	(7, 6, 1, 'Aline', 'aline@gmail.com', '00d7830269829d3d8c15af582a301e15'),
	(8, 1, 4, 'Richard', 'richard@gmail.com', '8f73e8e546864f3f8de16d64002dec95'),
	(9, 1, 1, 'Alonso', 'alonso@gmail.com', 'dcccf0bbe5a2766fc5a655c1e3380d66'),
	(10, 8, 1, 'Astolfo', 'astolfo@gmail.com', '3500ff1dc43a9cb1db2b48b6c8926d3e'),
	(11, 8, 1, 'Jodie', 'jodie@gmail.com', '5be6527e0207790495cdcc122f0f86f8'),
	(12, 8, 1, 'Venom', 'venom@gmail.com', '30028684327a5c97b23d3ef3c97d04d5'),
	(13, 8, 1, 'Tueia', 'tueia@gmail.com', '561609ff7ba846cc4cce0db5b3db1097'),
	(14, 8, 1, 'Amora', 'amora@gmail.com', 'dc2a62131c8563bcde9ad475b83c941b');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
