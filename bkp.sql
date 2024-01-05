-- Backup gerado em: 2023-10-24 09:57:07

SET foreign_key_checks = 0;



CREATE TABLE `boleto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num_boleto` varchar(30) NOT NULL,
  `valor_boleto` float NOT NULL,
  `nome_inquilino` varchar(600) NOT NULL,
  `data_boleto` date NOT NULL,
  `data_vencimento` date NOT NULL,
  `status` varchar(1) NOT NULL,
  `valor_pago_fn` float NOT NULL,
  `pagamento_fn` date NOT NULL,
  `financ_data_fn` varchar(15) NOT NULL,
  `financ_hora_fn` varchar(15) NOT NULL,
  `retorno_fn` varchar(50) NOT NULL,
  `id_prop` int(11) NOT NULL,
  `id_inq` int(11) NOT NULL,
  `id_locacao` int(11) NOT NULL,
  `fiscal` varchar(15) NOT NULL,
  `acrescimos` float NOT NULL,
  `descontos` float NOT NULL,
  `desconto_boleto` float NOT NULL,
  `taxa` float NOT NULL,
  `tipo` varchar(1) NOT NULL,
  `remessa` varchar(10) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=769 DEFAULT CHARSET=latin1;

CREATE TABLE `boletoold` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num_boleto` varchar(30) NOT NULL,
  `valor_boleto` float NOT NULL,
  `nome_inquilino` varchar(600) NOT NULL,
  `data_boleto` date NOT NULL,
  `data_vencimento` date NOT NULL,
  `status` varchar(1) NOT NULL,
  `valor_pago_fn` float NOT NULL,
  `pagamento_fn` date NOT NULL,
  `financ_data_fn` varchar(15) NOT NULL,
  `financ_hora_fn` varchar(15) NOT NULL,
  `retorno_fn` varchar(50) NOT NULL,
  `id_prop` int(11) NOT NULL,
  `id_inq` int(11) NOT NULL,
  `id_locacao` int(11) NOT NULL,
  `fiscal` varchar(15) NOT NULL,
  `acrescimos` float NOT NULL,
  `descontos` float NOT NULL,
  `desconto_boleto` float NOT NULL,
  `taxa` float NOT NULL,
  `tipo` varchar(1) NOT NULL,
  `remessa` varchar(10) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `log_erros_ged` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `files` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `errMsg` varchar(255) NOT NULL,
  `pd` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `obs_vinicius` (
  `codigo` int(11) DEFAULT NULL,
  `cnj` varchar(100) DEFAULT NULL,
  `obs` varchar(225) DEFAULT NULL,
  `livre1` varchar(100) DEFAULT NULL,
  `livre2` varchar(100) DEFAULT NULL,
  `nova_obs` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `querys_executadas_no_banco_de_dados_pelos_colaboradores_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `db_user` varchar(255) NOT NULL,
  `action_type` varchar(50) NOT NULL,
  `affected_table` varchar(255) NOT NULL,
  `affected_record_id` int(11) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73669 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_acao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_acao_conversao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_agenda_advogados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_principal` int(11) NOT NULL DEFAULT '0',
  `tipo` varchar(100) NOT NULL,
  `subtipo` int(11) NOT NULL DEFAULT '0',
  `id_subprazo` int(11) NOT NULL DEFAULT '0',
  `descricao` longtext NOT NULL,
  `id_advogado` int(11) NOT NULL DEFAULT '0',
  `advogado` varchar(200) NOT NULL,
  `cliente` int(11) NOT NULL,
  `nome_cliente` varchar(255) NOT NULL,
  `processo` int(11) NOT NULL DEFAULT '0',
  `data` date NOT NULL,
  `data_fim` date DEFAULT NULL,
  `data_cadastro` date NOT NULL,
  `data_publicacao` date NOT NULL,
  `data_conclusao` date NOT NULL,
  `data_cancelamento` date NOT NULL,
  `hora_inicio` time NOT NULL,
  `hora_fim` time NOT NULL,
  `hora_total` time NOT NULL,
  `status` varchar(1) NOT NULL,
  `id_advogado2` int(11) NOT NULL DEFAULT '0',
  `advogado2` varchar(200) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `resolucao` longtext NOT NULL,
  `projeto` int(11) NOT NULL,
  `oportunidade` int(11) NOT NULL,
  `incidente` int(11) NOT NULL DEFAULT '0',
  `contrato` int(11) NOT NULL,
  `id_documento` int(11) NOT NULL DEFAULT '0',
  `local` varchar(200) NOT NULL,
  `codPublicacao` varchar(100) NOT NULL,
  `hora_tarifada` int(11) NOT NULL DEFAULT '1',
  `faturado` int(11) NOT NULL DEFAULT '0',
  `id_honorario` int(11) NOT NULL DEFAULT '0',
  `verifica_nova_agenda` varchar(10) NOT NULL,
  `grupo` int(11) DEFAULT '0',
  `id_migracao` int(11) DEFAULT '0',
  `texto_migracao` varchar(255) DEFAULT NULL,
  `id_pai` int(11) NOT NULL DEFAULT '0',
  `id_filho` int(11) NOT NULL DEFAULT '0',
  `devolver` varchar(45) DEFAULT '0',
  `contrario` int(11) NOT NULL DEFAULT '0',
  `nome_contrario` varchar(255) NOT NULL DEFAULT '',
  `titulo` varchar(255) DEFAULT NULL,
  `atualizado_timesheet` int(1) DEFAULT '0',
  `id_configuracao_envio` int(11) DEFAULT NULL,
  `data_exclusao` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_agenda_empresa` (`id_empresa`),
  KEY `idx_agenda_processo` (`processo`),
  KEY `idx_agenda_contrato` (`contrato`),
  KEY `idx_agenda_projeto` (`projeto`),
  KEY `idx_agenda_publicacao` (`codPublicacao`),
  KEY `idx_agenda_id_advogado` (`id_advogado`),
  KEY `idx_agenda_id_advogado2` (`id_advogado2`),
  KEY `idx_agenda_id_cliente` (`cliente`),
  KEY `idx_agenda_id_contrario` (`contrario`),
  KEY `idx_agenda_id_oportunidade` (`oportunidade`),
  KEY `idx_agenda_tipo` (`tipo`),
  KEY `idx_agenda_subtipo` (`subtipo`),
  KEY `idx_agenda_id_subprazo` (`id_subprazo`),
  KEY `idx_agenda_id_incidente` (`incidente`),
  KEY `idx_agenda_id_pai` (`id_pai`),
  KEY `idx_agenda_id_filho` (`id_filho`),
  KEY `idx_agenda_id_migracao` (`id_migracao`),
  KEY `idx_agenda_id_honorario` (`id_honorario`),
  KEY `idx_agenda_contrario` (`contrario`),
  KEY `idx_agenda_principal` (`id_principal`),
  KEY `idx_agenda_data` (`data`),
  KEY `idx_agenda_data_fim` (`data_fim`),
  KEY `idx_agenda_data_cadastro` (`data_cadastro`),
  KEY `idx_agenda_data_conclusao` (`data_conclusao`),
  KEY `idx_agenda_data_publicacao` (`data_publicacao`),
  KEY `idx_agenda_data_cancelamento` (`data_cancelamento`)
) ENGINE=InnoDB AUTO_INCREMENT=26724799 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_agenda_envolvidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_agenda` int(11) NOT NULL,
  `id_pessoa` int(11) NOT NULL,
  `nome_pessoa` varchar(255) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `tipo_pessoa` int(11) NOT NULL,
  `id_migracao` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_age_env_empresa` (`id_empresa`),
  KEY `idx_age_env_agenda` (`id_agenda`),
  KEY `idx_age_env_tipo` (`tipo_pessoa`),
  KEY `idx_age_env_id_pessoa` (`id_pessoa`),
  KEY `idx_age_env_pessoa` (`id_pessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=8514350 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_agenda_google` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_agenda` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `id_google` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_age_goo_empresa` (`id_empresa`),
  KEY `idx_age_goo_agenda` (`id_agenda`)
) ENGINE=InnoDB AUTO_INCREMENT=18106 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_agenda_subtipo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `id_tipo_acompanhamento` varchar(100) NOT NULL,
  `prazo_fatal` int(11) NOT NULL,
  `conta_sabado_domingo` int(11) NOT NULL,
  `prazo_interno` int(11) NOT NULL,
  `descricao_subtipo` longtext NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `verifica_novo_subtipo` varchar(3) NOT NULL DEFAULT 'nao',
  `pontuacao` double NOT NULL DEFAULT '0',
  `altera_evento` int(1) NOT NULL DEFAULT '0',
  `responsavel1` int(11) DEFAULT '0',
  `responsavel2` int(11) DEFAULT '0',
  `workflow_filho` int(11) DEFAULT NULL,
  `automatico` int(1) DEFAULT '0',
  `conta_feriado` int(2) DEFAULT '1',
  `gerar_andamento` int(2) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  `id_migracao` int(11) DEFAULT NULL,
  `replicar_grupo_agenda` varchar(3) NOT NULL DEFAULT 'nao',
  PRIMARY KEY (`id`),
  KEY `idx_age_sub_empresa` (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=44060 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_agenda_timesheet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `id_agenda_principal` int(11) NOT NULL COMMENT 'FK tb_agenda_advogados COLUMN id (Quando a coluna id_principal e 0)',
  `id_agenda` int(11) NOT NULL COMMENT 'FK tb_agenda_advogados COLUMN id (Quando a coluna id_principal e diferente de 0)',
  `id_responsavel` int(11) NOT NULL COMMENT 'FK tb_users_advogados COLUMN id (responsavel do timesheet)',
  `status` varchar(1) NOT NULL DEFAULT 'A',
  `tempo_timesheet` time NOT NULL COMMENT 'Tempo total do timesheet',
  `data_timesheet` date NOT NULL COMMENT 'Data competencia do timesheet',
  `data_cadastro` datetime DEFAULT NULL,
  `data_deletado` datetime DEFAULT NULL,
  `data_conclusao` date DEFAULT NULL,
  `data_cancelamento` date DEFAULT NULL,
  `descricao` longtext COMMENT 'Descricao do timesheet',
  `id_receita` int(11) DEFAULT NULL,
  `id_regra` int(11) DEFAULT NULL,
  `faturado` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `empresa` (`id_empresa`),
  KEY `agenda_principal` (`id_agenda_principal`),
  KEY `agenda_etapa` (`id_agenda`),
  KEY `responsavel` (`id_responsavel`),
  KEY `idx_receita` (`id_receita`),
  KEY `idx_regra` (`id_regra`),
  KEY `idx_data_timesheet` (`data_timesheet`),
  KEY `idx_data_cadastro` (`data_cadastro`),
  KEY `idx_data_deletado` (`data_deletado`),
  KEY `idx_data_conclusao` (`data_conclusao`),
  KEY `idx_data_cancelamento` (`data_cancelamento`)
) ENGINE=InnoDB AUTO_INCREMENT=3681931 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_agenda_vinculo_integracao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_integracao` int(1) DEFAULT NULL,
  `id_integracao` int(11) NOT NULL,
  `id_agendamento` int(11) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `status` int(1) DEFAULT '1' COMMENT '1 = Ativo, 2 = Excluído',
  PRIMARY KEY (`id`),
  KEY `id_empresa` (`id_empresa`),
  CONSTRAINT `tb_agenda_vinculo_integracao_ibfk_1` FOREIGN KEY (`id_empresa`) REFERENCES `tb_escritorio_advogados` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_alert_reparo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `classificacao` int(11) DEFAULT NULL,
  `id_release` int(11) DEFAULT NULL,
  `observacao_release` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_release_user` (`id_user`),
  KEY `idx_release_id` (`id_release`)
) ENGINE=InnoDB AUTO_INCREMENT=547323 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_almoxarifado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `data` date NOT NULL,
  `observacao` longtext NOT NULL,
  `produto1` varchar(200) NOT NULL,
  `quantidade1` int(11) NOT NULL,
  `produto2` varchar(200) NOT NULL,
  `quantidade2` int(11) NOT NULL,
  `produto3` varchar(200) NOT NULL,
  `quantidade3` int(11) NOT NULL,
  `produto4` varchar(200) NOT NULL,
  `quantidade4` int(11) NOT NULL,
  `produto5` varchar(200) NOT NULL,
  `quantidade5` int(11) NOT NULL,
  `produto6` varchar(200) NOT NULL,
  `quantidade6` int(11) NOT NULL,
  `produto7` varchar(200) NOT NULL,
  `quantidade7` int(11) NOT NULL,
  `produto8` varchar(200) NOT NULL,
  `quantidade8` int(11) NOT NULL,
  `produto9` varchar(200) NOT NULL,
  `quantidade9` int(11) NOT NULL,
  `produto10` varchar(200) NOT NULL,
  `quantidade10` int(11) NOT NULL,
  `projeto` int(11) NOT NULL,
  `status` varchar(1) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `destinatarios` varchar(256) NOT NULL,
  `verifica_novo_item` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_almox_empresa` (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=2751 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_andamentos_consultivos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_job` int(11) NOT NULL DEFAULT '0',
  `data` date NOT NULL,
  `data_cadastro` date NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `origem` int(11) DEFAULT '0',
  `descricao` longtext,
  `id_empresa` varchar(45) NOT NULL DEFAULT '0',
  `status` varchar(1) DEFAULT NULL,
  `data_leitura` date NOT NULL,
  `id_migracao` int(11) DEFAULT NULL,
  `texto_migracao` varchar(255) DEFAULT '',
  `id_advogado` int(11) NOT NULL,
  `verifica_novo_andamento` varchar(3) NOT NULL DEFAULT 'sim',
  PRIMARY KEY (`id`),
  KEY `idx_id_job` (`id_job`),
  KEY `idx_tipo` (`tipo`),
  KEY `idx_id_empresa` (`id_empresa`),
  KEY `idx_id_migracao` (`id_migracao`),
  KEY `idx_id_advogado` (`id_advogado`),
  KEY `idx_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=6138216 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_andamentos_contencioso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codAndamento` varchar(100) NOT NULL DEFAULT '0' COMMENT 'codAndamento vindo Solucionare',
  `codProcesso` varchar(100) NOT NULL DEFAULT '0' COMMENT 'codProcesso vindo Solucionare',
  `codAgrupador` varchar(100) NOT NULL DEFAULT '0' COMMENT 'codAgrupador vindo Solucionare',
  `codEscritorio` varchar(100) NOT NULL DEFAULT '0',
  `id_advogado` int(11) NOT NULL DEFAULT '0',
  `id_processo` int(11) NOT NULL DEFAULT '0',
  `numero_processo` varchar(50) NOT NULL,
  `id_incidente` int(11) NOT NULL DEFAULT '0',
  `id_agenda` int(11) NOT NULL DEFAULT '0',
  `data` date NOT NULL,
  `data_cadastro` date NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `origem` int(1) NOT NULL DEFAULT '0' COMMENT '1 = solucionare, 2 = easyjur, 3 = dbjus',
  `descricao` longtext NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `status` varchar(1) NOT NULL DEFAULT 'A',
  `data_leitura` date DEFAULT NULL,
  `verifica_novo_andamento` varchar(3) NOT NULL DEFAULT 'nao',
  `id_migracao` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_mov_empresa` (`id_empresa`),
  KEY `idx_mov_processo` (`id_processo`),
  KEY `idx_mov_incidente` (`id_incidente`),
  KEY `idx_mov_agenda` (`id_agenda`),
  KEY `idx_mov_origem` (`origem`),
  KEY `idx_mov_codAndamento` (`codAndamento`),
  KEY `idx_mov_codProcesso` (`codProcesso`),
  KEY `idx_mov_codAgrupador` (`codAgrupador`),
  KEY `idx_mov_numero` (`numero_processo`),
  KEY `idx_id_migracao` (`id_migracao`),
  KEY `idx_tipo` (`tipo`),
  KEY `idx_mov_data` (`data`)
) ENGINE=InnoDB AUTO_INCREMENT=259458940 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

CREATE TABLE `tb_arquivos_ged` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `arquivo` varchar(255) DEFAULT NULL,
  `diretorio` varchar(255) DEFAULT NULL,
  `pessoa_id` int(11) NOT NULL,
  `tipo_pessoa` varchar(255) DEFAULT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_pessoa_id` (`pessoa_id`),
  KEY `idx_id_empresa` (`id_empresa`),
  KEY `idx_ged_pessoa_id` (`pessoa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=170434 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_asaas_accounts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `wallet_id` varchar(64) DEFAULT NULL,
  `api_key` varchar(256) DEFAULT NULL,
  `id_empresa` bigint(20) NOT NULL,
  `created` tinyint(1) DEFAULT '0',
  `log` varchar(255) DEFAULT NULL,
  `certificate_sent` tinyint(1) DEFAULT '0',
  `use_cpf` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_empresa` (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_asaas_bills` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_asaas` varchar(128) DEFAULT NULL,
  `id_despesa` bigint(20) unsigned DEFAULT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `linha_digitavel` varchar(50) DEFAULT NULL,
  `data_criado` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizado` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) DEFAULT 'PENDING',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_asaas_clients` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_empresa` bigint(20) NOT NULL,
  `id_pessoa` bigint(20) NOT NULL,
  `id_asaas` varchar(63) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1390 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_asaas_invoice_expenses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_empresa` bigint(20) unsigned NOT NULL,
  `id_despesa` bigint(20) unsigned NOT NULL,
  `tabela` varchar(31) NOT NULL,
  `id_tabela` bigint(20) unsigned NOT NULL,
  `id_transacao_asaas` varchar(63) DEFAULT NULL,
  `data_criado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expense_type` varchar(32) DEFAULT NULL,
  `asaas_object` varchar(32) DEFAULT NULL,
  `id_asaas_object` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5026 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_asaas_payments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_asaas` varchar(32) NOT NULL,
  `modulo` varchar(32) NOT NULL,
  `id_modulo` bigint(20) NOT NULL,
  `id_user` bigint(20) unsigned DEFAULT NULL,
  `id_empresa` bigint(20) unsigned NOT NULL,
  `status` varchar(32) DEFAULT NULL,
  `hora_criado` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `hora_alterado` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1446 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_asaas_transferences` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_empresa` bigint(20) unsigned NOT NULL,
  `id_user` bigint(20) unsigned NOT NULL,
  `id_despesa` bigint(20) unsigned NOT NULL,
  `id_cliente` bigint(20) unsigned NOT NULL,
  `id_transferencia` varchar(40) NOT NULL,
  `status` varchar(32) NOT NULL,
  `data_criado` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ultimo_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_assistente_campos_relatorio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_assistente_relatorio` int(11) NOT NULL,
  `id_modulo` int(11) NOT NULL,
  `campo` varchar(255) NOT NULL,
  `ordem` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39057 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_assistente_relatorio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `id_modulo_principal` int(11) DEFAULT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `alterar` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=881 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_assuntos_processuais` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `area_direito` varchar(200) NOT NULL,
  `assuntos_processuais` varchar(200) NOT NULL,
  `subtipo_1` varchar(255) NOT NULL,
  `subtipo_2` varchar(255) NOT NULL,
  `codigo` varchar(11) NOT NULL,
  `cod_pai` varchar(11) NOT NULL,
  `dispositivo_legal` varchar(255) NOT NULL,
  `artigo` varchar(200) NOT NULL,
  `alteracoes` varchar(200) NOT NULL,
  `glossario` longblob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1947 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_autenticacao_kurier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `token_api` text,
  `dh_cadastro` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_aviso_easyjur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_aviso` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index2` (`id_user`),
  KEY `idx_aviso` (`id_aviso`)
) ENGINE=InnoDB AUTO_INCREMENT=538099 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_banco_advogados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banco_nome` varchar(50) NOT NULL,
  `cod_banco` int(6) NOT NULL,
  `banco_agencia` varchar(50) NOT NULL,
  `banco_conta` varchar(50) NOT NULL,
  `banco_saldo_inicio` double NOT NULL,
  `saldo_inicial` double NOT NULL,
  `data_saldo` date NOT NULL,
  `banco_saldo_especial` double NOT NULL,
  `emite_boleto` int(1) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `credenciado` int(1) NOT NULL DEFAULT '0',
  `credencial` varchar(255) DEFAULT NULL,
  `chave` varchar(255) DEFAULT NULL,
  `chave_webhook` varchar(255) DEFAULT NULL,
  `conta_virtual` varchar(255) DEFAULT NULL,
  `agencia_virtual` varchar(255) DEFAULT NULL,
  `tipo` int(1) DEFAULT '1',
  `status_conta` varchar(50) DEFAULT NULL,
  `id_migracao` int(11) DEFAULT NULL,
  `texto_migracao` varchar(255) DEFAULT '',
  `status` int(1) DEFAULT '1',
  `email_conta_pjbank` varchar(255) DEFAULT NULL,
  `ticket_medio_conta_pjbank` double DEFAULT NULL,
  `faturamento_mensal_conta_pjbank` double DEFAULT NULL,
  `aceite_termo_pjbanck` int(1) DEFAULT '0',
  `asaas_account` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_banc_empresa` (`id_empresa`),
  KEY `idx_tipo` (`tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=675798434 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_banco_pessoas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pessoa` int(11) NOT NULL,
  `banco_nome` varchar(50) NOT NULL,
  `banco_agencia` varchar(50) NOT NULL,
  `banco_conta` varchar(50) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `texto_cliente` varchar(200) DEFAULT NULL,
  `data_cadastro` date DEFAULT NULL,
  `chave_pix` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_banc_pessoa_empresa` (`id_empresa`),
  KEY `idx_banc_pessoa_pessoa` (`id_pessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=34837 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_banco_saldo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_banco` int(11) NOT NULL,
  `data` date NOT NULL,
  `saldo` double NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=161549 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_banco_transfer_advogados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_banco_origem` int(11) NOT NULL,
  `id_banco_destino` int(11) NOT NULL,
  `valor_transferencia` double NOT NULL,
  `data` date NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `id_advogado` int(11) NOT NULL DEFAULT '0',
  `id_cliente` int(11) NOT NULL DEFAULT '0',
  `id_processo` int(11) NOT NULL DEFAULT '0',
  `id_contrato` int(11) NOT NULL DEFAULT '0',
  `id_projeto` int(11) NOT NULL DEFAULT '0',
  `id_centro` int(11) NOT NULL DEFAULT '0',
  `descricao` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10005 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_bancos` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `banco` varchar(255) NOT NULL,
  PRIMARY KEY (`cod`,`banco`)
) ENGINE=InnoDB AUTO_INCREMENT=761 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_boletos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_unico` varchar(20) NOT NULL,
  `id_unico_original` varchar(20) DEFAULT 'NULL',
  `nosso_numero` varchar(30) NOT NULL,
  `link_boleto` longtext NOT NULL,
  `link_grupo` longtext,
  `linha_digitavel` varchar(255) NOT NULL,
  `pedido_numero` bigint(20) NOT NULL,
  `banco_numero` int(4) NOT NULL,
  `token_facilitador` varchar(255) NOT NULL,
  `credencial` varchar(255) NOT NULL,
  `pago` int(1) NOT NULL DEFAULT '0',
  `invalidado` int(1) NOT NULL DEFAULT '0',
  `valor_pago` double DEFAULT NULL,
  `valor_liquido` double NOT NULL,
  `valor_tarifa` double DEFAULT NULL,
  `data_pagamento` date DEFAULT NULL,
  `data_credito` date DEFAULT NULL,
  `registrado` varchar(60) NOT NULL,
  `valor_boleto` double NOT NULL,
  `data_vencimento` date NOT NULL,
  `id_fatura` int(11) DEFAULT '0',
  `id_reembolso` int(11) NOT NULL DEFAULT '0',
  `descricao` longtext,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_boleto_empresa` (`id_empresa`),
  KEY `idx_boleto_fatura` (`id_fatura`),
  KEY `idx_boleto_reembolso` (`id_reembolso`),
  KEY `idx_boleto_pago` (`pago`),
  KEY `idx_boleto_invalidado` (`invalidado`)
) ENGINE=InnoDB AUTO_INCREMENT=88490 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_campos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  `tipo` int(11) NOT NULL,
  `tipo_campo` int(11) NOT NULL,
  `opcoes` longtext,
  `opcao_default` varchar(200) DEFAULT NULL,
  `ordem` int(11) NOT NULL DEFAULT '0',
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `editor` int(11) DEFAULT '0',
  `posicao_linha` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_campos_id_empresa` (`id_empresa`),
  KEY `idx_campos_tipo` (`tipo`),
  KEY `idx_campos_tipo_campo` (`tipo_campo`),
  KEY `idx_campos_posicao` (`posicao_linha`)
) ENGINE=InnoDB AUTO_INCREMENT=1974 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_campos_dados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campo` int(11) NOT NULL,
  `valor` longtext,
  `chave` int(11) NOT NULL,
  `tipo` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_campos_chave` (`chave`),
  KEY `idx_campos_tipo` (`tipo`),
  KEY `idx_campos_campo` (`campo`)
) ENGINE=InnoDB AUTO_INCREMENT=5144080 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_cargos_advogados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `obrigacoes` text NOT NULL,
  `beneficios` text NOT NULL,
  `valor_hora` double NOT NULL,
  `salario` double NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `valor_beneficios` double NOT NULL,
  `tributacao` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cargos_empresa` (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=2261 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_centro_custo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(200) NOT NULL,
  `tipo` int(11) NOT NULL,
  `subtipo` int(11) NOT NULL,
  `classificacao` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=367 DEFAULT CHARSET=latin1;
INSERT INTO tb_centro_custo VALUES ('1', '1 - RECEITAS OPERACIONAIS HONORARIOS', '1', '1', 'Receitas');
INSERT INTO tb_centro_custo VALUES ('2', '1.1 - CONTENCIOSO', '1', '1', 'Receitas');
INSERT INTO tb_centro_custo VALUES ('3', '1.1.01 - ÃŠxito', '1', '1', 'Receitas');
INSERT INTO tb_centro_custo VALUES ('4', '3.3.29 - PrÃ³-Labore', '3', '3', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('5', '1.1.02 - Partido Mensal', '1', '1', 'Receitas');
INSERT INTO tb_centro_custo VALUES ('6', '1.1.03 - Avulso', '1', '1', 'Receitas');
INSERT INTO tb_centro_custo VALUES ('7', '1.1.04 - Hora Trabalhada', '1', '1', 'Receitas');
INSERT INTO tb_centro_custo VALUES ('8', '1.1.05 - DiligÃªncia', '1', '1', 'Receitas');
INSERT INTO tb_centro_custo VALUES ('9', '1.1.06 - SucumbÃªncias', '1', '1', 'Receitas');
INSERT INTO tb_centro_custo VALUES ('10', '1.2 - NÃƒO CONTENCIOSO', '1', '2', 'Receitas');
INSERT INTO tb_centro_custo VALUES ('11', '1.2.01 - Consultas', '1', '2', 'Receitas');
INSERT INTO tb_centro_custo VALUES ('12', '1.2.02 - Contratos', '1', '2', 'Receitas');
INSERT INTO tb_centro_custo VALUES ('13', '1.2.03 - Pareceres', '1', '2', 'Receitas');
INSERT INTO tb_centro_custo VALUES ('14', '1.2.04 - Arbitragem', '1', '2', 'Receitas');
INSERT INTO tb_centro_custo VALUES ('15', '1.2.05 - DiligÃªncias', '1', '2', 'Receitas');
INSERT INTO tb_centro_custo VALUES ('16', '1.2.06 - Cursos', '1', '2', 'Receitas');
INSERT INTO tb_centro_custo VALUES ('17', '1.2.07 - Palestras', '1', '2', 'Receitas');
INSERT INTO tb_centro_custo VALUES ('20', '2 - RECEITAS NÃƒO OPERACIONAIS', '2', '1', 'Receitas');
INSERT INTO tb_centro_custo VALUES ('21', '2.1.01 - Venda de Ativos', '2', '1', 'Receitas');
INSERT INTO tb_centro_custo VALUES ('22', '2.1.02 - AluguÃ©is', '2', '1', 'Receitas');
INSERT INTO tb_centro_custo VALUES ('23', '2.1.03 - Aposentadoria', '2', '1', 'Receitas');
INSERT INTO tb_centro_custo VALUES ('24', '2.1.04 - Rendimento de AplicaÃ§Ãµes', '2', '1', 'Receitas');
INSERT INTO tb_centro_custo VALUES ('25', '2.1.05 - EmprÃ©stimos', '2', '1', 'Receitas');
INSERT INTO tb_centro_custo VALUES ('26', '2.1.06 - Juros Recebidos', '2', '1', 'Receitas');
INSERT INTO tb_centro_custo VALUES ('27', '2.1.07 - Multas Recebidas', '2', '1', 'Receitas');
INSERT INTO tb_centro_custo VALUES ('28', '2.1.08 - Receita de Reembolso', '2', '1', 'Receitas');
INSERT INTO tb_centro_custo VALUES ('29', '2.1.09 - Outras Receitas', '2', '1', 'Receitas');
INSERT INTO tb_centro_custo VALUES ('30', '3 - DESPESAS OPERACIONAIS', '3', '0', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('31', '3.1 - DESPESAS CONSULTIVO E CONTENCIOSO', '3', '1', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('32', '3.1.01 - Custas', '3', '1', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('33', '3.1.02 - Outras Despesas com Clientes', '3', '1', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('34', '3.2 - OCUPAÃ‡ÃƒO', '3', '2', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('35', '3.2.01 - Aluguel', '3', '2', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('36', '3.2.02 - CondomÃ­nio', '3', '2', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('37', '3.2.03 - Energia ElÃ©trica', '3', '2', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('38', '3.2.04 - Telefonia Fixa', '3', '2', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('39', '3.2.05 - Telefonia MÃ³vel', '3', '2', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('40', '3.2.06 - TV a Cabo', '3', '2', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('41', '3.2.07 - ServiÃ§os de Internet', '3', '2', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('42', '3.2.08 - Ãgua', '3', '2', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('43', '3.2.09 - Seguros de ImÃ³veis', '3', '2', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('44', '3.2.10 - IPTU', '3', '2', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('45', '3.2.11 - ManutenÃ§Ã£o de Casa', '3', '2', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('47', '3.3 - DESPESAS DE PESSOAL E SÃ“CIOS', '3', '3', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('48', '3.3.01 - SalÃ¡rios', '3', '3', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('49', '3.3.02 - Bolsa de EstÃ¡gios', '3', '3', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('50', '3.3.03 - BonificaÃ§Ãµes', '3', '3', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('51', '3.3.04 - INSS', '3', '3', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('52', '3.3.05 - FGTS', '3', '3', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('53', '3.3.06 - IRRF sobre Folha', '3', '3', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('54', '3.3.07 - 13Âº SalÃ¡rios', '3', '3', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('55', '3.3.08 - FÃ©rias', '3', '3', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('56', '3.3.09 - Encargos RescisÃ³rios', '3', '3', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('57', '3.3.10 - ContribuiÃ§Ã£o Sindical', '3', '3', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('58', '3.3.11 - Vale Transporte', '3', '3', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('59', '3.3.12 - Vale RefeiÃ§Ã£o', '3', '3', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('60', '3.3.13 - Plano de SaÃºde', '3', '3', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('61', '3.3.14 - Seguros de Vida', '3', '3', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('62', '3.3.15 - Uniformes', '3', '3', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('63', '3.3.16 - MÃ©dicos', '3', '3', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('64', '3.3.17 - Dentistas', '3', '3', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('65', '3.3.18 - FarmÃ¡cia', '3', '3', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('67', '3.3.20 - SalÃ£o de Beleza', '3', '3', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('68', '3.3.21 - Academia, GinÃ¡stica e Massagem', '3', '3', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('69', '3.3.22 - DistribuiÃ§Ã£o de Lucro', '3', '3', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('70', '3.3.23 - Despesas VariÃ¡veis com Filhos', '3', '3', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('71', '3.4 - PRESTADORES DE SERVIÃ‡OS', '3', '4', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('72', '3.4.01 - Repasses de HonorÃ¡rios AdvocatÃ­cios a terceiros', '3', '4', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('73', '3.4.02 - Repasses de HonorÃ¡rios AdvocatÃ­cios sÃ³cios', '3', '4', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('74', '3.4.03 - Repasses de HonorÃ¡rios AdvocatÃ­cios Associados', '3', '4', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('75', '3.4.04 - ServiÃ§os JurÃ­dicos', '3', '4', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('76', '3.4.05 - ServiÃ§os ContÃ¡beis', '3', '4', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('77', '3.4.06 - ServiÃ§os de Consultoria', '3', '4', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('78', '3.4.07 - ServiÃ§os de InformÃ¡tica', '3', '4', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('79', '3.4.08 - ServiÃ§os de SeguranÃ§a', '3', '4', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('80', '3.4.09 - ServiÃ§os de Limpeza e Faxina', '3', '4', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('81', '3.4.10 - ServiÃ§os de ManutenÃ§Ã£o', '3', '4', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('82', '3.4.11 - ServiÃ§os de Lavanderia', '3', '4', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('83', '3.4.12 - ServiÃ§os de LocaÃ§Ã£o de MÃ¡quinas', '3', '4', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('84', '3.4.13 - ServiÃ§os de RevisÃ£o OrtogrÃ¡fica', '3', '4', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('85', '3.4.14 - Motorista e Motoboy', '3', '4', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('86', '3.4.15 - Correios', '3', '4', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('87', '3.4.16 - AssociaÃ§Ãµes', '3', '4', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('88', '3.5 - IMPOSTOS E TAXAS', '3', '5', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('89', '3.5.01 - PIS', '3', '5', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('90', '3.5.02 - COFINS', '3', '5', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('91', '3.5.03 - ISS', '3', '5', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('92', '3.5.04 - IRPJ', '3', '5', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('93', '3.5.05 - IRPF', '3', '5', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('94', '3.5.06 - CSLL', '3', '5', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('95', '3.5.07 - RetenÃ§Ã£o de Impostos', '3', '5', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('96', '3.5.08 - ITBI', '3', '5', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('97', '3.5.09 - Taxas Diversas', '3', '5', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('98', '3.6 - AUTOMÃ“VEIS E TRANSPORTE', '3', '6', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('99', '3.6.01 - Financiamentos', '3', '6', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('100', '3.6.02 - PeÃ§as e ServiÃ§os', '3', '6', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('101', '3.6.03 - ManutenÃ§Ã£o', '3', '6', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('102', '3.6.04 - CombustÃ­vel', '3', '6', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('103', '3.6.05 - Estacionamento', '3', '6', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('104', '3.6.06 - Lavagem', '3', '6', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('105', '3.6.07 - Seguro de AutomÃ³veis', '3', '6', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('106', '3.6.08 - IPVA', '3', '6', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('107', '3.6.09 - Taxa de Licenciamento', '3', '6', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('108', '3.6.10 - Seguro ObrigatÃ³rio', '3', '6', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('109', '3.6.11 - Multas', '3', '6', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('110', '3.6.12 - Passagem', '3', '6', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('111', '3.6.13 - TÃ¡xi', '3', '6', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('112', '3.6.14 - Uber', '3', '6', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('113', '3.7 - VIAGENS', '3', '7', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('114', '3.7.01 - Passagem AÃ©reas', '3', '7', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('115', '3.7.02 - Hospedagem', '3', '7', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('116', '3.7.03 - AluguÃ©is de VeÃ­culos', '3', '7', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('117', '3.7.04 - Pacotes TurÃ­sticos', '3', '7', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('118', '3.7.05 - Passeios', '3', '7', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('119', '3.8 - ALIMENTAÃ‡ÃƒO', '3', '8', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('120', '3.8.01 - Restaurantes e Lanchonetes', '3', '8', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('121', '3.8.02 - Supermercado, Padaria e SacolÃ£o', '3', '8', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('122', '3.9 - DESPESAS COM MARKETING E VENDAS', '3', '9', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('123', '3.9.01 - AnÃºncios e Propagandas', '3', '9', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('124', '3.9.02 - Material GrÃ¡fico', '3', '9', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('125', '3.9.03 - Assessoria de Imprensa', '3', '9', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('126', '3.9.04 - AnÃºncios em Jornais e Revistas', '3', '9', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('127', '3.9.05 - Marketing Digital', '3', '9', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('128', '3.9.06 - Desenvolvimento e Tecnologia', '3', '9', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('129', '3.10 - INVESTIMENTOS', '3', '10', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('130', '3.10.01 - ImÃ³veis', '3', '10', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('131', '3.10.02 - AutomÃ³veis', '3', '10', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('132', '3.10.03 - MÃ³veis', '3', '10', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('133', '3.10.04 - InformÃ¡tica', '3', '10', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('134', '3.10.05 - Investimentos Financeiros', '3', '10', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('135', '3.10.06 - PrevidÃªncia Privada', '3', '10', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('136', '3.11 - DESPESAS FINANCEIRAS E BANCÃRIAS', '3', '11', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('137', '3.11.01 - EmprÃ©stimos', '3', '11', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('138', '3.11.02 - CartÃ£o de CrÃ©dito', '3', '11', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('139', '3.11.03 - ManutenÃ§Ã£o de Conta', '3', '11', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('140', '3.11.04 - IOF', '3', '11', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('141', '3.11.05 - Tarifas BancÃ¡rias', '3', '11', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('142', '3.11.06 - Juros Pagos', '3', '11', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('143', '3.11.07 - Multas Pagas', '3', '11', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('144', '3.11.08 - Saques', '3', '11', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('145', '3.11.09 - Estornos', '3', '11', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('146', '3.11.10 - Despesa de Reembolso', '3', '11', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('147', '3.11.11 - Adiantamentos', '3', '11', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('148', '3.11.12 - Cheques', '3', '11', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('149', '3.12 - DESPESAS GERAIS', '3', '12', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('150', '3.12.01 - Material para Copa', '3', '12', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('151', '3.12.02 - Material de EscritÃ³rio', '3', '12', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('152', '3.12.03 - Material de InformÃ¡tica', '3', '12', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('153', '3.12.04 - Material de Limpeza', '3', '12', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('154', '3.12.05 - Material de ManutenÃ§Ã£o', '3', '12', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('155', '3.12.06 - Livros e Informativos', '3', '12', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('156', '3.12.07 - Jornais e Revistas', '3', '12', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('157', '3.12.08 - Cursos e Congressos', '3', '12', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('158', '3.12.09 - Aulas Diversas (Volei - Futebol e outras)', '3', '12', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('159', '3.12.10 - Clubes', '3', '12', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('160', '3.12.11 - Festas e Eventos', '3', '12', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('161', '3.12.12 - Xerox', '3', '12', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('162', '3.12.13 - CartÃ³rios', '3', '12', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('163', '3.12.14 - Presentes', '3', '12', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('164', '3.12.15 - DoaÃ§Ãµes', '3', '12', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('165', '3.12.16 - Roupas e Sapatos', '3', '12', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('166', '3.12.17 - UtensÃ­lios Pessoais', '3', '12', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('167', '3.12.18 - Outros Gastos', '3', '12', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('256', '3.5.10 - DAS - Simples Nacional', '3', '5', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('257', '3.5.11 - GPS', '3', '5', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('258', '3.4.17 - ServiÃ§os com Correspondentes', '3', '4', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('259', '3.6.15 - PedÃ¡gio', '3', '6', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('260', '3.12.19 - Compras', '3', '12', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('261', '3.3.24 - GratificaÃ§Ãµes', '3', '3', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('262', '3.3.25 - RPA (Recibo de Pagamento Autonomo)', '3', '3', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('263', '3.12.21 - Equipamentos', '3', '12', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('264', '3.3.26 - ComissÃµes', '3', '3', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('265', '3.3.27 - RestituiÃ§Ã£o de Valores', '3', '3', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('266', '3.5.12 - Impostos - E-Social', '3', '5', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('268', '3.5.14 - Anuidade OAB', '3', '5', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('269', '3.12.20 - AquisiÃ§Ã£o', '3', '12', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('270', '2.1.10 - CondomÃ­nio', '2', '1', 'Receitas');
INSERT INTO tb_centro_custo VALUES ('272', '3.9.07 - Publicidade', '3', '9', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('273', '3.12.22 - AcessÃ³rios', '3', '12', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('274', '3.12.23 - Ferramentas', '3', '12', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('275', '3.11.13 - PoupanÃ§a', '3', '11', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('278', '3.3.28 - Adiantamentos e EmprÃ©stimos', '3', '3', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('279', '3.1.03 - Deslocamento externo em favor de cliente', '3', '1', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('280', '3.6.16 - Deslocamento', '3', '6', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('281', '3.1.04 - DiligÃªncia', '3', '1', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('282', '2.1.11 - TransferÃªncia Entrada', '2', '1', 'Receitas');
INSERT INTO tb_centro_custo VALUES ('283', '3.11.14 - TransferÃªncia SaÃ¬da', '3', '11', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('284', '3.1.05 - Pagamento para Cliente', '3', '1', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('285', '1.1.07 - Acordo', '1', '1', 'Receitas');
INSERT INTO tb_centro_custo VALUES ('286', '1.1.08 - HonorÃ¡rios Diversos', '1', '1', 'Receitas');
INSERT INTO tb_centro_custo VALUES ('287', '3.3.30 - Ajuda de Custo', '3', '3', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('288', '3.1.06 - Repasses de AlvarÃ¡s', '3', '1', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('289', '3.1.07 - SentenÃ§a', '3', '1', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('290', '3.1.08 - Repasses de Acordo', '3', '1', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('291', '3.1.09 - DepÃ³sito Inicial', '3', '1', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('292', '3.1.10 - DepÃ³sito Recursal', '3', '1', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('293', '3.9.08 - IndicaÃ§Ãµes', '3', '9', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('294', '3.4.18 - Contrato de PrestaÃ§Ã£o de ServiÃ§os Diversos', '3', '4', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('295', '1.1.09 - Por Ato', '1', '1', 'Receitas');
INSERT INTO tb_centro_custo VALUES ('296', '1.1.10 - Por Fase', '1', '1', 'Receitas');
INSERT INTO tb_centro_custo VALUES ('297', '3.9.09 - Imagem', '3', '9', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('298', '3.3.31 - DistribuiÃ§Ã£o Mensal Fixa', '3', '3', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('299', '3.12.24 - Assinaturas', '3', '12', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('300', '3.10.07 - ManutenÃ§Ã£o Predial', '3', '10', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('301', '3.10.08 - AquisiÃ§Ã£o de Equipamentos', '3', '10', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('302', '3.1.11 - Consultas TÃ©cnicas', '3', '1', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('303', '3.10.09 - Pagamento de CessÃ£o de CrÃ©dito Judicial', '3', '10', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('304', '3.10.10 - Fomento ', '3', '10', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('305', '2.1.12- AlvarÃ¡', '2', '1', 'Receitas');
INSERT INTO tb_centro_custo VALUES ('306', '2.1.13- RequisiÃ§Ã£o de pequeno valor (RPV)', '2', '1', 'Receitas');
INSERT INTO tb_centro_custo VALUES ('307', '2.1.14 - PrecatÃ³rio', '2', '1', 'Receitas');
INSERT INTO tb_centro_custo VALUES ('315', '3.10.11 - AquisiÃ§Ã£o de MÃ¡quinas', '3', '10', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('316', '3.12.25 - Cesta BÃ¡sica', '3', '12', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('317', '3.1.12 - Estacionamento', '3', '1', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('318', '3.1.13 - Hospedagem', '3', '1', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('319', '3.1.14 - AlimentaÃ§ao', '3', '1', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('320', '1.2.08 - Partido Mensal', '1', '2', 'Receitas');
INSERT INTO tb_centro_custo VALUES ('321', '1.2.09 - Avulso', '1', '2', 'Receitas');
INSERT INTO tb_centro_custo VALUES ('322', '1.2.10 - HonorÃ¡rios Diversos', '1', '2', 'Receitas');
INSERT INTO tb_centro_custo VALUES ('323', '3.11.15 - IR Sobre AplicaÃ§Ãµes', '3', '11', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('324', '3.12.26 - DepreciaÃ§Ã£o', '3', '12', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('325', '3.12.27 - AmortizaÃ§Ã£o', '3', '12', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('326', '3.3.32 - Seguro EstagiÃ¡rio', '3', '3', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('327', '3.12.28 - Seguros em geral', '3', '12', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('328', '3.12.29 - Erro operacional', '3', '12', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('329', '3.4.19 - ServiÃ§os de TraduÃ§Ã£o', '3', '4', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('330', '3.1.15 - CÃ¡lculos Judiciais', '3', '1', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('331', '3.9.10 - ServiÃ§o de envio de SMS', '3', '9', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('332', '3.12.30 - Despesas com Software', '3', '12', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('333', '1.2.11 - Hora Trabalhada', '1', '2', 'Receitas');
INSERT INTO tb_centro_custo VALUES ('334', '1.2.12 - Por Ato', '1', '2', 'Receitas');
INSERT INTO tb_centro_custo VALUES ('335', '3.5.15 - PCC', '3', '5', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('336', '3.12.31 - ConsÃ³rcio', '3', '12', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('338', '3.3.33 - AuxÃ­lio EducaÃ§Ã£o', '3', '3', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('339', '3.4.20 - ManutenÃ§Ã£o de Equipamentos', '3', '4', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('340', '1.1.11 - Quantidade de Processos', '1', '1', 'Receitas');
INSERT INTO tb_centro_custo VALUES ('342', '4 - DESPESAS NÃƒO OPERACIONAIS', '4', '0', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('343', '4.1 - DESPESAS CONSULTIVO E CONTENCIOSO', '4', '1', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('344', '4.1.01 - Custas', '4', '1', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('345', '4.1.02 - Outras Despesas com Clientes', '4', '1', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('346', '4.1.03 - Deslocamento externo em favor de cliente', '4', '1', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('347', '4.1.04 - DiligÃªncia', '4', '1', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('348', '4.1.05 - Pagamento para Cliente', '4', '1', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('349', '4.1.06 - Repasses de AlvarÃ¡s', '4', '1', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('350', '4.1.07 - SentenÃ§a', '4', '1', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('351', '4.1.08 - Repasses de Acordo', '4', '1', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('352', '4.1.09 - DepÃ³sito Inicial', '4', '1', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('353', '4.1.10 - DepÃ³sito Recursal', '4', '1', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('354', '4.1.11 - Consultas TÃ©cnicas', '4', '1', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('355', '4.1.12 - Estacionamento', '4', '1', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('356', '4.1.13 - Hospedagem', '4', '1', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('357', '4.1.14 - AlimentaÃ§ao', '4', '1', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('358', '4.1.14 - CÃ¡lculos Judiciais', '4', '1', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('359', '3.3.34 - Exame Admissional/Demissional', '3', '3', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('360', '3.2.12 -  GÃ¡s', '3', '2', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('361', '3.3.36 - Verbas RescisÃ³rias', '3', '3', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('362', '3.3.35 - Adiantamento de DistribuiÃ§Ã£o de Lucro', '3', '3', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('363', '1.1.12 HonorÃ¡rios Iniciais (PrÃ³-Labore)', '1', '1', 'Receitas');
INSERT INTO tb_centro_custo VALUES ('364', '3.3.37 - Recrutamento e SeleÃ§Ã£o', '3', '3', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('365', '3.2.13 - Obras', '3', '3', 'Despesas');
INSERT INTO tb_centro_custo VALUES ('366', '3.12.32 - ConfraternizaÃ§Ã£o', '3', '3', 'Despesas');

CREATE TABLE `tb_centro_custonew` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(200) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `categoria_centro` varchar(140) NOT NULL,
  `id_centro_pai` int(11) NOT NULL,
  `id_migracao` int(11) DEFAULT NULL,
  `texto_migracao` varchar(255) DEFAULT '',
  `status` int(1) DEFAULT '1',
  `verifica_novo_centro` varchar(3) DEFAULT 'nao',
  PRIMARY KEY (`id`),
  KEY `idx_centros_empresa` (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=8724 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_chaves_autenticador` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` bigint(20) unsigned NOT NULL,
  `secret` varchar(128) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_chaves_juris_ai` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `db_name` varchar(32) NOT NULL,
  `id_empresa` bigint(20) unsigned NOT NULL,
  `token` varchar(350) NOT NULL,
  `status` varchar(32) NOT NULL DEFAULT '1',
  `data_criado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ultimo_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`)
) ENGINE=InnoDB AUTO_INCREMENT=14762 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_cidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `cod_cidade` int(11) DEFAULT '0',
  `uf` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5571 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_cliente_advogados` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `cliente_id` int(11) NOT NULL,
  `pessoa_id` int(11) NOT NULL,
  `advogado_id` int(11) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_clientes_empresa` (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=3294 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_cliente_grupos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `id_modulo` int(11) NOT NULL DEFAULT '5',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12976 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_cnae_pessoa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `id_pessoa` int(11) DEFAULT '0',
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_pessoa` (`id_pessoa`),
  KEY `idx_empresa` (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=213710 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_codpublicacao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codPublicacao` varchar(45) NOT NULL,
  `data_cadastro` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `tb_colaboradores_advogados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `salario` double NOT NULL,
  `beneficios` text NOT NULL,
  `tipo_contrato` varchar(30) NOT NULL,
  `cargo` int(11) NOT NULL,
  `responsavel` int(11) NOT NULL,
  `valor_hora` double NOT NULL,
  `tributacao` int(11) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `data_entrada` date NOT NULL DEFAULT '0000-00-00',
  `data_saida` date NOT NULL DEFAULT '0000-00-00',
  `verifica_novo_colaborador` varchar(10) NOT NULL,
  `meta_mensal` int(11) NOT NULL,
  `valor_beneficios` double NOT NULL,
  `tipo_custo` varchar(50) NOT NULL,
  `meta_horas` int(11) NOT NULL,
  `hora_faturada` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_colaboradores_empresa` (`id_empresa`),
  KEY `idx_colaboradores_cliente` (`id_cliente`),
  KEY `idx_colaboradores_responsavel` (`responsavel`),
  KEY `idx_colaborador_cargo` (`cargo`)
) ENGINE=InnoDB AUTO_INCREMENT=16992 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_coleta_solucionare` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `finalidade` varchar(255) DEFAULT NULL,
  `numero_processo` varchar(40) DEFAULT NULL,
  `instancia` varchar(200) DEFAULT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `vinculo` varchar(50) DEFAULT NULL,
  `termo` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `id_modulo` varchar(255) DEFAULT NULL,
  `id_registro` int(11) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `enviado_solucionare` int(11) DEFAULT '0',
  `data_envio_solucionare` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16757 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_comarcas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `UF` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5636 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_comentario` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) unsigned NOT NULL,
  `id_empresa` int(11) unsigned NOT NULL,
  `modulo` varchar(45) NOT NULL,
  `id_modulo` int(11) unsigned NOT NULL,
  `comentario` longtext NOT NULL,
  `data_cadastro` datetime NOT NULL,
  `data_edicao` datetime DEFAULT NULL,
  `data_exclusao` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10256 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_compras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fornecedor` varchar(50) NOT NULL,
  `data` date NOT NULL,
  `data_cadastro` date NOT NULL,
  `hora_cadastro` time NOT NULL,
  `total` double NOT NULL,
  `observacao` text NOT NULL,
  `produto1` varchar(200) NOT NULL,
  `quantidade1` int(11) NOT NULL,
  `preco1` double NOT NULL,
  `total1` double NOT NULL,
  `produto2` varchar(200) NOT NULL,
  `quantidade2` int(11) NOT NULL,
  `preco2` double NOT NULL,
  `total2` double NOT NULL,
  `produto3` varchar(200) NOT NULL,
  `quantidade3` int(11) NOT NULL,
  `preco3` double NOT NULL,
  `total3` double NOT NULL,
  `produto4` varchar(200) NOT NULL,
  `quantidade4` int(11) NOT NULL,
  `preco4` double NOT NULL,
  `total4` double NOT NULL,
  `produto5` varchar(200) NOT NULL,
  `quantidade5` int(11) NOT NULL,
  `preco5` double NOT NULL,
  `total5` double NOT NULL,
  `produto6` varchar(200) NOT NULL,
  `quantidade6` int(11) NOT NULL,
  `preco6` double NOT NULL,
  `total6` double NOT NULL,
  `produto7` varchar(200) NOT NULL,
  `quantidade7` int(11) NOT NULL,
  `preco7` double NOT NULL,
  `total7` double NOT NULL,
  `produto8` varchar(200) NOT NULL,
  `quantidade8` int(11) NOT NULL,
  `preco8` double NOT NULL,
  `total8` double NOT NULL,
  `produto9` varchar(200) NOT NULL,
  `quantidade9` int(11) NOT NULL,
  `preco9` double NOT NULL,
  `total9` double NOT NULL,
  `produto10` varchar(200) NOT NULL,
  `quantidade10` int(11) NOT NULL,
  `preco10` double NOT NULL,
  `total10` double NOT NULL,
  `tipo_pg` varchar(11) NOT NULL,
  `projeto` int(11) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `parcelas` int(11) NOT NULL,
  `desconto` double NOT NULL,
  `advogado` varchar(300) NOT NULL,
  `compra_aprovada` varchar(11) NOT NULL,
  `tipo_valor` varchar(1) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_processo` int(11) NOT NULL,
  `verifica_nova_compra` varchar(10) NOT NULL,
  `destinatarios` varchar(256) NOT NULL,
  `tipo_despesa_novo` int(11) DEFAULT NULL,
  `valor_principal` float DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_compras_empresa` (`id_empresa`),
  KEY `idx_compras_fornecedor` (`fornecedor`),
  KEY `idx_compras_projeto` (`projeto`),
  KEY `idx_compras_advogado` (`advogado`),
  KEY `idx_compras_cliente` (`id_cliente`),
  KEY `idx_compras_processo` (`id_processo`)
) ENGINE=InnoDB AUTO_INCREMENT=32107 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_compras_centros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_despesa` int(11) DEFAULT NULL,
  `id_centro` int(11) DEFAULT NULL,
  `percentual_centro` double DEFAULT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `valor_centro` float DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_desp_cnt_empresa` (`id_empresa`),
  KEY `idx_desp_cnt_despesa` (`id_despesa`)
) ENGINE=InnoDB AUTO_INCREMENT=114171 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

CREATE TABLE `tb_compras_produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `compra_id` int(11) NOT NULL DEFAULT '0',
  `nome` varchar(255) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT '0.00',
  `quantidade` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1332 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_config_relatorio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `campos_ver` varchar(400) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_relatorio_empresa` (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=1496 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_configuracao_envio_excel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_modelo_relatorio` varchar(10) DEFAULT NULL,
  `id_modelo_relatorio` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `condicao` text,
  `formulario` text,
  `email` text,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `control` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_empresa` (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=6773 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_configuracao_envio_excel_envolvidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_configuracao_envio` int(11) NOT NULL,
  `id_pessoa` int(11) NOT NULL,
  `tipo_pessoa` int(11) NOT NULL,
  `nome_pessoa` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_empresa` (`id_empresa`),
  KEY `idx_pessoa` (`id_pessoa`),
  KEY `id_xconfiguracao_envio` (`id_configuracao_envio`)
) ENGINE=InnoDB AUTO_INCREMENT=4933 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_configuracao_envio_excel_periodicidade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_configuracao_envio` int(11) NOT NULL,
  `periodicidade` varchar(255) DEFAULT NULL,
  `hora` varchar(255) DEFAULT NULL,
  `data_inicio` date DEFAULT NULL,
  `data_final` date DEFAULT NULL,
  `tempo_indeterminado` int(1) DEFAULT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_empresa` (`id_empresa`),
  KEY `id_xconfiguracao_envio` (`id_configuracao_envio`)
) ENGINE=InnoDB AUTO_INCREMENT=2450 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_conta_digital` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `credencial` varchar(250) NOT NULL,
  `chave` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL,
  `cnpj` varchar(50) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `cep` varchar(20) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `complemento` varchar(255) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `bairro` varchar(255) NOT NULL,
  `uf` char(2) NOT NULL,
  `data_cadastro` char(10) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `tb_contrato` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_advogado` int(11) NOT NULL,
  `user_cadastro` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `data_lancamento` date NOT NULL,
  `observacoes` blob NOT NULL,
  `data_inicio` date NOT NULL,
  `data_final` date NOT NULL,
  `status` varchar(30) NOT NULL,
  `tipo_contrato` varchar(30) NOT NULL,
  `faturamento` varchar(10) DEFAULT 'fisico',
  `taxa_reajuste` varchar(6) NOT NULL,
  `reajuste_automatico` int(1) NOT NULL,
  `periodo_reajuste` int(1) NOT NULL DEFAULT '0',
  `tipo_receita` int(11) NOT NULL,
  `classificacao` varchar(30) NOT NULL,
  `tipo_pg` varchar(2) NOT NULL,
  `meses` int(11) NOT NULL,
  `valor` double NOT NULL,
  `id_contratoDocumento` int(11) NOT NULL,
  `texto` longblob,
  `texto_long` longblob,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `vencimento` varchar(11) NOT NULL,
  `tipo_valor` varchar(1) NOT NULL,
  `data_vencimento` date NOT NULL,
  `id_banco` int(11) NOT NULL,
  `grupo` int(11) NOT NULL,
  `imposto_renda` double NOT NULL,
  `percentual_imposto` float NOT NULL DEFAULT '0',
  `valor_imposto` float NOT NULL DEFAULT '0',
  `gerar_ir` int(11) NOT NULL,
  `tipo_modelo` int(11) DEFAULT '0',
  `id_processo` int(11) DEFAULT '0',
  `id_adverso` int(11) DEFAULT '0',
  `id_oportunidade` int(11) NOT NULL DEFAULT '0',
  `assunto` int(11) DEFAULT '0',
  `area` int(11) DEFAULT '0',
  `tipo_documento` int(11) DEFAULT '18',
  `inclui_despesa` int(1) NOT NULL DEFAULT '0',
  `tipo_cobranca_hora` int(1) NOT NULL DEFAULT '1',
  `valor_hora_contrato` float DEFAULT '0',
  `indeterminado` int(1) NOT NULL DEFAULT '0',
  `verifica_novo_contrato` varchar(10) NOT NULL,
  `valor_cap` double NOT NULL DEFAULT '0',
  `id_migracao` int(11) DEFAULT NULL,
  `texto_migracao` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_cont_empresa` (`id_empresa`),
  KEY `idx_cont_banco` (`id_banco`),
  KEY `idx_cont_numero` (`numero`)
) ENGINE=InnoDB AUTO_INCREMENT=177725 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_contrato_aditivo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_contrato` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_advogado` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `data_lancamento` date NOT NULL,
  `texto` blob NOT NULL,
  `data_inicio` date NOT NULL,
  `data_final` date NOT NULL,
  `status` varchar(30) NOT NULL,
  `tipo_contrato` varchar(30) NOT NULL,
  `tipo_receita` int(11) NOT NULL,
  `classificacao` varchar(30) NOT NULL,
  `meses` int(11) NOT NULL,
  `valor` double NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `tipo_valor` varchar(1) NOT NULL,
  `data_vencimento` date NOT NULL,
  `id_banco` int(11) NOT NULL,
  `imposto_renda` double NOT NULL,
  `verifica_novo_aditivo` varchar(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_adtv_empresa` (`id_empresa`),
  KEY `idx_adtv_contrato` (`id_contrato`)
) ENGINE=InnoDB AUTO_INCREMENT=1714 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_contrato_areas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_contrato` int(11) NOT NULL,
  `id_area` int(11) NOT NULL,
  `percentual` double NOT NULL,
  `tipo_cobranca` varchar(50) DEFAULT NULL,
  `id_centro` int(11) NOT NULL,
  `grupo` int(11) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cont_ar_empresa` (`id_empresa`),
  KEY `idx_cont_ar_contrato` (`id_contrato`)
) ENGINE=InnoDB AUTO_INCREMENT=7132 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_contrato_atos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_contrato` int(11) NOT NULL,
  `id_subtipo` int(11) NOT NULL,
  `nome` varchar(250) NOT NULL,
  `valor` double NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cont_at_empresa` (`id_empresa`),
  KEY `idx_cont_at_contrato` (`id_contrato`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_contrato_envolvidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_contrato` int(11) NOT NULL,
  `id_envolvido` int(11) NOT NULL,
  `classificacao` varchar(50) NOT NULL,
  `percentual` double NOT NULL,
  `banco_destino` int(11) NOT NULL,
  `imposto_renda_envolvido` double NOT NULL,
  `centro_custo` int(11) NOT NULL,
  `grupo` int(11) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `id_migracao` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cont_ev_empresa` (`id_empresa`),
  KEY `idx_cont_ev_contrato` (`id_contrato`)
) ENGINE=InnoDB AUTO_INCREMENT=349520 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_contrato_palavras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_contrato` int(11) NOT NULL,
  `nome` varchar(250) NOT NULL,
  `valor` double NOT NULL,
  `id_regra` int(11) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cont_pl_empresa` (`id_empresa`),
  KEY `idx_cont_pl_contrato` (`id_contrato`)
) ENGINE=InnoDB AUTO_INCREMENT=282 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_contrato_reajuste` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_contrato` int(11) NOT NULL,
  `id_aditivo` int(11) NOT NULL,
  `data_reajuste` date NOT NULL,
  `taxa` varchar(10) NOT NULL,
  `valor_antes` double NOT NULL,
  `valor_depois` double NOT NULL,
  `status` int(1) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cont_rea_empresa` (`id_empresa`),
  KEY `idx_cont_rea_contrato` (`id_contrato`)
) ENGINE=InnoDB AUTO_INCREMENT=120351 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_contrato_regra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_contrato` int(11) NOT NULL,
  `classificacao` varchar(50) NOT NULL,
  `tipo_hora` varchar(50) DEFAULT NULL,
  `contratado` varchar(10) NOT NULL,
  `banco_de_horas` varchar(10) DEFAULT NULL,
  `valor_fixo` double NOT NULL DEFAULT '0',
  `percentual_alerta` varchar(10) NOT NULL,
  `exito` char(1) NOT NULL DEFAULT 'N',
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `id_senioridade` int(11) NOT NULL,
  `id_subtipo` int(11) NOT NULL DEFAULT '0',
  `nome` varchar(255) DEFAULT '',
  `area` int(11) NOT NULL,
  `polo_processo` varchar(10) DEFAULT '',
  `fase_processo` varchar(45) DEFAULT '',
  `tipo_processo` varchar(45) DEFAULT '',
  `resultado_processo` int(11) NOT NULL DEFAULT '0',
  `cap` int(11) NOT NULL DEFAULT '0',
  `centro_regra` int(11) NOT NULL,
  `tipo_agenda` varchar(255) DEFAULT '',
  `descricao_regra` longtext NOT NULL,
  `assuntos` varchar(255) NOT NULL DEFAULT '',
  `valor_adicional` double NOT NULL DEFAULT '0',
  `gerar_cap_fixo` int(11) NOT NULL DEFAULT '0',
  `meses_cap_fix` int(11) DEFAULT '1',
  `valor_range` double NOT NULL DEFAULT '0',
  `tipo_financeiro` varchar(255) DEFAULT '',
  `possui_range` int(11) DEFAULT '0',
  `status` varchar(1) NOT NULL DEFAULT 'A',
  `id_etapa` int(11) NOT NULL DEFAULT '0',
  `rito_regra` varchar(45) NOT NULL DEFAULT '',
  `valor_cap` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cont_reg_empresa` (`id_empresa`),
  KEY `idx_cont_reg_contrato` (`id_contrato`)
) ENGINE=InnoDB AUTO_INCREMENT=38487 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

CREATE TABLE `tb_contrato_regra_comissao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_contrato` int(11) NOT NULL,
  `id_responsavel` int(11) NOT NULL,
  `id_colaborador` int(11) NOT NULL,
  `percentual` double NOT NULL,
  `percentual_imposto` double NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cont_reg_empresa` (`id_empresa`),
  KEY `idx_cont_reg_contrato` (`id_contrato`)
) ENGINE=InnoDB AUTO_INCREMENT=669 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_contrato_senioridade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_contrato` int(11) NOT NULL,
  `id_senioridade` int(11) NOT NULL,
  `nome` varchar(250) NOT NULL,
  `valor` double NOT NULL DEFAULT '0',
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `id_regra` int(11) NOT NULL,
  `valor_adicional` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_cont_sen_empresa` (`id_empresa`),
  KEY `idx_cont_sen_contrato` (`id_contrato`)
) ENGINE=InnoDB AUTO_INCREMENT=228413 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_controle_acesso_movimentacoes` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  `controleProcessos` varchar(255) DEFAULT NULL,
  `controleProjetos` varchar(255) DEFAULT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=746 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_count_click` (
  `id` int(11) NOT NULL,
  `ver_todos_processos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `tb_designsdocumentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_id` varchar(20000) DEFAULT NULL,
  `id_template` varchar(500) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `tipo_documento` int(11) DEFAULT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_processo` int(11) DEFAULT NULL,
  `id_agenda` int(11) DEFAULT NULL,
  `id_projeto` int(11) DEFAULT NULL,
  `id_adverso` int(11) DEFAULT NULL,
  `id_advogado` int(11) DEFAULT NULL,
  `assunto` int(11) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `data_cadastro` date NOT NULL DEFAULT '0000-00-00',
  `grupo` int(11) DEFAULT NULL,
  `verifica_novo_design` varchar(10) DEFAULT NULL,
  `page_format_title` varchar(200) DEFAULT NULL,
  `page_format_id` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_tb_designsDocumentos_tipo_documento` (`tipo_documento`),
  KEY `idx_tb_designsDocumentos_id_empresa` (`id_empresa`),
  KEY `idx_tb_designsDocumentos_id_cliente` (`id_cliente`),
  KEY `idx_tb_designsDocumentos_id_processo` (`id_processo`),
  KEY `idx_tb_designsDocumentos_id_agenda` (`id_agenda`),
  KEY `idx_tb_designsDocumentos_id_projeto` (`id_projeto`),
  KEY `idx_tb_designsDocumentos_id_adverso` (`id_adverso`),
  KEY `idx_tb_designsDocumentos_id_advogado` (`id_advogado`),
  KEY `idx_tb_designsDocumentos_area` (`area`),
  KEY `idx_tb_designsDocumentos_grupo` (`grupo`)
) ENGINE=InnoDB AUTO_INCREMENT=752 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_despesas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_principal` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_advogado` int(11) NOT NULL,
  `id_processo` int(11) NOT NULL,
  `id_banco` int(11) NOT NULL,
  `id_banco_destino` int(11) NOT NULL,
  `id_fornecedor` int(11) NOT NULL,
  `id_compra` int(11) NOT NULL,
  `id_agenda` int(11) NOT NULL,
  `id_transferencia` int(11) NOT NULL,
  `id_contrato` int(11) NOT NULL,
  `id_projeto` int(11) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `user_cadastro` int(11) NOT NULL,
  `data_cadastro` date NOT NULL DEFAULT '0000-00-00',
  `data_vencimento` date NOT NULL DEFAULT '0000-00-00',
  `data_competencia` date NOT NULL DEFAULT '0000-00-00',
  `data_pagamento` date NOT NULL DEFAULT '0000-00-00',
  `tipo_valor` varchar(1) NOT NULL,
  `tipo_despesa` int(11) NOT NULL,
  `tipo_pg` varchar(2) NOT NULL,
  `parcela` int(3) NOT NULL DEFAULT '1',
  `parcelas` int(3) NOT NULL DEFAULT '1',
  `valor_total` double NOT NULL,
  `valor` double NOT NULL,
  `status` varchar(1) NOT NULL,
  `descricao` longtext NOT NULL,
  `aprovada` varchar(5) NOT NULL,
  `reembolso` varchar(1) NOT NULL DEFAULT 'N',
  `reembolsavel` varchar(3) NOT NULL DEFAULT 'nao',
  `compra_aprovada` varchar(10) NOT NULL,
  `final_processo` varchar(50) NOT NULL,
  `caixa` varchar(1) NOT NULL,
  `verifica_nova_despesa` varchar(10) NOT NULL DEFAULT 'nao',
  `id_migracao` int(11) NOT NULL,
  `texto_migracao` varchar(45) DEFAULT NULL,
  `tipo_custo` varchar(50) NOT NULL,
  `id_reembolso` int(11) NOT NULL DEFAULT '0',
  `id_pagador` int(11) NOT NULL DEFAULT '0',
  `id_receita_comissao` int(11) DEFAULT '0',
  `ratear_reembolso` varchar(3) DEFAULT '',
  `bloqueado` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_desp_empresa` (`id_empresa`),
  KEY `idx_desp_processo` (`id_processo`),
  KEY `idx_desp_banco` (`id_banco`),
  KEY `idx_rec_principal` (`id_principal`),
  KEY `idx_rec_cliente` (`id_cliente`),
  KEY `idx_rec_advogado` (`id_advogado`),
  KEY `idx_rec_contrato` (`id_contrato`),
  KEY `idx_rec_fornecedor` (`id_fornecedor`),
  KEY `idx_rec_compra` (`id_compra`),
  KEY `idx_rec_projeto` (`id_projeto`),
  KEY `idx_rec_plano_contas` (`tipo_despesa`),
  KEY `idx_rec_status` (`status`),
  KEY `idx_rec_reembolso` (`id_reembolso`),
  KEY `idx_rec_pagador` (`id_pagador`),
  KEY `idx_rec_receita_comissao` (`id_receita_comissao`),
  KEY `idx_desp_data_vencimento` (`data_vencimento`),
  KEY `idx_desp_data_cadastro` (`data_cadastro`),
  KEY `idx_desp_data_competencia` (`data_competencia`),
  KEY `idx_desp_data_pagamento` (`data_pagamento`)
) ENGINE=InnoDB AUTO_INCREMENT=1849553 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_despesas_centros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_despesa` int(11) DEFAULT NULL,
  `id_centro` int(11) DEFAULT NULL,
  `valor_despesa` double DEFAULT NULL,
  `percentual_centro` double DEFAULT NULL,
  `valor_percentual_centro` double DEFAULT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `valor_centro` float DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_desp_cnt_empresa` (`id_empresa`),
  KEY `idx_desp_cnt_despesa` (`id_despesa`)
) ENGINE=InnoDB AUTO_INCREMENT=5330312 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

CREATE TABLE `tb_distribuicao_processo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomePesquisa` varchar(100) DEFAULT NULL,
  `tribunal` varchar(60) NOT NULL,
  `numeroProcesso` varchar(255) DEFAULT NULL,
  `tipoOcorrencia` text,
  `reu` varchar(100) DEFAULT NULL,
  `autor` varchar(100) DEFAULT NULL,
  `forum` varchar(60) DEFAULT NULL,
  `vara` varchar(60) DEFAULT NULL,
  `cidade` varchar(60) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  `valor` decimal(10,0) DEFAULT NULL,
  `advogadoAutor` varchar(100) DEFAULT NULL,
  `dataAudiencia` datetime DEFAULT NULL,
  `dataDistribuicao` datetime DEFAULT NULL,
  `processoEletronico` tinyint(1) DEFAULT '0',
  `linkAcessoInicial` varchar(255) DEFAULT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `classificacaoAudiencia` varchar(100) DEFAULT NULL,
  `status` int(1) DEFAULT '1' COMMENT '1 = Ativo, 2 = Concluída, 3 = Excluída',
  `data_leitura` datetime DEFAULT NULL,
  `dataCadastro` datetime DEFAULT CURRENT_TIMESTAMP,
  `id_processo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_empresa` (`id_empresa`),
  KEY `id_processo` (`id_processo`),
  CONSTRAINT `tb_distribuicao_processo_ibfk_1` FOREIGN KEY (`id_empresa`) REFERENCES `tb_escritorio_advogados` (`id`),
  CONSTRAINT `tb_distribuicao_processo_ibfk_2` FOREIGN KEY (`id_processo`) REFERENCES `tb_processos` (`id_processo`)
) ENGINE=InnoDB AUTO_INCREMENT=856 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_documento_envolvidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_documento` int(11) NOT NULL,
  `id_envolvido` int(11) NOT NULL,
  `classificacao` varchar(50) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_docs_empresa` (`id_empresa`),
  KEY `idx_docs_documento` (`id_documento`),
  KEY `idx_docs_envolvido` (`id_envolvido`)
) ENGINE=InnoDB AUTO_INCREMENT=2669 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_documentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `texto` longblob NOT NULL,
  `texto_blob` longblob NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `id_cliente` int(11) NOT NULL,
  `tipo_modelo` int(11) NOT NULL,
  `id_processo` int(11) NOT NULL,
  `id_agenda` int(11) NOT NULL,
  `id_projeto` int(11) NOT NULL,
  `id_adverso` int(11) NOT NULL,
  `id_advogado` int(11) NOT NULL,
  `assunto` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  `tipo_documento` int(11) NOT NULL,
  `data_cadastro` date NOT NULL,
  `user_cadastro` int(11) NOT NULL,
  `grupo` int(11) NOT NULL DEFAULT '0',
  `verifica_novo_documento` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_docs_empresa` (`id_empresa`),
  KEY `idx_docs_processo` (`id_processo`),
  KEY `idx_docs_cliente` (`id_cliente`),
  KEY `idx_docs_projeto` (`id_projeto`),
  KEY `idx_docs_adverso` (`id_adverso`),
  KEY `idx_docs_advogado` (`id_advogado`)
) ENGINE=InnoDB AUTO_INCREMENT=139816 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_documentos_andamentos` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `codDocumento` int(11) DEFAULT NULL,
  `codProcesso` int(11) DEFAULT NULL,
  `codAgrupador` int(11) DEFAULT NULL,
  `numProcesso` varchar(255) DEFAULT NULL,
  `codAndamento` int(11) DEFAULT NULL,
  `urlDocumento` varchar(255) DEFAULT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `banco` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_id_empresa` (`id_empresa`),
  KEY `idx_codDocumento` (`codDocumento`),
  KEY `idx_codAndamento` (`codAndamento`),
  KEY `idx_codProcesso` (`codProcesso`),
  KEY `idx_codAgrupador` (`codAgrupador`),
  KEY `idx_banco` (`banco`)
) ENGINE=InnoDB AUTO_INCREMENT=5092373 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_email_andamentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codAndamento` varchar(100) NOT NULL,
  `id_advogado` int(11) NOT NULL,
  `id_processo` int(11) NOT NULL,
  `numero_processo` varchar(50) NOT NULL,
  `id_incidente` int(11) NOT NULL,
  `data` date NOT NULL,
  `data_cadastro` date NOT NULL,
  `descricao` longtext NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_andamento_processo` (`id_processo`),
  KEY `idx_email_andamento_codAndamento` (`codAndamento`),
  KEY `idx_email_andamento_advogado` (`id_advogado`),
  KEY `idx_email_andamento_incidente` (`id_incidente`),
  KEY `idx_email_andamento_empresa` (`id_empresa`),
  KEY `idx_email_andamento_cadastro` (`data_cadastro`)
) ENGINE=InnoDB AUTO_INCREMENT=329038 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

CREATE TABLE `tb_escritorio_advogados` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT '',
  `slogan` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT '',
  `numero` varchar(10) DEFAULT NULL,
  `complemento` varchar(50) DEFAULT NULL,
  `cidade` varchar(75) DEFAULT '',
  `estado` char(2) DEFAULT '',
  `bairro` varchar(75) DEFAULT '',
  `cep` varchar(50) DEFAULT NULL,
  `ddd1` varchar(2) DEFAULT '',
  `fone1` varchar(15) DEFAULT '',
  `email1` varchar(75) DEFAULT '',
  `cedente` varchar(50) DEFAULT NULL,
  `endereco_cedente` varchar(50) DEFAULT NULL,
  `cnpj` varchar(18) DEFAULT NULL,
  `inscricao_municipal` varchar(50) DEFAULT NULL,
  `regime_tributacao` varchar(50) DEFAULT NULL,
  `agencia` varchar(20) DEFAULT NULL,
  `conta` varchar(15) DEFAULT NULL,
  `carteira` varchar(15) DEFAULT NULL,
  `taxa` int(11) DEFAULT NULL,
  `horarios` varchar(250) DEFAULT NULL,
  `descontos` float DEFAULT NULL,
  `acrecimos` float DEFAULT NULL,
  `multas` float DEFAULT NULL,
  `dias_protesto` int(11) DEFAULT NULL,
  `convenio` int(11) DEFAULT NULL,
  `contrato` int(11) DEFAULT NULL,
  `banco_boleto` varchar(200) DEFAULT NULL,
  `permissao_adv` tinyint(4) DEFAULT NULL,
  `permissao_age` tinyint(4) DEFAULT NULL,
  `n_push_processos` int(11) DEFAULT NULL,
  `permissao_exc` tinyint(4) DEFAULT '1',
  `pasta_auto` tinyint(4) DEFAULT '1',
  `serv_auto` int(11) DEFAULT '1',
  `perfil` varchar(200) DEFAULT NULL,
  `tipo_perfil` int(11) DEFAULT '1',
  `hora_cadastro` time NOT NULL,
  `ip` char(20) NOT NULL,
  `data_cadastro` varchar(200) DEFAULT NULL,
  `data_expiracao` varchar(200) DEFAULT NULL,
  `qtd_processos_permitidos` varchar(200) DEFAULT NULL,
  `qtd_usuarios` int(11) NOT NULL,
  `GED` int(100) NOT NULL,
  `permissao_job` tinyint(4) DEFAULT '0',
  `company_id` varchar(250) DEFAULT NULL,
  `publicacao_trial` int(10) DEFAULT NULL,
  `permissao_grupo` tinyint(4) NOT NULL DEFAULT '0',
  `permissao_automacao` int(11) NOT NULL DEFAULT '0',
  `permissao_excel` int(2) NOT NULL DEFAULT '0',
  `permissao_edit` int(2) NOT NULL DEFAULT '0',
  `permissao_subev_fat` int(11) NOT NULL DEFAULT '1',
  `data_corte` int(2) NOT NULL DEFAULT '0',
  `obg_cpf_cnpj` int(2) NOT NULL DEFAULT '1',
  `hora_tarifada` int(1) NOT NULL DEFAULT '0',
  `permissao_oportunidade` int(11) NOT NULL DEFAULT '0',
  `timesheet_obrigatorio` int(2) NOT NULL DEFAULT '0',
  `qtd_calendar` int(3) NOT NULL DEFAULT '0',
  `multa` double NOT NULL DEFAULT '0',
  `juros` double NOT NULL DEFAULT '0',
  `observacao` longtext,
  `iss` float NOT NULL DEFAULT '0',
  `base_iss` float NOT NULL DEFAULT '0',
  `csll` float NOT NULL DEFAULT '0',
  `base_csll` float NOT NULL DEFAULT '0',
  `cofins` float NOT NULL DEFAULT '0',
  `base_cofins` float NOT NULL DEFAULT '0',
  `inss` float NOT NULL DEFAULT '0',
  `base_inss` float NOT NULL DEFAULT '0',
  `irpj` float NOT NULL DEFAULT '0',
  `base_irpj` float NOT NULL DEFAULT '0',
  `pis` float NOT NULL DEFAULT '0',
  `base_pis` float NOT NULL DEFAULT '0',
  `regime_fiscal` varchar(100) DEFAULT NULL,
  `qtd_nf` int(7) NOT NULL DEFAULT '0',
  `fonte_csll` float DEFAULT '0',
  `fonte_irpj` float DEFAULT '0',
  `cod_servico` varchar(200) DEFAULT NULL,
  `fonte_pis` float DEFAULT '0',
  `fonte_cofins` float DEFAULT '0',
  `permissao_numero_processo` int(1) DEFAULT '0',
  `contrato_obrigatorio` int(1) DEFAULT '0',
  `modelo_acao_assunto` int(11) DEFAULT '1',
  `controle_inteiroTeor` int(11) DEFAULT '1',
  `nomes_monitoramento` int(11) DEFAULT '1',
  `alterar_nf` int(1) NOT NULL DEFAULT '0',
  `id_aviso` int(11) NOT NULL DEFAULT '0',
  `detalhe_pasta_alterar` int(1) NOT NULL DEFAULT '1',
  `login_trakto` varchar(255) DEFAULT NULL,
  `senha_trakto` varchar(255) DEFAULT NULL,
  `modulo_avulso` text COMMENT 'Json contendo os modulos avulso habilitados para a empresa {"47": "true", "48": "true"}',
  `integracao_wp` int(1) DEFAULT '0',
  `import_processo` int(1) DEFAULT '1',
  `cnpj_contratacao` varchar(18) DEFAULT NULL,
  `chave_wp` varchar(32) DEFAULT NULL,
  `responsavel_lead` int(11) DEFAULT '0',
  `limite_distribuicao_buscar` int(11) DEFAULT NULL,
  `id_customerx` varchar(50) DEFAULT NULL,
  `init_account` int(11) DEFAULT '0',
  `wizard_current_step` int(11) DEFAULT '0',
  `bloqueio_clientes` varchar(5) DEFAULT NULL,
  `bloqueio_chat` int(11) DEFAULT '0',
  `prestacao_servico` varchar(255) DEFAULT NULL,
  `permissao_prestacao_servico` int(11) DEFAULT NULL,
  `legal_design` int(11) DEFAULT NULL,
  `data_corte_agenda` int(11) NOT NULL DEFAULT '0',
  `nome_fonte_taxa` varchar(255) DEFAULT NULL,
  `taxa_tributo_aproximado` float DEFAULT NULL,
  `habilitar_tributos_aproximados` int(11) DEFAULT NULL,
  `ativa_integracao_wp` int(11) DEFAULT NULL,
  `nfe_provider` varchar(7) DEFAULT 'none',
  `bloqueado` tinyint(1) DEFAULT '0',
  `tamanho_escritorio` varchar(45) DEFAULT NULL,
  `juris_ai` tinyint(4) DEFAULT '0',
  `chat_insights` tinyint(4) DEFAULT '1',
  `canal_atendimento` varchar(50) DEFAULT 'Whatsapp Comercial',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2147485858 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

CREATE TABLE `tb_estoque` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(200) NOT NULL,
  `valor_compra` float NOT NULL,
  `quantidade` int(11) NOT NULL,
  `unidade_medida` int(11) NOT NULL,
  `codigo_barras` varchar(50) NOT NULL,
  `localizacao` varchar(100) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `verifica_novo_estoque` varchar(3) NOT NULL DEFAULT 'nao',
  PRIMARY KEY (`id`),
  KEY `idx_est_empresa` (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_fatura` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `data_emissao` date NOT NULL,
  `responsavel` int(11) NOT NULL,
  `valor` double NOT NULL,
  `valor_bruto` double DEFAULT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `id_banco` int(11) DEFAULT NULL,
  `data_vencimento` date NOT NULL,
  `data_pagamento` date DEFAULT NULL,
  `data_credito` date DEFAULT NULL,
  `observacao` longtext,
  `status` varchar(10) NOT NULL,
  `id_nota_fiscal` varchar(250) DEFAULT NULL,
  `status_nota` varchar(50) NOT NULL,
  `nf_emitida` int(1) NOT NULL DEFAULT '0',
  `valor_desconto` float DEFAULT NULL,
  `iss_nota` float DEFAULT NULL,
  `csll_nota` float DEFAULT NULL,
  `cofins_nota` float DEFAULT NULL,
  `inss_nota` float DEFAULT NULL,
  `irpj_nota` float DEFAULT NULL,
  `pis_nota` float DEFAULT NULL,
  `id_pagador` int(11) DEFAULT '0',
  `cod_servico` varchar(200) DEFAULT NULL,
  `number_nf` varchar(255) DEFAULT NULL,
  `tipo_pg` varchar(5) DEFAULT '',
  `fonte_pis` float DEFAULT '0',
  `fonte_csll` float DEFAULT '0',
  `irrf` float DEFAULT '0',
  `fonte_cofins` float DEFAULT '0',
  `valor_origem` double DEFAULT '0',
  `valor_acrescimo` float DEFAULT '0',
  `juros_boleto` float DEFAULT '0',
  `multa_boleto` float DEFAULT '0',
  `aplicacao` char(2) DEFAULT '',
  `agrupar_receita` varchar(50) DEFAULT NULL,
  `id_pagamento_asaas` varchar(127) DEFAULT NULL,
  `valor_total` double DEFAULT NULL,
  `valor_multa_boleto` double DEFAULT NULL,
  `valor_juros_boleto` double DEFAULT NULL,
  `fonte_iss` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cliente` (`id_cliente`),
  KEY `idx_empresa` (`id_empresa`),
  KEY `idx_banco` (`id_banco`),
  KEY `idx_pagador` (`id_pagador`),
  KEY `idx_numero` (`numero`)
) ENGINE=InnoDB AUTO_INCREMENT=14467 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_feriados_advogados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(256) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `dia` varchar(3) NOT NULL,
  `mes` varchar(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_empresa` (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=44196 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_filtro_agenda_dashboard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) unsigned DEFAULT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `select_agenda` varchar(50) DEFAULT NULL,
  `select_evento` text,
  `select_data` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `tb_filtro_agenda_dashboard_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tb_users_advogados` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26495 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_ged_migracao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `id_processo` int(11) NOT NULL,
  `id_agenda_serv_pasta` int(11) NOT NULL,
  `id_pessoa` int(11) NOT NULL,
  `data` date NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `idPasta` int(11) NOT NULL,
  `concluido` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1133767 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_grupos_pessoas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `id_grupo_pai` int(11) NOT NULL,
  `nome_grupo_pai` varchar(256) NOT NULL DEFAULT '',
  `cor_grupo_pai` varchar(20) DEFAULT '',
  `id_subgrupo_pai` int(11) NOT NULL,
  `nome_subgrupo_pai` varchar(256) NOT NULL DEFAULT '',
  `cor_subgrupo_pai` varchar(20) DEFAULT '',
  `tipo` varchar(100) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `cor` varchar(20) DEFAULT '',
  `modulos` varchar(256) NOT NULL DEFAULT '',
  `id_migracao` int(11) DEFAULT NULL,
  `texto_migracao` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_grp_empresa` (`id_empresa`),
  KEY `idx_grp_tipo` (`tipo`),
  KEY `idx_grp_id_grupo_pai` (`id_grupo_pai`),
  KEY `idx_grp_id_subgrupo_pai` (`id_subgrupo_pai`),
  KEY `idx_grp_modulos` (`modulos`)
) ENGINE=InnoDB AUTO_INCREMENT=47832 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_hora` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(500) NOT NULL,
  `valor` float NOT NULL,
  `percentual` float NOT NULL DEFAULT '100',
  `unidade_medida` int(11) NOT NULL,
  `observacao` varchar(500) NOT NULL DEFAULT '',
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_empresa` (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=9465 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_imposto_renda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `base_calculo` double NOT NULL,
  `aliquota` double NOT NULL,
  `deduzir` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_inadiplentes_df` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `oab` varchar(255) NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `tb_indices_taxas` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'chave primaria',
  `taxa` double DEFAULT NULL,
  `data` date NOT NULL,
  `id_indices_tipo` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4088 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_indices_tipos` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'chave primaria',
  `nome_tabela` varchar(100) NOT NULL COMMENT 'nome_tabela',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_intimacao_sistemas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_solucionare` int(11) DEFAULT NULL,
  `nome_sistema` varchar(150) DEFAULT NULL,
  `instancia` int(11) NOT NULL DEFAULT '0',
  `sigla` varchar(50) DEFAULT NULL,
  `link` longtext,
  `id_origem` int(11) NOT NULL DEFAULT '0',
  `sigla_diario` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_origem` (`id_origem`),
  CONSTRAINT `tb_intimacao_sistemas_ibfk_1` FOREIGN KEY (`id_origem`) REFERENCES `tb_origens` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_cliente` varchar(50) NOT NULL,
  `data` date NOT NULL,
  `contrato` int(11) NOT NULL DEFAULT '0',
  `entrega` varchar(30) NOT NULL,
  `data_prevista` date NOT NULL,
  `data_inicio` date NOT NULL,
  `data_entrega` date NOT NULL,
  `observacao` text NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `verifica_novo_job` varchar(10) NOT NULL,
  `grupo` int(11) NOT NULL,
  `id_migracao` int(11) DEFAULT '0',
  `texto_migracao` varchar(45) DEFAULT NULL,
  `arquivado` int(2) NOT NULL,
  `pausado` int(2) NOT NULL DEFAULT '0',
  `ultimo_andamento` int(11) DEFAULT NULL,
  `numero` int(11) NOT NULL,
  `detalhe_pasta` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_job_empresa` (`id_empresa`),
  KEY `idx_usuario` (`id_usuario`),
  KEY `idx_cliente` (`id_cliente`),
  KEY `idx_contrato` (`contrato`),
  KEY `idx_migracao` (`id_migracao`)
) ENGINE=InnoDB AUTO_INCREMENT=120033 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_jobs_envolvidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_job` int(11) NOT NULL,
  `id_pessoa` int(11) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `tipo_pessoa` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_job_env_empresa` (`id_empresa`),
  KEY `idx_job_env_projeto` (`id_job`),
  KEY `idx_pessoa` (`id_pessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=183677 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_jurisprudencias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `processo` varchar(1000) NOT NULL,
  `relator` varchar(1000) NOT NULL,
  `orgao` varchar(2000) NOT NULL,
  `data_julgamento` varchar(500) NOT NULL,
  `data_publicacao_fonte` varchar(500) NOT NULL,
  `ementa` varchar(5000) NOT NULL,
  `acordao` varchar(5000) NOT NULL,
  `referencia` varchar(2000) NOT NULL,
  `veja` varchar(2500) NOT NULL,
  `sucessivos` varchar(4000) NOT NULL,
  `info_adicional` varchar(1000) NOT NULL,
  `area` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `tb_log_envio_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` longtext NOT NULL COMMENT 'Ids das publicações/andamentos envidas',
  `data_envio` date NOT NULL,
  `tipo` varchar(256) NOT NULL,
  `banco` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4754 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_log_erro_push` (
  `id` int(11) NOT NULL,
  `id_processo` int(11) NOT NULL,
  `log_error` varchar(255) NOT NULL,
  `data` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `tb_log_jurisprudencia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pesquisa` varchar(255) DEFAULT NULL,
  `tipo` varchar(100) NOT NULL,
  `data_acao` datetime DEFAULT CURRENT_TIMESTAMP,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `id_advogado` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27315 DEFAULT CHARSET=utf8mb4;

CREATE TABLE `tb_log_promocional` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interesse` varchar(10) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `id_empresa` int(11) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65494 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_log_receita` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_receita` int(11) DEFAULT NULL,
  `id_empresa` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `arquivo` varchar(80) CHARACTER SET utf8 DEFAULT NULL,
  `faturado_antes` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `faturado_depois` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=349339 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_log_suporte` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` bigint(11) NOT NULL,
  `id_usuario_alvo` bigint(11) NOT NULL,
  `id_empresa_origem` bigint(11) NOT NULL,
  `id_empresa_destino` bigint(11) NOT NULL,
  `data_entrada` datetime NOT NULL,
  `data_saida` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5766 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_login_error` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `IP` varchar(20) NOT NULL,
  `observacoes` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ip_login` (`IP`)
) ENGINE=InnoDB AUTO_INCREMENT=349648 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_login_intimacoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_nome_solucionare` varchar(150) DEFAULT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `login` varchar(150) DEFAULT NULL,
  `senha` varchar(150) DEFAULT NULL,
  `data_cadastro` date DEFAULT NULL,
  `data_ativado` date DEFAULT NULL,
  `data_desativado` date DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `acao_produzida` varchar(50) DEFAULT NULL,
  `id_nome` varchar(200) NOT NULL DEFAULT '0',
  `id_sistema` int(11) NOT NULL DEFAULT '0',
  `email` varchar(150) DEFAULT NULL,
  `banco` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_sistema` (`id_sistema`),
  CONSTRAINT `tb_login_intimacoes_ibfk_2` FOREIGN KEY (`id_sistema`) REFERENCES `tb_intimacao_sistemas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1463 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_login_tribunais_usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_tribunal` int(11) NOT NULL,
  `login_tribunal` varchar(256) NOT NULL,
  `senha_tribunal` varchar(256) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_logpubpremium` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` varchar(20) DEFAULT NULL,
  `hora` varchar(20) DEFAULT NULL,
  `publicacao` varchar(100) DEFAULT NULL,
  `observacoes` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_publicacao` (`publicacao`)
) ENGINE=InnoDB AUTO_INCREMENT=40734544 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_logs` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) NOT NULL DEFAULT '',
  `data` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user` varchar(255) NOT NULL DEFAULT '',
  `id_empresa` int(11) NOT NULL,
  `id_agenda` int(11) NOT NULL,
  `id_processo` int(11) NOT NULL,
  `id_pessoa` int(11) NOT NULL,
  `id_despesa` int(11) NOT NULL,
  `id_comissao` int(11) NOT NULL,
  `id_receita` int(11) NOT NULL,
  `id_fatura` int(11) DEFAULT '0',
  `id_nota_fiscal` int(11) DEFAULT '0',
  `id_honorario` int(11) NOT NULL,
  `id_custa` int(11) NOT NULL,
  `id_publicacao` int(11) NOT NULL,
  `id_subtipo` int(11) NOT NULL,
  `id_andamento` int(11) NOT NULL,
  `id_atendimento` int(11) NOT NULL,
  `id_contrato` int(11) NOT NULL,
  `id_projeto` int(11) NOT NULL,
  `id_banco` int(11) NOT NULL,
  `id_compra` int(11) NOT NULL,
  `id_almoxarifado` int(11) NOT NULL,
  `id_estoque` int(11) NOT NULL,
  `id_colaborador` int(11) NOT NULL,
  `id_template` int(11) NOT NULL DEFAULT '0',
  `id_design` int(11) NOT NULL DEFAULT '0',
  `id_timesheet` int(11) DEFAULT '0',
  `id_login_nome` int(11) NOT NULL DEFAULT '0',
  `id_cad_nome` int(11) NOT NULL DEFAULT '0',
  `id_pedido_processo` int(11) DEFAULT '0',
  `id_financeiro_processo` int(11) DEFAULT '0',
  `id_mensagem_processo` int(11) DEFAULT '0',
  `id_partes_processo` int(11) DEFAULT '0',
  `id_desdobramento_processo` int(11) DEFAULT '0',
  `id_vinculo_processo` int(11) DEFAULT '0',
  `id_proposta_oportunidade` int(11) DEFAULT '0',
  `id_metas` int(11) DEFAULT NULL,
  `id_marketing` int(11) DEFAULT NULL,
  `id_segmentacao` int(11) DEFAULT NULL,
  `id_planejamento` int(11) DEFAULT NULL,
  `id_swot` int(11) DEFAULT NULL,
  `id_modelo_bmc` int(11) DEFAULT NULL,
  `id_procedimentos` int(11) DEFAULT NULL,
  `id_centro_custo` int(11) DEFAULT NULL,
  `descricao` varchar(200) NOT NULL,
  `antes` longtext NOT NULL,
  `depois` longtext NOT NULL,
  `id_origem` int(11) DEFAULT NULL,
  `tabela_origem` varchar(255) DEFAULT NULL,
  `id_nota` bigint(20) DEFAULT '0',
  `id_asaas_account` bigint(20) DEFAULT NULL,
  `id_campo_personalizado` bigint(20) DEFAULT NULL,
  `id_pagamento_asaas` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_log_empresa` (`id_empresa`),
  KEY `idx_log_agenda` (`id_agenda`),
  KEY `idx_log_processo` (`id_processo`),
  KEY `idx_log_pessoa` (`id_pessoa`),
  KEY `idx_log_despesa` (`id_despesa`),
  KEY `idx_log_receita` (`id_receita`),
  KEY `idx_log_publicacao` (`id_publicacao`),
  KEY `idx_log_subtipo` (`id_subtipo`),
  KEY `idx_log_andamento` (`id_andamento`),
  KEY `idx_log_atendimento` (`id_atendimento`),
  KEY `idx_log_contrato` (`id_contrato`),
  KEY `idx_log_projeto` (`id_projeto`),
  KEY `idx_log_banco` (`id_banco`),
  KEY `idx_log_compra` (`id_compra`),
  KEY `idx_log_estoque` (`id_estoque`),
  KEY `idx_log_almoxarifado` (`id_almoxarifado`),
  KEY `idx_user` (`user`),
  KEY `idx_colaborador` (`id_colaborador`),
  KEY `idx_template` (`id_template`),
  KEY `idx_design` (`id_design`),
  KEY `idx_login_nome` (`id_login_nome`),
  KEY `idx_cad_nome` (`id_cad_nome`),
  KEY `idx_data` (`data`),
  KEY `idx_fatura` (`id_fatura`),
  KEY `idx_timesheet` (`id_timesheet`),
  KEY `idx_nota_fiscal` (`id_nota_fiscal`),
  KEY `idx_asaas_account` (`id_asaas_account`),
  KEY `idx_campo_personalizado` (`id_campo_personalizado`),
  KEY `idx_pagamento_asaas` (`id_pagamento_asaas`)
) ENGINE=InnoDB AUTO_INCREMENT=52934766 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_logs_perfil_escritorio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_empresa` bigint(20) DEFAULT NULL,
  `perfil_anterior` varchar(30) DEFAULT NULL,
  `perfil_novo` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `tb_mentoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `tipo_mentor` varchar(50) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `data` date NOT NULL,
  `descricao` text NOT NULL,
  `nome_mentor` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL,
  `prioridade` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_mercado_alvo_advogados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `segmento` varchar(100) NOT NULL,
  `tipo_pessoa` int(11) NOT NULL,
  `regiao` varchar(100) NOT NULL,
  `faixa_etaria` int(11) NOT NULL,
  `profissao` varchar(100) NOT NULL,
  `escolaridade` int(11) NOT NULL,
  `quantidade_prospects` int(11) NOT NULL,
  `faixa_renda` int(11) NOT NULL,
  `estado_civil` int(11) NOT NULL,
  `quantidade_filhos` int(11) NOT NULL,
  `necessidades` text NOT NULL,
  `beneficios` text NOT NULL,
  `acoes` varchar(200) NOT NULL,
  `participacao_mercado` text NOT NULL,
  `produto1` varchar(100) NOT NULL,
  `produto2` varchar(100) NOT NULL,
  `produto3` varchar(100) NOT NULL,
  `produto4` varchar(100) NOT NULL,
  `produto5` varchar(100) NOT NULL,
  `observacao` text NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_empresa` (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_metas_advogados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` text NOT NULL,
  `data_inicio` date NOT NULL,
  `data_fim` date NOT NULL,
  `responsavel1` int(11) NOT NULL,
  `responsavel2` int(11) NOT NULL,
  `descricao_detalhada` text NOT NULL,
  `status` varchar(30) NOT NULL,
  `valor_total` float NOT NULL,
  `valor_dia` float NOT NULL,
  `valor_semana` float NOT NULL,
  `valor_mes` float NOT NULL,
  `mercado_alvo` int(11) NOT NULL,
  `produto1` varchar(100) NOT NULL,
  `produto2` varchar(100) NOT NULL,
  `produto3` varchar(100) NOT NULL,
  `produto4` varchar(100) NOT NULL,
  `produto5` varchar(100) NOT NULL,
  `desempenho` int(11) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_empresa` (`id_empresa`),
  KEY `idx_responsavel1` (`responsavel1`),
  KEY `idx_responsavel2` (`responsavel2`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_metas_centro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `periodo` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `id_centro_custo` int(11) NOT NULL,
  `valor` double NOT NULL,
  `data_cadastro` date NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `ano_mes` varchar(7) NOT NULL,
  `trimestre` int(2) NOT NULL,
  `id_plano_contas` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_empresa` (`id_empresa`),
  KEY `idx_centro_custo` (`id_centro_custo`),
  KEY `idx_plano_contas` (`id_plano_contas`)
) ENGINE=InnoDB AUTO_INCREMENT=2278 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_modelo_documentos_easyjur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classificacao` varchar(255) NOT NULL,
  `tipo` varchar(10) NOT NULL,
  `subtipo` varchar(10) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `texto` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_modelo_documentos_tags_easyjur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(250) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `modulo` varchar(250) NOT NULL,
  `sub_modulo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_modelo_marketing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `qtde_total_clientes` int(11) NOT NULL,
  `market_share` int(11) NOT NULL,
  `market_share_porcentagem` float NOT NULL,
  `cliente_lead_persona` varchar(250) NOT NULL,
  `dores` varchar(250) NOT NULL,
  `mindset_gatilho` varchar(250) NOT NULL,
  `oferta_text` varchar(250) NOT NULL,
  `produts_text` varchar(100) NOT NULL,
  `acoes_trafego` varchar(250) NOT NULL,
  `outros_trafego` varchar(250) NOT NULL,
  `acoes_engajamento` varchar(250) NOT NULL,
  `outros_acoes_engajamento` varchar(250) NOT NULL,
  `acoes_conversao` varchar(100) NOT NULL,
  `acoes_parceiro` varchar(100) NOT NULL,
  `outros_acoes_parceiro` varchar(250) NOT NULL,
  `custo_anual` float NOT NULL,
  `estimativa_anual` float NOT NULL,
  `descricao_custa` varchar(250) NOT NULL,
  `valor_ticket` float NOT NULL,
  `faturamento_anual` float NOT NULL,
  `tipo_receitas` varchar(100) NOT NULL,
  `tipo_receitas_outros` varchar(100) NOT NULL,
  `resultado_anual` float NOT NULL,
  `outros_acoes_conversao` varchar(250) NOT NULL,
  `qtde_visita` int(11) NOT NULL,
  `qtde_leads` int(11) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_empresa` (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_modelo_negocio_advogados` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `descricao_segmento` varchar(250) NOT NULL,
  `qtde_total_clientes` int(10) NOT NULL,
  `market_share` int(10) NOT NULL,
  `market_share_porcentagem` float NOT NULL,
  `acoes` varchar(100) NOT NULL,
  `descricao_beneficio` varchar(250) NOT NULL,
  `valor_ticket` float NOT NULL,
  `faturamento_anual` float NOT NULL,
  `acoes_parceiro` varchar(100) NOT NULL,
  `descricao_atividade` varchar(250) NOT NULL,
  `descricao_recurso` varchar(250) NOT NULL,
  `custo_anual` float NOT NULL,
  `estimativa_anual` float NOT NULL,
  `resultado_anual` float NOT NULL,
  `relacionamentos` varchar(250) NOT NULL,
  `tipo_receitas` varchar(250) NOT NULL,
  `descricao_custa` varchar(250) NOT NULL,
  `relacionamentos_outros` varchar(250) NOT NULL,
  `tipo_receitas_outros` varchar(250) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `canais_outros` varchar(250) NOT NULL,
  `parceiro_outros` varchar(250) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_modelo_proposta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_modelo_principal` int(11) DEFAULT NULL,
  `texto1` longtext,
  `texto2` longtext,
  `titulo1` varchar(255) DEFAULT NULL,
  `titulo2` varchar(255) DEFAULT NULL,
  `titulo3` varchar(255) DEFAULT NULL,
  `etapa1` longtext,
  `etapa2` longtext,
  `etapa3` longtext,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_empresa` (`id_empresa`),
  KEY `idx_modelo_principal` (`id_modelo_principal`)
) ENGINE=InnoDB AUTO_INCREMENT=532 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_modelo_relatorios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_modulo` int(11) DEFAULT NULL,
  `tipo` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `titulo` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `campos` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `subcampos` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `data_cadastro` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_empresa` (`id_empresa`),
  KEY `idx_modulo` (`id_modulo`)
) ENGINE=InnoDB AUTO_INCREMENT=699 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_modelodocumentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `texto` longblob NOT NULL,
  `tipo_documento` int(11) NOT NULL,
  `assunto` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `user_cadastro` int(11) NOT NULL,
  `permissao_alterar` int(1) DEFAULT '1',
  `verifica_novo_modelo` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_model_empresa` (`id_empresa`),
  KEY `idx_user_cadastro` (`user_cadastro`),
  KEY `idx_tipo_documento` (`tipo_documento`)
) ENGINE=InnoDB AUTO_INCREMENT=27403 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_modelodocumentostipo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_modelos_usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(256) NOT NULL,
  `nome` varchar(256) NOT NULL,
  `modulos` varchar(400) NOT NULL,
  `modulos_ver` varchar(400) NOT NULL,
  `notificacoes` int(11) NOT NULL DEFAULT '0',
  `mensagens` int(11) NOT NULL DEFAULT '0',
  `msg_andamentos` int(11) NOT NULL DEFAULT '0',
  `acao_massa` int(2) NOT NULL,
  `concluir_pub` int(2) NOT NULL,
  `fuso_google` int(1) NOT NULL DEFAULT '3',
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `aprova_financeiro` int(2) NOT NULL DEFAULT '1',
  `visualiza_despesas` int(2) NOT NULL DEFAULT '0',
  `visualiza_valor_timesheet` int(1) NOT NULL DEFAULT '0',
  `modulos_grupos` varchar(255) NOT NULL,
  `alert_permissao_grupo` int(1) NOT NULL DEFAULT '0',
  `visualiza_processos` int(1) DEFAULT '1',
  `visualiza_agenda` int(1) DEFAULT '1',
  `visualiza_projeto` int(1) DEFAULT '1',
  `visualiza_novos_negocios` int(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_empresa` (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=8752 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_modulo_grupos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_registro` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `id_modulo` int(11) NOT NULL COMMENT 'id''s de cada modulo (5)cliente (3)processos (36)usuarios (8)documentos (6)contratos (7)projetos (2)agenda (12)honorarios (19)receitas (13)desp_proc (14)comissoes (15)desp_escr (25)novos_negocios',
  `data_cadastro` date NOT NULL,
  `log_desc` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_grupo_empresa` (`id_empresa`),
  KEY `idx_grupo_modulo` (`id_modulo`),
  KEY `idx_grupo_registro` (`id_registro`),
  KEY `idx_grp_id_tipo` (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=10614818 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_motivo_erro_push_processo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `motivo` varchar(250) DEFAULT NULL,
  `mensagem` varchar(300) DEFAULT NULL,
  `solucao` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_msg_processos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_processo` int(11) NOT NULL,
  `id_job` int(11) NOT NULL,
  `id_agenda` int(11) NOT NULL,
  `id_compra` int(11) NOT NULL,
  `id_almoxarifado` int(11) NOT NULL,
  `id_contrato` int(11) NOT NULL,
  `id_oportunidade` int(11) NOT NULL DEFAULT '0',
  `id_remetente` int(11) NOT NULL,
  `id_destinatario` varchar(100) NOT NULL,
  `data` varchar(30) NOT NULL,
  `mensagem` longtext NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `visualizado` varchar(256) NOT NULL DEFAULT '',
  `tipo` varchar(255) NOT NULL DEFAULT 'mensagem',
  `id_receita` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_msg_empresa` (`id_empresa`),
  KEY `idx_tipo` (`tipo`),
  KEY `idx_processo` (`id_processo`),
  KEY `idx_job` (`id_job`),
  KEY `idx_agenda` (`id_agenda`),
  KEY `idx_compra` (`id_compra`),
  KEY `idx_almoxarifado` (`id_almoxarifado`),
  KEY `idx_contrato` (`id_contrato`),
  KEY `idx_oportunidade` (`id_oportunidade`),
  KEY `idx_remetente` (`id_remetente`),
  KEY `idx_receita` (`id_receita`),
  KEY `idx_destinatario` (`id_destinatario`)
) ENGINE=InnoDB AUTO_INCREMENT=5995698 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_nomes_oabdf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_nome` int(11) NOT NULL,
  `email` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=362 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_nomes_publicacao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_nome` varchar(200) NOT NULL,
  `nome_pesquisado` varchar(200) NOT NULL,
  `status` varchar(1) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `data_expiracao` date NOT NULL,
  `data_cadastro` date DEFAULT '0000-00-00',
  `data_deletado` date DEFAULT '0000-00-00',
  `banco` varchar(20) NOT NULL,
  `tribunais` varchar(200) NOT NULL,
  `termo_solucionare` int(11) NOT NULL DEFAULT '1',
  `assinante` varchar(5) DEFAULT 'NAO',
  `observacao` longtext,
  `cortesia_ej` int(1) DEFAULT NULL,
  `log_desc` varchar(50) DEFAULT NULL,
  `numero_oab` varchar(50) DEFAULT NULL,
  `cnpj_cliente` varchar(20) DEFAULT NULL,
  `id_nome_login` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_empresa_nomes` (`id_empresa`),
  KEY `idx_nome` (`id_nome`)
) ENGINE=InnoDB AUTO_INCREMENT=5746188 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_notas_fiscais` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_asaas` varchar(63) DEFAULT NULL,
  `id_empresa` bigint(20) DEFAULT NULL,
  `id_pessoa` bigint(20) DEFAULT NULL,
  `referencia` varchar(63) DEFAULT NULL,
  `tabela` varchar(63) DEFAULT 'tb_receitas',
  `id_tabela` bigint(20) unsigned DEFAULT NULL,
  `status` varchar(31) DEFAULT 'SCHEDULED',
  `numero` bigint(20) unsigned DEFAULT NULL,
  `ultimo_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_user` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5843 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_notificacao_armazenamento_ged` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `data_notificacao` date NOT NULL,
  `armazenamento_anterior` varchar(255) NOT NULL,
  `tipo` int(11) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_empresa` (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_notifications` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_user` bigint(20) NOT NULL,
  `id_empresa` bigint(20) NOT NULL,
  `id_actor` bigint(20) NOT NULL,
  `tipo_modulo` varchar(63) DEFAULT NULL,
  `id_modulo` bigint(20) DEFAULT NULL,
  `titulo` varchar(127) NOT NULL,
  `conteudo` varchar(255) NOT NULL,
  `visto` tinyint(1) DEFAULT '0',
  `data_hora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tipo_modulo_janela` varchar(63) DEFAULT NULL,
  `id_modulo_janela` bigint(20) DEFAULT NULL,
  `aba_modulo_janela` varchar(63) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103616 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_nps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `data_hora` datetime DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `geolocalizacao` varchar(255) DEFAULT NULL,
  `cpf` varchar(15) DEFAULT NULL,
  `nps` int(11) DEFAULT NULL,
  `observacao` longtext,
  `campanha` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3491 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_onboarding` (
  `id` bigint(20) unsigned NOT NULL,
  `id_user` bigint(20) unsigned NOT NULL,
  `id_empresa` bigint(20) unsigned NOT NULL,
  `processos` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cadastrar_prazo` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `tb_oportunidade_advogados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `responsavel` int(11) NOT NULL,
  `cliente` varchar(100) NOT NULL,
  `descricao` text NOT NULL,
  `fechamento` varchar(10) NOT NULL,
  `data` date NOT NULL,
  `data_encerramento` date NOT NULL,
  `data_atendimento` date NOT NULL,
  `status` varchar(20) NOT NULL,
  `observacao` text NOT NULL,
  `parceiro` varchar(50) NOT NULL,
  `valor_total` double NOT NULL,
  `tipo_pg` varchar(10) DEFAULT NULL,
  `classificacao` varchar(50) DEFAULT NULL,
  `grupo` int(11) NOT NULL DEFAULT '0',
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `verifica_nova_oportunidade` varchar(10) NOT NULL,
  `responsavel2` int(11) DEFAULT '0',
  `porc_desconto` double NOT NULL DEFAULT '0',
  `valor_total_desc` double NOT NULL DEFAULT '0',
  `id_contrato` int(11) NOT NULL,
  `arquivado` int(2) NOT NULL DEFAULT '0',
  `id_migracao` int(11) DEFAULT NULL,
  `texto_migracao` varchar(45) DEFAULT NULL,
  `numero` int(11) NOT NULL,
  `id_insight` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_opt_empresa` (`id_empresa`),
  KEY `idx_responsavel` (`responsavel`),
  KEY `idx_cliente` (`cliente`),
  KEY `idx_responsavel2` (`responsavel2`),
  KEY `idx_contrato` (`id_contrato`),
  KEY `idx_migracao` (`id_migracao`),
  KEY `idx_numero` (`numero`)
) ENGINE=InnoDB AUTO_INCREMENT=378631 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_oportunidade_servicos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_oportunidade` int(11) NOT NULL,
  `id_servico` int(11) NOT NULL,
  `descricao_servico` varchar(200) NOT NULL,
  `valor_servico` float NOT NULL,
  `quantidade` int(10) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `porc_desconto` float NOT NULL,
  `valor_desc` double NOT NULL DEFAULT '0',
  `id_unidade_medida` int(11) NOT NULL,
  `id_proposta` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_opt_serv_empresa` (`id_empresa`),
  KEY `idx_opt_serv_opt` (`id_oportunidade`),
  KEY `idx_proposta` (`id_proposta`)
) ENGINE=InnoDB AUTO_INCREMENT=12365 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_origens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) DEFAULT NULL,
  `cod_tribunal` int(11) NOT NULL,
  `uf` char(5) NOT NULL,
  `push` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1060 DEFAULT CHARSET=latin1;
INSERT INTO tb_origens VALUES ('103', 'ALAC - Assembleia Legislativa do Estado do Acre', '0', '', '0');
INSERT INTO tb_origens VALUES ('104', 'TJAC - Tribunal de Justiça do Estado do Acre', '68', 'AC', '2');
INSERT INTO tb_origens VALUES ('106', 'SEFAZAL - Secretaria da Fazenda do Estado de Alagoas', '0', '', '0');
INSERT INTO tb_origens VALUES ('107', 'TJAL - Tribunal de Justiça do Estado de Alagoas', '69', 'AL', '2');
INSERT INTO tb_origens VALUES ('108', 'TRT19 - Tribunal Regional do Trabalho da 19ª Região', '111', 'AL', '2');
INSERT INTO tb_origens VALUES ('109', 'ALAM - Assembleia Legislativa do Estado do Amazonas', '0', '', '0');
INSERT INTO tb_origens VALUES ('110', 'PMM - Prefeitura do Município de Manaus', '0', '', '0');
INSERT INTO tb_origens VALUES ('111', 'SEFAZAM - Secretaria da Fazenda do Estado do Amazonas', '0', '', '0');
INSERT INTO tb_origens VALUES ('114', 'TRT11 - Tribunal Regional do Trabalho da 11ª Região', '112', 'AM', '2');
INSERT INTO tb_origens VALUES ('115', 'ALAP - Assembleia Legislativa do Estado do Amapá', '0', '', '0');
INSERT INTO tb_origens VALUES ('116', 'TJAP - Tribunal de Justiça do Estado do Amapá', '73', 'AP', '2');
INSERT INTO tb_origens VALUES ('117', 'INEMA - Instituto do Meio Ambiente do Estado da Bahia', '0', '', '0');
INSERT INTO tb_origens VALUES ('118', 'PGEBA - Procuradoria Geral do Estado da Bahia', '0', '', '0');
INSERT INTO tb_origens VALUES ('119', 'SEFAZBA - Secretaria da Fazenda do Estado da Bahia', '0', '', '0');
INSERT INTO tb_origens VALUES ('120', 'SEFAZSAL - Secretaria Municipal da Fazenda de Salvador', '474', 'ZQ', '0');
INSERT INTO tb_origens VALUES ('121', 'TRANSAL - Superintendência de Trânsito e Transporte do Salvador', '0', '', '0');
INSERT INTO tb_origens VALUES ('122', 'TJBA - Tribunal de Justiça do Estado da Bahia', '74', 'BA', '2');
INSERT INTO tb_origens VALUES ('123', 'TRT05 - Tribunal Regional do Trabalho da 5ª Região', '115', 'BA', '2');
INSERT INTO tb_origens VALUES ('124', 'ARCE - Agência Reguladora de Serviços Públicos Delegados do Estado do Ceará', '0', '', '0');
INSERT INTO tb_origens VALUES ('125', 'DECONCE - Procon do Estado do Ceará', '0', '', '0');
INSERT INTO tb_origens VALUES ('127', 'SEFAZCE - Secretaria da Fazenda do Estado do Ceará', '0', '', '0');
INSERT INTO tb_origens VALUES ('128', 'SEPLAGCE - Secretaria de Administração do Estado do Ceará', '0', '', '0');
INSERT INTO tb_origens VALUES ('129', 'TJCE - Tribunal de Justiça do Estado do Ceará', '75', 'CE', '2');
INSERT INTO tb_origens VALUES ('130', 'TRT07 - Tribunal Regional do Trabalho da 7ª Região', '116', 'CE', '2');
INSERT INTO tb_origens VALUES ('131', 'CLDF - Câmara Legislativa do Distrito Federal', '0', '', '0');
INSERT INTO tb_origens VALUES ('132', 'GOVDF - Governo do Distrito Federal', '0', '', '0');
INSERT INTO tb_origens VALUES ('133', 'SEFAZDF - Secretaria da Fazenda do Distrito Federal', '0', '', '0');
INSERT INTO tb_origens VALUES ('134', 'TJDFT - Tribunal de Justiça do Distrito Federal e dos Territórios', '77', 'DF', '2');
INSERT INTO tb_origens VALUES ('135', 'TRT10 - Tribunal Regional do Trabalho da 10ª Região', '117', 'DF', '2');
INSERT INTO tb_origens VALUES ('136', 'ALES - Assembleia Legislativa do Estado do Espírito Santo', '0', '', '0');
INSERT INTO tb_origens VALUES ('137', 'IEMAES - Instituto Estadual de Meio Ambiente do Espírito Santo', '0', '', '0');
INSERT INTO tb_origens VALUES ('138', 'MPES - Ministério Público do Estado do Espírito Santo', '0', '', '0');
INSERT INTO tb_origens VALUES ('139', 'PMVIT - Prefeitura do Município de Vitória', '0', '', '0');
INSERT INTO tb_origens VALUES ('140', 'PROCONES - Procon do Estado do Espírito Santo', '0', '', '0');
INSERT INTO tb_origens VALUES ('141', 'SEFAZES - Secretaria da Fazenda do Estado do Espírito Santo', '0', '', '0');
INSERT INTO tb_origens VALUES ('142', 'TCEES - Tribunal de Contas do Estado do Espírito Santo', '0', '', '0');
INSERT INTO tb_origens VALUES ('143', 'TJES - Tribunal de Justiça do Estado do Espírito Santo', '78', 'ES', '2');
INSERT INTO tb_origens VALUES ('144', 'TRT17 - Tribunal Regional do Trabalho da 17ª Região', '118', 'ES', '2');
INSERT INTO tb_origens VALUES ('145', '2ªCCA - 2ª Corte de Conciliação e Arbitragem de Goiânia', '0', '', '0');
INSERT INTO tb_origens VALUES ('146', 'ALGO - Assembleia Legislativa do Estado de Goiás', '0', '', '0');
INSERT INTO tb_origens VALUES ('147', 'IPASGO - Instituto de Previdência e Assistência dos Servidores do Estado de Goiás', '0', '', '0');
INSERT INTO tb_origens VALUES ('148', 'PMGOI - Prefeitura do Município de Goiânia', '0', '', '0');
INSERT INTO tb_origens VALUES ('149', 'SEFAZGO - Secretaria da Fazenda do Estado de Goiás', '0', '', '0');
INSERT INTO tb_origens VALUES ('150', 'TCEGO - Tribunal de Contas do Estado de Goiás', '0', '', '0');
INSERT INTO tb_origens VALUES ('151', 'TCMGO - Tribunal de Contas dos Municípios do Estado de Goiás', '0', '', '0');
INSERT INTO tb_origens VALUES ('152', 'TJGO - Tribunal de Justiça do Estado de Goiás', '79', 'GO', '2');
INSERT INTO tb_origens VALUES ('153', 'TRT18 - Tribunal Regional do Trabalho da 18ª Região', '125', 'GO', '2');
INSERT INTO tb_origens VALUES ('154', 'PMSLU - Prefeitura do Município de São Luís', '0', '', '0');
INSERT INTO tb_origens VALUES ('156', 'TCEMA - Tribunal de Contas do Estado do Maranhão', '0', '', '0');
INSERT INTO tb_origens VALUES ('157', 'TJMA - Tribunal de Justiça do Estado do Maranhão', '83', 'MA', '2');
INSERT INTO tb_origens VALUES ('158', 'TRT16 - Tribunal Regional do Trabalho da 16ª Região', '126', 'MA', '2');
INSERT INTO tb_origens VALUES ('159', '1ºRTDBH - 1º Ofício de Registro de Títulos e Documentos de Belo Horizonte', '0', '', '0');
INSERT INTO tb_origens VALUES ('160', 'ALMG - Assembleia Legislativa do Estado de Minas Gerais', '0', '', '0');
INSERT INTO tb_origens VALUES ('161', 'CMBH - Câmara do Município de Belo Horizonte', '0', '', '0');
INSERT INTO tb_origens VALUES ('162', 'CCMG - Conselho de Contribuintes do Estado de Minas Gerais', '0', '', '0');
INSERT INTO tb_origens VALUES ('163', 'DETRANMG - Departamento de Trânsito do Estado de Minas Gerais', '0', '', '0');
INSERT INTO tb_origens VALUES ('164', 'PMBH - Prefeitura do Município de Belo Horizonte', '0', '', '0');
INSERT INTO tb_origens VALUES ('165', 'PMJF - Prefeitura do Município de Juiz de Fora', '0', '', '0');
INSERT INTO tb_origens VALUES ('166', 'PRT3ªR - Procuradoria Regional do Trabalho da 3ª Região', '0', '', '0');
INSERT INTO tb_origens VALUES ('167', 'SEMADMG - Secretaria de Estado de Meio Ambiente e Desenvolvimento Sustentável de Minas Gerais', '0', '', '0');
INSERT INTO tb_origens VALUES ('168', 'Tribunal de Alçada de Minas Gerais', '0', '', '0');
INSERT INTO tb_origens VALUES ('169', 'TCEMG - Tribunal de Contas do Estado de Minas Gerais', '0', '', '0');
INSERT INTO tb_origens VALUES ('170', 'TJMG - Tribunal de Justiça do Estado de Minas Gerais', '84', 'MG', '2');
INSERT INTO tb_origens VALUES ('171', 'TJMMG - Tribunal de Justiça Militar do Estado de Minas Gerais', '109', 'MG', '2');
INSERT INTO tb_origens VALUES ('172', 'TRT03 - Tribunal Regional do Trabalho da 3ª Região', '127', 'MG', '2');
INSERT INTO tb_origens VALUES ('173', 'ALMS - Assembleia Legislativa do Estado do Mato Grosso do Sul', '0', '', '0');
INSERT INTO tb_origens VALUES ('174', 'PROCONMS - Procon do Estado do Mato Grosso do Sul', '0', '', '0');
INSERT INTO tb_origens VALUES ('176', 'SEFAZMS - Secretaria da Fazenda do Estado do Mato Grosso do Sul', '0', '', '0');
INSERT INTO tb_origens VALUES ('177', 'TCEMS - Tribunal de Contas do Estado do Mato Grosso do Sul', '0', '', '0');
INSERT INTO tb_origens VALUES ('178', 'TJMS - Tribunal de Justiça do Estado do Mato Grosso do Sul', '86', 'MS', '2');
INSERT INTO tb_origens VALUES ('179', 'TRT24 - Tribunal Regional do Trabalho da 24ª Região', '128', 'MS', '2');
INSERT INTO tb_origens VALUES ('180', 'CREAMT - Conselho Regional de Engenharia, Arquitetura e Agronomia do Estado do Mato Grosso', '0', '', '0');
INSERT INTO tb_origens VALUES ('181', 'PMCBA - Prefeitura do Município de Cuiabá', '0', '', '0');
INSERT INTO tb_origens VALUES ('182', 'PROCONMT - Procon do Estado do Mato Grosso', '0', '', '0');
INSERT INTO tb_origens VALUES ('183', 'SEFAZMT - Secretaria da Fazenda do Estado do Mato Grosso', '0', '', '0');
INSERT INTO tb_origens VALUES ('184', 'SADMT - Secretaria de Administração do Estado do Mato Grosso', '0', '', '0');
INSERT INTO tb_origens VALUES ('185', 'SEMAMT - Secretaria de Estado do Meio Ambiente do Mato Grosso', '0', '', '0');
INSERT INTO tb_origens VALUES ('186', 'TCEMT - Tribunal de Contas do Estado do Mato Grosso', '0', '', '0');
INSERT INTO tb_origens VALUES ('187', 'TJMT - Tribunal de Justiça do Estado do Mato Grosso', '87', 'MT', '2');
INSERT INTO tb_origens VALUES ('188', 'TRT23 - Tribunal Regional do Trabalho da 23ª Região', '129', 'MT', '2');
INSERT INTO tb_origens VALUES ('189', 'ITERPA - Instituto de Terras do Estado do Pará - ITERPA', '0', '', '0');
INSERT INTO tb_origens VALUES ('190', 'TCEPA - Tribunal de Contas do Estado do Pará', '0', '', '0');
INSERT INTO tb_origens VALUES ('191', 'TJPA - Tribunal de Justiça do Estado do Pará', '88', 'PA', '2');
INSERT INTO tb_origens VALUES ('192', 'TRT08 - Tribunal Regional do Trabalho da 8ª Regiao', '114', 'AP', '2');
INSERT INTO tb_origens VALUES ('193', 'ALPB - Assembleia Legislativa do Estado da Paraíba', '0', '', '0');
INSERT INTO tb_origens VALUES ('194', 'PROCONPB - Procon do Estado da Paraíba', '0', '', '0');
INSERT INTO tb_origens VALUES ('196', 'SEFAZPB - Secretaria de Estado da Receita do Estado da Paraíba', '0', '', '0');
INSERT INTO tb_origens VALUES ('197', 'TJPB - Tribunal de Justiça do Estado da Paraíba', '89', 'PB', '2');
INSERT INTO tb_origens VALUES ('198', 'TRT13 - Tribunal Regional do Trabalho da 13ª Região', '131', 'PB', '2');
INSERT INTO tb_origens VALUES ('200', 'CPRHPE - Agência Estadual de Meio Ambiente de Pernambuco - CPRH', '0', '', '0');
INSERT INTO tb_origens VALUES ('201', 'ALPE - Assembleia Legislativa do Estado de Pernambuco', '0', '', '0');
INSERT INTO tb_origens VALUES ('202', 'PMOLI - Prefeitura do Município de Olinda', '0', '', '0');
INSERT INTO tb_origens VALUES ('203', 'PMREC - Prefeitura do Município de Recife', '0', '', '0');
INSERT INTO tb_origens VALUES ('204', 'PMJG - Prefeitura do Município do Jaboatão dos Guararapes', '0', '', '0');
INSERT INTO tb_origens VALUES ('205', 'PROCONPE - Procon do Estado de Pernambuco', '0', '', '0');
INSERT INTO tb_origens VALUES ('207', 'SEFAZPE - Secretaria da Fazenda do Estado de Pernambuco', '0', '', '0');
INSERT INTO tb_origens VALUES ('208', 'TCEPE - Tribunal de Contas do Estado de Pernambuco', '0', '', '0');
INSERT INTO tb_origens VALUES ('209', 'TJPE - Tribunal de Justiça do Estado de Pernambuco', '90', 'PE', '2');
INSERT INTO tb_origens VALUES ('210', 'TRT06 - Tribunal Regional do Trabalho da 6ª Região', '132', 'PE', '2');
INSERT INTO tb_origens VALUES ('211', 'PROCONPI - Procon do Estado do Piauí', '0', '', '0');
INSERT INTO tb_origens VALUES ('212', 'TCEPI - Tribunal de Contas do Estado do Piauí', '0', '', '0');
INSERT INTO tb_origens VALUES ('213', 'TJPI - Tribunal de Justiça do Estado do Piauí', '91', 'PI', '2');
INSERT INTO tb_origens VALUES ('214', 'TRT22 - Tribunal Regional do Trabalho da 22ª Região', '133', 'PI', '2');
INSERT INTO tb_origens VALUES ('215', 'ALPR - Assembleia Legislativa do Estado do Paraná', '0', '', '0');
INSERT INTO tb_origens VALUES ('216', 'CMCUR - Câmara do Município de Curitiba', '0', '', '0');
INSERT INTO tb_origens VALUES ('217', 'GOVPR - Governo do Estado do Paraná', '0', '', '0');
INSERT INTO tb_origens VALUES ('218', 'IAP - Instituto Ambiental do Estado Paraná', '0', '', '0');
INSERT INTO tb_origens VALUES ('219', 'PMCUR - Prefeitura do Município de Curitiba', '0', '', '0');
INSERT INTO tb_origens VALUES ('220', 'PMFI - Prefeitura do Município de Foz do Iguaçu', '0', '', '0');
INSERT INTO tb_origens VALUES ('221', 'PMLON - Prefeitura do Município de Londrina', '0', '', '0');
INSERT INTO tb_origens VALUES ('222', 'PROCONPR - Procon do Estado do Paraná', '0', '', '0');
INSERT INTO tb_origens VALUES ('223', 'PGEPR - Procuradoria Geral do Estado do Paraná', '0', '', '0');
INSERT INTO tb_origens VALUES ('225', 'SEFAZPR - Secretaria da Fazenda do Estado do Paraná', '0', '', '0');
INSERT INTO tb_origens VALUES ('226', 'SEAPPR - Secretaria da Administração e da Previdência do Estado do Paraná', '0', '', '0');
INSERT INTO tb_origens VALUES ('227', 'TCEPR - Tribunal de Contas do Estado do Paraná', '0', '', '0');
INSERT INTO tb_origens VALUES ('228', 'TJPR - Tribunal de Justiça do Estado do Paraná', '92', 'PR', '2');
INSERT INTO tb_origens VALUES ('229', 'TRT09 - Tribunal Regional do Trabalho da 9ª Região', '134', 'PR', '2');
INSERT INTO tb_origens VALUES ('230', 'ALRJ - Assembleia Legislativa do Estado do Rio de Janeiro', '0', '', '0');
INSERT INTO tb_origens VALUES ('231', 'CMRJ - Câmara do Município do Rio de Janeiro', '0', '', '0');
INSERT INTO tb_origens VALUES ('232', 'PRODERJ - Centro de Tecnologia da Informação e Comunicação do Estado do Rio de Janeiro - PRODERJ', '0', '', '0');
INSERT INTO tb_origens VALUES ('233', 'DERRJ - Departamento de Estradas de Rodagem do Estado do Rio de Janeiro - DER-RJ', '0', '', '0');
INSERT INTO tb_origens VALUES ('234', 'DETRANRJ - Departamento de Trânsito do Estado do Rio de Janeiro', '0', '', '0');
INSERT INTO tb_origens VALUES ('235', 'PMBM - Prefeitura do Município de Barra Mansa', '0', '', '0');
INSERT INTO tb_origens VALUES ('236', 'PMRJ - Prefeitura do Município do Rio de Janeiro', '0', '', '0');
INSERT INTO tb_origens VALUES ('237', 'PRRJ - Procuradoria da República no Rio de Janeiro', '0', '', '0');
INSERT INTO tb_origens VALUES ('239', 'SEFAZRJ - Secretaria da Fazenda do Estado do Rio de Janeiro', '0', '', '0');
INSERT INTO tb_origens VALUES ('240', 'TCERJ - Tribunal de Contas do Estado do Rio de Janeiro', '0', '', '0');
INSERT INTO tb_origens VALUES ('241', 'TCMRJ- Tribunal de Contas do Município do Rio de Janeiro', '0', '', '0');
INSERT INTO tb_origens VALUES ('242', 'TJRJ - Tribunal de Justiça do Estado do Rio de Janeiro', '93', 'RJ', '2');
INSERT INTO tb_origens VALUES ('243', 'TRT01 - Tribunal Regional do Trabalho da 1ª Região', '135', 'RJ', '2');
INSERT INTO tb_origens VALUES ('245', 'UFRJ - Universidade Federal do Rio de Janeiro', '0', '', '0');
INSERT INTO tb_origens VALUES ('246', 'GOVRN - Governo do Estado do Rio Grande do Norte', '0', '', '0');
INSERT INTO tb_origens VALUES ('247', 'PMNAT- Prefeitura do Município de Natal', '0', '', '0');
INSERT INTO tb_origens VALUES ('249', 'SEARHRN - Secretaria de Estado da Administração e dos Recursos Humanos do Rio Grande do Norte', '0', '', '0');
INSERT INTO tb_origens VALUES ('250', 'TCERN - Tribunal de Contas do Estado do Rio Grande do Norte', '0', '', '0');
INSERT INTO tb_origens VALUES ('251', 'TJRN - Tribunal de Justiça do Estado do Rio Grande do Norte', '249', 'RN', '2');
INSERT INTO tb_origens VALUES ('252', 'TRT21 - Tribunal Regional do Trabalho da 21ª Região', '136', 'RN', '2');
INSERT INTO tb_origens VALUES ('253', 'ALRO - Assembleia Legislativa do Estado de Rondônia', '0', '', '0');
INSERT INTO tb_origens VALUES ('254', 'SEFINRO - Secretaria de Estado de Finanças do Estado de Rondônia', '0', '', '0');
INSERT INTO tb_origens VALUES ('255', 'TJRO - Tribunal de Justiça do Estado de Rondônia', '231', 'RO', '2');
INSERT INTO tb_origens VALUES ('256', 'TRT14 - Tribunal Regional do Trabalho da 14ª Região', '110', 'AC', '2');
INSERT INTO tb_origens VALUES ('257', 'TJRR - Tribunal de Justiça do Estado de Roraima', '226', 'RR', '2');
INSERT INTO tb_origens VALUES ('258', 'ALRS - Assembleia Legislativa do Estado do Rio Grande do Sul', '0', '', '0');
INSERT INTO tb_origens VALUES ('259', 'FEPAMRS - Fundação Estadual de Proteção Ambiental do Rio Grande do Sul', '0', '', '0');
INSERT INTO tb_origens VALUES ('260', 'PROCONRS - Procon do Estado do Rio Grande do Sul', '0', '', '0');
INSERT INTO tb_origens VALUES ('262', 'SARHRS - Secretaria da Administração e dos Recursos Humanos do Estado do Rio Grande do Sul', '0', '', '0');
INSERT INTO tb_origens VALUES ('263', 'SEFAZRS - Secretaria da Fazenda do Estado do Rio Grande do Sul', '0', '', '0');
INSERT INTO tb_origens VALUES ('264', 'TCERS - Tribunal de Contas do Estado do Rio Grande do Sul', '0', '', '0');
INSERT INTO tb_origens VALUES ('265', 'TJRS - Tribunal de Justiça do Estado do Rio Grande do Sul', '94', 'RS', '2');
INSERT INTO tb_origens VALUES ('266', 'TRT04 - Tribunal Regional do Trabalho da 4ª Região', '139', 'RS', '2');
INSERT INTO tb_origens VALUES ('267', 'ALSC - Assembleia Legislativa do Estado de Santa Catarina', '0', '', '0');
INSERT INTO tb_origens VALUES ('268', 'CMFLO - Câmara do Município de Florianópolis', '0', '', '0');
INSERT INTO tb_origens VALUES ('269', 'MPESC - Ministério Público do Estado de Santa Catarina', '0', '', '0');
INSERT INTO tb_origens VALUES ('270', 'PMFLO - Prefeitura do Município de Florianópolis', '0', '', '0');
INSERT INTO tb_origens VALUES ('271', 'PROCONSC - Procon do Estado de Santa Catarina', '0', '', '0');
INSERT INTO tb_origens VALUES ('273', 'SEFSC - Secretaria da Fazenda do Estado de Santa Catarina', '0', '', '0');
INSERT INTO tb_origens VALUES ('274', 'TCESC - Tribunal de Contas do Estado de Santa Catarina', '0', '', '0');
INSERT INTO tb_origens VALUES ('275', 'TJSC - Tribunal de Justiça do Estado de Santa Catarina', '100', 'SC', '2');
INSERT INTO tb_origens VALUES ('276', 'TRT12 - Tribunal Regional do Trabalho da 12ª Região', '140', 'SC', '2');
INSERT INTO tb_origens VALUES ('277', 'PROCONSE - Procon do Estado do Sergipe', '0', '', '0');
INSERT INTO tb_origens VALUES ('279', 'TCESE - Tribunal de Contas do Estado de Sergipe', '0', '', '0');
INSERT INTO tb_origens VALUES ('280', 'TJSE - Tribunal de Justiça do Estado de Sergipe', '227', 'SE', '2');
INSERT INTO tb_origens VALUES ('281', 'TRT20 - Tribunal Regional do Trabalho da 20ª Região', '142', 'SE', '2');
INSERT INTO tb_origens VALUES ('282', 'ALSP - Assembleia Legislativa do Estado de São Paulo', '0', '', '0');
INSERT INTO tb_origens VALUES ('283', 'AASP - Associação dos Advogados do Estado de São Paulo', '0', '', '0');
INSERT INTO tb_origens VALUES ('284', 'CMSP - Câmara do Município de São Paulo', '0', '', '0');
INSERT INTO tb_origens VALUES ('285', 'DERSP- Departamento de Estradas de Rodagem do Estado de São Paulo - DER-SP', '0', '', '0');
INSERT INTO tb_origens VALUES ('286', 'GOVSP - Governo do Estado de São Paulo', '0', '', '0');
INSERT INTO tb_origens VALUES ('287', 'PMGUA - Prefeitura do Município de Guarulhos', '0', '', '0');
INSERT INTO tb_origens VALUES ('288', 'PMPIR - Prefeitura do Município de Piracicaba', '0', '', '0');
INSERT INTO tb_origens VALUES ('289', 'PMPP - Prefeitura do Município de Presidente Prudente', '0', '', '0');
INSERT INTO tb_origens VALUES ('290', 'PMRP - Prefeitura do Município de Ribeirão Preto', '0', '', '0');
INSERT INTO tb_origens VALUES ('291', 'PMSJC - Prefeitura do Município de São José dos Campos', '0', '', '0');
INSERT INTO tb_origens VALUES ('292', 'PMSP - Prefeitura do Município de São Paulo', '0', '', '0');
INSERT INTO tb_origens VALUES ('293', 'PMCAM- Prefeitura do Município de Campinas', '0', '', '0');
INSERT INTO tb_origens VALUES ('294', 'PROCONSP - Procon do Estado de São Paulo', '0', '', '0');
INSERT INTO tb_origens VALUES ('295', 'PRT15 - Procuradoria Regional do Trabalho da 15ª Região', '0', '', '0');
INSERT INTO tb_origens VALUES ('296', 'SEFAZSP - Secretaria da Fazenda do Estado de São Paulo', '395', 'SF', '2');
INSERT INTO tb_origens VALUES ('297', 'Tribunal de Alçada Criminal do Estado de São Paulo', '0', '', '0');
INSERT INTO tb_origens VALUES ('298', 'TCESP - Tribunal de Contas do Estado de São Paulo', '428', 'SP', '2');
INSERT INTO tb_origens VALUES ('299', 'TJSP - Tribunal de Justiça do Estado de São Paulo', '101', 'SP', '2');
INSERT INTO tb_origens VALUES ('300', 'TJMSP - Tribunal de Justiça Militar do Estado de São Paulo', '427', 'SP', '2');
INSERT INTO tb_origens VALUES ('301', 'TRT02 - Tribunal Regional do Trabalho da 2ª Região', '239', 'SP', '2');
INSERT INTO tb_origens VALUES ('302', 'TRT15 - Tribunal Regional do Trabalho da 15ª Região', '143', 'SP', '2');
INSERT INTO tb_origens VALUES ('304', 'PROCONTO - Procon do Estado do Tocantins', '0', '', '0');
INSERT INTO tb_origens VALUES ('305', 'TJTO - Tribunal de Justiça do Estado de Tocantins', '108', 'TO', '2');
INSERT INTO tb_origens VALUES ('306', 'AGU - Advocacia Geral da União', '0', '', '0');
INSERT INTO tb_origens VALUES ('307', 'ANA - Agência Nacional de Águas', '0', '', '0');
INSERT INTO tb_origens VALUES ('308', 'ANEEL - Agência Nacional de Energia Elétrica', '0', '', '0');
INSERT INTO tb_origens VALUES ('309', 'ANATEL - Agência Nacional de Telecomunicações', '0', '', '0');
INSERT INTO tb_origens VALUES ('310', 'ANTAQ - Agência Nacional de Transportes Aquaviários', '0', '', '0');
INSERT INTO tb_origens VALUES ('311', 'ANVISA - Agência Nacional de Vigilância Sanitária', '0', '', '0');
INSERT INTO tb_origens VALUES ('312', 'CD - Câmara dos Deputados', '470', 'ZE', '0');
INSERT INTO tb_origens VALUES ('313', 'CVM - Comissão de Valores Mobiliários', '0', '', '0');
INSERT INTO tb_origens VALUES ('314', 'CADE - Conselho Administrativo de Defesa Econômica', '467', 'ZB', '0');
INSERT INTO tb_origens VALUES ('315', 'CARF - Conselho Administrativo de Recursos Fiscais - CARF', '424', 'CF', '2');
INSERT INTO tb_origens VALUES ('316', 'CNMP - Conselho Nacional do Ministério Público', '0', '', '0');
INSERT INTO tb_origens VALUES ('317', 'DNPM - Departamento Nacional de Produção Mineral', '0', '', '0');
INSERT INTO tb_origens VALUES ('318', 'DATAPREV - Empresa de Tecnologia e Informações da Previdência Social - DATAPREV', '0', '', '0');
INSERT INTO tb_origens VALUES ('319', 'IBAMA - Instituto Brasileiro do Meio Ambiente e Recursos Naturais Renováveis - IBAMA', '0', '', '0');
INSERT INTO tb_origens VALUES ('320', 'INCRA - Instituto Nacional de Colonização e Reforma Agrária', '0', '', '0');
INSERT INTO tb_origens VALUES ('321', 'INPI - Instituto Nacional de Propriedade Industrial', '426', 'IN', '2');
INSERT INTO tb_origens VALUES ('324', 'MINAGRI - Ministério da Agricultura, Pecuária e Abastecimento', '0', '', '0');
INSERT INTO tb_origens VALUES ('325', 'MINFAZ - Ministério da Fazenda', '425', 'FZ', '2');
INSERT INTO tb_origens VALUES ('326', 'MINJUS - Ministério da Justiça', '0', '', '0');
INSERT INTO tb_origens VALUES ('327', 'MINPREV - Ministério da Previdência Social', '431', 'TS', '2');
INSERT INTO tb_origens VALUES ('328', 'MINCOM - Ministério das Comunicações', '0', '', '0');
INSERT INTO tb_origens VALUES ('329', 'MINPLAN - Ministério do Planejamento, Orçamento e Gestão', '0', '', '0');
INSERT INTO tb_origens VALUES ('330', 'MINTRAB - Ministério do Trabalho e Emprego', '0', '', '0');
INSERT INTO tb_origens VALUES ('331', 'MPT - Ministério Público do Trabalho', '0', '', '0');
INSERT INTO tb_origens VALUES ('332', 'PGR- Procuradoria Geral da República', '0', '', '0');
INSERT INTO tb_origens VALUES ('333', 'PRR2ªR - Procuradoria Regional da República da 2ª Região', '0', '', '0');
INSERT INTO tb_origens VALUES ('334', 'RF - Receita Federal', '0', '', '0');
INSERT INTO tb_origens VALUES ('335', 'SF - Senado Federal', '471', 'ZF', '0');
INSERT INTO tb_origens VALUES ('336', 'SUSEP - Superintendência de Seguros Privados', '0', '', '0');
INSERT INTO tb_origens VALUES ('337', 'STJ - Superior Tribunal de Justiça', '39', 'TJ', '2');
INSERT INTO tb_origens VALUES ('338', 'STM - Superior Tribunal Militar', '40', 'TS', '2');
INSERT INTO tb_origens VALUES ('339', 'STF - Supremo Tribunal Federal', '1', 'TF', '2');
INSERT INTO tb_origens VALUES ('340', 'TCU - Tribunal de Contas da União', '230', 'TC', '2');
INSERT INTO tb_origens VALUES ('342', 'TST - Tribunal Superior do Trabalho', '146', 'TS', '2');
INSERT INTO tb_origens VALUES ('343', 'TSE - Tribunal Superior Eleitoral', '145', 'TS', '2');
INSERT INTO tb_origens VALUES ('344', 'TRF1 - Tribunal Regional Federal da 1ª Região', '119', 'TS', '2');
INSERT INTO tb_origens VALUES ('345', 'TRF2 - Tribunal Regional Federal da 2ª Região', '262', 'TS', '2');
INSERT INTO tb_origens VALUES ('347', 'TRF4 - Tribunal Regional Federal da 4ª Região', '122', 'TS', '2');
INSERT INTO tb_origens VALUES ('348', 'TRF5 - Tribunal Regional Federal da 5ª Região', '124', 'TS', '2');
INSERT INTO tb_origens VALUES ('349', 'TNU - Turma Nacional de Uniformização', '0', '', '0');
INSERT INTO tb_origens VALUES ('350', 'TJAM - Tribunal de Justiça do Estado de Amazonas', '71', 'AM', '2');
INSERT INTO tb_origens VALUES ('351', 'TRF3 - Tribunal Regional Federal da 3ª Região', '120', 'TS', '2');
INSERT INTO tb_origens VALUES ('352', '26NOTASSP - 26º Tabelionato de Notas de São Paulo', '0', '', '0');
INSERT INTO tb_origens VALUES ('353', 'SEEU - Sistema Eletrônico de Execução Unificado', '0', '', '0');
INSERT INTO tb_origens VALUES ('354', 'PF - Polícia Federal', '0', '', '0');
INSERT INTO tb_origens VALUES ('355', 'TREAC - Tribunal Regional Eleitoral do Estado do Acre', '247', 'AC', '2');
INSERT INTO tb_origens VALUES ('356', 'TREAL - Tribunal Regional Eleitoral do Estado do Alagoas', '42', 'AL', '2');
INSERT INTO tb_origens VALUES ('357', 'TREAP - Tribunal Regional Eleitoral do Estado do Amapá', '44', 'AP', '2');
INSERT INTO tb_origens VALUES ('358', 'TREAM - Tribunal Regional Eleitoral do Estado do Amazonas', '43', 'AM', '2');
INSERT INTO tb_origens VALUES ('359', 'TREBA - Tribunal Regional Eleitoral do Estado da Bahia', '45', 'BA', '2');
INSERT INTO tb_origens VALUES ('360', 'TRECE - Tribunal Regional Eleitoral do Estado do Ceará', '46', 'CE', '2');
INSERT INTO tb_origens VALUES ('361', 'TREDF - Tribunal Regional Eleitoral do Distrito Federal', '47', 'DF', '2');
INSERT INTO tb_origens VALUES ('362', 'TREES - Tribunal Regional Eleitoral do Espírito Santo', '48', 'ES', '2');
INSERT INTO tb_origens VALUES ('363', 'TREGO - Tribunal Regional Eleitoral do Estado de Goiás', '49', 'GO', '2');
INSERT INTO tb_origens VALUES ('364', 'TREMA - Tribunal Regional Eleitoral do Estado do Maranhão', '50', 'MA', '2');
INSERT INTO tb_origens VALUES ('365', 'TREMT - Tribunal Regional Eleitoral do Estado do Mato Grosso', '53', 'MT', '2');
INSERT INTO tb_origens VALUES ('366', 'TREMS - Tribunal Regional Eleitoral do Estado do Mato Grosso do Sul', '52', 'MS', '2');
INSERT INTO tb_origens VALUES ('367', 'TREMG - Tribunal Regional Eleitoral do Estado de Minas Gerais', '51', 'MG', '2');
INSERT INTO tb_origens VALUES ('368', 'TREPA - Tribunal Regional Eleitoral do Estado do Pará', '54', 'PA', '2');
INSERT INTO tb_origens VALUES ('369', 'TREPB - Tribunal Regional Eleitoral do Estado da Paraíba', '55', 'PB', '2');
INSERT INTO tb_origens VALUES ('370', 'TREPR - Tribunal Regional Eleitoral do Estado do Paraná', '58', 'PR', '2');
INSERT INTO tb_origens VALUES ('371', 'TREPE - Tribunal Regional Eleitoral do Estado de Pernambuco', '56', 'PE', '2');
INSERT INTO tb_origens VALUES ('372', 'TREPI - Tribunal Regional Eleitoral do Estado do Piauí', '57', 'PI', '2');
INSERT INTO tb_origens VALUES ('373', 'TRERJ - Tribunal Regional Eleitoral do Estado do Rio de Janeiro', '59', 'RJ', '2');
INSERT INTO tb_origens VALUES ('374', 'TRERN - Tribunal Regional Eleitoral de Rio Grande do Norte', '60', 'RN', '2');
INSERT INTO tb_origens VALUES ('375', 'TRERS - Tribunal Regional Eleitoral de Rio Grande do Sul', '63', 'RS', '2');
INSERT INTO tb_origens VALUES ('376', 'TRERO - Tribunal Regional Eleitoral de Rondônia', '61', 'RO', '2');
INSERT INTO tb_origens VALUES ('377', 'TRERR - Tribunal Regional Eleitoral de Roraima', '62', 'RR', '2');
INSERT INTO tb_origens VALUES ('378', 'TRESC - Tribunal Regional Eleitoral de Santa Catarina', '64', 'SC', '2');
INSERT INTO tb_origens VALUES ('379', 'TRESP - Tribunal Regional Eleitoral de São Paulo', '66', 'SP', '2');
INSERT INTO tb_origens VALUES ('380', 'TRESE - Tribunal Regional Eleitoral de Sergipe', '65', 'SE', '2');
INSERT INTO tb_origens VALUES ('381', 'TRETO - Tribunal Regional Eleitoral de Tocantins', '67', 'TO', '2');
INSERT INTO tb_origens VALUES ('382', 'INMETRO - Instituto Nacional de Metrologia, Qualidade e Tecnologia', '0', '', '0');
INSERT INTO tb_origens VALUES ('383', 'INSS - Instituto Nacional da Seguridade Social', '445', 'ZK', '0');
INSERT INTO tb_origens VALUES ('384', 'CCAFGV - Câmara de Conciliação e Arbitragem da Fundação Getúlio Vargas', '0', '', '0');
INSERT INTO tb_origens VALUES ('385', 'CMMA - COMAM - Conselho Municipal de Meio Ambiente', '0', '', '0');
INSERT INTO tb_origens VALUES ('386', 'CFA - CFA - Conselho Federal de Administração', '0', '', '0');
INSERT INTO tb_origens VALUES ('387', 'AGENERSA - Agência Reguladora de Energia e Saneamento Básico do Estado do Rio de Janeiro', '0', '', '0');
INSERT INTO tb_origens VALUES ('388', 'DETRANAC - Departamento de Trânsito do Estado do Acre', '0', '', '0');
INSERT INTO tb_origens VALUES ('389', 'SEMARH - Secretaria Estadual do Meio Ambiente e Recursos Hídricos de Goiás', '0', '', '0');
INSERT INTO tb_origens VALUES ('390', 'TEDOABRS - Tribunal de Ética e Disciplina da Ordem dos Advogados do Brasil Seção do Rio Grande do Sul', '0', '', '0');
INSERT INTO tb_origens VALUES ('391', 'TEDOABAC - Tribunal de Ética e Disciplina da Ordem dos Advogados do Brasil Seção do Acre', '0', '', '0');
INSERT INTO tb_origens VALUES ('392', 'TEDOABAL - Tribunal de Ética e Disciplina da Ordem dos Advogados do Brasil Seção de Alagoas', '0', '', '0');
INSERT INTO tb_origens VALUES ('393', 'TEDOABAP - Tribunal de Ética e Disciplina da Ordem dos Advogados do Brasil Seção do Amapá', '0', '', '0');
INSERT INTO tb_origens VALUES ('394', 'TEDOABAM - Tribunal de Ética e Disciplina da Ordem dos Advogados do Brasil Seção do Amazonas', '0', '', '0');
INSERT INTO tb_origens VALUES ('395', 'TEDOABBA - Tribunal de Ética e Disciplina da Ordem dos Advogados do Brasil Seção da Bahia', '0', '', '0');
INSERT INTO tb_origens VALUES ('396', 'TEDOABCE - Tribunal de Ética e Disciplina da Ordem dos Advogados do Brasil Seção do Ceará', '0', '', '0');
INSERT INTO tb_origens VALUES ('397', 'TEDOABDF - Tribunal de Ética e Disciplina da Ordem dos Advogados do Brasil Seção do Distrito Federal', '0', '', '0');
INSERT INTO tb_origens VALUES ('398', 'TEDOABES - Tribunal de Ética e Disciplina da Ordem dos Advogados do Brasil Seção do Espirito Santo', '0', '', '0');
INSERT INTO tb_origens VALUES ('399', 'TEDOABGO - Tribunal de Ética e Disciplina da Ordem dos Advogados do Brasil Seção de Goiás', '0', '', '0');
INSERT INTO tb_origens VALUES ('400', 'TEDOABMA - Tribunal de Ética e Disciplina da Ordem dos Advogados do Brasil Seção do Maranhão', '0', '', '0');
INSERT INTO tb_origens VALUES ('401', 'TEDOABMT - Tribunal de Ética e Disciplina da Ordem dos Advogados do Brasil Seção do Mato Grosso', '0', '', '0');
INSERT INTO tb_origens VALUES ('402', 'TEDOABMS - Tribunal de Ética e Disciplina da Ordem dos Advogados do Brasil Seção do Mato Grosso do Sul', '0', '', '0');
INSERT INTO tb_origens VALUES ('403', 'TEDOABMG - Tribunal de Ética e Disciplina da Ordem dos Advogados do Brasil Seção de Minas Gerais', '0', '', '0');
INSERT INTO tb_origens VALUES ('404', 'TEDOABPA - Tribunal de Ética e Disciplina da Ordem dos Advogados do Brasil Seção do Pará', '0', '', '0');
INSERT INTO tb_origens VALUES ('405', 'TEDOABPB - Tribunal de Ética e Disciplina da Ordem dos Advogados do Brasil Seção da Paraíba', '0', '', '0');
INSERT INTO tb_origens VALUES ('406', 'TEDOABPR - Tribunal de Ética e Disciplina da Ordem dos Advogados do Brasil Seção do Paraná', '0', '', '0');
INSERT INTO tb_origens VALUES ('407', 'TEDOABPE - Tribunal de Ética e Disciplina da Ordem dos Advogados do Brasil Seção de Pernambuco', '0', '', '0');
INSERT INTO tb_origens VALUES ('408', 'TEDOABPI - Tribunal de Ética e Disciplina da Ordem dos Advogados do Brasil Seção do Piauí', '0', '', '0');
INSERT INTO tb_origens VALUES ('409', 'TEDOABRJ - Tribunal de Ética e Disciplina da Ordem dos Advogados do Brasil Seção do Rio de Janeiro', '0', '', '0');
INSERT INTO tb_origens VALUES ('410', 'TEDOABRN - Tribunal de Ética e Disciplina da Ordem dos Advogados do Brasil Seção do Rio Grande do Norte', '0', '', '0');
INSERT INTO tb_origens VALUES ('411', 'TEDOABRO - Tribunal de Ética e Disciplina da Ordem dos Advogados do Brasil Seção de Rondônia', '0', '', '0');
INSERT INTO tb_origens VALUES ('412', 'TEDOABRR - Tribunal de Ética e Disciplina da Ordem dos Advogados do Brasil Seção de Roraima', '0', '', '0');
INSERT INTO tb_origens VALUES ('413', 'TEDOABSC - Tribunal de Ética e Disciplina da Ordem dos Advogados do Brasil Seção de Santa Catarina', '0', '', '0');
INSERT INTO tb_origens VALUES ('414', 'TEDOABSP - Tribunal de Ética e Disciplina da Ordem dos Advogados do Brasil Seção de São Paulo', '0', '', '0');
INSERT INTO tb_origens VALUES ('415', 'TEDOABSE - Tribunal de Ética e Disciplina da Ordem dos Advogados do Brasil Seção de Sergipe', '0', '', '0');
INSERT INTO tb_origens VALUES ('416', 'TEDOABTO - Tribunal de Ética e Disciplina da Ordem dos Advogados do Brasil Seção do Tocantins', '0', '', '0');
INSERT INTO tb_origens VALUES ('417', 'DEPASA - Departamento Estadual de Pavimentação e Saneamento', '0', '', '0');
INSERT INTO tb_origens VALUES ('418', 'PROCONDIV - Procon do Município de Divinópolis', '0', '', '0');
INSERT INTO tb_origens VALUES ('419', 'CREMEB - Conselho Regional de Medicina do Estado da Bahia', '0', '', '0');
INSERT INTO tb_origens VALUES ('420', 'MPMG - Ministério Público do Estado de Minas Gerais', '0', '', '0');
INSERT INTO tb_origens VALUES ('421', 'PROCONBA - Procon do Estado da Bahia', '0', '', '0');
INSERT INTO tb_origens VALUES ('422', 'DELEFIN - Delegacia de Repressão a Crimes Financeiros', '0', '', '0');
INSERT INTO tb_origens VALUES ('423', 'ALBA - Assembleia Legislativa do Estado da Bahia', '0', '', '0');
INSERT INTO tb_origens VALUES ('424', 'SEGESPAL - Secretaria de Estado da Gestão Pública de Alagoas', '0', '', '0');
INSERT INTO tb_origens VALUES ('425', 'BCB - Banco Central do Brasil', '0', '', '0');
INSERT INTO tb_origens VALUES ('426', 'CAMINAS - Câmara Mineira de Mediação e Arbitragem', '0', '', '0');
INSERT INTO tb_origens VALUES ('427', 'DETRANDF - Departamento de Trânsito do Distrito Federal', '0', '', '0');
INSERT INTO tb_origens VALUES ('428', 'MMA - Ministério do Meio Ambiente', '0', '', '0');
INSERT INTO tb_origens VALUES ('429', 'CGU - Controladoria-Geral da União', '0', '', '0');
INSERT INTO tb_origens VALUES ('430', 'IBGE - Instituto Brasileiro de Geografia e Estatística', '0', '', '0');
INSERT INTO tb_origens VALUES ('431', 'MB - Marinha do Brasil', '0', '', '0');
INSERT INTO tb_origens VALUES ('432', 'MS - Ministério da Saúde', '0', '', '0');
INSERT INTO tb_origens VALUES ('433', 'MDIC - Ministério do Desenvolvimento, Indústria e Comércio Exterior', '0', '', '0');
INSERT INTO tb_origens VALUES ('434', 'MPU - Ministério Público da União', '0', '', '0');
INSERT INTO tb_origens VALUES ('435', 'MPF - Ministério Público Federal', '0', '', '0');
INSERT INTO tb_origens VALUES ('436', 'PMFOR - Prefeitura do Município de Formosa', '0', '', '0');
INSERT INTO tb_origens VALUES ('437', 'SECOM - Secretaria de Comunicação Social da Presidência', '0', '', '0');
INSERT INTO tb_origens VALUES ('438', 'SECOM - Tribunal de Contas do Estado do Amapá', '0', '', '0');
INSERT INTO tb_origens VALUES ('439', 'PGEMT - Procuradoria Geral do Estado de Mato Grosso', '0', '', '0');
INSERT INTO tb_origens VALUES ('440', 'DRF - Delegacia da Receita Federal do Brasil', '0', '', '0');
INSERT INTO tb_origens VALUES ('441', 'ANP - Agência Nacional do Petróleo, Gás Natural e Biocombustíveis', '0', '', '0');
INSERT INTO tb_origens VALUES ('442', 'AGETRANSP - Agência Reguladora de Serviços Públicos Concedidos de Transportes Aquaviários, Ferroviários e Metroviários e de Rodovias do Estado do Rio de Janeiro', '0', '', '0');
INSERT INTO tb_origens VALUES ('443', 'MPRJ - Ministério Público do Estado do Rio de Janeiro', '0', '', '0');
INSERT INTO tb_origens VALUES ('444', 'SEGOV - Secretaria de Estado de Governo', '0', '', '0');
INSERT INTO tb_origens VALUES ('445', 'SMAC - Secretaria Municipal de Meio Ambiente', '0', '', '0');
INSERT INTO tb_origens VALUES ('446', 'MPSP - Ministério Público do Estado de São Paulo', '432', 'SP', '2');
INSERT INTO tb_origens VALUES ('447', 'SUCOM - Superintendência de Controle e Ordenamento do Uso do Solo do Município', '0', '', '0');
INSERT INTO tb_origens VALUES ('448', 'CREAAL - Conselho Regional de Engenharia e Agronomia de Alagoas', '0', '', '0');
INSERT INTO tb_origens VALUES ('449', 'PROCONAL - Procon do Estado do Alagoas', '0', '', '0');
INSERT INTO tb_origens VALUES ('450', 'INMEQ - Instituto de Metrologia e Qualidade', '0', '', '0');
INSERT INTO tb_origens VALUES ('451', 'CROSP - Conselho Regional de Odontologia de São Paulo', '0', '', '0');
INSERT INTO tb_origens VALUES ('452', 'PROCONDF - Procon do Distrito Federal', '0', '', '0');
INSERT INTO tb_origens VALUES ('453', 'PMCG - Prefeitura do Município de Campo Grande', '0', '', '0');
INSERT INTO tb_origens VALUES ('454', 'PROCONGO - Procon do Estado de Goiás', '0', '', '0');
INSERT INTO tb_origens VALUES ('455', 'PRT6 - Procuradoria Regional do Trabalho da 6ª Região', '0', '', '0');
INSERT INTO tb_origens VALUES ('456', 'PROCONCN - Procon do Município de Caldas Novas', '0', '', '0');
INSERT INTO tb_origens VALUES ('457', 'CAT - Conselho Administrativo Tributário', '0', '', '0');
INSERT INTO tb_origens VALUES ('458', 'PMFOR - Prefeitura do Município de Fortaleza', '0', '', '0');
INSERT INTO tb_origens VALUES ('459', 'SMTT - Superintendência Municipal de Transportes e Trânsito de Maceió', '0', '', '0');
INSERT INTO tb_origens VALUES ('460', 'PCAC - Polícia Civil do Estado do Acre', '0', '', '0');
INSERT INTO tb_origens VALUES ('461', 'PCAL - Polícia Civil do Estado de Alagoas', '0', '', '0');
INSERT INTO tb_origens VALUES ('462', 'PCAP - Polícia Civil do Estado do Amapá', '0', '', '0');
INSERT INTO tb_origens VALUES ('463', 'PCAM - Polícia Civil do Estado do Amazonas', '0', '', '0');
INSERT INTO tb_origens VALUES ('464', 'PCBA - Polícia Civil do Estado da Bahia', '0', '', '0');
INSERT INTO tb_origens VALUES ('465', 'PCCE - Polícia Civil do Estado do Ceará', '0', '', '0');
INSERT INTO tb_origens VALUES ('466', 'PCDF - Polícia Civil do Distrito Federal', '0', '', '0');
INSERT INTO tb_origens VALUES ('467', 'PCES - Polícia Civil do Estado do Espírito Santo', '0', '', '0');
INSERT INTO tb_origens VALUES ('468', 'PCGO - Polícia Civil do Estado de Goiás', '0', '', '0');
INSERT INTO tb_origens VALUES ('469', 'PCMA - Polícia Civil do Estado do Maranhão', '0', '', '0');
INSERT INTO tb_origens VALUES ('470', 'PCMT - Polícia Civil do Estado do Mato Grosso', '0', '', '0');
INSERT INTO tb_origens VALUES ('471', 'PCMS - Polícia Civil do Estado do Mato Grosso do Sul', '0', '', '0');
INSERT INTO tb_origens VALUES ('472', 'PCMG - Polícia Civil do Estado de Minas Gerais', '0', '', '0');
INSERT INTO tb_origens VALUES ('473', 'PCPA - Polícia Civil do Estado do Pará', '0', '', '0');
INSERT INTO tb_origens VALUES ('474', 'PCPB - Polícia Civil do Estado da Paraíba', '0', '', '0');
INSERT INTO tb_origens VALUES ('475', 'PCPR - Polícia Civil do Estado do Paraná', '0', '', '0');
INSERT INTO tb_origens VALUES ('476', 'PCPE - Polícia Civil do Estado de Pernambuco', '0', '', '0');
INSERT INTO tb_origens VALUES ('477', 'PCPI - Polícia Civil do Estado do Piauí', '0', '', '0');
INSERT INTO tb_origens VALUES ('478', 'PCRJ - Polícia Civil do Estado do Rio de Janeiro', '0', '', '0');
INSERT INTO tb_origens VALUES ('479', 'PCRN - Polícia Civil do Estado do Rio Grande do Norte', '0', '', '0');
INSERT INTO tb_origens VALUES ('480', 'PCRS - Polícia Civil do Estado do Rio Grande do Sul', '0', '', '0');
INSERT INTO tb_origens VALUES ('481', 'PCRO - Polícia Civil do Estado de Rondônia', '0', '', '0');
INSERT INTO tb_origens VALUES ('482', 'PCRR - Polícia Civil do Estado de Roraima', '0', '', '0');
INSERT INTO tb_origens VALUES ('483', 'PCSC - Polícia Civil do Estado de Santa Catarina', '0', '', '0');
INSERT INTO tb_origens VALUES ('484', 'PCSP - Polícia Civil do Estado de São Paulo', '0', '', '0');
INSERT INTO tb_origens VALUES ('485', 'PCSE - Polícia Civil do Estado de Sergipe', '0', '', '0');
INSERT INTO tb_origens VALUES ('486', 'PCTO - Polícia Civil do Estado do Tocantins', '0', '', '0');
INSERT INTO tb_origens VALUES ('487', 'PRT18 - Procuradoria Regional do Trabalho da 18ª Região', '0', '', '0');
INSERT INTO tb_origens VALUES ('488', 'PRT1 - Procuradoria Regional do Trabalho da 1ª Região', '0', '', '0');
INSERT INTO tb_origens VALUES ('489', 'PROCONRJ - Procon do Estado do Rio de Janeiro', '0', '', '0');
INSERT INTO tb_origens VALUES ('490', 'PROCONMG - Procon do Estado de Minas Gerais', '0', '', '0');
INSERT INTO tb_origens VALUES ('491', 'PROCONRO - Procon do Estado de Rondônia', '0', '', '0');
INSERT INTO tb_origens VALUES ('492', 'ARSESP - Agência Reguladora de Saneamento e Energia do Estado de São Paulo', '0', '', '0');
INSERT INTO tb_origens VALUES ('493', 'PGERJ - Procuradoria Geral do Estado do Rio de Janeiro', '0', '', '0');
INSERT INTO tb_origens VALUES ('494', 'SEDEIS - Secretaria de Desenvolvimento Econômico Energia Indústria e Serviços', '0', '', '0');
INSERT INTO tb_origens VALUES ('495', 'SEPLAGN - Secretaria de Estado de Planejamento e Gestão', '435', 'SA', '2');
INSERT INTO tb_origens VALUES ('496', 'SEMA - Secretaria Municipal do Ambiente de Guapimirim', '0', '', '0');
INSERT INTO tb_origens VALUES ('497', 'SMAC - Secretaria Municipal de Meio Ambiente do Rio de Janeiro', '0', '', '0');
INSERT INTO tb_origens VALUES ('498', 'PGEAC - Procuradoria Geral do Estado do Acre', '0', '', '0');
INSERT INTO tb_origens VALUES ('499', 'PGEAL - Procuradoria Geral do Estado de Alagoas', '0', '', '0');
INSERT INTO tb_origens VALUES ('500', 'PGEAM - Procuradoria Geral do Estado de Amazonas', '0', '', '0');
INSERT INTO tb_origens VALUES ('501', 'PGEAP - Procuradoria Geral do Estado do Amapá', '0', '', '0');
INSERT INTO tb_origens VALUES ('502', 'PGECE - Procuradoria Geral do Estado do Ceará', '0', '', '0');
INSERT INTO tb_origens VALUES ('503', 'PGEES - Procuradoria Geral do Estado do Espírito Santo', '0', '', '0');
INSERT INTO tb_origens VALUES ('504', 'PGEGO - Procuradoria Geral do Estado de Goiás', '0', '', '0');
INSERT INTO tb_origens VALUES ('505', 'PGEMA - Procuradoria Geral do Estado do Maranhão', '0', '', '0');
INSERT INTO tb_origens VALUES ('506', 'PGEMG - Advocacia Geral do Estado de Minas Gerais', '0', '', '0');
INSERT INTO tb_origens VALUES ('507', 'PGEMS - Procuradoria Geral do Estado do Mato Grosso do Sul', '0', '', '0');
INSERT INTO tb_origens VALUES ('508', 'PGEPA - Procuradoria Geral do Estado do Pará', '0', '', '0');
INSERT INTO tb_origens VALUES ('509', 'PGEPB - Procuradoria Geral do Estado da Paraíba', '0', '', '0');
INSERT INTO tb_origens VALUES ('510', 'PGEPE - Procuradoria Geral do Estado de Pernambuco', '0', '', '0');
INSERT INTO tb_origens VALUES ('511', 'PGEPI - Procuradoria Geral do Estado do Piauí', '0', '', '0');
INSERT INTO tb_origens VALUES ('512', 'PGERN - Procuradoria Geral do Estado do Rio Grande do Norte', '0', '', '0');
INSERT INTO tb_origens VALUES ('513', 'PGERO - Procuradoria Geral do Estado de Rondônia', '0', '', '0');
INSERT INTO tb_origens VALUES ('514', 'PGERR - Procuradoria Geral do Estado de Roraima', '0', '', '0');
INSERT INTO tb_origens VALUES ('515', 'PGERS - Procuradoria Geral do Estado do Rio Grande do Sul', '0', '', '0');
INSERT INTO tb_origens VALUES ('516', 'PGESC - Procuradoria Geral do Estado de Santa Catarina', '0', '', '0');
INSERT INTO tb_origens VALUES ('517', 'PGESE - Procuradoria Geral do Estado de Sergipe', '0', '', '0');
INSERT INTO tb_origens VALUES ('518', 'PGESP - Procuradoria Geral do Estado de São Paulo', '0', '', '0');
INSERT INTO tb_origens VALUES ('519', 'PGETO - Procuradoria Geral do Estado de Tocantins', '0', '', '0');
INSERT INTO tb_origens VALUES ('520', 'SEFAZAC - Secretaria da Fazenda do Estado do Acre', '0', '', '0');
INSERT INTO tb_origens VALUES ('521', 'SMTT - Superintendência Municipal de Transportes e Trânsito', '0', '', '0');
INSERT INTO tb_origens VALUES ('522', 'PMCBT - Prefeitura do Município de Cubatão', '0', '', '0');
INSERT INTO tb_origens VALUES ('523', 'DDSD - Delegacia de Defesa dos Serviços Delegados', '0', '', '0');
INSERT INTO tb_origens VALUES ('524', 'DEAT - Delegacia Especial de Apoio ao Turista', '0', '', '0');
INSERT INTO tb_origens VALUES ('525', 'DELEPREV - Delegacia de Repressão a Crimes Previdenciários', '0', '', '0');
INSERT INTO tb_origens VALUES ('526', 'PROCONGOI - Procon do Município de Goiânia', '0', '', '0');
INSERT INTO tb_origens VALUES ('527', 'Tabelionato de Notas e Protesto de Letras e Títulos de Mirandópolis', '0', '', '0');
INSERT INTO tb_origens VALUES ('528', '12º Tabelionato de Notas de Porto Alegre', '0', '', '0');
INSERT INTO tb_origens VALUES ('529', 'MPEMT - Ministério Público do Estado de Mato Grosso', '0', '', '0');
INSERT INTO tb_origens VALUES ('530', 'ANTT - Agência Nacional de Transportes Terrestres', '0', '', '0');
INSERT INTO tb_origens VALUES ('531', 'FATMA - Fundação do Meio Ambiente', '0', '', '0');
INSERT INTO tb_origens VALUES ('532', 'SEFAZSE - Secretaria de Estado da Fazenda de Sergipe', '0', '', '0');
INSERT INTO tb_origens VALUES ('533', 'MPRO - Ministério Público do Estado de Rondônia', '0', '', '0');
INSERT INTO tb_origens VALUES ('534', 'MPPA - Ministério Público do Estado do Pará', '0', '', '0');
INSERT INTO tb_origens VALUES ('535', 'MPTO - Ministério Público do Estado do Tocantins', '0', '', '0');
INSERT INTO tb_origens VALUES ('536', 'NATURATINS - Instituto Natureza do Tocantins', '0', '', '0');
INSERT INTO tb_origens VALUES ('537', 'SECIMA - Secretaria de Meio Ambiente, Recursos Hídricos, Infraestrutura, Cidades e Assuntos Metropolitanos do Estado de Goiás', '0', '', '0');
INSERT INTO tb_origens VALUES ('538', 'TCETO - Tribunal de Contas do Estado do Tocantins', '0', '', '0');
INSERT INTO tb_origens VALUES ('539', 'ANS - Agência Nacional de Saúde Suplementar', '0', '', '0');
INSERT INTO tb_origens VALUES ('540', 'PMTO - Prefeitura do Município de Tocantins', '0', '', '0');
INSERT INTO tb_origens VALUES ('541', 'PROCONMA - Procon do Estado do Maranhão', '0', '', '0');
INSERT INTO tb_origens VALUES ('542', 'MPE - Ministério Público Eleitoral', '0', '', '0');
INSERT INTO tb_origens VALUES ('543', '1CCA - 1ª Corte de Conciliação e Arbitragem do Estado do Tocantins', '0', '', '0');
INSERT INTO tb_origens VALUES ('544', 'CREMESP - Conselho Regional de Medicina do Estado de São Paulo', '0', '', '0');
INSERT INTO tb_origens VALUES ('545', 'PMUDI - Prefeitura do Município de Uberlândia', '0', '', '0');
INSERT INTO tb_origens VALUES ('546', '1RIUDI - 1º Ofício de Registro de Imóveis de Uberlândia', '0', '', '0');
INSERT INTO tb_origens VALUES ('547', '2RIUDI - 2º Ofício de Registro de Imóveis de Uberlândia', '0', '', '0');
INSERT INTO tb_origens VALUES ('548', 'SEFAZPI - Secretaria da Fazenda do Estado do Piauí', '0', '', '0');
INSERT INTO tb_origens VALUES ('549', 'MPTSC - Ministério Público do Trabalho do Estado de Santa Catarina', '0', '', '0');
INSERT INTO tb_origens VALUES ('550', 'MPTRS - Ministério Público do Trabalho do Estado do Rio Grande do Sul', '0', '', '0');
INSERT INTO tb_origens VALUES ('551', 'MPBA - Ministério Público do Estado da Bahia', '0', '', '0');
INSERT INTO tb_origens VALUES ('552', 'PROCONFLN - Procon do Município de Florianópolis', '0', '', '0');
INSERT INTO tb_origens VALUES ('553', 'PROCONSJ - Procon do Município de São José', '0', '', '0');
INSERT INTO tb_origens VALUES ('554', 'PROCONCTB - Procon do Município de Curitiba', '0', '', '0');
INSERT INTO tb_origens VALUES ('555', 'PMBLU - Prefeitura do Município de Blumenau', '0', '', '0');
INSERT INTO tb_origens VALUES ('556', 'CRMMG - Conselho Regional de Medicina do Estado de Minas Gerais', '0', '', '0');
INSERT INTO tb_origens VALUES ('557', 'SRTEPA - Superintendência Regional do Trabalho e Emprego do Estado do Pará', '0', '', '0');
INSERT INTO tb_origens VALUES ('558', 'IPEMSP - Instituto de Pesos e Medidas do Estado de São Paulo', '0', '', '0');
INSERT INTO tb_origens VALUES ('559', 'SMSSP - Secretaria Municipal de Saúde de São Paulo', '0', '', '0');
INSERT INTO tb_origens VALUES ('560', 'DPPC - Departamento de Polícia de Proteção à Cidadania do Estado de São Paulo', '0', '', '0');
INSERT INTO tb_origens VALUES ('561', 'PMSLÇ - Prefeitura do Município de São Lourenço', '0', '', '0');
INSERT INTO tb_origens VALUES ('562', 'TCERO - Tribunal de Contas do Estado de Rondônia', '0', '', '0');
INSERT INTO tb_origens VALUES ('563', 'DETRANPE - Departamento de Trânsito do Estado de Pernambuco', '0', '', '0');
INSERT INTO tb_origens VALUES ('564', 'PROCONRN - Procon do Estado do Rio Grande do Norte', '0', '', '0');
INSERT INTO tb_origens VALUES ('565', 'SEFAZMG - Secretaria da Fazenda do Estado de Minas Gerais', '434', 'MG', '2');
INSERT INTO tb_origens VALUES ('566', 'PREC - Procuradoria do Município de Recife', '0', '', '0');
INSERT INTO tb_origens VALUES ('567', 'IPEMPE - Instituto de Peses e Medidas do Estado de Pernambuco', '0', '', '0');
INSERT INTO tb_origens VALUES ('568', 'MINTRAN - Ministério dos Transportes', '0', '', '0');
INSERT INTO tb_origens VALUES ('569', 'SEFTO - Secretaria da Fazenda do Estado do Tocantins', '0', '', '0');
INSERT INTO tb_origens VALUES ('570', 'DETRANSP - Departamento de Trânsito do Estado de São Paulo', '0', '', '0');
INSERT INTO tb_origens VALUES ('571', 'CRCMT - Conselho Regional de Contabilidade do Estado do Mato Grosso', '0', '', '0');
INSERT INTO tb_origens VALUES ('572', 'PROCONAC - Procon do Estado do Acre', '0', '', '0');
INSERT INTO tb_origens VALUES ('573', 'SENAI - Serviço Nacional de Aprendizagem Industrial', '0', '', '0');
INSERT INTO tb_origens VALUES ('574', 'SEMEIARB - Secretaria Municipal de Meio Ambiente de Rio Branco', '0', '', '0');
INSERT INTO tb_origens VALUES ('575', 'SESI - Serviço Social da Indústria', '0', '', '0');
INSERT INTO tb_origens VALUES ('576', 'DNIT - Departamento Nacional de Infraestrutura de Transportes', '0', '', '0');
INSERT INTO tb_origens VALUES ('577', 'CCEE - Câmara de Comercialização de Energia Elétrica', '0', '', '0');
INSERT INTO tb_origens VALUES ('578', 'CETESB - Companhia Ambiental do Estado de São Paulo', '0', '', '0');
INSERT INTO tb_origens VALUES ('579', 'ANAC - Agência Nacional de Aviação Civil', '0', '', '0');
INSERT INTO tb_origens VALUES ('581', 'CREMERO - Conselho Regional de Medicina do Estado de Rondônia', '0', '', '0');
INSERT INTO tb_origens VALUES ('582', 'CRFRO - Conselho Regional de Farmácia de Rondônia', '0', '', '0');
INSERT INTO tb_origens VALUES ('583', 'SRTERO - Superintendência Regional do Trabalho e Emprego do Estado de Rondônia', '0', '', '0');
INSERT INTO tb_origens VALUES ('584', 'DPERO - Defensoria Pública do Estado de Rondônia', '0', '', '0');
INSERT INTO tb_origens VALUES ('585', 'SESSP - Secretaria de Estado da Saúde de São Paulo', '0', '', '0');
INSERT INTO tb_origens VALUES ('586', 'CRECISP - Conselho Regional de Corretores de Imóveis São Paulo', '0', '', '0');
INSERT INTO tb_origens VALUES ('587', 'UN - União', '0', '', '0');
INSERT INTO tb_origens VALUES ('588', 'TITSP - Tribunal de Impostos e Taxas do Estado de São Paulo', '0', '', '0');
INSERT INTO tb_origens VALUES ('589', 'SUPFRO - Superintendência da Polícia Federal no Estado de Rondônia', '0', '', '0');
INSERT INTO tb_origens VALUES ('590', '2SERNOTJUI - 2º Serviço Registral e Notarial de Juína', '0', '', '0');
INSERT INTO tb_origens VALUES ('591', 'ADECCON - Associação de Defesa da Cidadania e do Consumidor', '0', '', '0');
INSERT INTO tb_origens VALUES ('592', 'CREASP - Conselho Regional de Engenharia e Arquitetura do Estado de São Paulo', '0', '', '0');
INSERT INTO tb_origens VALUES ('593', 'SEMAS - Secretaria de Estado de Meio Ambiente e Sustentabilidade do Pará', '0', '', '0');
INSERT INTO tb_origens VALUES ('594', 'SERPB - Secretária de Estado da Receita', '0', '', '0');
INSERT INTO tb_origens VALUES ('595', 'SIF - Serviço de Inspeção Federal', '0', '', '0');
INSERT INTO tb_origens VALUES ('596', 'CRMV - Conselho Regional de Medicina Veterinária', '0', '', '0');
INSERT INTO tb_origens VALUES ('597', 'CRQ - Conselho Regional de Química', '0', '', '0');
INSERT INTO tb_origens VALUES ('598', 'PROCONITR - Procon do Município de Itumbiara', '0', '', '0');
INSERT INTO tb_origens VALUES ('599', 'SRTEAL - Superintendência Regional do Trabalho e Emprego do Estado de Alagoas', '0', '', '0');
INSERT INTO tb_origens VALUES ('600', 'MPAC - Ministério Público do Estado do Acre', '0', '', '0');
INSERT INTO tb_origens VALUES ('601', 'MPAL - Ministério Público do Estado do Alagoas', '0', '', '0');
INSERT INTO tb_origens VALUES ('602', 'MPAM - Ministério Público do Estado do Amazonas', '0', '', '0');
INSERT INTO tb_origens VALUES ('603', 'MPAP - Ministério Público do Estado do Amapá', '0', '', '0');
INSERT INTO tb_origens VALUES ('604', 'MPCE - Ministério Público do Estado do Ceará', '0', '', '0');
INSERT INTO tb_origens VALUES ('605', 'MPDFT - Ministério Público do Distrito Federal e Territórios', '0', '', '0');
INSERT INTO tb_origens VALUES ('606', 'MPGO - Ministério Público do Estado de Goiás', '0', '', '0');
INSERT INTO tb_origens VALUES ('607', 'MPMA - Ministério Público do Estado de Maranhão', '0', '', '0');
INSERT INTO tb_origens VALUES ('608', 'MPMS - Ministério Público do Estado do Mato Grosso do Sul', '0', '', '0');
INSERT INTO tb_origens VALUES ('609', 'MPPB - Ministério Público do Estado da Paraíba', '0', '', '0');
INSERT INTO tb_origens VALUES ('610', 'MPPE - Ministério Público do Estado do Pernambuco', '0', '', '0');
INSERT INTO tb_origens VALUES ('611', 'MPPI - Ministério Público do Estado do Piauí', '0', '', '0');
INSERT INTO tb_origens VALUES ('612', 'MPPR - Ministério Público do Estado do Paraná', '0', '', '0');
INSERT INTO tb_origens VALUES ('613', 'MPRN - Ministério Público do Estado do Rio Grande do Norte', '0', '', '0');
INSERT INTO tb_origens VALUES ('614', 'MPRR - Ministério Público do Estado de Roraima', '0', '', '0');
INSERT INTO tb_origens VALUES ('615', 'MPSE - Ministério Público do Estado do Sergipe', '0', '', '0');
INSERT INTO tb_origens VALUES ('616', 'DPEAC - Defensoria Pública do Estado do Acre', '0', '', '0');
INSERT INTO tb_origens VALUES ('617', 'DPEAL - Defensoria Pública do Estado do Alagoas', '0', '', '0');
INSERT INTO tb_origens VALUES ('618', 'DPEAM - Defensoria Pública do Estado do Amazonas', '0', '', '0');
INSERT INTO tb_origens VALUES ('619', 'DPEAP - Defensoria Pública do Estado do Amapá', '0', '', '0');
INSERT INTO tb_origens VALUES ('620', 'DPEBA - Defensoria Pública do Estado da Bahia', '0', '', '0');
INSERT INTO tb_origens VALUES ('621', 'DPECE - Defensoria Pública do Estado do Ceará', '0', '', '0');
INSERT INTO tb_origens VALUES ('622', 'DPEDFT - Defensoria Pública do Distrito Federal e Territórios', '0', '', '0');
INSERT INTO tb_origens VALUES ('623', 'DPEES - Defensoria Pública do Estado do Espírito Santo', '0', '', '0');
INSERT INTO tb_origens VALUES ('624', 'DPEGO - Defensoria Pública do Estado de Goiás', '0', '', '0');
INSERT INTO tb_origens VALUES ('625', 'DPEMA - Defensoria Pública do Estado de Maranhão', '0', '', '0');
INSERT INTO tb_origens VALUES ('626', 'DPEMG - Defensoria Pública do Estado de Minas Gerais', '0', '', '0');
INSERT INTO tb_origens VALUES ('627', 'DPEMS - Defensoria Pública do Estado do Mato Grosso do Sul', '0', '', '0');
INSERT INTO tb_origens VALUES ('628', 'DPEMT - Defensoria Pública do Estado do Mato Grosso', '0', '', '0');
INSERT INTO tb_origens VALUES ('629', 'DPEPA - Defensoria Pública do Estado do Pará', '0', '', '0');
INSERT INTO tb_origens VALUES ('630', 'DPEPB - Defensoria Pública do Estado da Paraíba', '0', '', '0');
INSERT INTO tb_origens VALUES ('631', 'DPEPE - Defensoria Pública do Estado do Pernambuco', '0', '', '0');
INSERT INTO tb_origens VALUES ('632', 'DPEPI - Defensoria Pública do Estado do Piauí', '0', '', '0');
INSERT INTO tb_origens VALUES ('633', 'DPEPR - Defensoria Pública do Estado do Paraná', '0', '', '0');
INSERT INTO tb_origens VALUES ('634', 'DPERJ - Defensoria Pública do Estado do Rio de Janeiro', '0', '', '0');
INSERT INTO tb_origens VALUES ('635', 'DPERN - Defensoria Pública do Estado do Rio Grande do Norte', '0', '', '0');
INSERT INTO tb_origens VALUES ('636', 'DPERR - Defensoria Pública do Estado de Roraima', '0', '', '0');
INSERT INTO tb_origens VALUES ('637', 'DPERS - Defensoria Pública do Estado do Rio Grande do Sul', '0', '', '0');
INSERT INTO tb_origens VALUES ('638', 'DPESC - Defensoria Pública do Estado de Santa Catarina', '0', '', '0');
INSERT INTO tb_origens VALUES ('639', 'DPESP - Defensoria Pública do Estado de São Paulo', '0', '', '0');
INSERT INTO tb_origens VALUES ('640', 'DPESE - Defensoria Pública do Estado do Sergipe', '0', '', '0');
INSERT INTO tb_origens VALUES ('641', 'DPETO - Defensoria Pública do Estado do Tocantins', '0', '', '0');
INSERT INTO tb_origens VALUES ('642', 'ALFBEL - Alfândega do Porto de Belém', '0', '', '0');
INSERT INTO tb_origens VALUES ('643', '29NOTASSP - 29º Tabelionato de Notas de São Paulo', '0', '', '0');
INSERT INTO tb_origens VALUES ('644', 'MPTGO - Ministério Público do Trabalho do Estado de Goiás', '0', '', '0');
INSERT INTO tb_origens VALUES ('645', 'TJD - Tribunal de Justiça Desportiva', '0', '', '0');
INSERT INTO tb_origens VALUES ('646', 'STJD - Supremo Tribunal de Justiça Desportiva', '0', '', '0');
INSERT INTO tb_origens VALUES ('647', 'ITPS - Instituto Tecnológico e de Pesquisas do Estado de Sergipe', '0', '', '0');
INSERT INTO tb_origens VALUES ('648', 'MPRS - Ministério Público do Estado do Rio Grande do Sul', '0', '', '0');
INSERT INTO tb_origens VALUES ('649', 'CPCJEC - Centro Permanente de Conciliação dos Juizados Especiais Cíveis', '0', '', '0');
INSERT INTO tb_origens VALUES ('650', 'TCEAM - Tribunal de Contas do Estado do Amazonas', '0', '', '0');
INSERT INTO tb_origens VALUES ('651', 'PMJUI - Prefeitura do Município de Juína', '0', '', '0');
INSERT INTO tb_origens VALUES ('652', 'PMSJB - Prefeitura do Município de São João da Boa Vista', '0', '', '0');
INSERT INTO tb_origens VALUES ('653', 'PMJND - Prefeitura do Município de Jundiaí', '0', '', '0');
INSERT INTO tb_origens VALUES ('654', 'PMSBC - Prefeitura do Município de São Bernardo do Campo', '0', '', '0');
INSERT INTO tb_origens VALUES ('655', 'PMGJA - Prefeitura do Município de Guarujá', '0', '', '0');
INSERT INTO tb_origens VALUES ('656', 'PMUMU - Prefeitura do Município de Umuarama', '0', '', '0');
INSERT INTO tb_origens VALUES ('657', 'PMAMCN - Prefeitura do Município de Americana', '0', '', '0');
INSERT INTO tb_origens VALUES ('658', 'PMDIAD - Prefeitura do Município de Diadema', '0', '', '0');
INSERT INTO tb_origens VALUES ('659', 'PMOSA - Prefeitura do Município de Osasco', '0', '', '0');
INSERT INTO tb_origens VALUES ('660', 'RIBAG - Cartório de Registro de Imóveis de Bagé', '0', '', '0');
INSERT INTO tb_origens VALUES ('661', 'RISCS - Cartório de Registro de Imóveis de Santa Cruz do Sul', '0', '', '0');
INSERT INTO tb_origens VALUES ('662', 'RIBG - Cartório de Registro de Imóveis de Bento Gonçalves', '0', '', '0');
INSERT INTO tb_origens VALUES ('663', 'RICCAN - Cartório de Registro de Imóveis de Capão da Canoa', '0', '', '0');
INSERT INTO tb_origens VALUES ('664', 'CRMTO - Conselho Regional de Medicina do Estado do Tocantins', '0', '', '0');
INSERT INTO tb_origens VALUES ('665', 'UFIB - Universidade Federal de Ibiuna', '0', '', '0');
INSERT INTO tb_origens VALUES ('666', 'PROCONPA - Procon do Estado do Pará', '0', '', '0');
INSERT INTO tb_origens VALUES ('667', 'PROCONAP - Procon do Estado do Amapá', '0', '', '0');
INSERT INTO tb_origens VALUES ('668', 'PROCONRR - Procon do Estado de Roraima', '0', '', '0');
INSERT INTO tb_origens VALUES ('669', 'ALFSAN - Alfândega do Porto de Santos', '0', '', '0');
INSERT INTO tb_origens VALUES ('670', 'PROCONAM - Procon do Estado do Amazonas', '0', '', '0');
INSERT INTO tb_origens VALUES ('671', 'CCBC - Câmara de Comércio Brasil Canadá', '0', '', '0');
INSERT INTO tb_origens VALUES ('672', 'CRASP - Conselho Regional de Administração do Estado de São Paulo', '0', '', '0');
INSERT INTO tb_origens VALUES ('673', 'PMMAR - Prefeitura do Município de Marília', '0', '', '0');
INSERT INTO tb_origens VALUES ('674', 'SEFAZJUN - Secretaria Municipal da Fazenda de Jundiaí', '0', '', '0');
INSERT INTO tb_origens VALUES ('675', 'SEFAZRIO - Secretaria Municipal da Fazenda do Rio de Janeiro', '0', '', '0');
INSERT INTO tb_origens VALUES ('676', 'DOT - Delegacia de Crimes Contra a Ordem Tributária', '0', '', '0');
INSERT INTO tb_origens VALUES ('677', 'COLOG - Comando Logístico do Exército Brasileiro', '0', '', '0');
INSERT INTO tb_origens VALUES ('678', 'FNDE - Fundo Nacional de Desenvolvimento da Educação', '0', '', '0');
INSERT INTO tb_origens VALUES ('679', 'ICCICA - ICC International Court of Arbitration', '0', '', '0');
INSERT INTO tb_origens VALUES ('680', 'DRT2 - Delegacia Regional do Trabalho da 2ª Região', '0', '', '0');
INSERT INTO tb_origens VALUES ('681', 'DRT15 - Delegacia Regional do Trabalho da 15ª Região', '0', '', '0');
INSERT INTO tb_origens VALUES ('682', 'DRTRI - Delegacia Regional Tributária', '0', '', '0');
INSERT INTO tb_origens VALUES ('683', 'ADUBR - Aduana do Brasil', '0', '', '0');
INSERT INTO tb_origens VALUES ('684', 'PMVV - Prefeitura do Município de Vila Velha', '0', '', '0');
INSERT INTO tb_origens VALUES ('685', 'PMIPJ - Prefeitura do Município de Ipojuca', '0', '', '0');
INSERT INTO tb_origens VALUES ('686', 'PMSRP - Prefeitura do Município de Seropédica', '0', '', '0');
INSERT INTO tb_origens VALUES ('687', 'PMNIT - Prefeitura do Município de Niterói', '0', '', '0');
INSERT INTO tb_origens VALUES ('688', 'PMAR - Prefeitura do Município de Angra dos Reis', '0', '', '0');
INSERT INTO tb_origens VALUES ('689', 'SEFAZSE - Secretaria da Fazenda do Estado de Sergipe', '0', '', '0');
INSERT INTO tb_origens VALUES ('690', 'SEFAZPA - Secretaria da Fazenda do Estado do Pará', '0', '', '0');
INSERT INTO tb_origens VALUES ('691', 'SEFAZRN - Secretaria da Fazenda do Estado do Rio Grande do Norte', '0', '', '0');
INSERT INTO tb_origens VALUES ('692', 'PRT9 - Procuradoria Regional do Trabalho da 9ª Região', '0', '', '0');
INSERT INTO tb_origens VALUES ('693', 'CORECONBA - Conselho Regional de Economia da 5ª Região', '0', '', '0');
INSERT INTO tb_origens VALUES ('694', 'MPTBA - Ministério Público do Trabalho do Estado da Bahia', '0', '', '0');
INSERT INTO tb_origens VALUES ('695', 'SUCOM - Secretaria Municipal de Urbanismo', '0', '', '0');
INSERT INTO tb_origens VALUES ('696', 'ALFSUA - Alfândega do Porto de Suape', '0', '', '0');
INSERT INTO tb_origens VALUES ('697', 'SRTEBA - Superintendência Regional do Trabalho e Emprego do Estado da Bahia', '0', '', '0');
INSERT INTO tb_origens VALUES ('698', 'SEFAZRO - Secretaria da Fazenda do Estado de Rondônia', '0', '', '0');
INSERT INTO tb_origens VALUES ('699', 'PMALVM - Prefeitura do Município de Alvorada de Minas', '0', '', '0');
INSERT INTO tb_origens VALUES ('700', 'PMANTD - Prefeitura do Município de Antônio Dias', '0', '', '0');
INSERT INTO tb_origens VALUES ('701', 'PMACAM - Prefeitura do Município de Abre Campo', '0', '', '0');
INSERT INTO tb_origens VALUES ('702', 'COPAM - Conselho Estadual de Política Ambiental', '0', '', '0');
INSERT INTO tb_origens VALUES ('703', 'PRT2 - Procuradoria Regional do Trabalho da 2ª Região', '0', '', '0');
INSERT INTO tb_origens VALUES ('704', 'SEMARH - Secretaria de Estado do Meio Ambiente e dos Recursos Hídricos de Sergipe', '0', '', '0');
INSERT INTO tb_origens VALUES ('705', 'JESP - Juizado Especial da Fazenda Pública', '0', '', '0');
INSERT INTO tb_origens VALUES ('706', 'MPAL - Ministério Público do Estado de Alagoas', '0', '', '0');
INSERT INTO tb_origens VALUES ('707', 'PMBAR - Prefeitura do Município de Barueri', '0', '', '0');
INSERT INTO tb_origens VALUES ('708', 'PMTER - Prefeitura do Município de Terenos', '0', '', '0');
INSERT INTO tb_origens VALUES ('709', 'DEMACRJ - Delegacia Especial de Maiores Contribuintes no Rio de Janeiro', '0', '', '0');
INSERT INTO tb_origens VALUES ('710', 'AMMAI - Agência Municipal do Meio Ambiente de Itumbiara', '0', '', '0');
INSERT INTO tb_origens VALUES ('711', 'FIFA-DRC - FIFA Dispute Resolution Chamber', '0', '', '0');
INSERT INTO tb_origens VALUES ('712', 'FIFA-PSC - FIFA Players'' Status Committee', '0', '', '0');
INSERT INTO tb_origens VALUES ('713', 'FIFA-DC - FIFA Disciplinary Committee', '0', '', '0');
INSERT INTO tb_origens VALUES ('714', 'PRT10 - Procuradoria Regional do Trabalho da 10ª Região', '0', '', '0');
INSERT INTO tb_origens VALUES ('715', 'SEFAZMA - Secretaria da Fazenda do Estado do Maranhão', '0', '', '0');
INSERT INTO tb_origens VALUES ('716', 'PRFN5 - Procuradoria Regional da Fazenda Nacional da 5ª Região', '0', '', '0');
INSERT INTO tb_origens VALUES ('717', 'AD Diper - Agência de Desenvolvimento Econômico de Pernambuco', '0', '', '0');
INSERT INTO tb_origens VALUES ('718', 'SSPSP - Secretaria de Estado da Segurança Pública de São Paulo', '0', '', '0');
INSERT INTO tb_origens VALUES ('719', 'CREACE - Conselho Regional de Engenharia, Arquitetura e Agronomia do Estado do Ceará', '0', '', '0');
INSERT INTO tb_origens VALUES ('720', 'GOVAM - Governo do Estado do Amazonas', '0', '', '0');
INSERT INTO tb_origens VALUES ('721', 'PMTIR - Prefeitura do Município de Tiradentes', '0', '', '0');
INSERT INTO tb_origens VALUES ('722', 'PMARA - Prefeitura do Município de Araraquara', '0', '', '0');
INSERT INTO tb_origens VALUES ('723', 'PMITA - Prefeitura do Município de Itapevi', '0', '', '0');
INSERT INTO tb_origens VALUES ('724', 'PMCRZ - Prefeitura do Município de Cruzes', '0', '', '0');
INSERT INTO tb_origens VALUES ('725', 'PMSTA - Prefeitura do Município de Santo André', '0', '', '0');
INSERT INTO tb_origens VALUES ('726', 'PMCSA - Prefeitura do Município de Cabo de Santo Agostinho', '0', '', '0');
INSERT INTO tb_origens VALUES ('727', 'PMMUR - Prefeitura do Município de Muriaé', '0', '', '0');
INSERT INTO tb_origens VALUES ('728', 'PMOUR - Prefeitura do Município de Ourinho', '0', '', '0');
INSERT INTO tb_origens VALUES ('729', 'ANCINE - Agência Nacional do Cinema', '0', '', '0');
INSERT INTO tb_origens VALUES ('730', 'CREASC - Conselho Regional de Engenharia e Agronomia de Santa Catarina', '0', '', '0');
INSERT INTO tb_origens VALUES ('731', 'MCTI - Ministério da Ciência, Tecnologia, Inovações e Comunicações', '0', '', '0');
INSERT INTO tb_origens VALUES ('732', 'CRECIBA - Conselho Regional dos Corretores de Imóveis do Estado da Bahia', '0', '', '0');
INSERT INTO tb_origens VALUES ('733', 'CRECIRJ - Conselho Regional dos Corretores de Imóveis do Estado do Rio de Janeiro', '0', '', '0');
INSERT INTO tb_origens VALUES ('734', 'IBAMETRO - Instituto Baiano de Metrologia e Qualidade', '0', '', '0');
INSERT INTO tb_origens VALUES ('735', 'SUPFRJ - Superintendência da Polícia Federal no Estado do Rio de Janeiro', '0', '', '0');
INSERT INTO tb_origens VALUES ('736', 'TATEPE - Tribunal Administrativo Tributário do Estado de Pernambuco', '0', '', '0');
INSERT INTO tb_origens VALUES ('737', 'CRSFN - Conselho de Recursos do Sistema Financeiro Nacional', '0', '', '0');
INSERT INTO tb_origens VALUES ('738', 'SEFAZRBO - Secretaria Municipal da Fazenda de Rio Bonito', '0', '', '0');
INSERT INTO tb_origens VALUES ('739', 'CSJT - Conselho Superior da Justiça do Trabalho', '0', '', '0');
INSERT INTO tb_origens VALUES ('740', 'SRTESP - Superintendência Regional do Trabalho e Emprego do Estado de São Paulo', '0', '', '0');
INSERT INTO tb_origens VALUES ('741', 'PMSAL - Prefeitura do Município de Salvador', '0', '', '0');
INSERT INTO tb_origens VALUES ('742', 'DRT5 - Delegacia Regional do Trabalho da 5ª Região', '0', '', '0');
INSERT INTO tb_origens VALUES ('743', 'INEA - Instituto Estadual do Ambiente', '0', '', '0');
INSERT INTO tb_origens VALUES ('744', 'CBMMA - Corpo de Bombeiros Militar do Estado do Maranhão', '0', '', '0');
INSERT INTO tb_origens VALUES ('745', 'SRTEMG - Superintendência Regional do Trabalho e Emprego do Estado de Minas Gerais', '0', '', '0');
INSERT INTO tb_origens VALUES ('746', 'SRTERJ - Superintendência Regional do Trabalho e Emprego do Estado do Rio de Janeiro', '0', '', '0');
INSERT INTO tb_origens VALUES ('747', 'SRTEPE - Superintendência Regional do Trabalho e Emprego do Estado de Pernambuco', '0', '', '0');
INSERT INTO tb_origens VALUES ('748', 'SRTEDF - Superintendência Regional do Trabalho e Emprego do Distrito Federal', '0', '', '0');
INSERT INTO tb_origens VALUES ('749', 'SRTEAM - Superintendência Regional do Trabalho e Emprego do Estado do Amazonas', '0', '', '0');
INSERT INTO tb_origens VALUES ('750', 'SRTEPR - Superintendência Regional do Trabalho e Emprego do Estado do Paraná', '0', '', '0');
INSERT INTO tb_origens VALUES ('751', 'SRTECE - Superintendência Regional do Trabalho e Emprego do Estado do Ceará', '0', '', '0');
INSERT INTO tb_origens VALUES ('752', 'SRTERS - Superintendência Regional do Trabalho e Emprego do Estado do Rio Grande do Sul', '0', '', '0');
INSERT INTO tb_origens VALUES ('753', 'SRTEPB - Superintendência Regional do Trabalho e Emprego do Estado da Paraíba', '0', '', '0');
INSERT INTO tb_origens VALUES ('754', 'SRTESC - Superintendência Regional do Trabalho e Emprego do Estado de Santa Catarina', '0', '', '0');
INSERT INTO tb_origens VALUES ('755', 'SRTEMA - Superintendência Regional do Trabalho e Emprego do Estado do Maranhão', '0', '', '0');
INSERT INTO tb_origens VALUES ('756', 'SRTEES - Superintendência Regional do Trabalho e Emprego do Estado do Espírito Santo', '0', '', '0');
INSERT INTO tb_origens VALUES ('757', 'SRTEMS - Superintendência Regional do Trabalho e Emprego do Estado do Mato Grosso do Sul', '0', '', '0');
INSERT INTO tb_origens VALUES ('758', 'SRTEMT - Superintendência Regional do Trabalho e Emprego do Estado do Mato Grosso', '0', '', '0');
INSERT INTO tb_origens VALUES ('759', 'SRTEPI - Superintendência Regional do Trabalho e Emprego do Estado do Piauí', '0', '', '0');
INSERT INTO tb_origens VALUES ('760', 'SRTERN - Superintendência Regional do Trabalho e Emprego do Estado do Rio Grande do Norte', '0', '', '0');
INSERT INTO tb_origens VALUES ('761', 'SRTESE - Superintendência Regional do Trabalho e Emprego do Estado de Sergipe', '0', '', '0');
INSERT INTO tb_origens VALUES ('762', 'SRTEGO - Superintendência Regional do Trabalho e Emprego do Estado de Goiás', '0', '', '0');
INSERT INTO tb_origens VALUES ('763', 'SRTECAMP - Superintendência Regional do Trabalho e Emprego em Campinas', '0', '', '0');
INSERT INTO tb_origens VALUES ('764', 'MPTSP - Ministério Público do Trabalho do Estado de São Paulo', '0', '', '0');
INSERT INTO tb_origens VALUES ('765', 'MPTMG - Ministério Público do Trabalho do Estado de Minas Gerais', '0', '', '0');
INSERT INTO tb_origens VALUES ('766', 'MPTRJ - Ministério Público do Trabalho do Estado do Rio de Janeiro', '0', '', '0');
INSERT INTO tb_origens VALUES ('767', 'MPTPE - Ministério Público do Trabalho do Estado de Pernambuco', '0', '', '0');
INSERT INTO tb_origens VALUES ('768', 'MPTDF - Ministério Público do Trabalho do Distrito Federal', '0', '', '0');
INSERT INTO tb_origens VALUES ('769', 'MPTAM - Ministério Público do Trabalho do Estado do Amazonas', '0', '', '0');
INSERT INTO tb_origens VALUES ('770', 'MPTPR - Ministério Público do Trabalho do Estado do Paraná', '0', '', '0');
INSERT INTO tb_origens VALUES ('771', 'MPTCE - Ministério Público do Trabalho do Estado do Ceará', '0', '', '0');
INSERT INTO tb_origens VALUES ('772', 'MPTPA - Ministério Público do Trabalho do Estado do Pará', '0', '', '0');
INSERT INTO tb_origens VALUES ('773', 'MPTPB - Ministério Público do Trabalho do Estado da Paraíba', '0', '', '0');
INSERT INTO tb_origens VALUES ('774', 'MPTRO - Ministério Público do Trabalho do Estado de Rondônia', '0', '', '0');
INSERT INTO tb_origens VALUES ('775', 'MPTMA - Ministério Público do Trabalho do Estado do Maranhão', '0', '', '0');
INSERT INTO tb_origens VALUES ('776', 'MPTES - Ministério Público do Trabalho do Estado do Espírito Santo', '0', '', '0');
INSERT INTO tb_origens VALUES ('777', 'MPTMS - Ministério Público do Trabalho do Estado do Mato Grosso do Sul', '0', '', '0');
INSERT INTO tb_origens VALUES ('778', 'MPTMT - Ministério Público do Trabalho do Estado do Mato Grosso', '0', '', '0');
INSERT INTO tb_origens VALUES ('779', 'MPTPI - Ministério Público do Trabalho do Estado do Piauí', '0', '', '0');
INSERT INTO tb_origens VALUES ('780', 'MPTRN - Ministério Público do Trabalho do Estado do Rio Grande do Norte', '0', '', '0');
INSERT INTO tb_origens VALUES ('781', 'MPTSE - Ministério Público do Trabalho do Estado de Sergipe', '0', '', '0');
INSERT INTO tb_origens VALUES ('782', 'MPTAL - Ministério Público do Trabalho do Estado de Alagoas', '0', '', '0');
INSERT INTO tb_origens VALUES ('783', 'MPTCAMP - Ministério Público do Trabalho em Campinas', '0', '', '0');
INSERT INTO tb_origens VALUES ('784', 'PRT4 - Procuradoria Regional do Trabalho da 4ª Região', '0', '', '0');
INSERT INTO tb_origens VALUES ('785', 'CROMG - Conselho Regional de Odontologia de Minas Gerais', '0', '', '0');
INSERT INTO tb_origens VALUES ('786', 'PMCOT - Prefeitura do Município de Cotia', '0', '', '0');
INSERT INTO tb_origens VALUES ('787', 'PMSAL - Prefeitura do Município de Saltinho', '0', '', '0');
INSERT INTO tb_origens VALUES ('788', 'MEC - Ministério da Educação', '0', '', '0');
INSERT INTO tb_origens VALUES ('789', 'PROCONCBA - Procon do Município de Cuiabá', '0', '', '0');
INSERT INTO tb_origens VALUES ('790', 'CREAGO - Conselho Regional de Engenharia e Agronomia de Goiás', '0', '', '0');
INSERT INTO tb_origens VALUES ('791', 'CCPR - Conselho de Contribuintes do Estado do Paraná', '0', '', '0');
INSERT INTO tb_origens VALUES ('792', 'CCRJ - Conselho de Contribuintes do Estado do Rio de Janeiro', '0', '', '0');
INSERT INTO tb_origens VALUES ('793', 'CCSP - Conselho de Contribuintes do Estado de São Paulo', '0', '', '0');
INSERT INTO tb_origens VALUES ('794', 'PMPAL - Prefeitura Municipal de Palmas', '0', '', '0');
INSERT INTO tb_origens VALUES ('795', 'PMPAR - Prefeitura Municipal de Paraíso', '0', '', '0');
INSERT INTO tb_origens VALUES ('796', 'PMARA - Prefeitura Municipal de Araguaína', '0', '', '0');
INSERT INTO tb_origens VALUES ('797', 'PMGUR - Prefeitura Municipal de Gurupi', '0', '', '0');
INSERT INTO tb_origens VALUES ('798', 'PMPNAC - Prefeitura Municipal de Porto Nacional', '0', '', '0');
INSERT INTO tb_origens VALUES ('799', 'INTERMAT - Instituto de Terras de Mato Grosso', '0', '', '0');
INSERT INTO tb_origens VALUES ('800', 'SEMAMT - Secretaria de Estado de Meio Ambiente de Mato Grosso', '0', '', '0');
INSERT INTO tb_origens VALUES ('801', 'DRFRO - Delegacia da Receita Federal em Rondônia', '0', '', '0');
INSERT INTO tb_origens VALUES ('802', 'CRMMT - Conselho Regional de Medicina do Estado do Mato Grosso', '0', '', '0');
INSERT INTO tb_origens VALUES ('803', 'CROMT - Conselho Regional de Odontologia do Estado do Mato Grosso', '0', '', '0');
INSERT INTO tb_origens VALUES ('804', 'CRAMT - Conselho Regional de Administração do Estado do Mato Grosso', '0', '', '0');
INSERT INTO tb_origens VALUES ('805', 'SESPMT - Secretaria de Estado de Segurança Pública de Mato Grosso', '0', '', '0');
INSERT INTO tb_origens VALUES ('806', 'IMASUL - Instituto de Meio Ambiente de Mato Grosso do Sul', '0', '', '0');
INSERT INTO tb_origens VALUES ('807', 'CODEGO - Companhia de Desenvolvimento Econômico de Goiás', '0', '', '0');
INSERT INTO tb_origens VALUES ('808', 'PMTEU - Prefeitura do Município de Teutônia', '0', '', '0');
INSERT INTO tb_origens VALUES ('809', 'TCDF - Tribunal de Contas do Distrito Federal', '0', '', '0');
INSERT INTO tb_origens VALUES ('810', 'TCEBA - Tribunal de Contas do Estado da Bahia', '0', '', '0');
INSERT INTO tb_origens VALUES ('811', 'TCECE - Tribunal de Contas do Estado do Ceará', '0', '', '0');
INSERT INTO tb_origens VALUES ('812', 'PMITA - Prefeitura do Município de Itaquaquecetuba', '0', '', '0');
INSERT INTO tb_origens VALUES ('813', 'SMF - Secretaria Municipal de Finanças', '0', '', '0');
INSERT INTO tb_origens VALUES ('814', 'Finep - Financiadora de Estudos e Projetos', '0', '', '0');
INSERT INTO tb_origens VALUES ('815', '3NOTASCAM - 3º Tabelião de Notas de Campinas', '0', '', '0');
INSERT INTO tb_origens VALUES ('816', 'CREFITO3 - Conselho Regional de Fisioterapia e Terapia Ocupacional da 3ª Região', '0', '', '0');
INSERT INTO tb_origens VALUES ('817', 'CRB10 - Conselho Regional de Biblioteconomia da 10ª Região', '0', '', '0');
INSERT INTO tb_origens VALUES ('818', 'CRB8 - Conselho Regional de Biblioteconomia da 8ª Região', '0', '', '0');
INSERT INTO tb_origens VALUES ('819', 'CREAMG - Conselho Regional de Engenharia e Agronomia do Estado de Minas Gerais', '0', '', '0');
INSERT INTO tb_origens VALUES ('820', 'CRESSSP - Conselho Regional de Serviço Social de São Paulo - 9ª Região', '0', '', '0');
INSERT INTO tb_origens VALUES ('821', '2CCAGO - 2ª Corte de Conciliação e Arbitragem de Goiânia', '0', '', '0');
INSERT INTO tb_origens VALUES ('822', '1CCARV - 1ª Corte de Conciliação e Arbitragem de Rio Verde', '0', '', '0');
INSERT INTO tb_origens VALUES ('823', 'CRN1 - Conselho Regional de Nutricionistas da 1ª Região', '0', '', '0');
INSERT INTO tb_origens VALUES ('824', 'Proteste - Associação Brasileira de Defesa do Consumidor', '0', '', '0');
INSERT INTO tb_origens VALUES ('825', 'PMSROQ - Prefeitura do Município de São Roque', '0', '', '0');
INSERT INTO tb_origens VALUES ('826', 'CRECIGO - Conselho Regional dos Corretores de Imóveis do Estado de Goiás', '0', '', '0');
INSERT INTO tb_origens VALUES ('827', 'SESDF - Secretaria de Estado de Saúde do Distrito Federal', '0', '', '0');
INSERT INTO tb_origens VALUES ('828', 'SEFAZSL - Secretaria Municipal da Fazenda de São Luís', '0', '', '0');
INSERT INTO tb_origens VALUES ('829', 'SEFAZFOR - Secretaria Municipal da Fazendo de Fortaleza', '0', '', '0');
INSERT INTO tb_origens VALUES ('830', 'CRECIMT - Conselho Regional dos Corretores de Imóveis do Estado do Mato Grosso', '0', '', '0');
INSERT INTO tb_origens VALUES ('831', 'CRECIMG - Conselho Regional dos Corretores de Imóveis do Estado de Minas Gerais', '0', '', '0');
INSERT INTO tb_origens VALUES ('832', 'CRECIRS - Conselho Regional dos Corretores de Imóveis do Estado do Rio Grande do Sul', '0', '', '0');
INSERT INTO tb_origens VALUES ('833', 'CORTRT18 - Corregedoria do Tribunal Regional do Trabalho da 18ª Região', '0', '', '0');
INSERT INTO tb_origens VALUES ('834', 'PROCONCAM - Procon do Município de Campinas', '0', '', '0');
INSERT INTO tb_origens VALUES ('835', '1RISL - 1ª Zona de Registro de Imóveis de São Luís', '0', '', '0');
INSERT INTO tb_origens VALUES ('836', '2RIJUN - 2º Oficial de Registro de Imóveis e Anexos de Jundiaí', '0', '', '0');
INSERT INTO tb_origens VALUES ('837', '4RISP - 4º Oficial de Registro de Imóveis de São Paulo', '0', '', '0');
INSERT INTO tb_origens VALUES ('838', 'PMESP - Prefeitura do Municipio de Espírito Santo do Pinhal', '0', '', '0');
INSERT INTO tb_origens VALUES ('839', 'SEAPAMG - Secretaria de Estado de Agricultura, Pecuária e Abastecimento de Minas Gerais', '0', '', '0');
INSERT INTO tb_origens VALUES ('840', 'CGJMG - Corregedoria Geral de Justiça de Minas Gerais', '0', '', '0');
INSERT INTO tb_origens VALUES ('841', 'SMSSBO - Secretaria Municipal de Saúde de Santa Bárbara d''Oeste', '0', '', '0');
INSERT INTO tb_origens VALUES ('842', 'DEMUTRANLA - Departamento Municipal de Trânsito de Laguna', '0', '', '0');
INSERT INTO tb_origens VALUES ('843', 'CRASC - Conselho Regional de Administração do Estado de Santa Catarina', '0', '', '0');
INSERT INTO tb_origens VALUES ('844', 'PRF - Polícia Rodoviária Federal', '0', '', '0');
INSERT INTO tb_origens VALUES ('845', 'PMCOR - Prefeitura do Município de Corupá', '0', '', '0');
INSERT INTO tb_origens VALUES ('846', 'SGPR - Secretaria-Geral da Presidência da República', '0', '', '0');
INSERT INTO tb_origens VALUES ('847', 'MDH - Ministério dos Direitos Humanos', '0', '', '0');
INSERT INTO tb_origens VALUES ('848', 'MTFCGU - Ministério da Transparência, Fiscalização e Controladoria-Geral da União', '0', '', '0');
INSERT INTO tb_origens VALUES ('849', 'MCID - Ministério das Cidades', '0', '', '0');
INSERT INTO tb_origens VALUES ('850', 'MIN - Ministério da Integração Nacional', '0', '', '0');
INSERT INTO tb_origens VALUES ('851', 'MTUR - Ministério do Turismo', '0', '', '0');
INSERT INTO tb_origens VALUES ('852', 'MESP - Ministério do Esporte', '0', '', '0');
INSERT INTO tb_origens VALUES ('853', 'MME - Ministério de Minas e Energia', '0', '', '0');
INSERT INTO tb_origens VALUES ('854', 'MDSA - Ministério do Desenvolvimento Social e Agrário', '0', '', '0');
INSERT INTO tb_origens VALUES ('855', 'MCUL - Ministério da Cultura', '0', '', '0');
INSERT INTO tb_origens VALUES ('856', 'MDEF - Ministério da Defesa', '0', '', '0');
INSERT INTO tb_origens VALUES ('857', 'MRE - Ministério das Relações Exteriores', '0', '', '0');
INSERT INTO tb_origens VALUES ('858', 'SESGO - Secretaria de Estado da Saúde de Goiás', '0', '', '0');
INSERT INTO tb_origens VALUES ('859', 'CCPR - Casa Civil da Presidência da República', '0', '', '0');
INSERT INTO tb_origens VALUES ('860', 'SMSSJRP - Secretaria Municipal de Saúde de São José do Rio Preto', '0', '', '0');
INSERT INTO tb_origens VALUES ('861', 'CBRNSP - Coordenadoria de Biodiversidade e Recursos Naturais de São Paulo', '0', '', '0');
INSERT INTO tb_origens VALUES ('862', 'CRB4 - Conselho Regional de Biblioteconomia da 4ª Região', '0', '', '0');
INSERT INTO tb_origens VALUES ('863', 'SEFAZPB - Secretaria da Fazenda do Estado da Paraíba', '0', '', '0');
INSERT INTO tb_origens VALUES ('864', 'SEFAZRR - Secretaria da Fazenda do Estado de Roraima', '0', '', '0');
INSERT INTO tb_origens VALUES ('865', 'PROCONBAY - Procon do Município de Bayeux', '0', '', '0');
INSERT INTO tb_origens VALUES ('866', 'PROCONBEL - Procon do Município de Belém', '0', '', '0');
INSERT INTO tb_origens VALUES ('867', 'PROCONCAMG - Procon do Município de Campina Grande', '0', '', '0');
INSERT INTO tb_origens VALUES ('868', 'PROCONSAOL - Procon do Município de São Luís', '0', '', '0');
INSERT INTO tb_origens VALUES ('869', 'PROCONMACA - Procon do Município de Macapá', '0', '', '0');
INSERT INTO tb_origens VALUES ('870', 'PROCONPAT - Procon do Município de Patos', '0', '', '0');
INSERT INTO tb_origens VALUES ('871', 'PROCONJOPE - Procon do Município de João Pessoa', '0', '', '0');
INSERT INTO tb_origens VALUES ('872', 'PROCONREC - Procon do Município de Recife', '0', '', '0');
INSERT INTO tb_origens VALUES ('873', 'PROCONFSTN - Procon do Município de Feira de Santana', '0', '', '0');
INSERT INTO tb_origens VALUES ('874', 'PROCONSAL - Procon do Município de Salvador', '0', '', '0');
INSERT INTO tb_origens VALUES ('875', 'PROCONFOR - Procon do Município de Fortaleza', '0', '', '0');
INSERT INTO tb_origens VALUES ('876', 'PROCONIMP - Procon do Município de Imperatriz', '0', '', '0');
INSERT INTO tb_origens VALUES ('877', 'PROCONVITC - Procon do Município de Vitória da Consquista', '0', '', '0');
INSERT INTO tb_origens VALUES ('878', 'PROCONARA - Procon do Município de Arapiraca', '0', '', '0');
INSERT INTO tb_origens VALUES ('879', 'PROCONMAC - Procon do Município de Maceió', '0', '', '0');
INSERT INTO tb_origens VALUES ('880', 'PROCONACJU - Procon do Município de Aracajú', '0', '', '0');
INSERT INTO tb_origens VALUES ('881', 'PROCONCAB - Procon do Município de Cabedelo', '0', '', '0');
INSERT INTO tb_origens VALUES ('882', 'PROCONNAT - Procon do Município de Natal', '0', '', '0');
INSERT INTO tb_origens VALUES ('883', 'PROCONTER - Procon do Município de Teresina', '0', '', '0');
INSERT INTO tb_origens VALUES ('884', 'CODECONSAL - Coordenadoria de Proteção e Defesa do Consumidor da Prefeitura do Município de Salvador', '0', '', '0');
INSERT INTO tb_origens VALUES ('885', 'SUPFAC - Superintendência da Polícia Federal no Estado do Acre', '0', '', '0');
INSERT INTO tb_origens VALUES ('886', 'SUPFAP - Superintendência da Polícia Federal no Estado do Amapá', '0', '', '0');
INSERT INTO tb_origens VALUES ('887', 'SUPFAM - Superintendência da Polícia Federal no Estado do Amazonas', '0', '', '0');
INSERT INTO tb_origens VALUES ('888', 'SUPFPA - Superintendência da Polícia Federal no Estado do Pará', '0', '', '0');
INSERT INTO tb_origens VALUES ('889', 'SUPFRR - Superintendência da Polícia Federal no Estado de Roraima', '0', '', '0');
INSERT INTO tb_origens VALUES ('890', 'SUPFTO - Superintendência da Polícia Federal no Estado de Tocantins', '0', '', '0');
INSERT INTO tb_origens VALUES ('891', 'SUPFAL - Superintendência da Polícia Federal no Estado do Alagoas', '0', '', '0');
INSERT INTO tb_origens VALUES ('892', 'SUPFBA - Superintendência da Polícia Federal no Estado da Bahia', '0', '', '0');
INSERT INTO tb_origens VALUES ('893', 'SUPFCE - Superintendência da Polícia Federal no Estado do Ceará', '0', '', '0');
INSERT INTO tb_origens VALUES ('894', 'SUPFMA - Superintendência da Polícia Federal no Estado do Maranhão', '0', '', '0');
INSERT INTO tb_origens VALUES ('895', 'SUPFPB - Superintendência da Polícia Federal no Estado da Paraíba', '0', '', '0');
INSERT INTO tb_origens VALUES ('896', 'SUPFPE - Superintendência da Polícia Federal no Estado de Pernambuco', '0', '', '0');
INSERT INTO tb_origens VALUES ('897', 'SUPFPI - Superintendência da Polícia Federal no Estado do Piauí', '0', '', '0');
INSERT INTO tb_origens VALUES ('898', 'SUPFRN - Superintendência da Polícia Federal no Estado do Rio Grande do Norte', '0', '', '0');
INSERT INTO tb_origens VALUES ('899', 'SUPFSE - Superintendência da Polícia Federal no Estado de Sergipe', '0', '', '0');
INSERT INTO tb_origens VALUES ('900', 'SUPFDF - Superintendência da Polícia Federal no Distrito Federal', '0', '', '0');
INSERT INTO tb_origens VALUES ('901', 'SUPFMT - Superintendência da Polícia Federal no Estado do Mato Grosso', '0', '', '0');
INSERT INTO tb_origens VALUES ('902', 'SUPFMS - Superintendência da Polícia Federal no Estado do Mato Grosso do Sul', '0', '', '0');
INSERT INTO tb_origens VALUES ('903', 'SUPFMG - Superintendência da Polícia Federal no Estado de Minas Gerais', '0', '', '0');
INSERT INTO tb_origens VALUES ('904', 'SUPFSP - Superintendência da Polícia Federal no Estado de São Paulo', '0', '', '0');
INSERT INTO tb_origens VALUES ('905', 'SUPFPR - Superintendência da Polícia Federal no Estado do Paraná', '0', '', '0');
INSERT INTO tb_origens VALUES ('906', 'SUPFSC - Superintendência da Polícia Federal no Estado de Santa Catarina', '0', '', '0');
INSERT INTO tb_origens VALUES ('907', 'SUPFRS - Superintendência da Polícia Federal no Estado do Rio Grande do Sul', '0', '', '0');
INSERT INTO tb_origens VALUES ('908', 'SUPFES - Superintendência da Polícia Federal no Estado do Espírito Santo', '0', '', '0');
INSERT INTO tb_origens VALUES ('909', 'SUPF - Superintendência da Polícia Federal no Estado', '0', '', '0');
INSERT INTO tb_origens VALUES ('910', 'PCIENT - Polícia Científica', '0', '', '0');
INSERT INTO tb_origens VALUES ('911', 'PTCIENT - Polícia Técnico-Científica', '0', '', '0');
INSERT INTO tb_origens VALUES ('912', 'INSCRI - Instituto de Criminalística', '0', '', '0');
INSERT INTO tb_origens VALUES ('913', 'IML - Instituto Médico Legal', '0', '', '0');
INSERT INTO tb_origens VALUES ('914', 'PMSP - Policia Militar do Estado de São Paulo', '0', '', '0');
INSERT INTO tb_origens VALUES ('915', 'PMSER - Prefeitura do Município de Sertãozinho', '0', '', '0');
INSERT INTO tb_origens VALUES ('916', 'SMAMPOA - Secretaria Municipal do Meio Ambiente de Porto Alegre', '0', '', '0');
INSERT INTO tb_origens VALUES ('917', 'NOTASITA - 10º tabelionato de notas e ofício de registro de imóveis de Itaipava', '0', '', '0');
INSERT INTO tb_origens VALUES ('918', 'PMSC - Polícia Militar do Estado de Santa Catarina', '0', '', '0');
INSERT INTO tb_origens VALUES ('919', 'DETRANSC - Departamento de Trânsito do Estado de Santa Catarina', '0', '', '0');
INSERT INTO tb_origens VALUES ('920', 'DPU - Defensoria Pública da União', '0', '', '0');
INSERT INTO tb_origens VALUES ('921', 'CFM - Conselho Federal de Medicina', '0', '', '0');
INSERT INTO tb_origens VALUES ('922', 'SEFAZMCAM - Secretaria da Fazendo do Município de Camaçari', '0', '', '0');
INSERT INTO tb_origens VALUES ('923', 'CMOV - Câmara do Município de Onda Verde', '0', '', '0');
INSERT INTO tb_origens VALUES ('924', 'SECMASP - Secretaria de Estado do Meio Ambiente de São Paulo', '0', '', '0');
INSERT INTO tb_origens VALUES ('925', 'SRTETO - Superintendência Regional do Trabalho e Emprego do Estado de Tocantins', '0', '', '0');
INSERT INTO tb_origens VALUES ('926', 'CONAR - Conselho Nacional de Autorregulamentação Publicitária', '0', '', '0');
INSERT INTO tb_origens VALUES ('927', 'CEF - Caixa Econômica Federal', '0', '', '0');
INSERT INTO tb_origens VALUES ('928', 'PROCONUDI - Procon do Município de Uberlândia', '0', '', '0');
INSERT INTO tb_origens VALUES ('929', 'CERFES - Conselho Estadual de Recursos Fiscais do Espírito Santo', '0', '', '0');
INSERT INTO tb_origens VALUES ('930', 'CMCCI - Conselho Municipal de Contribuintes de Cachoeiro de Itapemirim', '0', '', '0');
INSERT INTO tb_origens VALUES ('931', 'PMMAC - Prefeitura do Município de Maceió', '0', '', '0');
INSERT INTO tb_origens VALUES ('932', 'PRT23 - Procuradoria Regional do Trabalho da 23ª Região', '0', '', '0');
INSERT INTO tb_origens VALUES ('933', 'PMJOP - Prefeitura do Município de João Pessoa', '0', '', '0');
INSERT INTO tb_origens VALUES ('934', 'SEAE - Secretaria de Acompanhamento Econômico', '0', '', '0');
INSERT INTO tb_origens VALUES ('935', 'PMSJRP - Prefeitura do Municipio de São José do Rio Preto', '0', '', '0');
INSERT INTO tb_origens VALUES ('936', 'TCERR - Tribunal de Contas do Estado de Roraima', '0', '', '0');
INSERT INTO tb_origens VALUES ('937', 'FUNAI - Fundação Nacional do Índio', '0', '', '0');
INSERT INTO tb_origens VALUES ('938', 'PROCONSJRP - Procon do Município de São José do Rio Preto', '0', '', '0');
INSERT INTO tb_origens VALUES ('939', 'CREAMS - Conselho Regional de Engenharia e Agronomia do Mato Grosso do Sul', '0', '', '0');
INSERT INTO tb_origens VALUES ('940', 'CONAMA - Conselho Nacional do Meio Ambiente', '0', '', '0');
INSERT INTO tb_origens VALUES ('941', 'PRFN3 - Procuradoria Regional da Fazenda Nacional da 3ª Região', '0', '', '0');
INSERT INTO tb_origens VALUES ('942', 'TCMSP - Tribunal de Contas do Municipio de São Paulo', '0', '', '0');
INSERT INTO tb_origens VALUES ('943', 'CNRD - Câmara Nacional de Resolução de Disputas', '0', '', '0');
INSERT INTO tb_origens VALUES ('944', 'PROCONJUN - Procon do Município de Jundiaí', '0', '', '0');
INSERT INTO tb_origens VALUES ('945', 'PROCONJGU - Procon do Município de Jaboatão dos Guararapes', '0', '', '0');
INSERT INTO tb_origens VALUES ('946', 'PROCONCSA - Procon do Município de Cabo de Santo Agostinho', '0', '', '0');
INSERT INTO tb_origens VALUES ('947', 'PROCONOLI - Procon do Município de Olinda', '0', '', '0');
INSERT INTO tb_origens VALUES ('948', 'PROCONIGA - Procon do Município de Igarassu', '0', '', '0');
INSERT INTO tb_origens VALUES ('949', 'OMPI - Organização Mundial da Propriedade Intelectual', '0', '', '0');
INSERT INTO tb_origens VALUES ('950', 'CSDPI - Centro de Solução de Disputas, Mediação e Arbitragem em Propriedade Intelectual', '0', '', '0');
INSERT INTO tb_origens VALUES ('951', 'ABPI - Associação Brasileira de Propriedade Intelectual', '0', '', '0');
INSERT INTO tb_origens VALUES ('952', 'CAE - Câmara de Mediação e Arbitragem das Eurocâmaras', '0', '', '0');
INSERT INTO tb_origens VALUES ('953', 'AMCHAM - Câmara Americana de Comércio', '0', '', '0');
INSERT INTO tb_origens VALUES ('954', 'CAMARB - Câmara de Arbitragem Empresarial', '0', '', '0');
INSERT INTO tb_origens VALUES ('955', 'CBMA - Centro Brasileiro de Mediação e Arbitragem', '0', '', '0');
INSERT INTO tb_origens VALUES ('956', 'PROCONIMA - Procon do Município de Itapissuma', '0', '', '0');
INSERT INTO tb_origens VALUES ('957', 'PROCONALI - Procon do Município de Abreu e Lima', '0', '', '0');
INSERT INTO tb_origens VALUES ('958', 'PROCONICA - Procon do Município de Ilha de Itamaracá', '0', '', '0');
INSERT INTO tb_origens VALUES ('959', 'CREARS - Conselho Regional de Engenharia e Agronomia do Rio Grande do Sul', '0', '', '0');
INSERT INTO tb_origens VALUES ('960', '2TABLIN - 2º Ofício Tabelionato de Linhares', '0', '', '0');
INSERT INTO tb_origens VALUES ('961', 'SENACON - Secretaria Nacional do Consumidor', '0', '', '0');
INSERT INTO tb_origens VALUES ('962', 'PMPOA - Prefeitura do Município de Porto Alegre', '0', '', '0');
INSERT INTO tb_origens VALUES ('963', 'PFNMG - Procuradoria da Fazenda Nacional do Estado de Minas Gerais', '0', '', '0');
INSERT INTO tb_origens VALUES ('964', 'DERES - Departamento de Estradas de Rodagem do Estado do Espírito Santo', '0', '', '0');
INSERT INTO tb_origens VALUES ('965', 'SEMADMG - Secretaria do Estado de Meio Ambiente e Desenvolvimento Sustentável de Minas Gerais', '0', '', '0');
INSERT INTO tb_origens VALUES ('966', 'Justiça Federal', '0', '', '0');
INSERT INTO tb_origens VALUES ('968', NULL, '0', '', '0');
INSERT INTO tb_origens VALUES ('969', 'PROCON MUNICIPAL', '0', '', '0');
INSERT INTO tb_origens VALUES ('970', 'PROCON ESTADUAL', '0', '', '0');
INSERT INTO tb_origens VALUES ('971', 'PREFEITURA MUNICIPAL', '0', '', '0');
INSERT INTO tb_origens VALUES ('972', 'AMMA', '0', '', '0');
INSERT INTO tb_origens VALUES ('973', 'Ministerio Publico', '0', '', '0');
INSERT INTO tb_origens VALUES ('974', 'Banca Permanente de Conciliação - Porangatu', '0', '', '0');
INSERT INTO tb_origens VALUES ('975', 'CAMARA MUNICIPAL', '0', '', '0');
INSERT INTO tb_origens VALUES ('976', 'Serniço de Atendimento Judiciario - SAJ', '0', '', '0');
INSERT INTO tb_origens VALUES ('977', 'Superintendência Municipal de Proteção e Defesa do Consumidor', '0', '', '0');
INSERT INTO tb_origens VALUES ('978', 'SEDECON', '0', '', '0');
INSERT INTO tb_origens VALUES ('979', 'SEFAZ - Secretaria Municipal da Fazenda', '0', '', '0');
INSERT INTO tb_origens VALUES ('980', 'Centro de Pacificação Social', '0', '', '0');
INSERT INTO tb_origens VALUES ('981', 'Centro Judiciário', '0', '', '0');
INSERT INTO tb_origens VALUES ('982', 'JUIZADO DE CONCILIAÇÃO', '0', '', '0');
INSERT INTO tb_origens VALUES ('983', 'PROMOTORIA DE JUSTIÇA', '0', '', '0');
INSERT INTO tb_origens VALUES ('984', 'DETRANes - Departamento de Trânsito do Estado de Espirito Santo', '0', '', '0');
INSERT INTO tb_origens VALUES ('985', 'JFAL-JFAL - Justiça Federal de Alagoas', '6', 'AL', '2');
INSERT INTO tb_origens VALUES ('988', 'JFBA-JFBA - Justiça Federal da Bahia', '9', 'BA', '2');
INSERT INTO tb_origens VALUES ('998', 'JFMT-JFMT - Justiça Federal do Mato Grosso', '18', 'MT', '2');
INSERT INTO tb_origens VALUES ('1004', 'JFDF-JFDF - Justiça Federal do Distrito Federal', '11', 'DF', '2');
INSERT INTO tb_origens VALUES ('1008', 'JFPE-JFPE - Justiça Federal do Pernambuco', '21', 'PE', '2');
INSERT INTO tb_origens VALUES ('1018', 'JFPB-JFPB - Justica Federal da Paraiba', '20', 'PB', '2');
INSERT INTO tb_origens VALUES ('1019', 'JFPB-Justica Federal da Paraiba - PJE', '405', 'PB', '2');
INSERT INTO tb_origens VALUES ('1021', 'JFGO-JFGO - Justica Federal de Goias', '12', 'GO', '2');
INSERT INTO tb_origens VALUES ('1022', 'JFMG-JFMG - Justica Federal de Minas Gerais', '14', 'MG', '2');
INSERT INTO tb_origens VALUES ('1024', 'JFRO-JFRO - Justica Federal de Rondonia', '26', 'RO', '2');
INSERT INTO tb_origens VALUES ('1025', 'JFRR-JFRR - Justica Federal de Roraima', '27', 'RR', '2');
INSERT INTO tb_origens VALUES ('1026', 'JFSC-JFSC - Justica Federal de Santa Catarina', '28', 'SC', '2');
INSERT INTO tb_origens VALUES ('1027', 'JFSP-JFSP - Justica Federal de Sao Paulo', '31', 'SP', '2');
INSERT INTO tb_origens VALUES ('1028', 'JFSE-JFSE - Justica Federal de Sergipe', '30', 'SE', '2');
INSERT INTO tb_origens VALUES ('1029', 'JFTO-JFTO - Justica Federal de Tocantins', '37', 'TO', '2');
INSERT INTO tb_origens VALUES ('1030', 'JFAC-JFAC - Justica Federal do Acre', '5', 'AC', '2');
INSERT INTO tb_origens VALUES ('1031', 'JFAP-JFAP - Justica Federal do Amapa', '8', 'AP', '2');
INSERT INTO tb_origens VALUES ('1032', 'JFAM-JFAM - Justica Federal do Amazonas', '7', 'AM', '2');
INSERT INTO tb_origens VALUES ('1033', 'JFCE-JFCE - Justica Federal do Ceara', '10', 'CE', '2');
INSERT INTO tb_origens VALUES ('1035', 'JFES-JFES - Justica Federal do Espirito Santo', '245', 'ES', '2');
INSERT INTO tb_origens VALUES ('1036', 'JFMA-JFMA - Justica Federal do Maranhao', '13', 'MA', '2');
INSERT INTO tb_origens VALUES ('1038', 'JFMS-JFMS - Justica Federal do Mato Grosso do Sul', '15', 'MS', '2');
INSERT INTO tb_origens VALUES ('1039', 'JFPA-JFPA - Justica Federal do Para', '19', 'PA', '2');
INSERT INTO tb_origens VALUES ('1040', 'JFPR-JFPR - Justica Federal do Parana', '23', 'PR', '2');
INSERT INTO tb_origens VALUES ('1041', 'JFPI-JFPI - Justica Federal do Piaui', '22', 'PI', '2');
INSERT INTO tb_origens VALUES ('1042', 'JFRJ-JFRJ - Justica Federal do Rio de Janeiro', '246', 'RJ', '2');
INSERT INTO tb_origens VALUES ('1043', 'JFRN-JFRN - Justica Federal do Rio Grande do Norte', '25', 'RN', '2');
INSERT INTO tb_origens VALUES ('1044', 'JFRS-JFRS - Justica Federal do Rio Grande do Sul', '150', 'RS', '2');
INSERT INTO tb_origens VALUES ('1048', 'Central Registradores de Imoveis', '429', 'TS', '2');
INSERT INTO tb_origens VALUES ('1049', 'TRT11RR - Tribunal Regional do Trabalho da 11ª Região', '138', 'RR', '2');
INSERT INTO tb_origens VALUES ('1050', 'TRT10TO - Tribunal Regional do Trabalho da 10ª Região', '144', 'TO', '2');
INSERT INTO tb_origens VALUES ('1051', 'TRT08-PA - Tribunal Regional do Trabalho da 8ª Regiao', '130', 'PA', '2');
INSERT INTO tb_origens VALUES ('1052', 'CRMES - Conselho Regional de Medicina do Espírito Santo', '0', 'ES', '0');
INSERT INTO tb_origens VALUES ('1053', 'TJMRS - Tribunal Militar do Estado do Rio Grande do Sul', '0', 'RS', '0');
INSERT INTO tb_origens VALUES ('1054', 'COR - Corregedoria', '123', 'TS', '0');
INSERT INTO tb_origens VALUES ('1055', 'MINFRA - Ministério da Infraestrutura', '468', 'ZC', '0');
INSERT INTO tb_origens VALUES ('1056', 'ME - Ministério da Economia', '469', 'ZD', '0');
INSERT INTO tb_origens VALUES ('1057', 'TERRACAP - Companhia Imobiliária de Brasília', '0', 'DF', '0');
INSERT INTO tb_origens VALUES ('1058', 'ANM - Agência Nacional de Mineração', '0', '', '0');
INSERT INTO tb_origens VALUES ('1059', 'TRF6 - Tribunal Regional Federal da 6ª Região', '0', 'TS', '2');

CREATE TABLE `tb_paises` (
  `id_pais` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_pais`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_parceiro_principal_advogados` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_partes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `polo` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_polo` (`polo`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=latin1;
INSERT INTO tb_partes VALUES ('1', 'Autor', 'ativo');
INSERT INTO tb_partes VALUES ('2', 'Reclamada', 'passivo');
INSERT INTO tb_partes VALUES ('3', 'Reclamante', 'ativo');
INSERT INTO tb_partes VALUES ('4', 'Terceiro', '');
INSERT INTO tb_partes VALUES ('5', 'Requerente', 'ativo');
INSERT INTO tb_partes VALUES ('6', 'Requerido', 'passivo');
INSERT INTO tb_partes VALUES ('7', 'Reu', 'passivo');
INSERT INTO tb_partes VALUES ('8', 'Contador', '');
INSERT INTO tb_partes VALUES ('9', 'Denunciado da lide', '');
INSERT INTO tb_partes VALUES ('10', 'Interessado', '');
INSERT INTO tb_partes VALUES ('11', 'Juiz', '');
INSERT INTO tb_partes VALUES ('12', 'Nomeado a autoria', 'ativo');
INSERT INTO tb_partes VALUES ('13', 'Opositor', '');
INSERT INTO tb_partes VALUES ('14', 'Perito', '');
INSERT INTO tb_partes VALUES ('15', 'Preposto', 'passivo');
INSERT INTO tb_partes VALUES ('16', 'Relator', 'ativo');
INSERT INTO tb_partes VALUES ('17', 'Subestabelecido', '');
INSERT INTO tb_partes VALUES ('18', 'Testemunha', '');
INSERT INTO tb_partes VALUES ('19', 'Advogado contrario', '');
INSERT INTO tb_partes VALUES ('20', 'Paciente', 'ativo');
INSERT INTO tb_partes VALUES ('21', 'Autoridade coatora', '');
INSERT INTO tb_partes VALUES ('22', 'Impetrante', 'ativo');
INSERT INTO tb_partes VALUES ('23', 'Impetrado', 'passivo');
INSERT INTO tb_partes VALUES ('24', 'Agravante', 'ativo');
INSERT INTO tb_partes VALUES ('25', 'Agravado', 'passivo');
INSERT INTO tb_partes VALUES ('26', 'Embargante', 'ativo');
INSERT INTO tb_partes VALUES ('27', 'Embargado', 'passivo');
INSERT INTO tb_partes VALUES ('28', 'Exequente', 'ativo');
INSERT INTO tb_partes VALUES ('29', 'Executado', 'passivo');
INSERT INTO tb_partes VALUES ('30', 'Recorrente', 'ativo');
INSERT INTO tb_partes VALUES ('31', 'Recorrido', 'passivo');
INSERT INTO tb_partes VALUES ('32', 'Excipiente', 'ativo');
INSERT INTO tb_partes VALUES ('33', 'Excepto', 'passivo');
INSERT INTO tb_partes VALUES ('34', 'Deprecante', 'ativo');
INSERT INTO tb_partes VALUES ('35', 'Deprecado', 'passivo');
INSERT INTO tb_partes VALUES ('36', 'Inventariante', 'ativo');
INSERT INTO tb_partes VALUES ('37', 'Inventariado', 'passivo');
INSERT INTO tb_partes VALUES ('38', 'Indiciado', 'passivo');
INSERT INTO tb_partes VALUES ('39', 'Vitima', 'ativo');
INSERT INTO tb_partes VALUES ('40', 'Advogado que recebe intimacao', '');
INSERT INTO tb_partes VALUES ('41', 'Responsavel Adicional', '');
INSERT INTO tb_partes VALUES ('42', 'Consignante', 'ativo');
INSERT INTO tb_partes VALUES ('43', 'Consignatario', 'passivo');
INSERT INTO tb_partes VALUES ('44', 'Denunciante', 'ativo');
INSERT INTO tb_partes VALUES ('45', 'Denunciado', 'passivo');
INSERT INTO tb_partes VALUES ('46', 'Impugnante', 'ativo');
INSERT INTO tb_partes VALUES ('47', 'Impugnado', 'passivo');
INSERT INTO tb_partes VALUES ('48', 'Representante', 'ativo');
INSERT INTO tb_partes VALUES ('49', 'Representado', 'passivo');
INSERT INTO tb_partes VALUES ('50', 'Advogado Adicional', '');
INSERT INTO tb_partes VALUES ('51', 'Contribuinte', 'ativo');
INSERT INTO tb_partes VALUES ('52', 'Defendente', 'ativo');
INSERT INTO tb_partes VALUES ('53', 'Autuado', 'passivo');
INSERT INTO tb_partes VALUES ('54', 'Notificado', 'passivo');
INSERT INTO tb_partes VALUES ('55', 'Investigada', 'passivo');
INSERT INTO tb_partes VALUES ('56', 'Sentenciado', 'passivo');
INSERT INTO tb_partes VALUES ('57', 'Investigado', 'passivo');
INSERT INTO tb_partes VALUES ('58', 'Suspeito', 'passivo');
INSERT INTO tb_partes VALUES ('59', 'Chamado ao processo', '');
INSERT INTO tb_partes VALUES ('60', 'Promovido', 'passivo');
INSERT INTO tb_partes VALUES ('61', 'Notificante', 'ativo');
INSERT INTO tb_partes VALUES ('62', 'Apelado', 'passivo');
INSERT INTO tb_partes VALUES ('63', 'Apelante', 'ativo');
INSERT INTO tb_partes VALUES ('64', 'Suscitante', 'ativo');
INSERT INTO tb_partes VALUES ('65', 'Suscitado', 'passivo');
INSERT INTO tb_partes VALUES ('66', 'Credor', '');
INSERT INTO tb_partes VALUES ('67', 'Flagranteado', 'passivo');
INSERT INTO tb_partes VALUES ('68', 'Litisconsorte', '');
INSERT INTO tb_partes VALUES ('69', 'Fiel depositário', '');
INSERT INTO tb_partes VALUES ('71', 'Oficial de justiça', '');
INSERT INTO tb_partes VALUES ('72', 'Outro', '');
INSERT INTO tb_partes VALUES ('73', 'Herdeiro', '');
INSERT INTO tb_partes VALUES ('74', 'Promovente', 'ativo');
INSERT INTO tb_partes VALUES ('75', 'Avalista', '');
INSERT INTO tb_partes VALUES ('76', 'Noticiante', '');
INSERT INTO tb_partes VALUES ('77', 'Devedor', '');
INSERT INTO tb_partes VALUES ('78', 'Associado', '');
INSERT INTO tb_partes VALUES ('79', 'Subsidiario', 'passivo');
INSERT INTO tb_partes VALUES ('80', 'Consulente', '');
INSERT INTO tb_partes VALUES ('81', 'Desembargador', '');
INSERT INTO tb_partes VALUES ('82', 'Correspondente', '');
INSERT INTO tb_partes VALUES ('83', 'Reconvinte', 'passivo');
INSERT INTO tb_partes VALUES ('84', 'Reconvido', 'ativo');
INSERT INTO tb_partes VALUES ('85', 'Titular', '');
INSERT INTO tb_partes VALUES ('86', 'Dependente', '');

CREATE TABLE `tb_pessoas_advogados` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'chave primaria',
  `fisica_juridica` varchar(20) NOT NULL,
  `tipo` varchar(200) NOT NULL,
  `nome` varchar(255) NOT NULL COMMENT 'nome/ razÃ£o social',
  `apelido` varchar(80) NOT NULL COMMENT 'apelido/ fantasia',
  `website` varchar(200) NOT NULL,
  `cpf` varchar(30) NOT NULL COMMENT 'cpf / cnpj',
  `rg` varchar(30) NOT NULL COMMENT 'rg / ie',
  `cnpj` varchar(20) NOT NULL,
  `endereco` varchar(200) NOT NULL COMMENT 'endereÃ§o',
  `numero` int(11) NOT NULL DEFAULT '0' COMMENT 'nÃºmero da casa',
  `complemento` varchar(50) NOT NULL COMMENT 'complemento',
  `fiscal` varchar(10) NOT NULL,
  `bairro` varchar(100) NOT NULL COMMENT 'bairro',
  `id_cidade` varchar(100) NOT NULL COMMENT 'cidade',
  `cep` varchar(20) NOT NULL COMMENT 'cep',
  `estado` varchar(2) NOT NULL COMMENT 'estado',
  `observacoes` longtext NOT NULL,
  `telefone` varchar(40) NOT NULL COMMENT 'telefone',
  `telefone2` varchar(40) NOT NULL,
  `celular` varchar(40) NOT NULL COMMENT 'celular',
  `celular2` varchar(40) NOT NULL,
  `status` varchar(20) NOT NULL COMMENT 'status ( ativo, bloqueado, devedor)',
  `contato` varchar(255) NOT NULL COMMENT 'ramal',
  `pessoas_vinculada` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL COMMENT 'email',
  `email2` varchar(255) NOT NULL DEFAULT '',
  `profissao` varchar(200) NOT NULL COMMENT 'profissao',
  `data_cadastro` date NOT NULL COMMENT 'data do cadastro',
  `fiscal_naofiscal` varchar(30) NOT NULL COMMENT 'banco',
  `tipo_pessoa` varchar(200) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `estado_civil` varchar(20) NOT NULL,
  `nacionalidade` varchar(200) NOT NULL,
  `aniversario` date NOT NULL,
  `rg_orgao` varchar(30) NOT NULL,
  `nis` varchar(30) NOT NULL,
  `pis` varchar(30) NOT NULL,
  `ctps` varchar(30) NOT NULL,
  `nome_mae` varchar(200) DEFAULT NULL,
  `nome_pai` varchar(200) NOT NULL,
  `genero` varchar(20) NOT NULL,
  `grupo` int(11) NOT NULL,
  `user_cadastro` int(11) NOT NULL,
  `verifica_nova_pessoa` varchar(10) NOT NULL,
  `id_migracao` int(11) NOT NULL DEFAULT '0',
  `isento_impostos` int(2) NOT NULL DEFAULT '0',
  `pais` varchar(50) DEFAULT NULL,
  `texto_migracao` varchar(255) DEFAULT NULL,
  `cnh` varchar(45) DEFAULT NULL,
  `inscricao_estadual` varchar(45) DEFAULT NULL,
  `inscricao_municipal` varchar(45) DEFAULT NULL,
  `retencao_iss` int(1) NOT NULL DEFAULT '0',
  `cod_cidade` int(11) DEFAULT NULL,
  `retencao_irrf` int(11) DEFAULT '0',
  `retencao_pis` int(11) DEFAULT NULL,
  `retencao_confins` int(11) DEFAULT NULL,
  `retencao_csll` int(11) DEFAULT NULL,
  `id_asaas` varchar(255) DEFAULT NULL,
  `contato_principal` int(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_pess_empresa` (`id_empresa`),
  KEY `idx_migracao` (`id_migracao`)
) ENGINE=InnoDB AUTO_INCREMENT=675983329 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_pessoas_vinculadas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dependente` int(11) NOT NULL,
  `titular` int(11) NOT NULL,
  `vinculo` varchar(10) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_id_empresa` (`id_empresa`),
  KEY `index_id_empresa_titular` (`titular`,`id_empresa`),
  KEY `index_id_empresa_dependete` (`dependente`,`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=23551 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_planejamento_advogados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `missao` text NOT NULL,
  `visao` text NOT NULL,
  `data_prevista` date NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_empresa` (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_plano_acao_advogados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` text NOT NULL,
  `data_inicio` date NOT NULL,
  `data_fim` date NOT NULL,
  `responsavel1` int(11) NOT NULL,
  `responsavel2` int(11) NOT NULL,
  `descricao_detalhada` text NOT NULL,
  `meta` int(11) NOT NULL,
  `valor_disponivel` float NOT NULL,
  `status` varchar(30) NOT NULL,
  `desempenho` int(11) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_empresa` (`id_empresa`),
  KEY `idx_responsavel1` (`responsavel1`),
  KEY `idx_responsavel2` (`responsavel2`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_procedimento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `descricao` blob NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_empresa` (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=375 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_processo_cnj_push` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datacriacao` date DEFAULT NULL,
  `id_processo` int(11) NOT NULL,
  `id_estado` int(11) NOT NULL,
  `nome_estado` varchar(100) DEFAULT NULL,
  `tribunal` varchar(200) DEFAULT NULL,
  `assuntos` varchar(255) DEFAULT NULL,
  `classes` varchar(255) NOT NULL,
  `partesAtiva` varchar(255) DEFAULT 'NULL',
  `partesPassiva` varchar(255) NOT NULL,
  `outrasPartes` varchar(255) NOT NULL,
  `numero_processo` varchar(100) DEFAULT 'NULL',
  `ultima_data` date NOT NULL,
  `ultimo_andamento` longtext NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28342 DEFAULT CHARSET=utf8;

CREATE TABLE `tb_processo_grupos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_processo` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `tipo` varchar(60) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `id_modulo` int(11) NOT NULL DEFAULT '3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68865 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_processo_pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_pedido` int(11) NOT NULL,
  `valor_pedido` double NOT NULL,
  `risco` varchar(20) NOT NULL,
  `valor_provisionado` double NOT NULL,
  `observacoes` longtext,
  `id_processo` int(11) NOT NULL,
  `data_cadastro` date NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `valor_possivel` double NOT NULL,
  `data_inicio_correcao_monetaria` date DEFAULT '0000-00-00',
  `data_fim_correcao_monetaria` date DEFAULT '0000-00-00',
  `data_inicio_base_juros` date DEFAULT '0000-00-00',
  `data_fim_base_juros` date DEFAULT '0000-00-00',
  `indice_ano_juros` double NOT NULL,
  `indice_mes_juros` double NOT NULL,
  `status_pedido` varchar(100) NOT NULL,
  `base_juros` int(2) NOT NULL,
  `indice_correcao_monetaria` int(2) NOT NULL,
  `porc_multa` double NOT NULL DEFAULT '0',
  `porc_hono_sucum` double NOT NULL DEFAULT '0',
  `porc_multa_sentenc` double NOT NULL DEFAULT '0',
  `porc_hono_sentenc` double NOT NULL DEFAULT '0',
  `valor_pedido_atualizado` double NOT NULL DEFAULT '0',
  `valor_provisionado_atualizado` double NOT NULL DEFAULT '0',
  `valor_possivel_atualizado` double NOT NULL DEFAULT '0',
  `id_migracao` int(11) DEFAULT NULL,
  `texto_migracao` varchar(255) DEFAULT NULL,
  `valor_sentenca` double DEFAULT NULL,
  `valor_provisionado_sentenca` double DEFAULT NULL,
  `valor_possivel_sentenca` double DEFAULT NULL,
  `valor_recurso` double DEFAULT NULL,
  `valor_provisionado_recurso` double DEFAULT NULL,
  `valor_possivel_recurso` double DEFAULT NULL,
  `valor_execucao` double DEFAULT NULL,
  `valor_provisionado_execucao` double DEFAULT NULL,
  `valor_possivel_execucao` double DEFAULT NULL,
  `data_registro_pedido` date DEFAULT NULL,
  `data_registro_sentenca` date DEFAULT NULL,
  `data_registro_recurso` date DEFAULT NULL,
  `data_registro_execucao` date DEFAULT NULL,
  `valor_sentenca_atualizado` double DEFAULT NULL,
  `valor_recurso_atualizado` double DEFAULT NULL,
  `valor_execucao_atualizado` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_proc_ped_empresa` (`id_empresa`),
  KEY `idx_proc_ped_processo` (`id_processo`)
) ENGINE=InnoDB AUTO_INCREMENT=299593 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_processo_push` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `datacriacao` date DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `id_processo` int(11) DEFAULT NULL,
  `id_incidente` int(11) NOT NULL DEFAULT '0',
  `id_advogado` int(11) NOT NULL,
  `detalhes` varchar(250) DEFAULT NULL,
  `mensagem` varchar(250) DEFAULT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `banco` varchar(100) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `numero_processo` varchar(100) DEFAULT NULL,
  `tribunal` varchar(100) NOT NULL,
  `sistema` varchar(100) NOT NULL,
  `instancia` int(1) NOT NULL,
  `uf` varchar(2) NOT NULL,
  `codEscritorio` int(11) NOT NULL,
  `ultima_data` date DEFAULT NULL,
  `dataDeletado` date DEFAULT NULL,
  `origem` int(1) NOT NULL COMMENT '1 = v3, 2 = easyjur, 3 = v2',
  `push_documentos` int(11) DEFAULT '1',
  `notificado` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`codigo`),
  KEY `idx_push_empresa` (`id_empresa`),
  KEY `idx_push_cod_processo` (`id`),
  KEY `idx_push_banco` (`banco`),
  KEY `idx_processo` (`id_processo`),
  KEY `idx_incidente` (`id_incidente`),
  KEY `idx_advogado` (`id_advogado`),
  KEY `idx_origem` (`origem`)
) ENGINE=InnoDB AUTO_INCREMENT=498276 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_processo_push_agrupadores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codAgrupador` int(11) NOT NULL,
  `codProcesso` int(11) NOT NULL,
  `dataCadastro` varchar(50) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `posicao` int(11) NOT NULL,
  `codEscritorio` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=563272 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_processo_push_dependencia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codDependencia` int(11) NOT NULL,
  `codProcesso` int(11) NOT NULL,
  `numProcesso` varchar(50) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `instancia` int(2) NOT NULL,
  `codEscritorio` int(11) NOT NULL,
  `id_processo` int(11) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59656 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_processo_push_easyjur` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `datacriacao` date NOT NULL,
  `id_processo` int(11) NOT NULL,
  `id_incidente` int(11) NOT NULL,
  `id_advogado` int(11) NOT NULL,
  `tribunal` varchar(100) NOT NULL,
  `sistema` varchar(100) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `banco` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `numero_processo` varchar(100) NOT NULL,
  `instancia` int(1) NOT NULL,
  `uf` char(2) NOT NULL,
  `ultima_data` date NOT NULL,
  `dataDeletado` date NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=21749 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_processo_push_force` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `datacriacao` date DEFAULT NULL,
  `id_processo` int(11) DEFAULT NULL,
  `id_incidente` int(11) NOT NULL,
  `id_advogado` int(11) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `banco` varchar(100) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `numero_processo` varchar(100) DEFAULT NULL,
  `instancia` int(1) NOT NULL,
  `uf` varchar(2) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=413778 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_processos` (
  `id_processo` int(11) NOT NULL AUTO_INCREMENT,
  `rito` varchar(30) NOT NULL,
  `id_advogado` varchar(255) NOT NULL,
  `id_cliente` varchar(200) DEFAULT NULL,
  `nome_cliente` varchar(200) DEFAULT NULL,
  `cpf_cliente` varchar(25) DEFAULT NULL,
  `senha_inss` varchar(25) DEFAULT NULL,
  `id_contrario` varchar(255) NOT NULL,
  `nome_contrario` varchar(255) NOT NULL,
  `id_juizo` int(11) NOT NULL,
  `numero` varchar(40) NOT NULL,
  `origem` int(11) NOT NULL,
  `comarca` varchar(255) NOT NULL,
  `uf` varchar(2) NOT NULL,
  `tipo_vara` varchar(100) NOT NULL,
  `vara` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `representante` varchar(255) NOT NULL COMMENT 'Assunto',
  `vinculo` varchar(50) NOT NULL,
  `titulo_acao` varchar(255) NOT NULL,
  `valor_causa` double NOT NULL,
  `pasta` int(11) NOT NULL,
  `arquivo_morto` varchar(100) NOT NULL,
  `outro_numero` varchar(100) NOT NULL,
  `instancia` varchar(200) NOT NULL,
  `tipo_processo` varchar(200) NOT NULL,
  `valor_sentenca` double NOT NULL,
  `valor_provisionado` double NOT NULL,
  `push_andamentos` int(11) NOT NULL,
  `push_andamentos_status` varchar(45) DEFAULT NULL,
  `push_capa_status` varchar(45) DEFAULT NULL,
  `data_distribuicao` date NOT NULL,
  `data_cadastro` date NOT NULL,
  `data_encerramento` date NOT NULL,
  `data_sentenca` date NOT NULL,
  `observacoes` longtext NOT NULL,
  `texto_migracao` longtext,
  `status` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `processos_vinculados` text NOT NULL,
  `risco` varchar(30) NOT NULL,
  `resultado` varchar(30) NOT NULL,
  `grupo` int(11) NOT NULL,
  `capturado_automaticamente` varchar(3) NOT NULL DEFAULT 'NAO',
  `ultimo_andamento` longtext NOT NULL,
  `segredo_justica` int(11) NOT NULL,
  `contrato` int(11) NOT NULL DEFAULT '0',
  `verifica_novo_processo` varchar(10) NOT NULL,
  `valor_possivel` double NOT NULL,
  `id_migracao` int(11) DEFAULT NULL,
  `id_resultado_processo` int(11) DEFAULT NULL,
  `classe` int(11) NOT NULL DEFAULT '0',
  `indice_correcao_processo` int(2) NOT NULL,
  `data_atualizacao` date DEFAULT '0000-00-00',
  `causa_atualizada` double NOT NULL DEFAULT '0',
  `possivel_atualizado` double NOT NULL DEFAULT '0',
  `provisionamento_atualizado` double NOT NULL DEFAULT '0',
  `termo_id` int(11) DEFAULT '0',
  `push_documentos` int(11) DEFAULT '1',
  PRIMARY KEY (`id_processo`),
  KEY `idx_proc_empresa` (`id_empresa`),
  KEY `idx_proc_adv` (`id_advogado`),
  KEY `idx_cliente` (`id_cliente`),
  KEY `idx_contrario` (`id_contrario`),
  KEY `idx_juizo` (`id_juizo`),
  KEY `idx_origem` (`origem`),
  KEY `idx_pasta` (`pasta`),
  KEY `idx_status` (`status`),
  KEY `idx_area` (`area`),
  KEY `idx_contrato` (`contrato`),
  KEY `idx_migracao` (`id_migracao`),
  KEY `idx_resultado` (`id_resultado_processo`),
  KEY `idx_indice_correcao` (`indice_correcao_processo`)
) ENGINE=InnoDB AUTO_INCREMENT=7922562 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_processos_areas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_processos_classe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(225) DEFAULT NULL,
  `tipo` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_processos_financeiro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_processo` int(11) NOT NULL,
  `tipo_pessoa` int(11) NOT NULL,
  `id_pessoa` int(11) NOT NULL,
  `tipo` varchar(100) NOT NULL,
  `subtipo` varchar(100) NOT NULL,
  `valor` double NOT NULL,
  `detalhes` longtext NOT NULL,
  `data` date NOT NULL,
  `parcelas` varchar(8) NOT NULL,
  `status` varchar(1) NOT NULL,
  `data_vencimento` date NOT NULL,
  `data_pagamento` date NOT NULL,
  `qualificacao_deposito` varchar(200) NOT NULL,
  `qualificacao_sentenca` varchar(200) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `id_parcela` int(11) NOT NULL,
  `id_migracao` int(11) DEFAULT NULL,
  `texto_migracao` varchar(255) DEFAULT NULL,
  `data_sentenca_acordo` date DEFAULT NULL,
  `verifica_novo` char(3) NOT NULL DEFAULT 'nao',
  PRIMARY KEY (`id`),
  KEY `idx_proc_fin_empresa` (`id_empresa`),
  KEY `idx_proc_fin_processo` (`id_processo`),
  KEY `idx_pessoa` (`id_pessoa`),
  KEY `idx_parcela` (`id_parcela`),
  KEY `idx_migracao` (`id_migracao`)
) ENGINE=InnoDB AUTO_INCREMENT=228806 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_processos_incidentes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_processo` varchar(100) NOT NULL,
  `adv_responsavel` int(11) DEFAULT NULL,
  `juiz_responsavel` int(11) DEFAULT NULL,
  `tipo` int(11) NOT NULL,
  `tribunal` varchar(50) NOT NULL,
  `numero` varchar(255) NOT NULL,
  `outro_numero` varchar(100) DEFAULT NULL,
  `comarca` varchar(255) NOT NULL,
  `uf` varchar(2) NOT NULL,
  `instancia` varchar(50) NOT NULL,
  `tipo_vara` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `n_vara` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `push_andamentos` int(11) NOT NULL,
  `push_andamentos_status` varchar(45) DEFAULT NULL,
  `push_capa_status` varchar(45) DEFAULT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `data` date NOT NULL,
  `indice_correcao` int(11) DEFAULT NULL,
  `data_atualizacao` date DEFAULT NULL,
  `data_distribuicao` date DEFAULT NULL,
  `data_encerramento` date DEFAULT NULL,
  `detalhes_pasta` varchar(255) DEFAULT NULL,
  `posicao_cliente` varchar(100) NOT NULL,
  `detalhes_processo` longtext NOT NULL,
  `valor_causa` double DEFAULT NULL,
  `valor_causa_atualizado` double DEFAULT NULL,
  `valor_provisao` double DEFAULT NULL,
  `valor_provisao_atualizado` double DEFAULT NULL,
  `id_migracao` int(11) DEFAULT NULL,
  `texto_migracao` varchar(255) DEFAULT NULL,
  `fase_atual` varchar(80) NOT NULL DEFAULT '''''',
  `resultado` varchar(80) NOT NULL DEFAULT '''''',
  `classe` int(11) NOT NULL DEFAULT '0',
  `termo_id` int(11) DEFAULT '0',
  `push_documentos` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_proc_inc_empresa` (`id_empresa`),
  KEY `idx_proc_inc_processo` (`id_processo`),
  KEY `idx_migracao` (`id_migracao`),
  KEY `idx_advogado` (`adv_responsavel`),
  KEY `idx_juiz` (`juiz_responsavel`),
  KEY `idx_tipo` (`tipo`),
  KEY `idx_status` (`status`),
  KEY `idx_classe` (`classe`)
) ENGINE=InnoDB AUTO_INCREMENT=906138 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_processos_partes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_processo` int(11) NOT NULL,
  `id_pessoa` int(11) NOT NULL,
  `nome_pessoa` varchar(255) NOT NULL,
  `classificacao_parte` int(11) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `tipo_pessoa` int(11) NOT NULL,
  `id_migracao` int(11) DEFAULT NULL,
  `texto_migracao` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_proc_part_empresa` (`id_empresa`),
  KEY `idx_proc_part_processo` (`id_processo`),
  KEY `idx_pessoa` (`id_pessoa`),
  KEY `idx_classificacao` (`classificacao_parte`),
  KEY `idx_tipo` (`tipo_pessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=9362786 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_processos_push_termo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_cadastro` date NOT NULL,
  `oab` varchar(10) NOT NULL,
  `uf_busca` varchar(2) NOT NULL,
  `cnpj` varchar(30) DEFAULT NULL,
  `nome_pesquisa` varchar(100) DEFAULT NULL,
  `status` int(1) NOT NULL,
  `cadastrado` int(11) NOT NULL,
  `retorno_busca` int(11) NOT NULL,
  `total_proc_contrato` int(11) NOT NULL DEFAULT '10',
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4074 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_processos_tipo_acao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `id_migracao` int(11) NOT NULL DEFAULT '0',
  `texto_migracao` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99579 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_processos_varas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_processos_vinculados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` varchar(200) NOT NULL,
  `id_vinculado` int(11) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `id_processo` int(11) NOT NULL,
  `descricao` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_proc_vinc_empresa` (`id_empresa`),
  KEY `idx_proc_vinc_processo` (`id_processo`)
) ENGINE=InnoDB AUTO_INCREMENT=183064 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_profissoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_proposta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` varchar(100) NOT NULL,
  `responsavel` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `titulo` varchar(100) NOT NULL,
  `texto1` longtext NOT NULL,
  `texto2` longtext NOT NULL,
  `titulo_etapa1` varchar(200) NOT NULL,
  `titulo_etapa2` varchar(200) NOT NULL,
  `titulo_etapa3` varchar(200) NOT NULL,
  `texto_etapa1` varchar(700) NOT NULL,
  `texto_etapa2` varchar(700) NOT NULL,
  `texto_etapa3` varchar(700) NOT NULL,
  `link_pagamento` longtext NOT NULL,
  `titulo_investimento` varchar(50) NOT NULL,
  `valor_investimento` double NOT NULL,
  `texto_investimento` varchar(1000) NOT NULL,
  `data_cronograma1` date NOT NULL,
  `data_cronograma2` date NOT NULL,
  `data_cronograma3` date NOT NULL,
  `id_oport` int(11) NOT NULL,
  `modelo_proposta` int(11) NOT NULL,
  `id_contrato` int(11) NOT NULL,
  `data_cadastro` date NOT NULL,
  `geolocalizacao` varchar(255) NOT NULL DEFAULT '',
  `desconto` float NOT NULL,
  `total_pos_desconto` double NOT NULL,
  `verifica_nova_proposta` varchar(10) NOT NULL,
  `parcelas` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_prop_empresa` (`id_empresa`),
  KEY `idx_prop_opt` (`id_oport`),
  KEY `idx_cliente` (`id_cliente`),
  KEY `idx_responsavel` (`responsavel`)
) ENGINE=InnoDB AUTO_INCREMENT=13881 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_publicacoes_diarios` (
  `id` int(11) DEFAULT NULL,
  `UF` varchar(50) DEFAULT NULL,
  `siglaDiario` varchar(50) DEFAULT NULL,
  `descricaoDiario` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `tb_publicacoes_diarios_old` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricaoDiario` varchar(200) NOT NULL,
  `siglaDiario` varchar(30) NOT NULL,
  `UF` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=396 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_publicacoes_premium` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codPublicacao` varchar(200) NOT NULL,
  `hashPublicaco` varchar(50) DEFAULT NULL,
  `codEscritorio` int(11) DEFAULT NULL,
  `dataPublicacao` date DEFAULT NULL,
  `dataDisponibilizacao` date DEFAULT NULL,
  `dataCadastro` date DEFAULT NULL,
  `orgao` varchar(500) DEFAULT NULL,
  `comarca` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `varaDescricao` varchar(500) DEFAULT NULL,
  `nomeDiario` varchar(500) DEFAULT NULL,
  `siglaDiario` varchar(500) DEFAULT NULL,
  `esferaDiario` varchar(500) DEFAULT NULL,
  `numEdicao` varchar(500) DEFAULT NULL,
  `numProcesso` varchar(500) DEFAULT NULL,
  `conteudoPublicacao` longtext,
  `publicacao_coletada` smallint(6) DEFAULT NULL,
  `publicacao_vinculada` smallint(6) DEFAULT NULL,
  `idNome` varchar(500) DEFAULT NULL,
  `nomePesquisado` varchar(500) DEFAULT NULL,
  `termoPesquisado` varchar(500) DEFAULT NULL,
  `oab` varchar(500) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  `PerfilContratante` varchar(500) DEFAULT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  `prazo_cadastrado` int(1) NOT NULL,
  `data_leitura` date NOT NULL,
  `tipo_prazo` varchar(45) DEFAULT '',
  `inteiroTeor2` varchar(255) DEFAULT '',
  `inteiroTeor` longtext,
  `id_migracao` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_pub_empresa` (`id_empresa`),
  KEY `idx_pub_banco` (`PerfilContratante`),
  KEY `idx_pub_numProcesso` (`numProcesso`),
  KEY `idx_pub_status` (`status`),
  KEY `idx_pub_oab` (`oab`),
  KEY `idx_pub_codEscritorio` (`codEscritorio`),
  KEY `idx_pub_idNome` (`idNome`),
  KEY `idx_pub_uf` (`uf`),
  KEY `idx_pub_tipo_prazo` (`tipo_prazo`),
  KEY `idx_pub_codPublicacao` (`codPublicacao`),
  KEY `idx_pub_dataPublicacao` (`dataPublicacao`),
  KEY `idx_pub_dataCadastro` (`dataCadastro`),
  KEY `idx_pub_dataDisponibilizacao` (`dataDisponibilizacao`)
) ENGINE=InnoDB AUTO_INCREMENT=19156508 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_publicacoes_termo_bloqueio` (
  `id` int(11) NOT NULL,
  `termo` varchar(255) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `tb_receitas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) NOT NULL,
  `id_cliente` varchar(255) NOT NULL,
  `area` int(11) NOT NULL,
  `id_processo` varchar(255) NOT NULL,
  `id_advogado` int(11) NOT NULL,
  `valor` double NOT NULL,
  `juros` double NOT NULL,
  `valor_padrao` double NOT NULL,
  `tipo_valor` varchar(1) NOT NULL,
  `data_cadastro` date NOT NULL DEFAULT '0000-00-00',
  `data_vencimento` date NOT NULL,
  `data_pagamento` date NOT NULL,
  `data_competencia` date NOT NULL,
  `status` varchar(1) NOT NULL,
  `observacao` text NOT NULL,
  `caixa` varchar(1) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `id_banco` int(11) NOT NULL,
  `parcela` int(3) NOT NULL DEFAULT '1',
  `parcelas` int(3) NOT NULL DEFAULT '1',
  `classificacao` varchar(30) NOT NULL,
  `cod_boleto` varchar(255) NOT NULL,
  `id_contrato` int(11) NOT NULL,
  `id_aditivo` int(1) NOT NULL DEFAULT '0',
  `tipo_receita` int(11) NOT NULL,
  `tipo_pg` varchar(10) NOT NULL,
  `aprovado` varchar(3) DEFAULT NULL,
  `id_projeto` int(11) DEFAULT '0',
  `Fk` int(11) NOT NULL,
  `id_transferencia` int(11) NOT NULL,
  `id_nota_fiscal` varchar(250) NOT NULL,
  `status_nota` varchar(50) NOT NULL,
  `nf_emitida` int(1) NOT NULL DEFAULT '0',
  `faturado` int(1) NOT NULL DEFAULT '0',
  `id_fatura` int(11) NOT NULL DEFAULT '0',
  `id_principal` int(11) NOT NULL,
  `id_migracao` int(11) NOT NULL,
  `texto_migracao` varchar(255) NOT NULL,
  `verifica_nova_receita` char(3) NOT NULL DEFAULT 'nao',
  `boleto_emitido` int(1) NOT NULL DEFAULT '0',
  `iss` float NOT NULL DEFAULT '0',
  `csll` float NOT NULL DEFAULT '0',
  `cofins` float NOT NULL DEFAULT '0',
  `inss` float NOT NULL DEFAULT '0',
  `irpj` float NOT NULL DEFAULT '0',
  `pis` float NOT NULL DEFAULT '0',
  `juros_boleto` float DEFAULT '0',
  `multa_boleto` float DEFAULT '0',
  `valor_multa_boleto` float DEFAULT '0',
  `valor_juros_boleto` float DEFAULT '0',
  `id_pagador` int(11) NOT NULL,
  `id_regra` int(11) NOT NULL DEFAULT '0',
  `iss_nota` float DEFAULT NULL,
  `csll_nota` float DEFAULT NULL,
  `cofins_nota` float DEFAULT NULL,
  `inss_nota` float DEFAULT NULL,
  `irpj_nota` float DEFAULT NULL,
  `pis_nota` float DEFAULT NULL,
  `fonte_csll` float DEFAULT '0',
  `fonte_pis` float DEFAULT '0',
  `fonte_cofins` float DEFAULT '0',
  `fonte_irpj` float DEFAULT '0',
  `cod_servico` varchar(200) DEFAULT NULL,
  `number_nf` varchar(45) DEFAULT NULL,
  `valor_liquido` double DEFAULT NULL,
  `data_credito` date DEFAULT NULL,
  `valor_origem` double DEFAULT '0',
  `valor_desconto` double DEFAULT '0',
  `timesheet` varchar(100) DEFAULT NULL,
  `valor_regra_contrato` varchar(100) DEFAULT NULL,
  `retencao` float DEFAULT NULL,
  `fatura_novo` int(11) NOT NULL DEFAULT '2',
  `id_pagamento_asaas` varchar(127) DEFAULT NULL,
  `valor_total` double DEFAULT NULL,
  `fonte_iss` float DEFAULT NULL,
  `id_asaas_transaction` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_asaas_transaction` (`id_asaas_transaction`),
  KEY `idx_rec_empresa` (`id_empresa`),
  KEY `idx_rec_processo` (`id_processo`),
  KEY `idx_rec_contrato` (`id_contrato`),
  KEY `idx_rec_banco` (`id_banco`),
  KEY `idx_rec_fk` (`Fk`),
  KEY `idx_rec_cliente` (`id_cliente`),
  KEY `idx_rec_advogado` (`id_advogado`),
  KEY `idx_rec_status` (`status`),
  KEY `idx_rec_projeto` (`id_projeto`),
  KEY `idx_rec_fatura` (`id_fatura`),
  KEY `idx_rec_principal` (`id_principal`),
  KEY `idx_rec_pagador` (`id_pagador`),
  KEY `idx_rec_regra` (`id_regra`),
  KEY `idx_rec_data_vencimento` (`data_vencimento`),
  KEY `idx_rec_data_cadastro` (`data_cadastro`),
  KEY `idx_rec_data_competencia` (`data_competencia`),
  KEY `idx_rec_data_pagamento` (`data_pagamento`)
) ENGINE=InnoDB AUTO_INCREMENT=2914601 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_receitas_centros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_receita` int(11) DEFAULT NULL,
  `id_centro` int(11) DEFAULT NULL,
  `valor_receita` double DEFAULT NULL,
  `percentual_centro` double DEFAULT NULL,
  `valor_percentual_centro` double DEFAULT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `valor_centro` float DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_rec_cnt_empresa` (`id_empresa`),
  KEY `idx_rec_cnt_receita` (`id_receita`)
) ENGINE=InnoDB AUTO_INCREMENT=18288841 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_recursos_tipos` (
  `idTipoRecurso` int(11) NOT NULL AUTO_INCREMENT,
  `TipoRecurso` varchar(50) NOT NULL,
  PRIMARY KEY (`idTipoRecurso`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_reembolso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `data_emissao` date DEFAULT NULL,
  `responsavel` int(11) DEFAULT NULL,
  `valor` float DEFAULT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `id_banco` int(11) DEFAULT NULL,
  `data_vencimento` date DEFAULT NULL,
  `data_pagamento` date DEFAULT NULL,
  `data_credito` date DEFAULT NULL,
  `observacao` longtext,
  `status` varchar(10) DEFAULT 'A',
  `valor_desconto` float DEFAULT NULL,
  `id_pagador` int(11) DEFAULT '0',
  `id_nota_fiscal` varchar(250) DEFAULT NULL,
  `status_nota` varchar(50) NOT NULL,
  `nf_emitida` int(11) NOT NULL DEFAULT '0',
  `iss_nota` float DEFAULT NULL,
  `csll_nota` float DEFAULT NULL,
  `cofins_nota` float DEFAULT NULL,
  `inss_nota` float DEFAULT NULL,
  `irpj_nota` float DEFAULT NULL,
  `pis_nota` float DEFAULT NULL,
  `cod_servico` varchar(200) DEFAULT NULL,
  `tipo_pg` varchar(45) DEFAULT '',
  `banco_destino` int(11) DEFAULT '0',
  `id_despesa` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_cliente` (`id_cliente`),
  KEY `idx_empresa` (`id_empresa`),
  KEY `idx_banco` (`id_banco`),
  KEY `idx_pagador` (`id_pagador`),
  KEY `idx_numero` (`numero`)
) ENGINE=InnoDB AUTO_INCREMENT=10076 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_relatorio` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_empresa` bigint(20) unsigned NOT NULL,
  `id_user` bigint(20) unsigned NOT NULL,
  `id_relatorio_modelo` bigint(20) unsigned NOT NULL,
  `nome_relatorio` varchar(255) NOT NULL,
  `data_cadastro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_emissao` datetime DEFAULT NULL,
  `cabecalho` varchar(255) DEFAULT NULL,
  `filtros` json DEFAULT NULL,
  `nome_arquivo` varchar(255) DEFAULT NULL,
  `status_criacao` varchar(255) NOT NULL DEFAULT 'Pendente',
  `status_detalhes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_relatorio_modelo` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_empresa` bigint(20) unsigned NOT NULL,
  `nome_modelo` varchar(255) DEFAULT NULL,
  `modulo` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `campos` json NOT NULL,
  `totalizadores` json DEFAULT NULL,
  `data_cadastro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_relatorio_send_mail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_empresa` bigint(20) unsigned NOT NULL,
  `id_relatorio` bigint(20) unsigned NOT NULL,
  `destinatarios` json NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `conteudo` text NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Pendente',
  `data_envio` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_reset_senha` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` bigint(20) unsigned NOT NULL,
  `id_empresa` bigint(20) unsigned NOT NULL,
  `bd_nome` varchar(50) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `data_criacao` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_expiracao` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=272 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_responsavel_fluxo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `responsavel` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3602 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_resultado_processo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_risco_advogados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` text NOT NULL,
  `segmento` varchar(100) NOT NULL,
  `mercado_alvo` int(11) NOT NULL,
  `riscos` text NOT NULL,
  `oportunidades` int(11) NOT NULL,
  `pontos_fortes` text NOT NULL,
  `pontos_fracos` text NOT NULL,
  `solucoes` text NOT NULL,
  `impacto` varchar(10) NOT NULL,
  `status` varchar(30) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_empresa` (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_saneamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_processo` int(11) NOT NULL,
  `numero` varchar(50) NOT NULL,
  `banco` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `partes` int(200) NOT NULL,
  `andamentos` int(200) NOT NULL,
  `id_update` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13337 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_saneamento_excluir` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_process` int(11) NOT NULL,
  `id_solucionare` int(11) NOT NULL,
  `numero` varchar(50) NOT NULL,
  `autor` varchar(250) NOT NULL,
  `reu` varchar(250) NOT NULL,
  `comarca` varchar(250) NOT NULL,
  `instancia` int(1) NOT NULL DEFAULT '1',
  `uf` varchar(2) NOT NULL DEFAULT 'MG',
  `tribunal` int(11) NOT NULL DEFAULT '119',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5069 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_saneamento_pessoas` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `id_pessoa` int(20) NOT NULL,
  `id_principal` int(20) NOT NULL,
  `nome_cliente` varchar(200) NOT NULL,
  `principal` varchar(5) NOT NULL,
  `status` char(15) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7916009 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_senioridade_usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(256) NOT NULL,
  `valor_hora` double NOT NULL,
  `id_tabela` int(11) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `id_cargo` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6189 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_status_oportunidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_status_processo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
INSERT INTO tb_status_processo VALUES ('1', 'Ativo');
INSERT INTO tb_status_processo VALUES ('3', 'Arquivado Definitivo');
INSERT INTO tb_status_processo VALUES ('4', 'Baixado');
INSERT INTO tb_status_processo VALUES ('5', 'Substabelecido');
INSERT INTO tb_status_processo VALUES ('7', 'Suspenso');

CREATE TABLE `tb_subprazo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `responsavel` varchar(250) NOT NULL,
  `id_subtipo` int(11) NOT NULL,
  `id_tipo_acompanhamento` varchar(100) NOT NULL,
  `prazo_fatal` int(11) NOT NULL,
  `conta_sabado_domingo` int(11) NOT NULL,
  `prazo_interno` int(11) NOT NULL,
  `hora_inicio` time NOT NULL,
  `descricao_subprazo` longtext NOT NULL,
  `altera_prazo` int(1) NOT NULL DEFAULT '0',
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `pontuacao` double NOT NULL DEFAULT '0',
  `calculo_prazo` varchar(1) NOT NULL DEFAULT 'P',
  `id_etapa_dependente` int(11) NOT NULL,
  `conta_feriado` int(2) DEFAULT '1',
  `id_migracao` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_subprazo_empresa` (`id_empresa`),
  KEY `idx_subprazo_subtipo` (`id_subtipo`)
) ENGINE=InnoDB AUTO_INCREMENT=77239 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_subtipo_palavras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `palavra` varchar(255) NOT NULL,
  `id_subtipo` int(11) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_empresa` (`id_empresa`),
  KEY `idx_subtipo` (`id_subtipo`)
) ENGINE=InnoDB AUTO_INCREMENT=469 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_tabela_senioridade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_empresa` (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=672 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_taxa_reajuste` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mes` varchar(7) NOT NULL,
  `taxa` double NOT NULL,
  `tipo` varchar(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_templatesdocumentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_id` varchar(20000) DEFAULT NULL,
  `id_template` varchar(500) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `tipo_documento` int(11) DEFAULT NULL,
  `assunto` int(11) DEFAULT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `grupo` int(11) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `verifica_novo_template` varchar(10) DEFAULT NULL,
  `page_format_title` varchar(200) DEFAULT NULL,
  `page_format_id` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_tb_templatesDocumentos_tipo_documento` (`tipo_documento`),
  KEY `idx_tb_templatesDocumentos_assunto` (`assunto`),
  KEY `idx_tb_templatesDocumentos_id_empresa` (`id_empresa`),
  KEY `idx_tb_templatesDocumentos_grupo` (`grupo`),
  KEY `idx_tb_templatesDocumentos_area` (`area`)
) ENGINE=InnoDB AUTO_INCREMENT=625 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_templateseasyjur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_template_ej` varchar(500) DEFAULT NULL,
  `page_id` varchar(500) DEFAULT NULL,
  `page_title` varchar(500) DEFAULT NULL,
  `thumbs_medium` varchar(500) DEFAULT NULL,
  `title_template` varchar(20000) DEFAULT NULL,
  `tag_template` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_termos_distribuicao_kurier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `termo_monitorar` varchar(100) DEFAULT NULL,
  `id_termo` varchar(255) NOT NULL,
  `parte_monitorar` smallint(6) DEFAULT NULL,
  `tipo_pesquisa` varchar(25) DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT '1',
  `tribunais` text NOT NULL,
  `id_user` int(10) unsigned NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `dh_cadastro` datetime DEFAULT CURRENT_TIMESTAMP,
  `dh_alteracao` datetime DEFAULT CURRENT_TIMESTAMP,
  `bloqueado` tinyint(1) DEFAULT '0',
  `alerta_enviado` tinyint(1) DEFAULT '0',
  `validado` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id_empresa` (`id_empresa`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `tb_termos_distribuicao_kurier_ibfk_1` FOREIGN KEY (`id_empresa`) REFERENCES `tb_escritorio_advogados` (`id`),
  CONSTRAINT `tb_termos_distribuicao_kurier_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tb_users_advogados` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=415 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_termos_processos_distribuidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_termo` varchar(255) DEFAULT NULL,
  `termo` varchar(255) DEFAULT NULL,
  `parte_monitorar` varchar(255) DEFAULT NULL,
  `tipo_pesquisa` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `tribunais` text,
  `id_empresa` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_termos_uso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL DEFAULT '0',
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `data_hora` datetime NOT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `geolocalizacao` varchar(255) DEFAULT NULL,
  `cpf` varchar(45) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `tipo_termo` int(2) DEFAULT NULL COMMENT '1 = Termo de uso, 2 = Termo de uso intimações',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19909 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_termos_usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `termo` varchar(250) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_empresa` (`id_empresa`),
  KEY `idx_user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=834 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_tipo_cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_tribunais_big_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_solucionare` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_tribunais_cnj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_tribunal` varchar(255) NOT NULL,
  `sigla_tribunal` varchar(255) NOT NULL,
  `codigo_tribunal_cnj` varchar(255) NOT NULL,
  `UF` varchar(255) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `turma_recursal` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6381 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_tribunais_push` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cod_tribunal` int(11) NOT NULL,
  `nome` varchar(250) NOT NULL,
  `sigla` char(20) NOT NULL,
  `uf` char(5) NOT NULL,
  `id_origem` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_uf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(75) DEFAULT NULL,
  `uf` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_unidade_medida` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(50) NOT NULL,
  `abreviatura` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_user_modulos_advogados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modulos` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;
INSERT INTO tb_user_modulos_advogados VALUES ('2', 'Agenda');
INSERT INTO tb_user_modulos_advogados VALUES ('3', 'Processos & Casos');
INSERT INTO tb_user_modulos_advogados VALUES ('4', 'Movimentações');
INSERT INTO tb_user_modulos_advogados VALUES ('5', 'Pessoas');
INSERT INTO tb_user_modulos_advogados VALUES ('6', 'Contratos');
INSERT INTO tb_user_modulos_advogados VALUES ('7', 'Projetos Consultivos');
INSERT INTO tb_user_modulos_advogados VALUES ('8', 'Cadastro de Documentos');
INSERT INTO tb_user_modulos_advogados VALUES ('9', 'Modelos de Documentos');
INSERT INTO tb_user_modulos_advogados VALUES ('10', 'Biblioteca Digital');
INSERT INTO tb_user_modulos_advogados VALUES ('11', 'Tabela de Honorários');
INSERT INTO tb_user_modulos_advogados VALUES ('12', 'Receita Escritório');
INSERT INTO tb_user_modulos_advogados VALUES ('13', 'Despesa Escritório');
INSERT INTO tb_user_modulos_advogados VALUES ('14', 'Despesa Escritório');
INSERT INTO tb_user_modulos_advogados VALUES ('15', 'Despesa Escritório');
INSERT INTO tb_user_modulos_advogados VALUES ('16', 'Provisionamento Financeiro');
INSERT INTO tb_user_modulos_advogados VALUES ('17', 'Fluxo de Caixa e DRE');
INSERT INTO tb_user_modulos_advogados VALUES ('18', 'Contas Bancárias');
INSERT INTO tb_user_modulos_advogados VALUES ('19', 'Receita Escritório');
INSERT INTO tb_user_modulos_advogados VALUES ('20', 'Debits e compras');
INSERT INTO tb_user_modulos_advogados VALUES ('21', 'Estoque de Suprimentos');
INSERT INTO tb_user_modulos_advogados VALUES ('22', 'Requisição de Suprimentos');
INSERT INTO tb_user_modulos_advogados VALUES ('23', 'Marketing Jurídico');
INSERT INTO tb_user_modulos_advogados VALUES ('24', 'Segmentação de Mercado');
INSERT INTO tb_user_modulos_advogados VALUES ('25', 'Novos Negócios');
INSERT INTO tb_user_modulos_advogados VALUES ('27', 'Planejamento Estratégico');
INSERT INTO tb_user_modulos_advogados VALUES ('28', 'Definição de Metas');
INSERT INTO tb_user_modulos_advogados VALUES ('29', 'Análise SWOT');
INSERT INTO tb_user_modulos_advogados VALUES ('30', 'Plano de Ação');
INSERT INTO tb_user_modulos_advogados VALUES ('31', 'Cargos e Senioridades');
INSERT INTO tb_user_modulos_advogados VALUES ('32', 'Gestão de Equipes');
INSERT INTO tb_user_modulos_advogados VALUES ('33', 'Modelo de Negócios (BMC)');
INSERT INTO tb_user_modulos_advogados VALUES ('34', 'Manual de Procedimentos');
INSERT INTO tb_user_modulos_advogados VALUES ('35', 'Informações e Segurança');
INSERT INTO tb_user_modulos_advogados VALUES ('36', 'Cadastro de Usuários');
INSERT INTO tb_user_modulos_advogados VALUES ('37', 'Desdobramentos');
INSERT INTO tb_user_modulos_advogados VALUES ('38', 'Processos Financeiro');
INSERT INTO tb_user_modulos_advogados VALUES ('39', 'Legal Analytics');
INSERT INTO tb_user_modulos_advogados VALUES ('40', 'Metas e Orçamentos Financeiros');
INSERT INTO tb_user_modulos_advogados VALUES ('41', 'Workflow');
INSERT INTO tb_user_modulos_advogados VALUES ('42', 'Modelo de Relatórios');
INSERT INTO tb_user_modulos_advogados VALUES ('43', 'Modelo de Templates');
INSERT INTO tb_user_modulos_advogados VALUES ('44', 'Cadastro de Templates');
INSERT INTO tb_user_modulos_advogados VALUES ('45', 'Intimações e Publicações');
INSERT INTO tb_user_modulos_advogados VALUES ('46', 'Andamentos');
INSERT INTO tb_user_modulos_advogados VALUES ('47', 'EasyCall');
INSERT INTO tb_user_modulos_advogados VALUES ('48', 'Admin');
INSERT INTO tb_user_modulos_advogados VALUES ('49', 'Processos Distribuídos');
INSERT INTO tb_user_modulos_advogados VALUES ('50', 'Configurações de Faturamento');
INSERT INTO tb_user_modulos_advogados VALUES ('51', 'Campos Personalizados');
INSERT INTO tb_user_modulos_advogados VALUES ('52', 'Relatorios');

CREATE TABLE `tb_users_advogados` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `telefone` varchar(50) NOT NULL COMMENT 'CPF_ADV',
  `celular` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `userlevel` tinyint(3) DEFAULT NULL,
  `status` enum('S','N') NOT NULL DEFAULT 'S',
  `numero_oab` int(6) NOT NULL,
  `uf_oab` varchar(2) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `modulos` varchar(400) NOT NULL,
  `modulos_ver` varchar(400) NOT NULL,
  `tag_pega` varchar(400) NOT NULL,
  `intCodGrupo` int(11) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `notificacoes` int(11) NOT NULL DEFAULT '1',
  `mensagens` int(11) NOT NULL DEFAULT '1',
  `msg_andamentos` int(11) NOT NULL,
  `tipoLogin` int(1) NOT NULL,
  `img` varchar(255) NOT NULL,
  `ativaWebjur` varchar(255) DEFAULT NULL,
  `concluir_pub` int(2) NOT NULL,
  `fuso_google` int(1) NOT NULL DEFAULT '3',
  `acao_massa` int(2) NOT NULL,
  `modelo_agenda` int(1) NOT NULL DEFAULT '2',
  `modelo_oportunidade` int(1) NOT NULL DEFAULT '0',
  `modelo_listagem` int(1) NOT NULL DEFAULT '1',
  `modelo_job` int(11) NOT NULL DEFAULT '0',
  `token_publicacao` varchar(256) NOT NULL,
  `id_senioridade` int(11) NOT NULL,
  `perm_age_prazo_aud` int(2) NOT NULL DEFAULT '0',
  `id_modelo_usuario` int(2) NOT NULL DEFAULT '0',
  `id_migracao` int(11) DEFAULT '0',
  `texto_migracao` varchar(255) DEFAULT NULL,
  `aprova_financeiro` int(2) NOT NULL DEFAULT '1',
  `visualiza_despesas` int(2) NOT NULL DEFAULT '0',
  `modelo_sidebar` int(1) NOT NULL DEFAULT '1',
  `id_centro_custo` int(11) NOT NULL,
  `visualiza_valor_timesheet` int(1) NOT NULL DEFAULT '0',
  `autenticacao` int(11) DEFAULT NULL,
  `cod_autenticacao` int(11) DEFAULT NULL,
  `expiracao_autenticacao` datetime DEFAULT NULL,
  `modulos_grupos` varchar(255) NOT NULL,
  `alert_permissao_grupo` int(1) NOT NULL DEFAULT '0',
  `aceite_termos_uso` int(11) NOT NULL DEFAULT '0',
  `ramal` int(11) DEFAULT NULL,
  `ramal_usuario_autenticacao` varchar(60) DEFAULT NULL,
  `visualiza_processos` int(1) DEFAULT '1',
  `visualiza_agenda` int(1) DEFAULT '1',
  `visualiza_projeto` int(1) DEFAULT '1',
  `visualiza_novos_negocios` int(1) DEFAULT '1',
  `aceite_termos_uso_intimacao` int(1) DEFAULT '0' COMMENT 'Define se o opeador aceitou os termos de uso de coleta de intimações',
  `id_contato_cx` varchar(45) DEFAULT NULL,
  `qtd_inicial_predictus` int(11) DEFAULT NULL,
  `invite` int(1) DEFAULT NULL,
  `can_make_asaas_transaction` tinyint(1) DEFAULT '0',
  `edita_data_conclusao_agenda` int(1) DEFAULT '0',
  `senha_atualizada` varchar(45) NOT NULL DEFAULT 'Nao',
  `atualizar_senha` varchar(45) NOT NULL DEFAULT 'Nao',
  PRIMARY KEY (`id`),
  KEY `idx_user_empresa` (`id_empresa`),
  KEY `idx_user_user` (`user`),
  KEY `idx_user_nome` (`nome`),
  KEY `idx_user_email` (`email`),
  KEY `idx_user_centro` (`id_centro_custo`)
) ENGINE=InnoDB AUTO_INCREMENT=346809 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_voip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_token` varchar(60) DEFAULT NULL,
  `codigo_token` varchar(250) DEFAULT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `endpoint_api` smallint(6) DEFAULT NULL,
  `limite_integracao_easycall` smallint(6) DEFAULT '0' COMMENT 'Define o número máximo de integrações permitidas com o módulo EasyCall',
  PRIMARY KEY (`id`),
  KEY `id_empresa` (`id_empresa`),
  CONSTRAINT `tb_voip_ibfk_1` FOREIGN KEY (`id_empresa`) REFERENCES `tb_escritorio_advogados` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_voip_chamada` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero_origem` varchar(60) DEFAULT NULL,
  `numero_destino` varchar(250) DEFAULT NULL,
  `data_chamada` varchar(20) DEFAULT NULL,
  `status_chamada` smallint(6) DEFAULT NULL,
  `duracao_chamada` varchar(10) DEFAULT NULL,
  `chamada_id` varchar(255) NOT NULL,
  `id_user` int(10) unsigned DEFAULT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  `sincronizado` tinyint(1) DEFAULT '0',
  `agendamento_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `agendamento_id` (`agendamento_id`),
  KEY `id_empresa` (`id_empresa`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `tb_voip_chamada_ibfk_1` FOREIGN KEY (`agendamento_id`) REFERENCES `tb_agenda_advogados` (`id`),
  CONSTRAINT `tb_voip_chamada_ibfk_2` FOREIGN KEY (`id_empresa`) REFERENCES `tb_escritorio_advogados` (`id`),
  CONSTRAINT `tb_voip_chamada_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `tb_users_advogados` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20444 DEFAULT CHARSET=latin1;

CREATE TABLE `tb_workflow_dependentes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_workflow_principal` int(11) NOT NULL,
  `id_workflow_dependente` int(11) NOT NULL,
  `id_empresa` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_workflow_principal` (`id_workflow_principal`),
  KEY `idx_empresa` (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=1976 DEFAULT CHARSET=latin1;

INSERT INTO `tb_users_advogados` (`id`,`nome`,`email`,`telefone`,`celular`,`user`,`password`,`userlevel`,`status`,`numero_oab`,`uf_oab`,`id_empresa`,`modulos`,`modulos_ver`,`tag_pega`,`intCodGrupo`,`tipo`,`notificacoes`,`mensagens`,`msg_andamentos`,`tipoLogin`,`img`,`ativaWebjur`,`concluir_pub`,`fuso_google`,`acao_massa`,`modelo_agenda`,`modelo_oportunidade`,`modelo_listagem`,`modelo_job`,`token_publicacao`,`id_senioridade`,`perm_age_prazo_aud`,`id_modelo_usuario`,`id_migracao`,`texto_migracao`,`aprova_financeiro`,`visualiza_despesas`,`modelo_sidebar`,`id_centro_custo`,`visualiza_valor_timesheet`,`autenticacao`,`cod_autenticacao`,`expiracao_autenticacao`,`modulos_grupos`,`alert_permissao_grupo`,`aceite_termos_uso`,`ramal`,`ramal_usuario_autenticacao`,`visualiza_processos`,`visualiza_agenda`,`visualiza_projeto`,`visualiza_novos_negocios`,`aceite_termos_uso_intimacao`,`id_contato_cx`,`qtd_inicial_predictus`,`invite`,`can_make_asaas_transaction`,`edita_data_conclusao_agenda`,`senha_atualizada`) VALUES (345387,'luis dev','lflavio@easyjur.com','','','lflavio@easyjur.com','$2y$10$6jDKBfyNNZvyLged/zkzyOLDUu7ByBz3TwqjCqriQ0aCHdcCgWedm',NULL,'S',0,'',1000000,'|d2d|d29d|d46d|d10d|d8d|d44d|d36d|d51d|d31d|d18d|d6d|d20d|d37d|d15d|d21d|d17d|d32d|d35d|d45d|d39d|d34d|d23d|d40d|d33d|d43d|d9d|d4d|d25d|d5d|d27d|d3d|d49d|d38d|d7d|d16d|d12d|d22d|d24d|d11d','','',0,'administrador',1,1,0,0,'',NULL,0,3,1,2,0,1,1,'',0,0,0,0,NULL,1,0,1,0,0,0,NULL,NULL,'',0,0,0,'',1,1,1,1,0,'',NULL,NULL,0,0,'Sim');
INSERT INTO `tb_escritorio_advogados` (`id`,`nome`,`slogan`,`endereco`,`numero`,`complemento`,`cidade`,`estado`,`bairro`,`cep`,`ddd1`,`fone1`,`email1`,`cedente`,`endereco_cedente`,`cnpj`,`inscricao_municipal`,`regime_tributacao`,`agencia`,`conta`,`carteira`,`taxa`,`horarios`,`descontos`,`acrecimos`,`multas`,`dias_protesto`,`convenio`,`contrato`,`banco_boleto`,`permissao_adv`,`permissao_age`,`n_push_processos`,`permissao_exc`,`pasta_auto`,`serv_auto`,`perfil`,`tipo_perfil`,`hora_cadastro`,`ip`,`data_cadastro`,`data_expiracao`,`qtd_processos_permitidos`,`qtd_usuarios`,`GED`,`permissao_job`,`company_id`,`publicacao_trial`,`permissao_grupo`,`permissao_automacao`,`permissao_excel`,`permissao_edit`,`permissao_subev_fat`,`data_corte`,`obg_cpf_cnpj`,`hora_tarifada`,`permissao_oportunidade`,`timesheet_obrigatorio`,`qtd_calendar`,`multa`,`juros`,`observacao`,`iss`,`base_iss`,`csll`,`base_csll`,`cofins`,`base_cofins`,`inss`,`base_inss`,`irpj`,`base_irpj`,`pis`,`base_pis`,`regime_fiscal`,`qtd_nf`,`fonte_csll`,`fonte_irpj`,`cod_servico`,`fonte_pis`,`fonte_cofins`,`permissao_numero_processo`,`contrato_obrigatorio`,`modelo_acao_assunto`,`controle_inteiroTeor`,`nomes_monitoramento`,`alterar_nf`,`id_aviso`,`detalhe_pasta_alterar`,`login_trakto`,`senha_trakto`,`modulo_avulso`,`integracao_wp`,`import_processo`,`cnpj_contratacao`,`chave_wp`,`responsavel_lead`,`limite_distribuicao_buscar`,`id_customerx`,`init_account`,`wizard_current_step`,`bloqueio_clientes`,`bloqueio_chat`,`prestacao_servico`,`permissao_prestacao_servico`,`legal_design`,`data_corte_agenda`,`nome_fonte_taxa`,`taxa_tributo_aproximado`,`habilitar_tributos_aproximados`,`ativa_integracao_wp`,`nfe_provider`,`bloqueado`) VALUES (1000000,'luis dev','','','','','','','','','','(99)9999-99999','lflavio@easyjur.com','','','','','','','','',0,'0',0,0,0,0,0,0,'0',0,0,10000,1,1,1,'advogados_iturn',6,'16:41:17','172.17.0.1','2023-08-29','2023-09-12','ILIMITADO',20,200,0,NULL,NULL,0,0,0,0,1,0,1,0,0,0,0,50,20,'',10,100,10,100,10,100,10,100,10,100,10,100,'',0,0,0,'',0,0,0,0,1,1,1,0,0,1,NULL,NULL,NULL,0,1,NULL,'8155bc545f84d9652f1012ef2bdfb6eb',0,100000,'',6,0,NULL,0,'',NULL,NULL,0,'',0,0,1,'none',0);

SET foreign_key_checks = 0;

