# SQL

## Analyse

### Les tables

project :

- id : int, unsigned, primary key, auto-increment
- name : varchar, 255
- description : text
- client_name : varchar, 255
- start_date : date, nullable
- checkpoint_date : date, nullable
- delivery_date : date, nullable

student :

- id : int, unsigned, primary key, auto-increment
- firstname : varchar, 255
- lastname : varchar, 255
- email : varchar, 255
- creation_date : timestamp, default value : current_timestamp
- modification_date : timestamp, default value : current_timestamp, on update : current_timestamp
- project_id : int, unsigned, foreign key : project.id

tag :

- id : int, unsigned, primary key, auto-increment
- name : varchar, 255
- description : text

project_student :

- project_id : int, unsigned, index, constraint : project.id
- student_id : int, unsigned, index, constraint : student.id

project_tag :

- project_id : int, unsigned, index, constraint : project.id
- tag_id : int, unsigned, index, constraint : tag.id

student_tag :

- student_id : int, unsigned, index, constraint : student.id
- tag_id : int, unsigned, index, constraint : tag.id

## Requêtes SQL simples

- lister tous les students
- lister tous les projects
- lister le student dont l'id est `2`
- lister le project dont l'id est `3`
- lister les students dont l'email contient la chaîne de caractères "popschool.fr"
- lister les students dont la date de création est antérieure à une certaine heure (à vous de choisir l'heure)

## Requêtes SQL avec jointure

- lister tous les students avec leurs tags
- lister tous les tags avec leurs students
- lister le student dont l'id est `2` avec ses tags
- lister le tag dont l'id est `2` avec ses students
