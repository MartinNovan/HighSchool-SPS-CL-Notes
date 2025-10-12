# Git — Kompletní zápisky

## Úvod do verzovacích systémů
- Rozdíl mezi centralizovanými (client-server) a distribuovanými VCS.
- Příklady: SVN, Mercurial, Bitkeeper, Git.
- Git vytvořen v roce 2005 Linusem Torvaldsem — dnes nejpoužívanější.

## Základní koncepty Git
- **Working Directory (pracovní složka)** — vaše aktuální verze projektu; tu upravujete.
- **Staging area (index)** — mezistupeň, kde vybíráte soubory pro příští commit.
- **Local repository** — historie commitů uložená lokálně.
- **Remote repository** — repozitář na serveru (zálohování, týmová spolupráce).

## Základní příkazy
- `git add .` — přidá změny do staging area.
- `git commit -m "Zpráva"` — uloží staged změny do historie.
- `git push` — pošle commity na vzdálený repozitář.
- `git remote add origin <url>` — přidání reference na remote.
- `git push -u origin master` — při prvním pushi nastaví upstream.
- `git fetch` — stáhne změny z remote, nespojí je.
- `git pull origin master` — stáhne a spojí změny.
- `git clone <url>` — zkopíruje repozitář z remote na lokál.

## Branching (větve)
- Větev = nezávislá linie vývoje (feature, bugfix, release, hotfix).
- Vytvoření větve: `git branch nazev-vetve` nebo `git checkout -b nazev-vetve`.
- Přepnutí: `git checkout nazev-vetve`.
- Mazání lokální větve: `git branch -d nazev-vetve`.
- Mazání vzdálené větve: `git push origin --delete nazev-vetve`.

## Merge vs Rebase (stručně)
- **Merge**: spojí dvě větve, zachovává historii spojovacích commitů.
- **Rebase**: přepíše historii tak, aby vypadala lineárně — čistí historii, ale mění existující commity (pozor u sdílených větví).

## Stash
- Uloží pracovní změny do dočasného úložiště: `git stash`.
- Aplikace a vymazání stash: `git stash pop` (aplikuje a smaže stash).
- Aplikace bez smazání: `git stash apply`.

## Dobrý commit
- Krátká, výstižná zpráva: co a proč bylo změněno.
- Malé, atomické commity usnadňují revert a review.
- Vyhněte se „mega-commitům“ bez popisu.

## Poskytovatelé remote repozitářů (přehled)
- GitHub, GitLab, Bitbucket, Azure DevOps, SourceForge, Beanstalk, Gitea.

---

## Branchovací strategie — doporučení
- Používejte feature větve pro jednotlivé úkoly.
- Hlavní větve: `main`/`master` (stabilní), `develop` (integrační), feature/bugfix/release/hotfix.
- Po dokončení feature: otevřít Pull Request (PR) / Merge Request na review.

## Pull Requesty a code review
- PR slouží k diskusi, kontrole změn a automatickému spuštění CI.
- V PR: popis změn, odkazy na issue/ticket, testy, screenshoty pokud relevantní.

## Jak spravovat větve v týmu
- Mažte hotové feature větve (`git branch -d` lokálně a `git push origin --delete` na remote).
- Nepracujte dlouho ve sdílených větvích bez pravidelného rebasu nebo merge s `develop`.

## Praktické tipy
- Často pulluj (`git pull`) z upstream větve, aby se minimalizovaly konflikty.
- Před otevřením PR spusť lokální testy a lint.
- Používejte `.gitignore` ke vyloučení build artefaktů, binárních souborů a tajných klíčů.