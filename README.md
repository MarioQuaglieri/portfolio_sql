# Portfolio SQL

Questo repository contiene progetti SQL con database di esempio per una scuola.  
Include:

- Creazione tabelle con FOREIGN KEY e integrità referenziale
- Popolazione dati realistici
- Query di esempio: JOIN, GROUP BY, COUNT, filtri su date, TOP N, ecc.

## Ambiente di sviluppo

Il database e le query sono stati creati e testati utilizzando **phpMyAdmin** in **XAMPP**, su server locale.  
Questo ambiente permette di gestire MySQL facilmente e di verificare tutte le query SQL incluse.

## Schema database

- `studenti` → informazioni sugli studenti
- `docenti` → informazioni sui docenti
- `corsi` → informazioni sui corsi
- `studenti_corsi` → relazione molti-a-molti tra studenti e corsi

## Query principali

1. Mostra tutti i docenti
2. Top 3 studenti iscritti a più corsi
3. Numero studenti iscritti ai corsi
4. Email studenti maggiorenni
5. Lista corsi per studente con numero e elenco (GROUP_CONCAT)
