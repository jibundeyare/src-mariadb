-- # Requêtes SQL

-- ## Requêtes SQL simples

-- lister tous les students
SELECT *
FROM student

-- lister tous les projects
SELECT *
FROM project

-- lister le student dont l'id est `2`
SELECT *
FROM student
WHERE id = 2

-- lister le project dont l'id est `3`
SELECT *
FROM project
WHERE id = 3

-- lister les students dont l'email contient la chaîne de caractères "popschool.fr"
SELECT *
FROM student
WHERE email LIKE '%popschool.fr%'

-- lister les students dont la date de création est antérieure à une certaine heure (à vous de choisir l'heure)
-- ici l'heure choisie est minuit, le 31 décembre 2017
SELECT *
FROM student
WHERE creation_date >= '2018-01-01 00:00:00'



-- ## Requêtes SQL avec jointure « many to one »

-- lister tous les students avec leurs projets
SELECT *
FROM student
INNER JOIN project ON project.id = student.project_id

-- lister tous les students avec leurs projets, même s'ils n'en ont pas
SELECT *
FROM student
LEFT JOIN project ON project.id = student.project_id

-- lister le student dont l'id est `2` avec son projet
SELECT *
FROM student
INNER JOIN project ON project.id = student.project_id
WHERE student.id = 2

-- lister le student dont l'id est `53` avec son projet, même s'il n'en a pas
SELECT *
FROM student
LEFT JOIN project ON project.id = student.project_id
WHERE student.id = 53



-- ## Requêtes SQL avec jointure « one to many »

-- lister tous les projects avec leurs students
SELECT *
FROM project
INNER JOIN student ON student.project_id = project.id

-- lister tous les projects avec leurs students, même s'ils n'en ont pas
SELECT *
FROM project
LEFT JOIN student ON student.project_id = project.id

-- lister le project dont l'id est `3` avec ses students
SELECT *
FROM project
INNER JOIN student ON student.project_id = project.id
WHERE project.id = 3

-- lister le project dont l'id est `4` avec ses students, même s'il n'en a pas
SELECT *
FROM project
LEFT JOIN student ON student.project_id = project.id
WHERE project.id = 4



-- ## Requêtes SQL avec jointure « many to many »

-- lister tous les students avec leurs tags
SELECT *
FROM student
INNER JOIN student_tag ON student_tag.student_id = student.id
INNER JOIN tag ON student_tag.tag_id = tag.id

-- lister tous les students avec leurs tags ou sans tag
SELECT *
FROM student
LEFT JOIN student_tag ON student_tag.student_id = student.id
LEFT JOIN tag ON student_tag.tag_id = tag.id

-- lister tous les tags avec leurs students
SELECT *
FROM tag
INNER JOIN student_tag ON student_tag.tag_id = tag.id
INNER JOIN student ON student.id = student_tag.student_id

-- lister tous les tags avec leurs students ou sans student
SELECT *
FROM tag
LEFT JOIN student_tag ON student_tag.tag_id = tag.id
LEFT JOIN student ON student.id = student_tag.student_id

-- lister le student dont l'id est 2 avec ses tags
SELECT *
FROM student
INNER JOIN student_tag ON student_tag.student_id = student.id
INNER JOIN tag ON student_tag.tag_id = tag.id
WHERE student.id = 2

-- lister le student dont l'id est 2 avec ses tags, même s'il n'en a pas
SELECT *
FROM student
LEFT JOIN student_tag ON student_tag.student_id = student.id
LEFT JOIN tag ON student_tag.tag_id = tag.id
WHERE student.id = 2

-- lister le tag dont l'id est 2 avec ses students
SELECT *
FROM tag
INNER JOIN student_tag ON student_tag.tag_id = tag.id
INNER JOIN student ON student.id = student_tag.student_id
WHERE tag.id = 2

-- lister le tag dont l'id est 2 avec ses students, même s'il n'en a pas
SELECT *
FROM tag
LEFT JOIN student_tag ON student_tag.tag_id = tag.id
LEFT JOIN student ON student.id = student_tag.student_id
WHERE tag.id = 2

