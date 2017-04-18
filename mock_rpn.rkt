#lang racket

#|
    This file contains the mock attempt at creating a list in the form
    of RPN (Reverse Polish Notation). It will try to create a list
    with using -1 for operators and 1 for numbers.
|#

;define a list of ops and numbers
;-1 represents operators
;1 represents numbers
(define start-perm (list -1 -1 -1 -1 1 1 1 1))

; 40320 permutations with the 8 element list
(length (permutations start-perm))

; 70 permutations When duplicates are removed 
;(length (remove-duplicates (permutations start-perm)))

; Store the duplicate free list in variable
(define dup-free (remove-duplicates (permutations start-perm)))

; 
; Create procedure called make-rpn
; Add on the 2 1's at the start and -1 to the end
(define (make-rpn l)
  (append (list 1 1) l (list -1)))

; Put the 1's and -1 onto the output of dup-free at each iteration
;(length (map make-rpn dup-free))

; Show all the permutations which start and end correctly
(map make-rpn dup-free)




