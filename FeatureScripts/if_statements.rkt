#lang racket

#|
    This file is used to have working versions of if statements.
    Functions and information can be found at the link below
    https://docs.racket-lang.org/reference/if.html
|#

#|
; define a negative value
(define neg-num -10)

; A string to give a positive result
(define success "Number is positive")

; Function to return true or false if number is negative
; Function should retrun false 
(positive? neg-num)

; An if statement to determine if a number is positive
; If statement takes 3 arguments
; 1: Is the argument to test against
; 2: Is the argument that returns true
; 3: Is the argument that returns false
(if (positive? neg-num) (error "Number is not positive") success)

|#

(define stack (list ))

(define l (list 1))

; if null?    #True                              # false Check
;(if(null? l)  (if (positive? (car stack)) #t #f) #f)

                ; work on stack        ; null stack?
( if (null? l) (if (positive? (car stack)) #t #f) (if (positive? (car l)) #t #f))

    ; expecting number not empty list
    ;


 ;(if (null? stack) ;if true place number on stack #f) (if (= stack 1) #t #f)