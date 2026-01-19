CREATE TABLE posts(post_id INTEGER PRIMARY KEY,post_content TEXT,post_date TIMESTAMP );
INSERT INTO public.posts VALUES(1,'Lorem ipsum dolor sit amet...','2023-08-25 10:15:00'),
(2,'Exploring the beauty of nature...','2023-08-26 15:30:00'),
(3,'Unveiling the latest teach trends... ','2023-08-27 12:00:00'),
(4,'Journey into the world of literature...','2023-08-28 09:45:00'),
(5,'Capturing the essence of city life...','2023-08-29 16:20:00');
CREATE TABLE "UserReaction"(reaction_id INTEGER PRIMARY KEY,user_id INTEGER,post_id INTEGER,
reaction_type VARCHAR(100),reaction_date TIMESTAMP);
INSERT INTO public."UserReaction" VALUES (1,101,1,'like','2023-08-25 10:15:00 '),(2,102,1,'comment','2023-08-25 11:30:00 '),(3,103,1,'share','2023-08-26 12:45:00 '),(4,101,2,'like','2023-08-26 15:45:00 '),(5,102,2,'comment','2023-08-27 09:20:00 '),(6,104,2,'like','2023-08-27 10:00:00'),(7,105,3, 'comment', '2023-08-27 14:30:00' ),( 8,101,3,'like','2023-08-28 08:15:00' ),(9,103,4, 'like', '2023-08-28 10:30:00' ),(10,105,4, 'share' , '2023-08-29 11:15:00 '),(11, 104,5 , 'like', '2023-08-29 16:30:00'),(12,101,5,'comment', '2023-08-30 09:45:00' );
SELECT p.post_id  ,p.post_content ,count (CASE WHEN r.reaction_type = 'like' THEN 1 END ) AS total_likes, count( CASE WHEN r.reaction_type = 'comment' THEN 1 END ) AS total_comments,count(CASE WHEN r.reaction_type = 'share' THEN 1 END )AS total_shares FROM posts p LEFT JOIN public."UserReaction" r ON p.post_id  = r.post_id GROUP BY p.post_id,p.post_content ORDER BY p.post_id;
SELECT
    avg( reactions_per_post * 1.0) AS mean_reactions
FROM (SELECT p.post_id ,COUNT (r.reaction_id ) AS reactions_per_post
    FROM posts p
    LEFT JOIN
        public."UserReaction" r ON p.post_id = r.post_id
    GROUP BY
    p.post_id) AS subquery;
SELECT p.post_id ,p.post_content ,count( r.reaction_id)AS total_reactions FROM posts p LEFT JOIN public."UserReaction" r ON p.post_id= r.post_id GROUP BY p.post_id ,p.post_content ORDER BY total_reactions DESC LIMIT 3;


CREATE TABLE "UserReactions" (reaction_id INTEGER PRIMARY KEY,user_id INTEGER,post_id INTEGER ,reaction_type VARCHAR (100),reaction_date TIMESTAMP,FOREIGN KEY (post_id) REFERENCES "POSTS"(posts_id))

INSERT INTO public."UserReactions" 
VALUES (1,101,1,'like','2023-08-25 10:15:00'),
(2,102,1,'comment','2023-08-25 11:30:00'),
(3,103,1,'share','2023-08-26 12:45:00'),
(4,101,2,'like','2023-08-26 15:45:00'),
(5,102,2,'comment','2023-08-27 09:20:00'),
(6,104,2,'like','2023-08-27 10:00:00'),
(7,105,3,'comment','2023-08-27 14:30:00'),
(8,101,3,'like','2023-08-28 08:15:00'),
(9,103,4,'like','2023-08-28 10:30:00'),
(10,105,4,'share','2023-08-29 11:15:00'),
(11,104,5,'like','2023-08-29 16:30:00'),
(12,101,5,'comment','2023-08-30 09:45:00');

public."POSTS", public."UserReactions"


