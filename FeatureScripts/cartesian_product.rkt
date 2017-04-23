#lang racket

#|
    This file is to demonstrate the use of the funtion cartesian-product.
    It's a function which combines the elements of two lists
    E.g Take two seperate lists (a,b) and (1,2)
    Expected Result: (a,1)(a,2)(b,1)(b,2)
|#

; A list which could be found in the countdown game
(define n-list (list 1 2 3 4 25 50))

; A list of operators allowed in countdown game
(define op-list (list '+ '- '/ '*))

; The combination of elements from each list
(cartesian-product n-list op-list)

