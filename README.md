# BDII---Comandos-DDL
BDII - Comandos DDL
#  Atividade de Banco de Dados II — Comandos DDL

Este repositório contém um script SQL desenvolvido para a disciplina **BDII**, com o objetivo de praticar comandos **DDL (Data Definition Language)** no MySQL.

##  Objetivo
O exercício consiste em:
1. Criar um banco de dados.
2. Criar tabelas com campos, tipos de dados e restrições.
3. Alterar tabelas (adicionar colunas, chaves primárias e estrangeiras, remover colunas).
4. Excluir tabelas.
5. Excluir o banco de dados.

##  Tecnologias Utilizadas
- **MySQL** (versão 8.0 ou superior recomendada)
- Editor/IDE ou terminal compatível com MySQL (MySQL Workbench, DBeaver, etc.)

## Estrutura do Script
O script `comandos_ddl.sql` executa as seguintes etapas:

### 1️ Criação do Banco de Dados
```sql
CREATE DATABASE User;
DROP TABLE Endereco;
DROP TABLE Telefone;
DROP TABLE Cliente;
USE information_schema;
DROP DATABASE User;
