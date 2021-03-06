CREATE TABLE babies (id SERIAL PRIMARY KEY, name TEXT, user_id INTEGER REFERENCES users);

CREATE TABLE breastfeeding (id SERIAL PRIMARY KEY, baby_id INTEGER REFERENCES babies, date TIMESTAMP, duration TEXT);

CREATE TABLE formula (id SERIAL PRIMARY KEY, baby_id INTEGER REFERENCES babies, date TIMESTAMP, amount_ml INTEGER);

CREATE TABLE solid (id SERIAL PRIMARY KEY, baby_id INTEGER REFERENCES babies, date TIMESTAMP, amount_gr INTEGER, food TEXT);

CREATE TABLE diapers (id SERIAL PRIMARY KEY, baby_id INTEGER REFERENCES babies, date TIMESTAMP, diaper_content_id INTEGER REFERENCES diaper_content);

CREATE TABLE diaper_content (id SERIAL PRIMARY KEY, name TEXT);

CREATE TABLE weight (id SERIAL PRIMARY KEY, baby_id INTEGER REFERENCES babies, date TIMESTAMP, weight INTEGER);

CREATE TABLE users (id SERIAL PRIMARY KEY, name TEXT UNIQUE, password TEXT);

CREATE TABLE messages (id SERIAL PRIMARY KEY, user_id INTEGER REFERENCES users, baby_id INTEGER REFERENCES babies, date TIMESTAMP, content TEXT);

CREATE TABLE rights (id SERIAL PRIMARY KEY, babyowner_user_id Integer REFERENCES users, babywatcher_user_id Integer REFERENCES users, baby_id INTEGER REFERENCES babies);
