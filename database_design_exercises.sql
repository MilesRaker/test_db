USE AdLister;

CREATE TABLE users(
    id int AUTO_INCREMENT NOT NULL,
    email VARCHAR(100),
    password VARCHAR(100),
    PRIMARY KEY(id)
);

CREATE TABLE ads(
    id int AUTO_INCREMENT NOT NULL,
    title VARCHAR(100) NOT NULL,
    description VARCHAR(256),
    category VARCHAR(25),
    user_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users (id)
);

CREATE TABLE ad_category (
     ad_id INTEGER NOT NULL,
     category_id INTEGER NOT NULL,
     FOREIGN KEY (ad_id) REFERENCES ads(id),
     FOREIGN KEY (category_id) REFERENCES categories(id)
);

CREATE TABLE categories(
    id INTEGER AUTO_INCREMENT NOT NULL,
    category VARCHAR(50),
    PRIMARY KEY (id)
);

/* For a given ad, what is the email address of the user that created it?
*/
SELECT email FROM users u
    JOIN ads a on u.id = a.user_id
             WHERE a.title = 'example_title';

/* For a given ad, what category, or categories, does it belong to? */
SELECT category FROM categories c
    JOIN ad_category ac on c.id = ac.category_id
    JOIN ads a on ac.ad_id = a.id
    WHERE a.title = 'example_title';

/* For a given category, show all the ads that are in that category. */
SELECT title FROM ads
    JOIN ad_category ac on ads.id = ac.ad_id
    JOIN categories c on c.id = ac.category_id
    WHERE c.category = 'example_category';

/* For a given user, show all the ads they have posted. */
SELECT title FROM ads
    JOIN users u on u.id = ads.user_id
    WHERE u.email = 'example@email.com';