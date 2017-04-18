#lang racket

#|
    This file will show use of the permutation function and how it will work
    on a 6 number list.

    Calculations are referenced from
    http://www.statisticshowto.com/calculators/permutation-calculator-and-combination-calculator/
|#

;  A 6 number list to represent the numbers you could find on countdown
(define p-list (list 1 2 3 4 25 50))

; A list which contains the 6 numbers and the operators which can be used
(define op-list (list 1 2 3 4 25 50 + - / *))


; Find all the permutations of a list with 6 numbers
; There are no duplicates
; There will be 720 permutations
; This is calculted as follows
; 6! / (6 – 6)!
; 720 / 1 = 720
;(permutations p-list)

; Will print out the number of permutations that are found in a 10 element list
;(length (permutations op-list))

; Find all the permutations of a list with 10 elements
; There are no duplicates
; There will be 3628800 permutations
; This is calculted as follows
; 10! / (10 – 10)!
; 3628800 / 1 = 3628800
(length(permutations op-list))


