INSERT INTO studenti (nome, cognome, data_nascita, email)
VALUES
('Mario', 'Rossi', '2000-05-12', 'mario.rossi@email.com'),
('Luigi', 'Verdi', '1999-11-03', 'luigi.verdi@email.com'),
('Anna', 'Bianchi', '2001-02-20', 'anna.bianchi@email.com'),
('Sara', 'Neri', '2000-09-18', 'sara.neri@email.com'),
('Marco', 'Fontana', '1998-07-01', 'marco.fontana@email.com'),
('Giulia', 'Moretti', '2001-12-10', 'giulia.moretti@email.com'),
('Paolo', 'Ricci', '1999-03-25', 'paolo.ricci@email.com'),
('Elena', 'Fabbri', '2002-01-14', 'elena.fabbri@email.com'),
('Davide', 'Gallo', '1998-06-30', 'davide.gallo@email.com'),
('Chiara', 'De Luca', '2000-10-08', 'chiara.deluca@email.com');

INSERT INTO docenti (nome, cognome, email)
VALUES
('Paolo', 'Conti', 'paolo.conti@email.com'),
('Laura', 'Galli', 'laura.galli@email.com'),
('Stefano', 'Marini', 'stefano.marini@email.com'),
('Roberta', 'Colombo', 'roberta.colombo@email.com'),
('Andrea', 'Serra', 'andrea.serra@email.com');

INSERT INTO corsi (nome_corso, data_inizio, data_fine, costo_corso, max_partecipanti, id_docente)
VALUES
('Python Base', '2024-02-01', '2024-05-01', 499.99, 20, 1),
('Python Avanzato', '2024-06-01', '2024-09-01', 699.99, 15, 1),
('SQL Base', '2024-03-01', '2024-06-01', 399.99, 20, 2),
('SQL Avanzato', '2024-07-01', '2024-10-01', 549.99, 15, 2),
('Cybersecurity', '2024-04-01', '2024-07-01', 599.99, 10, 3),
('Networking', '2024-05-15', '2024-08-15', 449.99, 15, 4),
('Web Development', '2024-03-15', '2024-06-15', 479.99, 20, 5),
('Linux Fundamentals', '2024-06-10', '2024-09-10', 359.99, 25, 3);

INSERT INTO studenti_corsi (id_studente, id_corso)
VALUES
(1, 1), (1, 3), (1, 5),
(2, 1), (2, 6),
(3, 2), (3, 4), (3, 5),
(4, 1), (4, 7),
(5, 3), (5, 6),
(6, 1), (6, 2), (6, 8),
(7, 4), (7, 5),
(8, 2), (8, 7),
(9, 6), (9, 8),
(10, 1), (10, 3), (10, 7);
