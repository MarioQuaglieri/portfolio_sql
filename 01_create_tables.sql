CREATE DATABASE IF NOT EXISTS scuola_db;

CREATE TABLE IF NOT EXISTS studenti(
    id_studente INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(20) NOT NULL,
    cognome VARCHAR(20) NOT NULL,
    data_nascita DATE NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS docenti(
    id_docente INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(20) NOT NULL,
    cognome VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS corsi(
    id_corso INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT REFERENCES studenti_corsi(id_corso),
    nome_corso VARCHAR(20) NOT NULL UNIQUE,
    data_inizio DATE NOT NULL,
    data_fine DATE NOT NULL,
    costo_corso DECIMAL(8,2) NOT NULL,
    max_partecipanti INT NOT NULL,
    id_docente INT NOT NULL,
    CONSTRAINT fk_corsi_docenti
    	FOREIGN KEY (id_docente)
    	REFERENCES docenti(id_docente)
    	ON DELETE RESTRICT
    	ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS studenti_corsi(
    id_rapporto INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_studente INT NOT NULL UNIQUE,
    id_corso INT NOT NULL UNIQUE,
    data_iscrizione DATE NOT NULL DEFAULT CURRENT_DATE,
    CONSTRAINT fk_sc_studenti
    	FOREIGN KEY (id_studente)
    	REFERENCES studenti(id_studente)
    	ON DELETE CASCADE
    	ON UPDATE CASCADE,
    CONSTRAINT fk_sc_corsi
    	FOREIGN KEY (id_corso)
    	REFERENCES corsi(id_corso)
    	ON DELETE CASCADE
    	ON UPDATE CASCADE
);
