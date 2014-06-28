(def input "...You...!!!@!3124131212 Hello have this is a --- string Solved !!...? to test @\n\n\n#!#@#@%$**#$@ Congratz this!!!!!!!!!!!!!!!!one ---Problem\n\n")

(def input-split (re-seq #"[a-zA-Z0-9]+" input))

(defn input-index [index] (nth input-split (- index 1) nil))

(println (clojure.string/join " " (remove nil? (map input-index [12 -1 1 -100 4 1000 9 -1000 16 13 17 15]))))

