import os
import MySQLdb
from datetime import datetime
from decouple import config

# Configurações do banco de dados
db_config = {
    "host": config("DB_HOST"),
    "user": config("DB_USER"),
    "password": config("DB_PASS"),
    "database": config("DB_DATABASE"),
    "port": int(config("DB_PORT", 3306))  # Defina a porta com valor padrão 3306
}

for key, value in db_config.items():
    if value is None:
        raise ValueError(f"A variável de ambiente para {key} não está definida!")

# Nome do arquivo de backup
backup_filename = "bkp.sql"

# Lista de tabelas que terão seus dados incluídos no backup
tables_with_data = [
    "tb_origens",
    "tb_centro_custo",
    "tb_processos_area",
    "tb_partes",
    "tb_status_processo",
    "tb_user_modulos_advogados"
]

# Inserts adicionais
insert_statements = [
    "INSERT INTO `tb_users_advogados` (`id`,`nome`,`email`,`telefone`,`celular`,`user`,`password`,`userlevel`,`status`,`numero_oab`,`uf_oab`,`id_empresa`,`modulos`,`modulos_ver`,`tag_pega`,`intCodGrupo`,`tipo`,`notificacoes`,`mensagens`,`msg_andamentos`,`tipoLogin`,`img`,`ativaWebjur`,`concluir_pub`,`fuso_google`,`acao_massa`,`modelo_agenda`,`modelo_oportunidade`,`modelo_listagem`,`modelo_job`,`token_publicacao`,`id_senioridade`,`perm_age_prazo_aud`,`id_modelo_usuario`,`id_migracao`,`texto_migracao`,`aprova_financeiro`,`visualiza_despesas`,`modelo_sidebar`,`id_centro_custo`,`visualiza_valor_timesheet`,`autenticacao`,`cod_autenticacao`,`expiracao_autenticacao`,`modulos_grupos`,`alert_permissao_grupo`,`aceite_termos_uso`,`ramal`,`ramal_usuario_autenticacao`,`visualiza_processos`,`visualiza_agenda`,`visualiza_projeto`,`visualiza_novos_negocios`,`aceite_termos_uso_intimacao`,`id_contato_cx`,`qtd_inicial_predictus`,`invite`,`can_make_asaas_transaction`,`edita_data_conclusao_agenda`,`senha_atualizada`) VALUES (345387,'luis dev','lflavio@easyjur.com','','','lflavio@easyjur.com','$2y$10$6jDKBfyNNZvyLged/zkzyOLDUu7ByBz3TwqjCqriQ0aCHdcCgWedm',NULL,'S',0,'',1000000,'|d2d|d29d|d46d|d10d|d8d|d44d|d36d|d51d|d31d|d18d|d6d|d20d|d37d|d15d|d21d|d17d|d32d|d35d|d45d|d39d|d34d|d23d|d40d|d33d|d43d|d9d|d4d|d25d|d5d|d27d|d3d|d49d|d38d|d7d|d16d|d12d|d22d|d24d|d11d','','',0,'administrador',1,1,0,0,'',NULL,0,3,1,2,0,1,1,'',0,0,0,0,NULL,1,0,1,0,0,0,NULL,NULL,'',0,0,0,'',1,1,1,1,0,'',NULL,NULL,0,0,'Sim');",  # Coloque aqui o nome da tabela para o primeiro INSERT
    "INSERT INTO `tb_escritorio_advogados` (`id`,`nome`,`slogan`,`endereco`,`numero`,`complemento`,`cidade`,`estado`,`bairro`,`cep`,`ddd1`,`fone1`,`email1`,`cedente`,`endereco_cedente`,`cnpj`,`inscricao_municipal`,`regime_tributacao`,`agencia`,`conta`,`carteira`,`taxa`,`horarios`,`descontos`,`acrecimos`,`multas`,`dias_protesto`,`convenio`,`contrato`,`banco_boleto`,`permissao_adv`,`permissao_age`,`n_push_processos`,`permissao_exc`,`pasta_auto`,`serv_auto`,`perfil`,`tipo_perfil`,`hora_cadastro`,`ip`,`data_cadastro`,`data_expiracao`,`qtd_processos_permitidos`,`qtd_usuarios`,`GED`,`permissao_job`,`company_id`,`publicacao_trial`,`permissao_grupo`,`permissao_automacao`,`permissao_excel`,`permissao_edit`,`permissao_subev_fat`,`data_corte`,`obg_cpf_cnpj`,`hora_tarifada`,`permissao_oportunidade`,`timesheet_obrigatorio`,`qtd_calendar`,`multa`,`juros`,`observacao`,`iss`,`base_iss`,`csll`,`base_csll`,`cofins`,`base_cofins`,`inss`,`base_inss`,`irpj`,`base_irpj`,`pis`,`base_pis`,`regime_fiscal`,`qtd_nf`,`fonte_csll`,`fonte_irpj`,`cod_servico`,`fonte_pis`,`fonte_cofins`,`permissao_numero_processo`,`contrato_obrigatorio`,`modelo_acao_assunto`,`controle_inteiroTeor`,`nomes_monitoramento`,`alterar_nf`,`id_aviso`,`detalhe_pasta_alterar`,`login_trakto`,`senha_trakto`,`modulo_avulso`,`integracao_wp`,`import_processo`,`cnpj_contratacao`,`chave_wp`,`responsavel_lead`,`limite_distribuicao_buscar`,`id_customerx`,`init_account`,`wizard_current_step`,`bloqueio_clientes`,`bloqueio_chat`,`prestacao_servico`,`permissao_prestacao_servico`,`legal_design`,`data_corte_agenda`,`nome_fonte_taxa`,`taxa_tributo_aproximado`,`habilitar_tributos_aproximados`,`ativa_integracao_wp`,`nfe_provider`,`bloqueado`) VALUES (1000000,'luis dev','','','','','','','','','','(99)9999-99999','lflavio@easyjur.com','','','','','','','','',0,'0',0,0,0,0,0,0,'0',0,0,10000,1,1,1,'advogados_iturn',6,'16:41:17','172.17.0.1','2023-08-29','2023-09-12','ILIMITADO',20,200,0,NULL,NULL,0,0,0,0,1,0,1,0,0,0,0,50,20,'',10,100,10,100,10,100,10,100,10,100,10,100,'',0,0,0,'',0,0,0,0,1,1,1,0,0,1,NULL,NULL,NULL,0,1,NULL,'8155bc545f84d9652f1012ef2bdfb6eb',0,100000,'',6,0,NULL,0,'',NULL,NULL,0,'',0,0,1,'none',0);"   # Coloque aqui o nome da tabela para o segundo INSERT
]

