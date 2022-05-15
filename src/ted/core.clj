(ns ted.core
  (:gen-class))

(defn -main
  "I don't do a whole lot ... yet."
  [& _args]
  (println "Hello, World!"))

;; (hugsql/def-db-fns "ted/sql/user.sql")
;; (create-user-table! db)
;; (add-user! db  {:username "apiyo" :password "ihavesecretsbutnotsomany"})
;; (add-user-returning! db {:id "hug2" :password "return"})
;; (add-users! db {:users [["bob" "Bob"] ["alice" "Alice"]]})
;; (find-user db {:username "bob"})
;; (find-user db {:username "apiyo"})
;; (find-by-matching-ids db {:usernames ["alice" "bob" "nobody"]})
;; (find-by-matching-ids db {:usernames ["alice" "bob" "nobody" "apiyo"]})
