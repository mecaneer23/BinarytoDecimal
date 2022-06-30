#!/usr/local/bin/clojure -M
(defn binary_to_decimal [binary_number]
    (def value (str binary_number))
    (def len (count value))
    (def output 0)
    (dotimes [position len]
        (def chr (subs value position (+ position 1)))
        (if (= chr "1")
            (def output (+ output (Math/pow 2 (- (- len 1) position))))
            (if (= chr "0")
                (def output (+ output 0))
                (def output "Make sure you only input binary values")
            )
        )
    )
    output
)

(printf "Binary Number: ") (flush)
(printf "%d\n" (int (binary_to_decimal (read-line))))