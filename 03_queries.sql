-- 1) Mostra tutti i docenti
SELECT * FROM docenti;

-- 2) Mostra la Top 3 degli studenti iscritti a più corsi
SELECT studenti.nome, studenti.cognome, COUNT(studenti_corsi.id_corso) AS numero_corsi
FROM studenti
LEFT JOIN studenti_corsi ON studenti.id_studente = studenti_corsi.id_studente
GROUP BY studenti.id_studente ORDER BY numero_corsi DESC LIMIT 3;

-- 3) Mostra la Top 3 dei docenti che insegna più corsi
SELECT docenti.nome, docenti.cognome, COUNT(corsi.id_docente) AS numero_corsi
FROM docenti
LEFT JOIN corsi ON docenti.id_docente = corsi.id_docente
GROUP BY docenti.id_docente ORDER BY numero_corsi DESC LIMIT 3;

-- 4) Mostra quanti studenti sono iscritti ad ogni corso ordinati alfabeticamente
SELECT corsi.nome_corso as "nome del corso", COUNT(studenti_corsi.id_studente) as "studenti iscritti"
FROM corsi
LEFT JOIN studenti_corsi on corsi.id_corso = studenti_corsi.id_corso
GROUP BY corsi.id_corso, corsi.nome_corso
ORDER BY corsi.nome_corso;

-- 5) Mostra i primi 3 corsi rilasciati dalla scuola
SELECT corsi.nome_corso, data_inizio FROM corsi ORDER BY corsi.data_inizio ASC LIMIT 3;

-- 6) Mostra il numero di corsi frequentati da ciascun studente
SELECT studenti.nome, studenti.cognome, COUNT(studenti_corsi.id_corso) AS "numero di corsi seguiti"
FROM studenti
LEFT JOIN studenti_corsi ON studenti.id_studente = studenti_corsi.id_studente
GROUP BY studenti.id_studente;

-- 7) Mostra la lista di studenti che seguono almeno un corso di uno specifico docente
SELECT studenti.nome, studenti.cognome FROM studenti
INNER JOIN studenti_corsi ON studenti.id_studente = studenti_corsi.id_studente
INNER JOIN corsi ON corsi.id_corso = studenti_corsi.id_corso
WHERE corsi.id_docente = 1
GROUP BY studenti.id_studente;

-- 8) Mostra la lista di email dei studenti che hanno compiuto almeno 18 anni
SELECT email FROM studenti WHERE data_nascita < DATE_SUB(CURRENT_DATE(), INTERVAL 18 year);

-- 9) Mostra la lista dei corsi che sono attualmente terminati
SELECT nome_corso, data_fine FROM corsi WHERE data_fine < CURRENT_DATE;

-- 10) Mostra la lista dei corsi in programma e con costo inferiore ai 300 euro
SELECT nome_corso, data_inizio, costo_corso FROM corsi WHERE data_inizio > CURRENT_DATE() AND costo_corso <= 300;

-- 11) Mostra la lista dei corsi in programma
SELECT nome_corso, data_inizio FROM corsi WHERE data_inizio > CURRENT_DATE;

-- 12) Mostra la lista degli studenti e rispettivamente quanti e quali corsi seguono ordinati alfabeticamente
SELECT studenti.nome, studenti.cognome, COUNT(studenti_corsi.id_corso) AS "numero corsi", GROUP_CONCAT(corsi.nome_corso SEPARATOR ",") as "corsi"
FROM studenti
LEFT JOIN studenti_corsi ON studenti.id_studente = studenti_corsi.id_studente
LEFT JOIN corsi ON corsi.id_corso = studenti_corsi.id_corso
GROUP BY studenti.id_studente
ORDER BY studenti.nome, studenti.cognome;

-- 12) Mostra la lista dei corsi che uno specifico studente sta seguendo
SELECT studenti.nome, studenti.cognome, GROUP_CONCAT(corsi.nome_corso SEPARATOR ",") as "corsi"
FROM studenti
LEFT JOIN studenti_corsi ON studenti.id_studente = studenti_corsi.id_studente
LEFT JOIN corsi ON corsi.id_corso = studenti_corsi.id_corso
WHERE studenti.id_studente = 1;

-- 13) Mostra la lista dei corsi che uno specifico docente sta insegnando
SELECT docenti.nome, docenti.cognome, GROUP_CONCAT(corsi.nome_corso SEPARATOR ",") as "corsi"
FROM docenti
INNER JOIN corsi ON docenti.id_docente = corsi.id_docente
WHERE docenti.id_docente = 1;

-- 14) Mostra la lista dei docenti e rispettivamente quanti e quali corsi insegnano ordinati alfabeticamente
SELECT docenti.nome, docenti.cognome, COUNT(corsi.id_corso) AS "numero corsi", GROUP_CONCAT(corsi.nome_corso SEPARATOR ",") AS "corsi"
FROM docenti
LEFT JOIN corsi ON docenti.id_docente = corsi.id_docente
GROUP BY docenti.id_docente
ORDER BY docenti.nome, docenti.cognome;
