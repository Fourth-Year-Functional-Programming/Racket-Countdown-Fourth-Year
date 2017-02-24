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