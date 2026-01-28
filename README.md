# Portfolio SQL – Gestione Scuola

Questo repository contiene un database di esempio per una scuola e varie query SQL realizzate per esercizio e portfolio.

## 1. Descrizione del progetto

Il progetto simula la gestione di una scuola con:

- Studenti  
- Docenti  
- Corsi  
- Relazioni tra studenti e corsi (molti-a-molti)

Lo scopo del portfolio è dimostrare competenze in:

- Creazione e modellazione tabelle MySQL  
- Inserimento dati realistici  
- Query di selezione, filtri e aggregazioni  
- JOIN, GROUP BY, COUNT e GROUP_CONCAT  
- Query complesse su relazioni molti-a-molti  

---

## 2. Ambiente di sviluppo

Il database e le query sono stati creati e testati utilizzando **phpMyAdmin** in **XAMPP**, su server locale.  
Questo ambiente permette di gestire MySQL facilmente e di verificare tutte le query SQL incluse.

---

## 3. Schema Database

### Tabelle principali

1. **studenti** – informazioni sugli studenti  
   - `id_studente` INT PRIMARY KEY AUTO_INCREMENT  
   - `nome` VARCHAR(20)  
   - `cognome` VARCHAR(20)  
   - `data_nascita` DATE  
   - `email` VARCHAR(50) UNIQUE  

2. **docenti** – informazioni sui docenti  
   - `id_docente` INT PRIMARY KEY AUTO_INCREMENT  
   - `nome` VARCHAR(20)  
   - `cognome` VARCHAR(20)  
   - `email` VARCHAR(50) UNIQUE  

3. **corsi** – informazioni sui corsi  
   - `id_corso` INT PRIMARY KEY AUTO_INCREMENT  
   - `nome_corso` VARCHAR(20) UNIQUE  
   - `data_inizio` DATE  
   - `data_fine` DATE  
   - `costo_corso` DECIMAL(8,2)  
   - `max_partecipanti` INT  
   - `id_docente` INT FOREIGN KEY → `docenti.id_docente`  

4. **studenti_corsi** – relazione molti-a-molti tra studenti e corsi  
   - `id_rapporto` INT PRIMARY KEY AUTO_INCREMENT  
   - `id_studente` INT FOREIGN KEY → `studenti.id_studente`  
   - `id_corso` INT FOREIGN KEY → `corsi.id_corso`  

> Le relazioni sono implementate con **FOREIGN KEY** e vincoli di integrità referenziale (`CASCADE`/`RESTRICT`) per garantire coerenza dei dati.

---

## 4. File inclusi

- `01_create_tables.sql` → script di creazione tabelle e relazioni  
- `02_insert_data.sql` → script di popolazione dati (studenti, docenti, corsi, iscrizioni)  
- `03_queries.sql` → tutte le query di esempio, commentate e organizzate  

---

## 5. Query principali incluse

1. Mostra tutti i docenti  
2. Top 3 studenti iscritti a più corsi  
3. Top 3 docenti che insegnano più corsi  
4. Numero studenti per corso  
5. Primi 3 corsi rilasciati  
6. Numero corsi frequentati da ciascun studente  
7. Lista studenti che seguono almeno un corso di un docente specifico  
8. Email studenti maggiorenni  
9. Corsi terminati  
10. Corsi in programma con costo inferiore a 300€  
11. Corsi in programma  
12. Lista corsi per ogni studente con numero e dettagli (GROUP_CONCAT)  
13. Lista corsi per uno studente specifico  
14. Lista corsi per un docente specifico  
15. Lista docenti con numero e dettagli corsi (GROUP_CONCAT)  

---

## 6. Come usare il repository

1. Scaricare i file SQL dal repository  
2. Aprire **phpMyAdmin** in XAMPP  
3. Creare un nuovo database (es. `scuola_db`)  
4. Eseguire prima `01_create_tables.sql`, poi `02_insert_data.sql`  
5. Testare le query di esempio in `03_queries.sql`  

---

## 7. Note finali

- Le query dimostrano competenze in **modellazione dati, join complessi, aggregazioni e filtri temporali**  
- Questo portfolio può essere usato come **dimostrazione pratica delle capacità SQL** in ambito accademico o professionale
