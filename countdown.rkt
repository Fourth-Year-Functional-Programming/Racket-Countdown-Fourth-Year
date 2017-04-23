#lang racket

#|
    This file contains the final version of the countdown numbers game.
|#

(displayln "***** Welcome to the Countdown numbers round *****")
(displayln "")

; A hard coded list to represent the numbers which can appear
; during the numbers round from countdown
; List contains 24 numbers
(define n-list (list 1 1 2 2 3 3 4 4 5 5 6 6 7 7 8 8 9 9 10 10 25 50 75 100))

; A hard coded list of operators which are allowed to be
; used in numbers round
(define op-list (list '+ '- '/ '*))

; A hard coded target number
(define target (random 101 999))

; Display target number to screen
(display "Target number is: ")
(display target)

; Append list of numbers and operators
; This list contains all numbers and operators
; ** Not final list: contains too many elements  **
(define full-list (append n-list op-list))

; An empty list which is used to store the random elements
; taken from n-list
(define random-list (list))

; An empty list to represent the stack that will be used
; for converting permutations into valid Reverse Polish Notation
(define stack (list))

; Mock list to repesent what the final list should look like
(define mock-list (list 1 2 3 4 '+ '/ '-))

; dup-free contains 5040 permutations
(define dup-free (remove-duplicates (permutations mock-list)))

; The list created here is it a form which can produce
; permutations which contain valid Reverse Polish Notation
; ** Need to perform this function many times as every permutation of this list will start and end with the same elements  **
(define (make-rpn l)
  (append (list 5 6) l (list '*)))

; Mix lists together
; However the first two elements and the last element is never changed
; This means that not all permutations are in this list
(define perm-list (map make-rpn dup-free))

; This is a function to determine which permutations of the perm-list are
; in the correct order to be valid Reverse Polish Notation
#|(define (valid-rpn? l [stack 0]) ; e is duplicate free list, s is the stack


   ; This won't work in final version
   ; It's only true is values are the exact same
   ; Here it's mock testing if both elements are numbers
   ; In final version the test is to check if both elements are numbers E.G 12 and 34
   ; The other scenario is that one or both elements are operators
   (if(null? l)
      (if (= stack 1) #t #f) ; If list is null Check if element is a number
          (if(= (car l) 1) ; if top element of dup free list is equal to 1 (A Number)

        
         (valid-rpn? (cdr l)(+ 1 stack)) #f ; cdr returns the list with the previuos top element 

         ;fill this part in
         )))
|#                                                                 
;( if (null? l)  (if (= stack 1) #t #f)  (if (= (car l) 1)  (valid-rpn? (cdr l)(+ 1 stack)) #f ) )
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

; ==========  UNUSED FUNCTIONS  ==========

;(define random-n-list (shuffle n-list))

;(random-n-list)

; A list of operators which are allowed in game
;(define op-list (list '+ '- '/ '*))

;(shuffle op-list)

; Remove 4 elements from the list
; 
;(define random-n-list (remove 100 (list n-list)))

;(remove 100 (list n-list))