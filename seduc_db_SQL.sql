-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21-Ago-2023 às 15:40
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `seduc_db`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `contrato`
--

CREATE TABLE `contrato` (
  `cd_Contrato` int(11) NOT NULL,
  `cd_situacao` int(11) NOT NULL,
  `cd_Fornecedor` int(11) DEFAULT NULL,
  `dt_AnoContrato` varchar(10) DEFAULT NULL,
  `tp_Servico` varchar(45) DEFAULT NULL,
  `dt_Inicial` datetime DEFAULT NULL,
  `dt_Final` datetime DEFAULT NULL,
  `num_contrato` varchar(45) DEFAULT NULL,
  `pr_Total` varchar(45) DEFAULT NULL,
  `cd_status_dados` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `contratoview`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `contratoview` (
`cd_Contrato` int(11)
,`dt_AnoContrato` varchar(10)
,`tp_Servico` varchar(45)
,`dt_Inicial` datetime
,`dt_Final` datetime
,`num_contrato` varchar(45)
,`pr_Total` varchar(45)
,`cd_situacao` int(11)
,`nm_situacao` varchar(45)
,`cd_Fornecedor` int(11)
,`nm_Fornecedor` varchar(45)
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `escola`
--

CREATE TABLE `escola` (
  `cd_Escola` int(11) NOT NULL,
  `cd_statusEscola` int(11) NOT NULL,
  `nm_Escola` varchar(500) DEFAULT NULL,
  `ds_Local` varchar(500) DEFAULT NULL,
  `cd_status_dados` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `escola`
--

INSERT INTO `escola` (`cd_Escola`, `cd_statusEscola`, `nm_Escola`, `ds_Local`, `cd_status_dados`) VALUES
(1, 1, 'EMEF ANTONIO PACÍFICO', 'Rua: Anadir D. Carvalho, nº 438 – Jóquei Clube', 1),
(2, 1, 'EMEF ARMINDO RAMOS', 'Rua Sergipe, nº 131 – Samaritá', 1),
(3, 1, 'EMEF AUGUSTO DE SAINT HILAIRE', 'Av. Martins Fontes, nº 1000 – Catiapoã', 1),
(4, 1, 'EMEF CAIC – AYRTON SENNA DA SILVA', 'Rua Maria Rita Brito Lopes, s/n – Humaitá', 1),
(5, 1, 'EMEF CAROLINA DANTAS', 'Rua Aurélio Ponna, nº 26 – Catiapoã', 1),
(6, 1, 'CEJACON CENTRO M. DE EDUCAÇÃO SUPLETIVA', 'Av. Quarentenário n°1001 - Jardim Quarentenario', 1),
(7, 1, 'CEJAIN CENTRO MUNICIPAL DE EDUCAÇÃO SUPLETIVA', 'Av. Capitão Mor Aguiar, 798 - Centro', 1),
(8, 1, 'EMEF PROFESSOR CONSTANTE LUCIANO C. HOULMOUT', 'Av. Antônio Emmerick, nº 504 – Vila Valença', 1),
(9, 1, 'EMEF FRANCISCO MARTINS DOS SANTOS', 'Rua Dr. Donald Alexandre Kelman, nº 255 – Jardim Rio Branco', 1),
(10, 1, 'EMEF DR. MARIO COVAS JUNIOR', 'Rua Senador Nilo de S. Coelho, s/nº - Parque das Bandeiras', 1),
(11, 1, 'EMEF LIONS CLUBE', 'Rua Costa Rego, nº 533 – Vila São Jorge', 1),
(12, 1, 'EMEF MATTEO BEI', 'Rua Carijós, nº 505 – Parque São Vicente', 1),
(13, 1, 'EMEF NUMAA – ANA LUCIA ALMEIDA DE OLIVEIRA', 'Av. João Francisco Bensdorp, nº 201 – Cidade Náutica', 1),
(14, 1, 'EMEF PASTOR JOAQUIM RODRIGUES DA SILVA', 'Rua João Francisco Bensdorp, nº 301 – Cidade Náutica', 1),
(15, 1, 'EMEF PREFEITO ANTONIO FERNANDO DOS REIS', 'Rua Juiz de Fora, nº 90 – Jardim Independência', 1),
(16, 1, 'EMEF PREFEITO JORGE BIERRENBACH SENRA', 'Rua Luiz Ferreira Morgado, nº 1783 – Jardim Rio Branco', 1),
(17, 1, 'EMEF PREFEITO LUIZ BENEDITINO FERREIRA', 'Rua Dr. Polydoro de Oliveira Bittencourt, nº 333 – Vila Mar', 1),
(18, 1, 'EMEF PROFESSOR JACOB ANDRADE C MARA', 'Rua Stelio Machado Loureiro, nº 1071 – Vila Fátima', 1),
(19, 1, 'EMEF PROFESSOR LÚCIO MARTINS RODRIGUES', 'Rua Odair Miller A. Marques, nº 434 – Vila Margarida', 1),
(20, 1, 'EMEF PROFESSOR LUIZ PINHO DE CARVALHO FILHO', 'Rua Dr. José Singer, nº 369 – Humaitá', 1),
(21, 1, 'EMEF PROFESSOR OCTÁVIO DE CÉSARE', 'Rua Tenente Durval do Amaral, nº 183 – Catiapoã', 1),
(22, 1, 'EMEF PROFESSOR RENAN ALVES LEITE', 'Rua Alcides de Araújo, nº 1030 – Jardim Paraíso', 1),
(23, 1, 'EMEF PROFESSORA LAURA FILGUEIRAS', 'Rua Marechal Euclides Z. da Costa, nº 75 – Vila Matteo Bei', 1),
(24, 1, 'EMEF PROF. LEONOR GUIMARÃES ALVES STOFFEL', 'Rua Oeiras, s/nº - Samaritá', 1),
(25, 1, 'EMEF RAQUEL DE CASTRO FERREIRA', 'Av. Newton Prado, nº 503 – Parque Bitaru', 1),
(26, 1, 'EMEF RAUL ROCHA DO AMARAL', 'Av. Belo Horizonte, nº 273 – Vila Ponte Nova', 1),
(27, 1, 'EMEF REPÚBLICA DE PORTUGAL', 'Praça 23 de Maio, nº 265 – Parque Bitaru', 1),
(28, 1, 'EMEF UNIÃO CÍVICA FEMININA', 'Praça Rui Barbosa, s/nº - Parque São Vicente', 1),
(29, 1, 'EMEF VERA LUCIA MACHADO MASSIS', 'Av. João Francisco Bensdorp, nº 1386 – Cidade Náutica', 1),
(30, 1, 'EMEI ADILZA DE OLIVEIRA ROSA SOBRAL', 'Praça 31 de Março, s/nº - Pompeba', 1),
(31, 1, 'EMEI ANUAR FRAHYA', 'Rua José Adriano Marrey Júnior, s/nº - Cidade Náutica', 1),
(32, 1, 'EMEI CARLOS CALDEIRA', 'Praça Armindo Ramos, s/nº - Samaritá', 1),
(33, 1, 'EMEI CIDADE DE NAHA', 'Rua General Etchegoyen, nº 25 – Catiapoã', 1),
(34, 1, 'EMEI CLEMENTE FERREIRA', 'Largo Clemente Ferreira, s/nº, Vila Cascatinha', 1),
(35, 1, 'EMEI DOM PEDRO I', 'Praça D. Pedro I, s/nº - Parque São Vicente', 1),
(36, 1, 'EMEI EDMUNDO CAPELLARI', 'Praça Vitória, s/nº - Jardim Independência', 1),
(37, 1, 'EMEI JOSÉ BORGES FERNANDES', 'Rua Senador Salgado Filho, s/nº - Jóquei Clube', 1),
(38, 1, 'EMEI KELMA MARIA TOFFETTI GONÇALVES', 'Rua Maria Rita de Souza Brito Lopes Pontes, s/nº - Humaitá', 1),
(39, 1, 'EMEI MARIA GUILHERMINA MACHADO – MIMI MACHADO', 'Rua Américo Martins dos Santos, s/nº - Jardim Paraís', 1),
(40, 1, 'EMEI MATTEO BEI', 'Rua Frei Gaspar, nº 2236 – Parque São Vicente', 1),
(41, 1, 'EMEI MONTEIRO LOBATO', 'Rua Rio Largo, s/nº - Jardim Nosso Lar', 1),
(42, 1, 'EMEI NOSSA SENHORA DA ESPERANÇA', 'Rua Salvador, 30 - Vila Ponte Nova', 1),
(43, 1, 'EMEI PADRE JOSÉ DE ANCHIETA', 'Praça Dário Aredes, s/nº - Parque das Bandeiras', 1),
(44, 1, 'EMEI PROFESSORA MARIA ELIZABETH RAMOS DA SILVA', 'Rua Um, nº 135 – Samaritá', 1),
(45, 1, 'EMEI PROVÍNCIA DE OKINAWA', 'Rua Cidade de Cubatão s/nº - Vila Margarida', 1),
(46, 1, 'EMEI PROVÍNCIA DE OKINAWA II', 'Rua Caimoré, 804 - Vila Margarida', 1),
(47, 1, 'EMEI VILA JÓQUEI', 'Rua Fernando Ferrari s/nº - Jóquei Clube', 1),
(48, 1, 'EMEIEF ALBERTO SANTOS DUMONT', 'Rua Eduardo Cação s/nº - Jardim Rio Branco', 1),
(49, 1, 'EMEIEF DUQUE DE CAXIAS', 'Praça Napoleão Laureano s/nº - Jardim Guassu', 1),
(50, 1, 'EMEIEF ERCÍLIA NOGUEIRA COBRA', 'Rua Vale do Pó, nº 400 – Vila Margarida', 1),
(51, 1, 'EMEIEF EULINA TRINDADE', 'Rua Olga Marques s/nº - Vila Matteo Bei', 1),
(52, 1, 'EMEIEF PREFEITO JONAS RODRIGUES', 'Rua Alexandre Sendim, nº 304 – Parque Bitaru', 1),
(53, 1, 'EMEIEF PREFEITO SEBASTIÃO RIBEIRO DA SILVA', 'Rua Quirino Mário Biasoli, nº 90 – Cidade Náutica', 1),
(54, 1, 'EMEIEF PROFESSOR GILSON KOOL MONTEIRO', 'Rua Rivaldo de Lima Ferreira s/nº - Vila Mathias', 1),
(55, 1, 'EMEIEF PREFEITO JOSÉ MEIRELLES', 'Rua Tupã, nº 345 – Quarentenário', 1),
(56, 1, 'EMEIEF MANOEL NASCIMENTO JÚNIOR', 'Rua Roberto Koch, nº 300 – Jóquei Clube', 1),
(57, 1, 'EMEIEF MARIA DE LOURDES BATISTA', 'Rua Caramuru, nº 623 – Parque São Vicente', 1),
(58, 1, 'EMEIEF NILTON RIBEIRO', 'Rua José Júlio da Silva s/nº - Japuí', 1),
(59, 1, 'EMEIEF MAURO APARECIDO DE GODOY', 'Praça Grande Oriente do Brasil, nº 03 – Pompeba', 1),
(60, 1, 'EMEIEF REGINA CÉLIA DOS SANTOS', 'Rua Visconde de Tamandaré, 385 – Centro', 1),
(61, 1, 'EMEIEF SAULO TARSO MARQUES DE MELLO', 'Rua José Viegas, 20 – Parque Continental', 1),
(62, 1, 'EMEIEF VILA EMa', 'Rua Dr. Marcelo Ribeiro Nogueira s/nº - Vila Ema', 1);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `escolaview`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `escolaview` (
`cd_Escola` int(11)
,`cd_statusEscola` int(11)
,`nm_Escola` varchar(500)
,`ds_Local` varchar(500)
,`cd_status_dados` int(11)
,`nm_statusEscola` varchar(45)
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `escola_has_contrato`
--

CREATE TABLE `escola_has_contrato` (
  `cd_Escola` int(11) NOT NULL,
  `cd_Contrato` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedor`
--

CREATE TABLE `fornecedor` (
  `cd_Fornecedor` int(11) NOT NULL,
  `nm_Fornecedor` varchar(45) DEFAULT NULL,
  `num_CNPJ` varchar(45) DEFAULT NULL,
  `ds_Email` varchar(45) DEFAULT NULL,
  `ds_Endereco` varchar(45) DEFAULT NULL,
  `cd_status_dados` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `fornecedor`
--

INSERT INTO `fornecedor` (`cd_Fornecedor`, `nm_Fornecedor`, `num_CNPJ`, `ds_Email`, `ds_Endereco`, `cd_status_dados`) VALUES
(-1, 'Não possui', ' ', ' ', ' ', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `foto`
--

CREATE TABLE `foto` (
  `cd_foto` int(11) NOT NULL,
  `cd_Relatorio` int(11) NOT NULL,
  `img_foto` longblob DEFAULT NULL,
  `ds_foto` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `nivel_autoridade`
--

CREATE TABLE `nivel_autoridade` (
  `cd_nivelAutoridade` int(11) NOT NULL,
  `nm_nivelAutoridade` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `nivel_autoridade`
--

INSERT INTO `nivel_autoridade` (`cd_nivelAutoridade`, `nm_nivelAutoridade`) VALUES
(1, 'Pendente'),
(2, 'Subordinado'),
(3, 'Secretaria'),
(4, 'Supervisor'),
(10, 'Admin');

-- --------------------------------------------------------

--
-- Estrutura da tabela `obra`
--

CREATE TABLE `obra` (
  `cd_Obra` int(11) NOT NULL,
  `cd_situacaoObra` int(11) NOT NULL,
  `cd_Contrato` int(11) NOT NULL,
  `cd_Escola` int(11) NOT NULL,
  `nm_Contratante` varchar(45) DEFAULT 'Prefeitura',
  `tp_AtividadeDescricao` varchar(45) DEFAULT NULL,
  `cd_status_dados` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `obraview`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `obraview` (
`cd_Obra` int(11)
,`cd_situacaoObra` int(11)
,`cd_Contrato` int(11)
,`cd_Escola` int(11)
,`nm_Contratante` varchar(45)
,`tp_AtividadeDescricao` varchar(45)
,`cd_status_dados` int(11)
,`nm_situacaoObra` varchar(45)
,`nm_Escola` varchar(500)
,`ds_Local` varchar(500)
,`num_contrato` varchar(45)
,`tp_Servico` varchar(45)
,`dt_Inicial` datetime
,`dt_Final` datetime
,`pr_Total` varchar(45)
,`nm_Fornecedor` varchar(45)
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `obra_has_usuario`
--

CREATE TABLE `obra_has_usuario` (
  `cd_Obra` int(11) DEFAULT NULL,
  `cd_Usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido_recuperacao`
--

CREATE TABLE `pedido_recuperacao` (
  `cd_pedido_recuperacao` int(11) NOT NULL,
  `cd_Usuario` int(11) DEFAULT NULL,
  `num_pedido_recuperacao` varchar(60) NOT NULL DEFAULT '',
  `ds_ativo` tinyint(4) NOT NULL DEFAULT 1,
  `dt_pedido_recuperacao` datetime NOT NULL,
  `hr_expiracao_pedido_recuperacao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pedido_recuperacao`
--

INSERT INTO `pedido_recuperacao` (`cd_pedido_recuperacao`, `cd_Usuario`, `num_pedido_recuperacao`, `ds_ativo`, `dt_pedido_recuperacao`, `hr_expiracao_pedido_recuperacao`) VALUES
(76, 59, '$2y$10$zvzBznYk1QGKQnkPQGJy/.1kZCsCdpwEXNcFkKPYKQnR5wDbapz4S', 0, '2023-08-21 10:32:14', '2023-08-21 10:33:14');

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `qtd_contrato_ativo_por_escola`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `qtd_contrato_ativo_por_escola` (
`qtd_contrato` bigint(21)
,`cd_Escola` int(11)
,`nm_Escola` varchar(500)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `qtd_contrato_ativo_por_fornecedor`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `qtd_contrato_ativo_por_fornecedor` (
`qtd_contrato` bigint(21)
,`cd_Fornecedor` int(11)
,`nm_Fornecedor` varchar(45)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `qtd_contrato_ativo__inativo`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `qtd_contrato_ativo__inativo` (
`qtd_total_contrato` bigint(21)
,`qtd_ativo` decimal(22,0)
,`qtd_inativo` decimal(22,0)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `qtd_obra_ativa_por_escola`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `qtd_obra_ativa_por_escola` (
`qtd_obra` bigint(21)
,`cd_Escola` int(11)
,`nm_Escola` varchar(500)
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `relatorio`
--

CREATE TABLE `relatorio` (
  `cd_Relatorio` int(11) NOT NULL,
  `cd_situacaoRelatorio` int(11) NOT NULL,
  `cd_tipoTempo` int(11) NOT NULL,
  `cd_tipoCondicao` int(11) NOT NULL,
  `cd_Usuario` int(11) NOT NULL,
  `cd_Obra` int(11) NOT NULL,
  `cd_Escola` int(11) NOT NULL,
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
  `cd_status_dados` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `relatorioview`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `relatorioview` (
`cd_Relatorio` int(11)
,`num_Relatorio` int(11)
,`nm_TecResponsavel` varchar(45)
,`ds_Email_TecResponsavel` varchar(45)
,`nm_LocResponsavel` varchar(45)
,`dt_Carimbo` datetime
,`tp_AtivRealizada` varchar(45)
,`pr_Decorrido` varchar(45)
,`nm_Dia` varchar(45)
,`qt_totalMaoDeObra` varchar(45)
,`qt_Ajudantes` varchar(45)
,`qt_Eletricistas` varchar(45)
,`qt_Mestres` varchar(45)
,`qt_Pedreiros` varchar(45)
,`qt_Serventes` varchar(45)
,`qt_MaoDireta` varchar(45)
,`pt_Conclusao` varchar(45)
,`tp_Comentario` varchar(45)
,`pr_Vencer` varchar(45)
,`cd_situacaoRelatorio` int(11)
,`nm_situacaoRelatorio` varchar(45)
,`cd_tipoTempo` int(11)
,`nm_tipoTempo` varchar(45)
,`cd_tipoCondicao` int(11)
,`nm_tipoCondicao` varchar(45)
,`cd_Obra` int(11)
,`tp_AtividadeDescricao` varchar(45)
,`nm_Contratante` varchar(45)
,`cd_situacaoObra` int(11)
,`nm_situacaoObra` varchar(45)
,`cd_Escola` int(11)
,`nm_Escola` varchar(500)
,`ds_Local` varchar(500)
,`cd_Contrato` int(11)
,`dt_AnoContrato` varchar(10)
,`tp_Servico` varchar(45)
,`dt_Inicial` datetime
,`dt_Final` datetime
,`num_contrato` varchar(45)
,`pr_Total` varchar(45)
,`cd_situacao` int(11)
,`nm_situacao` varchar(45)
,`cd_Fornecedor` int(11)
,`nm_Fornecedor` varchar(45)
,`ds_Email` varchar(45)
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `relatorio_has_tipo_periodo`
--

CREATE TABLE `relatorio_has_tipo_periodo` (
  `cd_Relatorio` int(11) NOT NULL,
  `cd_tipoPeriodo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `situacao_contrato`
--

CREATE TABLE `situacao_contrato` (
  `cd_situacao` int(11) NOT NULL,
  `nm_situacao` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `situacao_contrato`
--

INSERT INTO `situacao_contrato` (`cd_situacao`, `nm_situacao`) VALUES
(1, 'Ativo'),
(2, 'Inativo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `situacao_obra`
--

CREATE TABLE `situacao_obra` (
  `cd_situacaoObra` int(11) NOT NULL,
  `nm_situacaoObra` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `situacao_obra`
--

INSERT INTO `situacao_obra` (`cd_situacaoObra`, `nm_situacaoObra`) VALUES
(1, 'Ativa'),
(2, 'Inativa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `situacao_relatorio`
--

CREATE TABLE `situacao_relatorio` (
  `cd_situacaoRelatorio` int(11) NOT NULL,
  `nm_situacaoRelatorio` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `situacao_relatorio`
--

INSERT INTO `situacao_relatorio` (`cd_situacaoRelatorio`, `nm_situacaoRelatorio`) VALUES
(1, 'Pendente'),
(2, 'Recusado'),
(3, 'Aprovado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `status_dados`
--

CREATE TABLE `status_dados` (
  `cd_status_dados` int(11) NOT NULL,
  `nm_status_dados` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `status_dados`
--

INSERT INTO `status_dados` (`cd_status_dados`, `nm_status_dados`) VALUES
(1, 'Ativo'),
(2, 'Desativado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `status_escola`
--

CREATE TABLE `status_escola` (
  `cd_statusEscola` int(11) NOT NULL,
  `nm_statusEscola` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `status_escola`
--

INSERT INTO `status_escola` (`cd_statusEscola`, `nm_statusEscola`) VALUES
(1, 'Ativa'),
(2, 'Inativa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_condicao`
--

CREATE TABLE `tipo_condicao` (
  `cd_tipoCondicao` int(11) NOT NULL,
  `nm_tipoCondicao` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipo_condicao`
--

INSERT INTO `tipo_condicao` (`cd_tipoCondicao`, `nm_tipoCondicao`) VALUES
(1, 'Favorável'),
(2, 'Desfavorável');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_periodo`
--

CREATE TABLE `tipo_periodo` (
  `cd_tipoPeriodo` int(11) NOT NULL,
  `nm_tipoPeriodo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipo_periodo`
--

INSERT INTO `tipo_periodo` (`cd_tipoPeriodo`, `nm_tipoPeriodo`) VALUES
(1, 'Manhã'),
(2, 'Tarde'),
(3, 'Noite');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_tempo`
--

CREATE TABLE `tipo_tempo` (
  `cd_tipoTempo` int(11) NOT NULL,
  `nm_tipoTempo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipo_tempo`
--

INSERT INTO `tipo_tempo` (`cd_tipoTempo`, `nm_tipoTempo`) VALUES
(1, 'Ensolarado'),
(2, 'Chuvoso');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `cd_Usuario` int(11) NOT NULL,
  `cd_nivelAutoridade` int(11) NOT NULL,
  `cd_Fornecedor` int(11) DEFAULT NULL,
  `user_Login` varchar(45) DEFAULT NULL,
  `user_Senha` varchar(60) DEFAULT NULL,
  `user_Nome` varchar(45) DEFAULT NULL,
  `user_CPF` varchar(11) DEFAULT NULL,
  `user_Email` varchar(200) DEFAULT NULL,
  `user_Telefone` varchar(45) DEFAULT NULL,
  `cd_status_dados` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`cd_Usuario`, `cd_nivelAutoridade`, `cd_Fornecedor`, `user_Login`, `user_Senha`, `user_Nome`, `user_CPF`, `user_Email`, `user_Telefone`, `cd_status_dados`) VALUES
(59, 10, NULL, '$educADMIN', '$2y$10$i8dCm3w6kwPmCk.Qb4Y2C.FzbAEq/qzxPYE.0cXzVDaj4TcXElCzO', 'SEDUC Admin', NULL, 'pmsvtec@gmail.com', NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `usuarioview`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `usuarioview` (
`cd_Usuario` int(11)
,`cd_nivelAutoridade` int(11)
,`cd_Fornecedor` int(11)
,`user_Login` varchar(45)
,`user_Senha` varchar(60)
,`user_Nome` varchar(45)
,`user_CPF` varchar(11)
,`user_Email` varchar(200)
,`user_Telefone` varchar(45)
,`cd_status_dados` int(11)
,`nm_Fornecedor` varchar(45)
,`nm_nivelAutoridade` varchar(50)
);

-- --------------------------------------------------------

--
-- Estrutura para vista `contratoview`
--
DROP TABLE IF EXISTS `contratoview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `contratoview`  AS SELECT `c`.`cd_Contrato` AS `cd_Contrato`, `c`.`dt_AnoContrato` AS `dt_AnoContrato`, `c`.`tp_Servico` AS `tp_Servico`, `c`.`dt_Inicial` AS `dt_Inicial`, `c`.`dt_Final` AS `dt_Final`, `c`.`num_contrato` AS `num_contrato`, `c`.`pr_Total` AS `pr_Total`, `stc`.`cd_situacao` AS `cd_situacao`, `stc`.`nm_situacao` AS `nm_situacao`, `f`.`cd_Fornecedor` AS `cd_Fornecedor`, `f`.`nm_Fornecedor` AS `nm_Fornecedor` FROM ((`contrato` `c` join `situacao_contrato` `stc` on(`c`.`cd_situacao` = `stc`.`cd_situacao`)) join `fornecedor` `f` on(`c`.`cd_Fornecedor` = `f`.`cd_Fornecedor`)) WHERE `c`.`cd_status_dados` like 11  ;

-- --------------------------------------------------------

--
-- Estrutura para vista `escolaview`
--
DROP TABLE IF EXISTS `escolaview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `escolaview`  AS SELECT `e`.`cd_Escola` AS `cd_Escola`, `e`.`cd_statusEscola` AS `cd_statusEscola`, `e`.`nm_Escola` AS `nm_Escola`, `e`.`ds_Local` AS `ds_Local`, `e`.`cd_status_dados` AS `cd_status_dados`, `ste`.`nm_statusEscola` AS `nm_statusEscola` FROM (`escola` `e` join `status_escola` `ste` on(`e`.`cd_statusEscola` = `ste`.`cd_statusEscola`)) WHERE `e`.`cd_status_dados` like 11  ;

-- --------------------------------------------------------

--
-- Estrutura para vista `obraview`
--
DROP TABLE IF EXISTS `obraview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `obraview`  AS SELECT DISTINCT `o`.`cd_Obra` AS `cd_Obra`, `o`.`cd_situacaoObra` AS `cd_situacaoObra`, `o`.`cd_Contrato` AS `cd_Contrato`, `o`.`cd_Escola` AS `cd_Escola`, `o`.`nm_Contratante` AS `nm_Contratante`, `o`.`tp_AtividadeDescricao` AS `tp_AtividadeDescricao`, `o`.`cd_status_dados` AS `cd_status_dados`, `sto`.`nm_situacaoObra` AS `nm_situacaoObra`, `e`.`nm_Escola` AS `nm_Escola`, `e`.`ds_Local` AS `ds_Local`, `c`.`num_contrato` AS `num_contrato`, `c`.`tp_Servico` AS `tp_Servico`, `c`.`dt_Inicial` AS `dt_Inicial`, `c`.`dt_Final` AS `dt_Final`, `c`.`pr_Total` AS `pr_Total`, `f`.`nm_Fornecedor` AS `nm_Fornecedor` FROM ((((`obra` `o` join `situacao_obra` `sto` on(`o`.`cd_situacaoObra` = `sto`.`cd_situacaoObra`)) join `escola` `e` on(`o`.`cd_Escola` = `e`.`cd_Escola`)) join `contrato` `c` on(`o`.`cd_Contrato` = `c`.`cd_Contrato`)) join `fornecedor` `f` on(`c`.`cd_Fornecedor` = `f`.`cd_Fornecedor`)) WHERE `o`.`cd_status_dados` like 11  ;

-- --------------------------------------------------------

--
-- Estrutura para vista `qtd_contrato_ativo_por_escola`
--
DROP TABLE IF EXISTS `qtd_contrato_ativo_por_escola`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qtd_contrato_ativo_por_escola`  AS SELECT count(`c`.`cd_Contrato`) AS `qtd_contrato`, `ehc`.`cd_Escola` AS `cd_Escola`, `e`.`nm_Escola` AS `nm_Escola` FROM ((`contratoview` `c` join `escola_has_contrato` `ehc` on(`c`.`cd_Contrato` = `ehc`.`cd_Contrato`)) join `escola` `e` on(`ehc`.`cd_Escola` = `e`.`cd_Escola`)) WHERE `c`.`nm_situacao` = 'Ativo' GROUP BY `ehc`.`cd_Escola``cd_Escola`  ;

-- --------------------------------------------------------

--
-- Estrutura para vista `qtd_contrato_ativo_por_fornecedor`
--
DROP TABLE IF EXISTS `qtd_contrato_ativo_por_fornecedor`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qtd_contrato_ativo_por_fornecedor`  AS SELECT count(`c`.`cd_Contrato`) AS `qtd_contrato`, `c`.`cd_Fornecedor` AS `cd_Fornecedor`, `c`.`nm_Fornecedor` AS `nm_Fornecedor` FROM `contratoview` AS `c` WHERE `c`.`nm_situacao` = 'Ativo' GROUP BY `c`.`cd_Fornecedor``cd_Fornecedor`  ;

-- --------------------------------------------------------

--
-- Estrutura para vista `qtd_contrato_ativo__inativo`
--
DROP TABLE IF EXISTS `qtd_contrato_ativo__inativo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qtd_contrato_ativo__inativo`  AS SELECT count(0) AS `qtd_total_contrato`, ifnull(sum(case when `relatorioview`.`nm_situacao` = 'Ativo' then 1 else 0 end),0) AS `qtd_ativo`, ifnull(sum(case when `relatorioview`.`nm_situacao` = 'Inativo' then 1 else 0 end),0) AS `qtd_inativo` FROM `relatorioview``relatorioview`  ;

-- --------------------------------------------------------

--
-- Estrutura para vista `qtd_obra_ativa_por_escola`
--
DROP TABLE IF EXISTS `qtd_obra_ativa_por_escola`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qtd_obra_ativa_por_escola`  AS SELECT count(`obraview`.`cd_Obra`) AS `qtd_obra`, `obraview`.`cd_Escola` AS `cd_Escola`, `obraview`.`nm_Escola` AS `nm_Escola` FROM `obraview` GROUP BY `obraview`.`cd_Escola``cd_Escola`  ;

-- --------------------------------------------------------

--
-- Estrutura para vista `relatorioview`
--
DROP TABLE IF EXISTS `relatorioview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `relatorioview`  AS SELECT `r`.`cd_Relatorio` AS `cd_Relatorio`, `r`.`num_Relatorio` AS `num_Relatorio`, `r`.`nm_TecResponsavel` AS `nm_TecResponsavel`, `r`.`ds_Email_TecResponsavel` AS `ds_Email_TecResponsavel`, `r`.`nm_LocResponsavel` AS `nm_LocResponsavel`, `r`.`dt_Carimbo` AS `dt_Carimbo`, `r`.`tp_AtivRealizada` AS `tp_AtivRealizada`, `r`.`pr_Decorrido` AS `pr_Decorrido`, `r`.`nm_Dia` AS `nm_Dia`, `r`.`qt_totalMaoDeObra` AS `qt_totalMaoDeObra`, `r`.`qt_Ajudantes` AS `qt_Ajudantes`, `r`.`qt_Eletricistas` AS `qt_Eletricistas`, `r`.`qt_Mestres` AS `qt_Mestres`, `r`.`qt_Pedreiros` AS `qt_Pedreiros`, `r`.`qt_Serventes` AS `qt_Serventes`, `r`.`qt_MaoDireta` AS `qt_MaoDireta`, `r`.`pt_Conclusao` AS `pt_Conclusao`, `r`.`tp_Comentario` AS `tp_Comentario`, `r`.`pr_Vencer` AS `pr_Vencer`, `str`.`cd_situacaoRelatorio` AS `cd_situacaoRelatorio`, `str`.`nm_situacaoRelatorio` AS `nm_situacaoRelatorio`, `tpt`.`cd_tipoTempo` AS `cd_tipoTempo`, `tpt`.`nm_tipoTempo` AS `nm_tipoTempo`, `tpc`.`cd_tipoCondicao` AS `cd_tipoCondicao`, `tpc`.`nm_tipoCondicao` AS `nm_tipoCondicao`, `o`.`cd_Obra` AS `cd_Obra`, `o`.`tp_AtividadeDescricao` AS `tp_AtividadeDescricao`, `o`.`nm_Contratante` AS `nm_Contratante`, `sto`.`cd_situacaoObra` AS `cd_situacaoObra`, `sto`.`nm_situacaoObra` AS `nm_situacaoObra`, `e`.`cd_Escola` AS `cd_Escola`, `e`.`nm_Escola` AS `nm_Escola`, `e`.`ds_Local` AS `ds_Local`, `c`.`cd_Contrato` AS `cd_Contrato`, `c`.`dt_AnoContrato` AS `dt_AnoContrato`, `c`.`tp_Servico` AS `tp_Servico`, `c`.`dt_Inicial` AS `dt_Inicial`, `c`.`dt_Final` AS `dt_Final`, `c`.`num_contrato` AS `num_contrato`, `c`.`pr_Total` AS `pr_Total`, `stc`.`cd_situacao` AS `cd_situacao`, `stc`.`nm_situacao` AS `nm_situacao`, `f`.`cd_Fornecedor` AS `cd_Fornecedor`, `f`.`nm_Fornecedor` AS `nm_Fornecedor`, `f`.`ds_Email` AS `ds_Email` FROM (((((((((`relatorio` `r` join `situacao_relatorio` `str` on(`r`.`cd_situacaoRelatorio` = `str`.`cd_situacaoRelatorio`)) join `tipo_tempo` `tpt` on(`r`.`cd_tipoTempo` = `tpt`.`cd_tipoTempo`)) join `tipo_condicao` `tpc` on(`r`.`cd_tipoCondicao` = `tpc`.`cd_tipoCondicao`)) join `obra` `o` on(`r`.`cd_Obra` = `o`.`cd_Obra`)) join `situacao_obra` `sto` on(`o`.`cd_situacaoObra` = `sto`.`cd_situacaoObra`)) join `escola` `e` on(`e`.`cd_Escola` = `o`.`cd_Escola`)) join `contrato` `c` on(`o`.`cd_Contrato` = `c`.`cd_Contrato`)) join `situacao_contrato` `stc` on(`c`.`cd_situacao` = `stc`.`cd_situacao`)) join `fornecedor` `f` on(`c`.`cd_Fornecedor` = `f`.`cd_Fornecedor`)) WHERE `r`.`cd_status_dados` like 11  ;

-- --------------------------------------------------------

--
-- Estrutura para vista `usuarioview`
--
DROP TABLE IF EXISTS `usuarioview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `usuarioview`  AS SELECT `u`.`cd_Usuario` AS `cd_Usuario`, `u`.`cd_nivelAutoridade` AS `cd_nivelAutoridade`, `u`.`cd_Fornecedor` AS `cd_Fornecedor`, `u`.`user_Login` AS `user_Login`, `u`.`user_Senha` AS `user_Senha`, `u`.`user_Nome` AS `user_Nome`, `u`.`user_CPF` AS `user_CPF`, `u`.`user_Email` AS `user_Email`, `u`.`user_Telefone` AS `user_Telefone`, `u`.`cd_status_dados` AS `cd_status_dados`, `f`.`nm_Fornecedor` AS `nm_Fornecedor`, `na`.`nm_nivelAutoridade` AS `nm_nivelAutoridade` FROM ((`usuario` `u` left join `fornecedor` `f` on(`u`.`cd_Fornecedor` = `f`.`cd_Fornecedor`)) join `nivel_autoridade` `na` on(`u`.`cd_nivelAutoridade` = `na`.`cd_nivelAutoridade`)) WHERE `u`.`cd_status_dados` like 11  ;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `contrato`
--
ALTER TABLE `contrato`
  ADD PRIMARY KEY (`cd_Contrato`),
  ADD KEY `fk_contrato_situacao_contrato1_idx` (`cd_situacao`),
  ADD KEY `fk_contrato_fornecedor1_idx` (`cd_Fornecedor`),
  ADD KEY `fk_contrato_status_dados1_idx` (`cd_status_dados`) USING BTREE;

--
-- Índices para tabela `escola`
--
ALTER TABLE `escola`
  ADD PRIMARY KEY (`cd_Escola`),
  ADD KEY `fk_escola_status_escola1_idx` (`cd_statusEscola`),
  ADD KEY `fk_escola_status_dados1_idx` (`cd_status_dados`);

--
-- Índices para tabela `escola_has_contrato`
--
ALTER TABLE `escola_has_contrato`
  ADD PRIMARY KEY (`cd_Escola`,`cd_Contrato`),
  ADD KEY `cd_Escola` (`cd_Escola`),
  ADD KEY `cd_Contrato` (`cd_Contrato`);

--
-- Índices para tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`cd_Fornecedor`),
  ADD KEY `fk_fornecedor_status_dados1_idx` (`cd_status_dados`);

--
-- Índices para tabela `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`cd_foto`),
  ADD KEY `fk_foto_relatorio1_idx` (`cd_Relatorio`);

--
-- Índices para tabela `nivel_autoridade`
--
ALTER TABLE `nivel_autoridade`
  ADD PRIMARY KEY (`cd_nivelAutoridade`);

--
-- Índices para tabela `obra`
--
ALTER TABLE `obra`
  ADD PRIMARY KEY (`cd_Obra`),
  ADD KEY `fk_obra_situacao_obra1_idx` (`cd_situacaoObra`),
  ADD KEY `fk_obra_contrato1_idx` (`cd_Contrato`),
  ADD KEY `fk_obra_escola1_idx` (`cd_Escola`),
  ADD KEY `fk_obra_status_dados1_idx` (`cd_status_dados`);

--
-- Índices para tabela `obra_has_usuario`
--
ALTER TABLE `obra_has_usuario`
  ADD KEY `cd_Obra` (`cd_Obra`),
  ADD KEY `cd_Usuario` (`cd_Usuario`);

--
-- Índices para tabela `pedido_recuperacao`
--
ALTER TABLE `pedido_recuperacao`
  ADD PRIMARY KEY (`cd_pedido_recuperacao`),
  ADD KEY `fk_pedido_recuperacao_usuario1` (`cd_Usuario`);

--
-- Índices para tabela `relatorio`
--
ALTER TABLE `relatorio`
  ADD PRIMARY KEY (`cd_Relatorio`),
  ADD KEY `fk_relatorio_situacao_relatorio1_idx` (`cd_situacaoRelatorio`),
  ADD KEY `fk_relatorio_tipo_tempo1_idx` (`cd_tipoTempo`),
  ADD KEY `fk_relatorio_tipo_condicao1_idx` (`cd_tipoCondicao`),
  ADD KEY `fk_relatorio_usuario1_idx` (`cd_Usuario`),
  ADD KEY `fk_relatorio_obra1_idx` (`cd_Obra`),
  ADD KEY `fk_relatorio_escola1` (`cd_Escola`),
  ADD KEY `fk_relatorio_status_dados1_idx` (`cd_status_dados`);

--
-- Índices para tabela `relatorio_has_tipo_periodo`
--
ALTER TABLE `relatorio_has_tipo_periodo`
  ADD PRIMARY KEY (`cd_Relatorio`,`cd_tipoPeriodo`),
  ADD KEY `fk_relatorio_has_tipo_periodo_tipo_periodo1_idx` (`cd_tipoPeriodo`),
  ADD KEY `fk_relatorio_has_tipo_periodo_relatorio1_idx` (`cd_Relatorio`);

--
-- Índices para tabela `situacao_contrato`
--
ALTER TABLE `situacao_contrato`
  ADD PRIMARY KEY (`cd_situacao`);

--
-- Índices para tabela `situacao_obra`
--
ALTER TABLE `situacao_obra`
  ADD PRIMARY KEY (`cd_situacaoObra`);

--
-- Índices para tabela `situacao_relatorio`
--
ALTER TABLE `situacao_relatorio`
  ADD PRIMARY KEY (`cd_situacaoRelatorio`);

--
-- Índices para tabela `status_dados`
--
ALTER TABLE `status_dados`
  ADD PRIMARY KEY (`cd_status_dados`);

--
-- Índices para tabela `status_escola`
--
ALTER TABLE `status_escola`
  ADD PRIMARY KEY (`cd_statusEscola`);

--
-- Índices para tabela `tipo_condicao`
--
ALTER TABLE `tipo_condicao`
  ADD PRIMARY KEY (`cd_tipoCondicao`);

--
-- Índices para tabela `tipo_periodo`
--
ALTER TABLE `tipo_periodo`
  ADD PRIMARY KEY (`cd_tipoPeriodo`);

--
-- Índices para tabela `tipo_tempo`
--
ALTER TABLE `tipo_tempo`
  ADD PRIMARY KEY (`cd_tipoTempo`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`cd_Usuario`),
  ADD KEY `cd_Fornecedor` (`cd_Fornecedor`),
  ADD KEY `cd_nivelAutoridade` (`cd_nivelAutoridade`),
  ADD KEY `fk_usuario_status_dados` (`cd_status_dados`) USING BTREE;

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `contrato`
--
ALTER TABLE `contrato`
  MODIFY `cd_Contrato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de tabela `escola`
--
ALTER TABLE `escola`
  MODIFY `cd_Escola` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT de tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  MODIFY `cd_Fornecedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `foto`
--
ALTER TABLE `foto`
  MODIFY `cd_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT de tabela `nivel_autoridade`
--
ALTER TABLE `nivel_autoridade`
  MODIFY `cd_nivelAutoridade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `obra`
--
ALTER TABLE `obra`
  MODIFY `cd_Obra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de tabela `pedido_recuperacao`
--
ALTER TABLE `pedido_recuperacao`
  MODIFY `cd_pedido_recuperacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de tabela `relatorio`
--
ALTER TABLE `relatorio`
  MODIFY `cd_Relatorio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT de tabela `situacao_contrato`
--
ALTER TABLE `situacao_contrato`
  MODIFY `cd_situacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `situacao_obra`
--
ALTER TABLE `situacao_obra`
  MODIFY `cd_situacaoObra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `situacao_relatorio`
--
ALTER TABLE `situacao_relatorio`
  MODIFY `cd_situacaoRelatorio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `status_dados`
--
ALTER TABLE `status_dados`
  MODIFY `cd_status_dados` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `status_escola`
--
ALTER TABLE `status_escola`
  MODIFY `cd_statusEscola` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tipo_condicao`
--
ALTER TABLE `tipo_condicao`
  MODIFY `cd_tipoCondicao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tipo_periodo`
--
ALTER TABLE `tipo_periodo`
  MODIFY `cd_tipoPeriodo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tipo_tempo`
--
ALTER TABLE `tipo_tempo`
  MODIFY `cd_tipoTempo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `cd_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `contrato`
--
ALTER TABLE `contrato`
  ADD CONSTRAINT `fk_contrato_fornecedor1` FOREIGN KEY (`cd_Fornecedor`) REFERENCES `fornecedor` (`cd_Fornecedor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_contrato_situacao1` FOREIGN KEY (`cd_situacao`) REFERENCES `situacao_contrato` (`cd_situacao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_contrato_status_dados1` FOREIGN KEY (`cd_status_dados`) REFERENCES `status_dados` (`cd_status_dados`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `escola`
--
ALTER TABLE `escola`
  ADD CONSTRAINT `fk_escola_cd_status_dados1` FOREIGN KEY (`cd_status_dados`) REFERENCES `status_dados` (`cd_status_dados`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_escola_status_escola1` FOREIGN KEY (`cd_statusEscola`) REFERENCES `status_escola` (`cd_statusEscola`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `escola_has_contrato`
--
ALTER TABLE `escola_has_contrato`
  ADD CONSTRAINT `fk_escola_has_contrato_contrato1` FOREIGN KEY (`cd_Contrato`) REFERENCES `contrato` (`cd_Contrato`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_escola_has_contrato_escola1` FOREIGN KEY (`cd_Escola`) REFERENCES `escola` (`cd_Escola`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD CONSTRAINT `fk_fornecedor_cd_status_dados1` FOREIGN KEY (`cd_status_dados`) REFERENCES `status_dados` (`cd_status_dados`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `foto`
--
ALTER TABLE `foto`
  ADD CONSTRAINT `fk_foto_relatorio1` FOREIGN KEY (`cd_Relatorio`) REFERENCES `relatorio` (`cd_Relatorio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `obra`
--
ALTER TABLE `obra`
  ADD CONSTRAINT `fk_obra_cd_status_dados1` FOREIGN KEY (`cd_status_dados`) REFERENCES `status_dados` (`cd_status_dados`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_obra_contrato1` FOREIGN KEY (`cd_Contrato`) REFERENCES `contrato` (`cd_Contrato`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_obra_escola1` FOREIGN KEY (`cd_Escola`) REFERENCES `escola` (`cd_Escola`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_obra_situacao_obra1` FOREIGN KEY (`cd_situacaoObra`) REFERENCES `situacao_obra` (`cd_situacaoObra`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `obra_has_usuario`
--
ALTER TABLE `obra_has_usuario`
  ADD CONSTRAINT `fk_obra_has_usuario_obra1` FOREIGN KEY (`cd_Obra`) REFERENCES `obra` (`cd_Obra`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_obra_has_usuario_usuario1` FOREIGN KEY (`cd_Usuario`) REFERENCES `usuario` (`cd_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `pedido_recuperacao`
--
ALTER TABLE `pedido_recuperacao`
  ADD CONSTRAINT `fk_pedido_recuperacao_usuario1` FOREIGN KEY (`cd_Usuario`) REFERENCES `usuario` (`cd_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `relatorio`
--
ALTER TABLE `relatorio`
  ADD CONSTRAINT `fk_relatorio_escola1` FOREIGN KEY (`cd_Escola`) REFERENCES `escola` (`cd_Escola`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_relatorio_obra1` FOREIGN KEY (`cd_Obra`) REFERENCES `obra` (`cd_Obra`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_relatorio_situacao_relatorio1` FOREIGN KEY (`cd_situacaoRelatorio`) REFERENCES `situacao_relatorio` (`cd_situacaoRelatorio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_relatorio_status_dados` FOREIGN KEY (`cd_status_dados`) REFERENCES `status_dados` (`cd_status_dados`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_relatorio_tipo_condicao1` FOREIGN KEY (`cd_tipoCondicao`) REFERENCES `tipo_condicao` (`cd_tipoCondicao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_relatorio_tipo_tempo1` FOREIGN KEY (`cd_tipoTempo`) REFERENCES `tipo_tempo` (`cd_tipoTempo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_relatorio_usuario1` FOREIGN KEY (`cd_Usuario`) REFERENCES `usuario` (`cd_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `relatorio_has_tipo_periodo`
--
ALTER TABLE `relatorio_has_tipo_periodo`
  ADD CONSTRAINT `fk_relatorio_has_tipo_periodo_relatorio1` FOREIGN KEY (`cd_Relatorio`) REFERENCES `relatorio` (`cd_Relatorio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_relatorio_has_tipo_periodo_tipo_periodo1` FOREIGN KEY (`cd_tipoPeriodo`) REFERENCES `tipo_periodo` (`cd_tipoPeriodo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_fornecedor1` FOREIGN KEY (`cd_Fornecedor`) REFERENCES `fornecedor` (`cd_Fornecedor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuario_nivel_autoridade1` FOREIGN KEY (`cd_nivelAutoridade`) REFERENCES `nivel_autoridade` (`cd_nivelAutoridade`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuario_status_dados1` FOREIGN KEY (`cd_status_dados`) REFERENCES `status_dados` (`cd_status_dados`) ON DELETE NO ACTION ON UPDATE NO ACTION;

DELIMITER $$
--
-- Eventos
--
CREATE DEFINER=`root`@`localhost` EVENT `DeletaPedidoRecuperacao` ON SCHEDULE EVERY 1 DAY STARTS '2023-02-03 09:00:00' ON COMPLETION PRESERVE ENABLE DO DELETE FROM pedido_recuperacao
	WHERE CAST(dt_pedido_recuperacao AS Date) < CAST(CURRENT_TIMESTAMP() AS DATE)$$

CREATE DEFINER=`root`@`localhost` EVENT `ExpiraPedidoDeRecuperacao` ON SCHEDULE EVERY 4 MINUTE STARTS '2023-02-03 11:00:00' ON COMPLETION PRESERVE ENABLE DO UPDATE pedido_recuperacao SET ds_ativo = 0
                          WHERE CAST(hr_expiracao_pedido_recuperacao AS TIME) < CAST(CURRENT_TIMESTAMP() AS Time)$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
