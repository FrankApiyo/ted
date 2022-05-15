-- :name add-user! :! :n
-- :doc adds a new user
INSERT INTO users
(id, pass)
VALUES (:id, :pass)