connection = None

try:
    # Conectando ao banco de dados
    connection = MySQLdb.connect(
        host=db_config["host"],
        user=db_config["user"],
        passwd=db_config["password"],
        db=db_config["database"],
        port=db_config["port"]
    )

    cursor = connection.cursor()

    backup_data = "-- Backup gerado em: " + datetime.now().strftime('%Y-%m-%d %H:%M:%S') + "\n\n"
    backup_data += "SET foreign_key_checks = 0;\n\n"
    
    cursor.execute("SHOW TABLES")
    tables = cursor.fetchall()

    for table_name_tuple in tables:
        table_name = table_name_tuple[0]
        if table_name in tables_with_data:
            # Backup da estrutura e dados
            cursor.execute(f"SHOW CREATE TABLE {table_name}")
            create_table_statement = cursor.fetchone()[1]
            backup_data += "\n\n" + create_table_statement + ";"

            cursor.execute(f"SELECT * FROM {table_name}")
            rows = cursor.fetchall()
            for row in rows:
                values = []
                for value in row:
                    if value is not None:
                        if isinstance(value, str):
                            value = value.replace("'", "''")  # Escapar apóstrofos
                        values.append(f"'{value}'")
                    else:
                        values.append("NULL")
                backup_data += f"\nINSERT INTO {table_name} VALUES ({', '.join(values)});"
        else:
            # Backup somente da estrutura
            cursor.execute(f"SHOW CREATE TABLE {table_name}")
            create_table_statement = cursor.fetchone()[1]
            backup_data += "\n\n" + create_table_statement + ";"

    # Adicionando os INSERTs ao backup
    backup_data += "\n\n" + "\n".join(insert_statements) + "\n\n"
    backup_data += "SET foreign_key_checks = 0;\n\n"

    # Escrevendo o backup da estrutura e dados para um arquivo
    with open(backup_filename, 'w') as f:
        f.write(backup_data)

    print(f"Backup da estrutura e dados salvo em '{backup_filename}'")

except Exception as e:
    print(f"Erro: {str(e)}")
finally:
    if connection:
        connection.close()
        print("Conexão ao banco de dados encerrada")

