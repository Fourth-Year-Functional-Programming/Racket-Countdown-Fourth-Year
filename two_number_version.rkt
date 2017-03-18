#lang racket

#|
    This file is used to have a 2 number version of the countdown game working.
    The arithmetic operators will be used to get two numbers equal a target number.
    The operations that can be used on the two numbers are +, -, / and *.
|#

#|  Example of what the program will do
    1. Have a target number E.G 100
    2. Have a list of two numbers which will be used to create the target number E.G 2, 50
    3. Have the program work out if the two numbers can equal the target number when using them with the operators allowed
|#

#|
    ==========  VARIABLES  ==========
|#

;   Simple hard coded target number for start of development
(define target 100)

;   The two numbers which have to be calculated to make the target number
(define a 50)
(define b 2)

;   Simple function to add two numbers together
(define (sum x y) (+ x y))

#|
    List of all the calculations that can be done with the 2 number version of the game 

    (a + b)
    (b + a)
    (a - b)
    (b - a)
    (a * b)
    (b * a)
    (a / b)
    (b / a)
|#

#|
    Pick random 6 numbers to get permutations
|#

;(remove-duplicates (permutations (list 10 50)))

; This gives all the permutations of the list
;(permutations (list 10 50))

; This was used to see if a list of operators could be output the same way as a list of numbers
;(permutations (list '+ '- '/ '*))

; This code was used to see and test the workings of the cartesian-product function
;(cartesian-product (list 10 50) (list '+ '- '/ '*))

; This was an alternative piece of code compared to the above code 
(cartesian-product(permutations (list 10 50 '+ '- '/ '*)))












