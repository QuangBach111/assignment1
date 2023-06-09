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
VALUES ('bach', 'bach@gmail.com', '1234')

INSERT INTO contents (title, brief, content, user_id)
VALUES ('Sign of Four, The', 'Fusce consequat.',
        'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.',
        1),
       ('Lone Wolf and Cub', 'Praesent id massa id nisl venenatis lacinia.',
        'Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit.', 1),

       ('Chop Shop', 'Integer tincidunt ante vel ipsum.',
        'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.',
        1),

       ('Courage Under Fire', 'Duis consequat dui nec nisi volutpat eleifend.',
        'Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh.', 1);