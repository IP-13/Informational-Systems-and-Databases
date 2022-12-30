INSERT INTO human (id, name, surname) VALUES (1, 'PAUL', 'GEORGE');
INSERT INTO human (id, name, surname) VALUES (2, 'IVAN', 'PEREVOZCHIKOV');
INSERT INTO human (id, name, surname) VALUES (3, 'PAUL', 'GEORGE');
INSERT INTO human (id, name, surname) VALUES (4, 'NATALYA', 'MOROZOVA');
INSERT INTO human (id, name, surname) VALUES (5, 'LUBOV', 'SILAKOVA');
INSERT INTO human (id, name, surname) VALUES (6, 'MICHAEL', 'JORDAN');
INSERT INTO human (id, name, surname) VALUES (7, 'MICHAEL', 'JORDAN');

INSERT INTO human_sex (human_id, sex) VALUES (1, 'M');
INSERT INTO human_sex (human_id, sex) VALUES (2, 'M');
INSERT INTO human_sex (human_id, sex) VALUES (3, 'M');
INSERT INTO human_sex (human_id, sex) VALUES (4, 'F');
INSERT INTO human_sex (human_id, sex) VALUES (5, 'F');
INSERT INTO human_sex (human_id, sex) VALUES (6, 'M');
INSERT INTO human_sex (human_id, sex) VALUES (7, 'M');

INSERT INTO dialog (id, theme) VALUES (1, 'SPORT');
INSERT INTO dialog (id, theme) VALUES (2, 'POLITICS');
INSERT INTO dialog (id, theme) VALUES (3, 'BOOKS');
INSERT INTO dialog (id, theme) VALUES (4, 'WEATHER');

INSERT INTO dialog_participants (dialog_id, person_id) VALUES (1, 1);
INSERT INTO dialog_participants (dialog_id, person_id) VALUES (1, 2);
INSERT INTO dialog_participants (dialog_id, person_id) VALUES (1, 3);
INSERT INTO dialog_participants (dialog_id, person_id) VALUES (2, 4);
INSERT INTO dialog_participants (dialog_id, person_id) VALUES (2, 5);
INSERT INTO dialog_participants (dialog_id, person_id) VALUES (3, 6);
INSERT INTO dialog_participants (dialog_id, person_id) VALUES (3, 7);
INSERT INTO dialog_participants (dialog_id, person_id) VALUES (4, 2);
INSERT INTO dialog_participants (dialog_id, person_id) VALUES (4, 3);

INSERT INTO body (id, is_deformed, human_id) VALUES (1, FALSE, 3);
INSERT INTO body (id, is_deformed, human_id) VALUES (2, TRUE, 2);
INSERT INTO body (id, human_id) VALUES (3, 1);
INSERT INTO body (id, human_id) VALUES (4, 4);
INSERT INTO body (id, human_id) VALUES (5, 5);
INSERT INTO body (id, human_id) VALUES (6, 6);
INSERT INTO body (id, human_id) VALUES (7, 7);

INSERT INTO eyes (id, emotion, color, is_mirror_of_soul, body_id) VALUES (1, 'HAPPINESS', 'GREEN', TRUE, 3);
INSERT INTO eyes (id, emotion, color, is_mirror_of_soul, body_id) VALUES (2, 'RAGE', 'BROWN', FALSE, 1);
INSERT INTO eyes (id, color, is_mirror_of_soul, body_id) VALUES (3, 'BLUE', TRUE, 2);
INSERT INTO eyes (id, color, is_mirror_of_soul, body_id) VALUES (4, 'GREEN', TRUE, 4);
INSERT INTO eyes (id, emotion, color, is_mirror_of_soul, body_id) VALUES (5, 'ANGRY', 'BLACK', TRUE, 5);
INSERT INTO eyes (id, emotion, color, is_mirror_of_soul, body_id) VALUES (6, 'JOY', 'BROWN', TRUE, 6);
INSERT INTO eyes (id, color, is_mirror_of_soul, body_id) VALUES (7, 'BLUE', TRUE, 7);

INSERT INTO body_sign (id, sign, body_id) VALUES (1, 'alive', 1);
INSERT INTO body_sign (id, sign, body_id) VALUES (2, 'not alive', 1);
INSERT INTO body_sign (id, sign, body_id) VALUES (3, 'on the edge', 3);

INSERT INTO evidence (id, is_human, human_id) VALUES (1, TRUE, 2);
INSERT INTO evidence (id, is_human, human_id) VALUES (2, FALSE, 4);
INSERT INTO evidence (id, is_human, human_id) VALUES (3, TRUE, 3);