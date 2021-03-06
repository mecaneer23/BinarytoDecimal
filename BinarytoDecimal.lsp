#!/bin/clisp
(defun BinarytoDecimal(binaryNumber)
    (setq value (write-to-string binaryNumber))
    (setq len (length value))
    (setq output 0)
    (loop for position from 0 to (- len 1) do
        (setq chr (subseq value position (+ position 1)))
        (if (equal chr "1")
            (setq output (+ output (expt 2 (- (- len 1) position))))
            (if (equal chr "0")
                (setq output (+ output 0))
                (setq output "Make sure you only input binary values")
            )
        )
    )
    output
)

(princ "Binary Number: ")
(write-line (write-to-string (BinarytoDecimal (read))))
