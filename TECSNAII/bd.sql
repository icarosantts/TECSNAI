-- Criação do banco de dados
CREATE DATABASE tecsnai_db;

-- Seleciona o banco de dados
USE tecsnai_db;

-- Criação da tabela de clientes
CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL, -- Armazenada como hash
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Criação da tabela de técnicos
CREATE TABLE tecnicos (
    id_tecnico INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL, -- Armazenada como hash
    foto VARCHAR(255), -- Caminho para a foto de perfil
    certificado ENUM('sim', 'nao') NOT NULL,
    documento_certificado VARCHAR(255), -- Caminho para o arquivo do certificado
    especialidades TEXT NOT NULL, -- Lista de especialidades
    tempo_experiencia INT NOT NULL, -- Anos de experiência
    apresentacao TEXT,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
