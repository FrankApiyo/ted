(ns ted.sql
  (:require [hugsql.core :as hugsql]))

;; (hugsql/def-db-fns "ted/sql/festival.sql")

(hugsql/def-db-fns "ted/sql/user.sql")
