#lang racket

#|
    This file will show use of the combination function and how it will work
    on a 6 number list.
|#

;  A 6 number list to represent the numbers you could find on countdown
(define c-list (list 1 2 3 4 25 50))

; Find all the combinations with 2 numbers
; There will be 15 combinations
(combinations c-list 2)
