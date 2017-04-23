#lang racket

#|
    This file will show use of the combination function and how it will work
    on a 6 number list.

    Calculations are referenced from
    http://www.statisticshowto.com/calculators/permutation-calculator-and-combination-calculator/
|#

;  A 6 number list to represent the numbers you could find on countdown
(define c-list (list 1 2 3 4 25 50))

; Find all the combinations with 1 number
; There will be 15 combinations
; This is calculted as follows
; 6! / 1!(6 – 1)!
; 720 / 120 = 6
;(combinations c-list 1)

; Find all the combinations with 2 numbers
; There will be 15 combinations
; This is calculted as follows
; 6! / 2!(6 – 2)!
; 720 / 48 = 15
;(combinations c-list 2)

; Find all the combinations with 3 numbers
; There will be 20 combinations
; This is calculted as follows
; 6! / 3!(6 – 3)!
; 720 / 36 = 20
;(combinations c-list 3)

; Find all the combinations with 4 numbers
; There will be 20 combinations
; This is calculted as follows
; 6! / 4!(6 – 4)!
; 720 / 48 = 15
;(combinations c-list 4)

; Find all the combinations with 5 numbers
; There will be 20 combinations
; This is calculted as follows
; 6! / 5!(6 – 5)!
; 720 / 120 = 6
;(combinations c-list 5)

; Find all the combinations with 6 numbers
; There will be 20 combinations
; This is calculted as follows
; 6! / 5!(6 – 6)!
; 720 / 720 = 1
(combinations c-list 6)