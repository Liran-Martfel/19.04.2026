DROP TABLE tasks_rows;
DROP TABLE projects_rows;

CREATE TABLE projects_rows(
id INTEGER PRIMARY KEY AUTOINCREMENT,
project_name TEXT NOT NULL
);

INSERT INTO projects_rows(id, project_name)
VALUES
(1,	'Mobile App'),
(2,	'Website Redesign'),
(3,	'Data Migration');

CREATE TABLE tasks_rows(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	task_name TEXT NOT NULL,
	project_id INTEGER NOT NULL,
	FOREIGN KEY (project_id) REFERENCES projects_rows(id)
);

INSERT INTO tasks_rows(id, task_name, project_id)
VALUES
(1,	'Design Login Screen',	1),
(2,	'Build Landing Page',	2),
(3,	'Clean Old Records',	3),
(4,	'Optimize Homepage Images',	2),
(5,	'Validate Data Checksums',	3);

SELECT * FROM tasks_rows
WHERE project_id = 2;

SELECT tasks_rows.task_name, projects_rows.project_name
FROM projects_rows
INNER JOIN tasks_rows 
ON tasks_rows.project_id = projects_rows.id;