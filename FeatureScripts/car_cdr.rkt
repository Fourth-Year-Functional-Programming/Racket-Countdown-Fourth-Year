#lang racket

#|
    This file is used for having working versions of the car and cdr operations
    on a list
|#

 ; A simple list for using car and cdr
 ; List has 6 elements as this is how many numbers the list can
 ; contain in the coundown numbers game
(define l (list 1 2 3 4 5 6))

; Get first element in the list l
; Expected output is '1'
(car l)

; Get the remaining list
; Expected output is a list containing 2, 3, 4, 5, and 6
(cdr l)

