#lang racket

#|
    This file contains the final version of the countdown numbers game.
|#

; A hard coded list to represent a round from the countdown number game
(define n-list (list 1 1 2 2 3 3 4 4 5 5 6 6 7 7 8 8 9 9 10 10 25 50 75 100))






;(define random-n-list (shuffle n-list))



; A list of operators which are allowed in game
;(define op-list (list '+ '- '/ '*))

;(shuffle op-list)

; Remove 4 elements from the list
; 
;(define random-n-list (remove 100 (list n-list)))

;(remove 100 (list n-list))

; ===========================================================================

; Append list of numbers and operators
; This list contains all numbers and operators
;(define full-list (append n-list op-list))

; Need to take two numbers from the lsit 
;(length (permutations full-list))

;(define dup-free (remove-duplicates (permutations full-list)))

;(length dup-free)

; Could make this function recursive and run it with the different values
; E.G (list 1 2) l (list '-)
;     (list 1 2) l (list '/)
;     (list 2 1) l (list '-)
;     (list 2 1) l (list '/)
;
; Then remove duplicates (Will be slow program though)

; Need to perform this function many times
; As list also starts and ends with the same elements
#;(define (make-rpn l)
  (append (list 1 2) l (list '+)))

; Mix lists together
; 40320 permutations
;(map make-rpn dup-free)

; **********  NEXT TO DO  **********

; Need to define stack here

; Need to make function to check and evalute the permutations
; and see which ones are valid