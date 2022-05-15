(ns ted.db)

(def db
  {:classname "org.postgresql.Driver"
   :subprotocol "postgresql"
   :subname "//localhost:4444/thedbitself"
   :user "thedbuser"
   :password "thedbpassowrd"
;;    :sslmode "require"
   })
