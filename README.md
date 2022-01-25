# MariaDB

## Les fichiers SQL

`src_mariadb.sql` est un export de la BDD qui contient la structure et les données.

`src_mariadb-structure-only.sql` est un export de la BDD qui contient uniquement la structure.

`src_mariadb-data-only.sql` est un export de la BDD qui contient uniquement les données.

Attention : ces fichiers SQL sont paramétrés pour remplacer les données (`DROP TABLE IF EXISTS` avant `CREATE TABLE`, `TRUNCATE` avant `INSERT`).
Si vous voulez conservez vos données, faites un backups avant d'importer ces fichiers SQL.

## Analyse

Voici le schéma de la BDD :

![Schéma de la BDD](img/src_mariadb-schema.png)

### Les tables

student :

- id : int, primary key, auto-increment
- firstname : varchar, 190
- lastname : varchar, 190
- email : varchar, 190
- created_at : datetime
- updated_at : datetime
- school_year_id : int, foreign key : school_year.id
- project_id : int, nullable, foreign key : project.id

school_year :

- id : int, primary key, auto-increment
- name : varchar, 190
- description : text, nullable
- start_date : date, nullable
- end_date : date, nullable

project :

- id : int, primary key, auto-increment
- name : varchar, 190
- description : text, nullable
- client_name : varchar, 190
- start_date : date, nullable
- checkpoint_date : date, nullable
- delivery_date : date, nullable

tag :

- id : int, primary key, auto-increment
- name : varchar, 190
- description : text

project_tag :

- project_id : int, index, constraint : project.id
- tag_id : int, index, constraint : tag.id

student_tag :

- student_id : int, index, constraint : student.id
- tag_id : int, index, constraint : tag.id

## Requêtes SQL possibles

### Requêtes simples en lecture

Listez :

- tous les students
- tous les projects
- le student dont l'id est `2`
- les students dont l'id n'est pas `2`
- le project dont l'id est `3`
- les projects dont l'id n'est pas `3`
- les students dont l'email contient la chaîne de caractères `.com`
- les students dont la date de création est antérieure au 10/01/2021 inclus
- les projets dont le nom du client ne contient pas la chaîne de caractères `Dolores`
- les projets dont la date de création est postérieure au 01/07/2021 inclus
- les students ayant un projet
- les students n'ayant pas de projet

### Requêtes en écriture

Insérer :

- un tag
- un school year
- un projet
- un student
- une relation student tag

Mettez à jour :

- un tag
- une school year
- un projet
- un student
- une relation student tag

Supprimez :

- un tag
- une school year
- un projet
- une relation student tag
- un student

### Requêtes en lecture avec critères multiples

Listez :

- les students :
  - dont l'email contient la chaîne de caractères `.com`
  - OU dont la date de création est antérieure au 10/01/2021 inclus

- les students :
  - dont l'email contient la chaîne de caractères `.com`
  - ET dont la date de création est antérieure au 10/01/2021 inclus

- les students :
  - dont la date de création est postérieure au 01/01/2021 exclus
  - ET dont la date de création est antérieure au 10/01/2021 inclus

- les projets :
  - dont la description ne contient pas la chaîne de caractères `Dolores`
  - OU dont la date de début est postérieure au 01/07/2021 inclus

- les projets :
  - dont la description ne contient pas la chaîne de caractères `Dolores`
  - ET dont la date de début est postérieure au 01/07/2021 inclus

- les projets :
  - dont la date de création est postérieure au 01/01/2021 inclus
  - ET dont la date de début est antérieure au 01/07/2021 inclus

- les students :
  - dont l'email contient la chaîne de caractères `.com` ET la date de création est antérieure au 10/01/2021 inclus
  - OU ayant un projet

- les students :
  - dont l'email contient la chaîne de caractères `.com`ET la date de création est antérieure au 10/01/2021 inclus
  - ET n'ayant pas de projet

### Requêtes avec jointure « many to one »

Listez :

- tous les students avec leurs projets
- le student dont l'id est `2` avec son projet

### Requêtes avec jointure « one to many »

Listez :

- tous les projects avec leurs students
- le project dont l'id est `3` avec ses students

### Requêtes avec jointure « many to many »

Listez :

- tous les students avec leurs tags
- tous les tags avec leurs students
- le student dont l'id est `2` avec ses tags
- le tag dont l'id est `2` avec ses students

