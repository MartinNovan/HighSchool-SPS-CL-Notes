# Databáze — základy a normalizace

## Základní pojmy
- Tabulka, řádek (záznam), sloupec (atribut), primární klíč, cizí klíč, relace.

## Normalizace — normální formy
### 1. normální forma (1NF)
- Každé pole obsahuje pouze atomické (nedělitelně) hodnoty.
- Např. neužívat seznamy hodnot v jednom sloupci.

### 2. normální forma (2NF)
- Splňuje 1NF a všechny neklíčové atributy jsou plně funkčně závislé na celém primárním klíči (týká se složených klíčů).

### 3. normální forma (3NF)
- Splňuje 2NF a žádný neklíčový atribut není tranzitivně závislý na primárním klíči.
- Cílem je odstranit závislost mezi neklíčovými atributy.

### BCNF (Boyce–Coddova normální forma)
- Silnější verze 3NF: každý determinant je kandidátním klíčem.

### 4. normální forma (4NF)
- Řeší vícehodnotové závislosti; vícehodnotové závislosti musí být plně závislé na primárním klíči.

### 5. normální forma (5NF)
- Tabulku už nelze rozložit bez ztráty dat (dekompozice do více tabulek je bez anomálií).

## Příklad přibližně z přednášky
- Tabulka Hodnocení s atributy: Úroveň, ID hráče, atd. Ukázka, jak se normalizací rozloží opakující se hodnoty úrovní do samostatné tabulky (lookup table) a tím se eliminuje redundance.

## Praktické tipy
- Normalizace zvyšuje konzistenci a snižuje redundanci, ale někdy se v praxi dělá denormalizace pro výkon (s rozmyslem).
- Myslete na indexy pro časté dotazy a relace mezi tabulkami (FK).
