DROP DATABASE IF EXISTS assignment1;
CREATE DATABASE assignment1;
USE assignment1;

CREATE TABLE users
(
    id          int AUTO_INCREMENT,
    user_name   varchar(50) NOT NULL,
    email       varchar(50) NOT NULL,
    password    varchar(50) NOT NULL,
    role        varchar(10) DEFAULT 'member',
    create_date datetime    DEFAULT now(),
    PRIMARY KEY (id)
);

CREATE TABLE contents
(
    id          int AUTO_INCREMENT,
    title       varchar(255) NOT NULL,
    brief       text,
    content     text,
    create_date datetime DEFAULT now(),
    update_date datetime DEFAULT now(),
    user_id     int,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users (id)
);

INSERT INTO users(user_name, email, password)
VALUES ('member', 'member@gmail.com', '1234');

INSERT INTO contents (title, brief, content, user_id)
VALUES ('Sign of Four, The', 'Fuse consequent.',
        'Morbid portion lorem id ligula. Suspense ornare consequent lectures. In est rises, actor sed, tristique in, tempus sit amet, sem.',
        1),
       ('Lone Wolf and Cub', 'Present id massa id nil venenatis niacin.',
        'Praesent bandit lacinia erat. Vestibule sed magna at nun common placer. Praesent bandit.', 1),
       ('Chop Shop', 'Integer incident ante vel ipsum.',
        'Risque port volute erat. Risque erat eros, riviera get, congue get, sempre rut-rum, nulla. Nun purus.',
        1),
       ('Courage Under Fire', 'Dis consequat dui nec nisei volute effendi.',
        'Nulla mollies molest lorem. Risque ut erat. Curability gravid nisei at nibh.', 1);