-- :name artists-all
-- :command :query
-- :result n
-- :doc select all the artists with all the attributes
SELECT *
    FROM artists

-- :name artists
-- :command query
-- :result n
-- :doc select all with cols defined by {:cols [<col-name>...]}
select :i*:cols
    FROM artists

-- :name artists-by-id :? :*
-- :doc get artist info by mysic_brainz id
SELECT *
    FROM artists
WHERE mb_id = :id

-- :name artists-by-name-like :? :*
-- :doc use {:name-like "P%"} as the option param to get the P's
SELECT *
    FROM artists
WHERE name
    LIKE :name-like

-- :name new-rating :! :n
-- :doc insert new ratings
INSERT INTO ratings (artist_name, email, rating_type_name, rating)
VALUE (:artist_name, :email, :rating_type_name, :rating)

-- :name new-rating-type :! :n
-- :doc insert new rating-type
INSERT INTO rating_type (name, description)
VALUE (:name, :description)
