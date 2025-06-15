
CREATE TABLE "user" (
    id SERIAL PRIMARY KEY,
    user_name VARCHAR(25) NOT NULL
)

INSERT INTO "user"(user_name) VALUES 
                                ('Abu Raihan'),
                                ('akash'),
                                ('batash'),
                                ('sagor'),
                                ('nodi');


CREATE TABLE "post" (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id) 
    )



INSERT INTO "post"(title, user_id) VALUES
                                ('Enjoying a sunny day with Akash! ☀️', 2),
                                ('Batash just shared an amazing recipe! 🍲', 1),
                                ('Exploring adventures with Sagor.🌟', 4),
                                ('Nodi''s wisdom always leaves me inspired. 📚', 4);

SELECT * FROM "user"

SELECT * FROM post

DROP Table post

DROP Table "user"

SELECT * FROM post
JOIN "user" ON post.user_id = "user".id 

INSERT INTO post (id, title, user_id) VALUES
                 (5, 'This is testing title', NULL)

SELECT * FROM post
LEFT JOIN "user" ON post.user_id = "user".id 

SELECT * FROM post
RIGHT OUTER JOIN "user" ON post.user_id = "user".id 