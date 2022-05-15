-- :name add-user! :i :n
-- :doc adds a new user
INSERT INTO "user" (username, password)
VALUES (:username, :password);
-- :name create-user-table! :!
CREATE TABLE "user" (
    id_num SERIAL PRIMARY KEY,
    username VARCHAR (40),
    password VARCHAR (40)
);
-- :name add-user-returning! :i :1
-- :doc adds a new user returning the id
INSERT INTO "user" (username, password)
VALUES(:id, :password)
returning id_num;
-- :name add-users! :! :n
-- :doc add multiple users
INSERT INTO "user" (username, password)
VALUES :t * :users;
-- :name find-user :? :1
-- :doc find the user with the matching ID
SELECT *
FROM "user"
WHERE username = :username;
-- :name find-by-matching-ids :? :*
-- :doc find users with matching IDs
SELECT *
FROM "user"
WHERE username IN (:v * :usernames);
-- :name drop-user-table! :!
DROP TABLE "user";