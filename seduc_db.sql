-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.25-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para seduc_db
CREATE DATABASE IF NOT EXISTS `seduc_db` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `seduc_db`;

-- Copiando estrutura para tabela seduc_db.contrato
CREATE TABLE IF NOT EXISTS `contrato` (
  `cd_Contrato` int(11) NOT NULL AUTO_INCREMENT,
  `cd_situacao` int(11) NOT NULL,
  `cd_Fornecedor` int(11) DEFAULT NULL,
  `dt_AnoContrato` varchar(10) DEFAULT NULL,
  `tp_Servico` varchar(45) DEFAULT NULL,
  `dt_Inicial` datetime DEFAULT NULL,
  `dt_Final` datetime DEFAULT NULL,
  `num_contrato` varchar(45) DEFAULT NULL,
  `pr_Total` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cd_Contrato`),
  KEY `fk_contrato_situacao_contrato1_idx` (`cd_situacao`),
  KEY `fk_contrato_fornecedor1_idx` (`cd_Fornecedor`),
  CONSTRAINT `fk_contrato_fornecedor1` FOREIGN KEY (`cd_Fornecedor`) REFERENCES `fornecedor` (`cd_Fornecedor`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_contrato_situacao_contrato1` FOREIGN KEY (`cd_situacao`) REFERENCES `situacao_contrato` (`cd_situacao`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para view seduc_db.contratoview
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `contratoview` (
	`cd_Contrato` INT(11) NOT NULL,
	`dt_AnoContrato` VARCHAR(10) NULL COLLATE 'utf8_general_ci',
	`tp_Servico` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`dt_Inicial` DATETIME NULL,
	`dt_Final` DATETIME NULL,
	`num_contrato` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`pr_Total` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`cd_situacao` INT(11) NOT NULL,
	`nm_situacao` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`cd_Fornecedor` INT(11) NOT NULL,
	`nm_Fornecedor` VARCHAR(45) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para tabela seduc_db.escola
CREATE TABLE IF NOT EXISTS `escola` (
  `cd_Escola` int(11) NOT NULL AUTO_INCREMENT,
  `cd_statusEscola` int(11) NOT NULL,
  `nm_Escola` varchar(500) DEFAULT NULL,
  `ds_Local` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`cd_Escola`),
  KEY `fk_escola_status_escola1_idx` (`cd_statusEscola`),
  CONSTRAINT `fk_escola_status_escola1` FOREIGN KEY (`cd_statusEscola`) REFERENCES `status_escola` (`cd_statusEscola`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para view seduc_db.escolaview
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `escolaview` (
	`cd_Escola` INT(11) NOT NULL,
	`cd_statusEscola` INT(11) NOT NULL,
	`nm_Escola` VARCHAR(500) NULL COLLATE 'utf8_general_ci',
	`ds_Local` VARCHAR(500) NULL COLLATE 'utf8_general_ci',
	`nm_statusEscola` VARCHAR(45) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para tabela seduc_db.escola_has_contrato
CREATE TABLE IF NOT EXISTS `escola_has_contrato` (
  `cd_Escola` int(11) NOT NULL,
  `cd_Contrato` int(11) NOT NULL,
  PRIMARY KEY (`cd_Escola`,`cd_Contrato`),
  KEY `fk_escola_has_contrato_contrato1_idx` (`cd_Contrato`),
  KEY `fk_escola_has_contrato_escola1_idx` (`cd_Escola`),
  CONSTRAINT `fk_escola_has_contrato_contrato1` FOREIGN KEY (`cd_Contrato`) REFERENCES `contrato` (`cd_Contrato`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_escola_has_contrato_escola1` FOREIGN KEY (`cd_Escola`) REFERENCES `escola` (`cd_Escola`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela seduc_db.fornecedor
CREATE TABLE IF NOT EXISTS `fornecedor` (
  `cd_Fornecedor` int(11) NOT NULL AUTO_INCREMENT,
  `nm_Fornecedor` varchar(45) DEFAULT NULL,
  `num_CNPJ` varchar(45) DEFAULT NULL,
  `ds_Email` varchar(45) DEFAULT NULL,
  `ds_Endereco` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cd_Fornecedor`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela seduc_db.foto
CREATE TABLE IF NOT EXISTS `foto` (
  `cd_foto` int(11) NOT NULL AUTO_INCREMENT,
  `cd_Relatorio` int(11) NOT NULL,
  `img_foto` longblob DEFAULT NULL,
  `ds_foto` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cd_foto`),
  KEY `fk_foto_relatorio1_idx` (`cd_Relatorio`),
  CONSTRAINT `fk_foto_relatorio1` FOREIGN KEY (`cd_Relatorio`) REFERENCES `relatorio` (`cd_Relatorio`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela seduc_db.nivel_autoridade
CREATE TABLE IF NOT EXISTS `nivel_autoridade` (
  `cd_nivelAutoridade` int(11) NOT NULL AUTO_INCREMENT,
  `nm_nivelAutoridade` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cd_nivelAutoridade`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela seduc_db.obra
CREATE TABLE IF NOT EXISTS `obra` (
  `cd_Obra` int(11) NOT NULL AUTO_INCREMENT,
  `cd_situacaoObra` int(11) NOT NULL,
  `cd_Escola` int(11) NOT NULL,
  `cd_Contrato` int(11) NOT NULL,
  `nm_Contratante` varchar(45) DEFAULT 'Prefeitura',
  `tp_AtividadeDescricao` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cd_Obra`),
  KEY `fk_obra_situacao_obra1_idx` (`cd_situacaoObra`),
  KEY `fk_obra_escola1_idx` (`cd_Escola`),
  KEY `fk_obra_contrato1_idx` (`cd_Contrato`),
  CONSTRAINT `fk_obra_contrato1` FOREIGN KEY (`cd_Contrato`) REFERENCES `contrato` (`cd_Contrato`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_obra_escola1` FOREIGN KEY (`cd_Escola`) REFERENCES `escola` (`cd_Escola`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_obra_situacao_obra1` FOREIGN KEY (`cd_situacaoObra`) REFERENCES `situacao_obra` (`cd_situacaoObra`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para view seduc_db.obraview
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `obraview` (
	`cd_Obra` INT(11) NOT NULL,
	`nm_Contratante` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`tp_AtividadeDescricao` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`cd_situacaoObra` INT(11) NOT NULL,
	`nm_situacaoObra` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`cd_Escola` INT(11) NOT NULL,
	`nm_Escola` VARCHAR(500) NULL COLLATE 'utf8_general_ci',
	`ds_Local` VARCHAR(500) NULL COLLATE 'utf8_general_ci',
	`num_contrato` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`tp_Servico` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`dt_Inicial` DATETIME NULL,
	`dt_Final` DATETIME NULL,
	`pr_Total` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`nm_Fornecedor` VARCHAR(45) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para tabela seduc_db.obra_has_usuario
CREATE TABLE IF NOT EXISTS `obra_has_usuario` (
  `cd_Obra` int(11) DEFAULT NULL,
  `cd_Usuario` int(11) DEFAULT NULL,
  KEY `cd_Obra` (`cd_Obra`),
  KEY `cd_Usuario` (`cd_Usuario`),
  CONSTRAINT `fk_obra_has_usuario_obra1.idx` FOREIGN KEY (`cd_Obra`) REFERENCES `obra` (`cd_Obra`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_obra_has_usuario_usuario1.idx` FOREIGN KEY (`cd_Usuario`) REFERENCES `usuario` (`cd_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela seduc_db.relatorio
CREATE TABLE IF NOT EXISTS `relatorio` (
  `cd_Relatorio` int(11) NOT NULL AUTO_INCREMENT,
  `cd_situacaoRelatorio` int(11) NOT NULL,
  `cd_tipoTempo` int(11) NOT NULL,
  `cd_tipoCondicao` int(11) NOT NULL,
  `cd_Usuario` int(11) NOT NULL,
  `cd_Obra` int(11) NOT NULL,
  `num_Relatorio` int(11) NOT NULL,
  `nm_TecResponsavel` varchar(45) DEFAULT NULL,
  `ds_Email_TecResponsavel` varchar(45) DEFAULT NULL,
  `nm_LocResponsavel` varchar(45) DEFAULT NULL,
  `dt_Carimbo` datetime DEFAULT NULL,
  `pr_Decorrido` varchar(45) DEFAULT NULL,
  `nm_Dia` varchar(45) DEFAULT NULL,
  `qt_totalMaoDeObra` varchar(45) DEFAULT NULL,
  `qt_Ajudantes` varchar(45) DEFAULT NULL,
  `qt_Eletricistas` varchar(45) DEFAULT NULL,
  `qt_Mestres` varchar(45) DEFAULT NULL,
  `qt_Pedreiros` varchar(45) DEFAULT NULL,
  `qt_Serventes` varchar(45) DEFAULT NULL,
  `qt_MaoDireta` varchar(45) DEFAULT NULL,
  `pt_Conclusao` varchar(45) DEFAULT NULL,
  `tp_AtivRealizada` varchar(45) DEFAULT NULL,
  `tp_Comentario` varchar(45) DEFAULT NULL,
  `pr_Vencer` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cd_Relatorio`),
  KEY `fk_relatorio_situacao_relatorio1_idx` (`cd_situacaoRelatorio`),
  KEY `fk_relatorio_tipo_tempo1_idx` (`cd_tipoTempo`),
  KEY `fk_relatorio_tipo_condicao1_idx` (`cd_tipoCondicao`),
  KEY `fk_relatorio_usuario1_idx` (`cd_Usuario`),
  KEY `fk_relatorio_obra1_idx` (`cd_Obra`),
  CONSTRAINT `fk_relatorio_obra1` FOREIGN KEY (`cd_Obra`) REFERENCES `obra` (`cd_Obra`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_relatorio_situacao_relatorio1` FOREIGN KEY (`cd_situacaoRelatorio`) REFERENCES `situacao_relatorio` (`cd_situacaoRelatorio`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_relatorio_tipo_condicao1` FOREIGN KEY (`cd_tipoCondicao`) REFERENCES `tipo_condicao` (`cd_tipoCondicao`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_relatorio_tipo_tempo1` FOREIGN KEY (`cd_tipoTempo`) REFERENCES `tipo_tempo` (`cd_tipoTempo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_relatorio_usuario1` FOREIGN KEY (`cd_Usuario`) REFERENCES `usuario` (`cd_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para view seduc_db.relatorioview
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `relatorioview` (
	`cd_Relatorio` INT(11) NOT NULL,
	`num_Relatorio` INT(11) NOT NULL,
	`nm_TecResponsavel` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`ds_Email_TecResponsavel` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`nm_LocResponsavel` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`dt_Carimbo` DATETIME NULL,
	`tp_AtivRealizada` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`pr_Decorrido` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`nm_Dia` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`qt_totalMaoDeObra` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`qt_Ajudantes` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`qt_Eletricistas` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`qt_Mestres` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`qt_Pedreiros` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`qt_Serventes` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`qt_MaoDireta` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`pt_Conclusao` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`tp_Comentario` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`pr_Vencer` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`cd_situacaoRelatorio` INT(11) NOT NULL,
	`nm_situacaoRelatorio` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`cd_tipoTempo` INT(11) NOT NULL,
	`nm_tipoTempo` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`cd_tipoCondicao` INT(11) NOT NULL,
	`nm_tipoCondicao` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`cd_Obra` INT(11) NOT NULL,
	`tp_AtividadeDescricao` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`nm_Contratante` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`cd_situacaoObra` INT(11) NOT NULL,
	`nm_situacaoObra` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`cd_Escola` INT(11) NOT NULL,
	`nm_Escola` VARCHAR(500) NULL COLLATE 'utf8_general_ci',
	`ds_Local` VARCHAR(500) NULL COLLATE 'utf8_general_ci',
	`cd_Contrato` INT(11) NOT NULL,
	`dt_AnoContrato` VARCHAR(10) NULL COLLATE 'utf8_general_ci',
	`tp_Servico` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`dt_Inicial` DATETIME NULL,
	`dt_Final` DATETIME NULL,
	`num_contrato` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`pr_Total` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`cd_situacao` INT(11) NOT NULL,
	`nm_situacao` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`cd_Fornecedor` INT(11) NOT NULL,
	`nm_Fornecedor` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`ds_Email` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`cd_tipoPeriodo` INT(11) NOT NULL,
	`Periodo` MEDIUMTEXT NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para tabela seduc_db.relatorio_has_tipo_periodo
CREATE TABLE IF NOT EXISTS `relatorio_has_tipo_periodo` (
  `cd_Relatorio` int(11) NOT NULL,
  `cd_tipoPeriodo` int(11) NOT NULL,
  PRIMARY KEY (`cd_Relatorio`,`cd_tipoPeriodo`),
  KEY `fk_relatorio_has_tipo_periodo_tipo_periodo1_idx` (`cd_tipoPeriodo`),
  KEY `fk_relatorio_has_tipo_periodo_relatorio1_idx` (`cd_Relatorio`),
  CONSTRAINT `fk_relatorio_has_tipo_periodo_relatorio1` FOREIGN KEY (`cd_Relatorio`) REFERENCES `relatorio` (`cd_Relatorio`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_relatorio_has_tipo_periodo_tipo_periodo1` FOREIGN KEY (`cd_tipoPeriodo`) REFERENCES `tipo_periodo` (`cd_tipoPeriodo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela seduc_db.situacao_contrato
CREATE TABLE IF NOT EXISTS `situacao_contrato` (
  `cd_situacao` int(11) NOT NULL AUTO_INCREMENT,
  `nm_situacao` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cd_situacao`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela seduc_db.situacao_obra
CREATE TABLE IF NOT EXISTS `situacao_obra` (
  `cd_situacaoObra` int(11) NOT NULL AUTO_INCREMENT,
  `nm_situacaoObra` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cd_situacaoObra`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela seduc_db.situacao_relatorio
CREATE TABLE IF NOT EXISTS `situacao_relatorio` (
  `cd_situacaoRelatorio` int(11) NOT NULL AUTO_INCREMENT,
  `nm_situacaoRelatorio` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cd_situacaoRelatorio`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela seduc_db.status_escola
CREATE TABLE IF NOT EXISTS `status_escola` (
  `cd_statusEscola` int(11) NOT NULL AUTO_INCREMENT,
  `nm_statusEscola` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cd_statusEscola`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela seduc_db.tipo_condicao
CREATE TABLE IF NOT EXISTS `tipo_condicao` (
  `cd_tipoCondicao` int(11) NOT NULL AUTO_INCREMENT,
  `nm_tipoCondicao` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cd_tipoCondicao`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela seduc_db.tipo_periodo
CREATE TABLE IF NOT EXISTS `tipo_periodo` (
  `cd_tipoPeriodo` int(11) NOT NULL AUTO_INCREMENT,
  `nm_tipoPeriodo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cd_tipoPeriodo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela seduc_db.tipo_tempo
CREATE TABLE IF NOT EXISTS `tipo_tempo` (
  `cd_tipoTempo` int(11) NOT NULL AUTO_INCREMENT,
  `nm_tipoTempo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cd_tipoTempo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela seduc_db.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `cd_Usuario` int(11) NOT NULL AUTO_INCREMENT,
  `cd_nivelAutoridade` int(11) NOT NULL,
  `cd_Fornecedor` int(11) DEFAULT NULL,
  `user_Login` varchar(45) DEFAULT NULL,
  `user_Senha` varchar(60) DEFAULT NULL,
  `user_Nome` varchar(45) DEFAULT NULL,
  `user_CPF` varchar(11) DEFAULT NULL,
  `user_Email` varchar(200) DEFAULT NULL,
  `user_Telefone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cd_Usuario`),
  KEY `cd_Fornecedor` (`cd_Fornecedor`),
  KEY `cd_nivelAutoridade` (`cd_nivelAutoridade`),
  CONSTRAINT `fk_usuario_fornecedor1.idx` FOREIGN KEY (`cd_Fornecedor`) REFERENCES `fornecedor` (`cd_Fornecedor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuario_nivel_autoridade1.idx` FOREIGN KEY (`cd_nivelAutoridade`) REFERENCES `nivel_autoridade` (`cd_nivelAutoridade`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para view seduc_db.contratoview
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `contratoview`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `contratoview` AS SELECT c.cd_Contrato, c.dt_AnoContrato, c.tp_Servico, 
			c.dt_Inicial, c.dt_Final, c.num_contrato, c.pr_Total,
			stc.cd_situacao, stc.nm_situacao, f.cd_Fornecedor, f.nm_Fornecedor
	FROM contrato c 
	INNER JOIN situacao_contrato stc
	ON c.cd_situacao = stc.cd_situacao
	INNER JOIN fornecedor f
	ON c.cd_Fornecedor = f.cd_Fornecedor ;

-- Copiando estrutura para view seduc_db.escolaview
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `escolaview`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `escolaview` AS SELECT e.*, ste.nm_statusEscola FROM escola e 
		INNER JOIN status_escola ste 
		ON e.cd_statusEscola = ste.cd_statusEscola
		
                                
-- SELECT u.*, f.nm_Fornecedor FROM usuario u LEFT JOIN fornecedor f ON u.cd_Fornecedor = f.cd_Fornecedor ;

-- Copiando estrutura para view seduc_db.obraview
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `obraview`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `obraview` AS SELECT o.cd_Obra, o.nm_Contratante, o.tp_AtividadeDescricao,
		 sto.cd_situacaoObra, sto.nm_situacaoObra, e.cd_Escola, e.nm_Escola, 
		 e.ds_Local, c.num_contrato, c.tp_Servico, c.dt_Inicial, c.dt_Final,
		 c.pr_Total,
		 f.nm_Fornecedor
FROM obra o
INNER JOIN situacao_obra sto
ON o.cd_situacaoObra = sto.cd_situacaoObra
INNER JOIN escola e
ON o.cd_Escola = e.cd_Escola
INNER JOIN escola_has_contrato ehc
ON e.cd_Escola = ehc.cd_Escola
INNER JOIN contrato c
ON ehc.cd_Contrato = c.cd_Contrato
INNER JOIN fornecedor f
ON c.cd_Fornecedor = f.cd_Fornecedor ;

-- Copiando estrutura para view seduc_db.relatorioview
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `relatorioview`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `relatorioview` AS SELECT r.cd_Relatorio, r.num_Relatorio, r.nm_TecResponsavel, 
			r.ds_Email_TecResponsavel, r.nm_LocResponsavel,
			r.dt_Carimbo, r.tp_AtivRealizada, r.pr_Decorrido, r.nm_Dia, r.qt_totalMaoDeObra,
			r.qt_Ajudantes, r.qt_Eletricistas, r.qt_Mestres, r.qt_Pedreiros,
			r.qt_Serventes, r.qt_MaoDireta, r.pt_Conclusao,
			r.tp_Comentario, r.pr_Vencer, str.cd_situacaoRelatorio, str.nm_situacaoRelatorio,
			tpt.cd_tipoTempo, tpt.nm_tipoTempo, tpc.cd_tipoCondicao, tpc.nm_tipoCondicao,
			o.cd_Obra, o.tp_AtividadeDescricao, o.nm_Contratante, sto.cd_situacaoObra, sto.nm_situacaoObra, 
			e.cd_Escola, e.nm_Escola, e.ds_Local, c.cd_Contrato, c.dt_AnoContrato, c.tp_Servico, 
			c.dt_Inicial, c.dt_Final, c.num_contrato, c.pr_Total, stc.cd_situacao, stc.nm_situacao, f.cd_Fornecedor,
			f.nm_Fornecedor, f.ds_Email, tpp.cd_tipoPeriodo, GROUP_CONCAT(tpp.nm_tipoPeriodo SEPARATOR ", ") As Periodo
		FROM relatorio r
		INNER JOIN situacao_relatorio str
		ON r.cd_situacaoRelatorio = str.cd_situacaoRelatorio
		INNER JOIN tipo_tempo tpt
		ON r.cd_tipoTempo = tpt.cd_tipoTempo
		INNER JOIN tipo_condicao tpc
		ON r.cd_tipoCondicao = tpc.cd_tipoCondicao
		INNER JOIN obra o
		ON r.cd_Obra = o.cd_Obra
		INNER JOIN situacao_obra sto
		ON o.cd_Obra = sto.cd_situacaoObra
		INNER JOIN escola e
		ON e.cd_Escola = o.cd_Escola
		INNER JOIN escola_has_contrato ehc
		ON e.cd_Escola = ehc.cd_Escola
		INNER JOIN contrato c
		ON ehc.cd_Contrato = c.cd_Contrato
		INNER JOIN situacao_contrato stc
		ON c.cd_situacao = stc.cd_situacao
		INNER JOIN fornecedor f
		ON c.cd_Fornecedor = f.cd_Fornecedor
		INNER JOIN relatorio_has_tipo_periodo rhtp
		ON r.cd_Relatorio = rhtp.cd_Relatorio
		INNER JOIN tipo_periodo tpp
		ON rhtp.cd_tipoPeriodo = tpp.cd_tipoPeriodo
		GROUP BY rhtp.cd_Relatorio ;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
