(defproject ted "0.1.0-"
  :description "ted -- exploring hugsql"
  :url "https://www.hugsql.org"
  :dependencies [[org.clojure/clojure "1.10.3"]
                 [org.postgresql/postgresql "9.4.1207"]
                 [com.layerware/hugsql "0.4.5"]]
  :main ^:skip-aot ted.core
  :target-path "target/%s"
  :profiles {:uberjar {:aot :all
                      ;;  :jvm-opts ["-Dclojure.compiler.direct-linking=true"]
                       }})
