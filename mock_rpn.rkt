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