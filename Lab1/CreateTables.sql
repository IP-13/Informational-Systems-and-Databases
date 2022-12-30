CREATE TABLE IF NOT EXISTS human
(
    id      INT PRIMARY KEY,
    name    VARCHAR(20) NOT NULL,
    surname VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS human_sex
(
    human_id INT REFERENCES human (id),
    sex      VARCHAR(1) NOT NULL
);

CREATE TABLE IF NOT EXISTS dialog
(
    id    INT PRIMARY KEY,
    theme VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS dialog_participants
(
    dialog_id INT REFERENCES dialog (id),
    person_id INT REFERENCES human (id),
    PRIMARY KEY (dialog_id, person_id)
);

CREATE TABLE IF NOT EXISTS body
(
    id          INT PRIMARY KEY,
    is_deformed BOOLEAN DEFAULT (FALSE),
    human_id    INT REFERENCES human (id)
);

CREATE TABLE IF NOT EXISTS eyes
(
    id                INT PRIMARY KEY,
    emotion           VARCHAR(20) DEFAULT ('sadness'),
    color             VARCHAR(20) NOT NULL,
    is_mirror_of_soul BOOLEAN     DEFAULT (FALSE),
    body_id           INT REFERENCES body (id)
);

CREATE TABLE IF NOT EXISTS body_sign
(
    id      INT PRIMARY KEY,
    sign    VARCHAR(20) UNIQUE NOT NULL,
    body_id INT REFERENCES body (id)
);

CREATE TABLE IF NOT EXISTS evidence
(
    id       INT PRIMARY KEY,
    is_human BOOLEAN NOT NULL,
    human_id INT REFERENCES human (id)
);