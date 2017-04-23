#lang racket

#|
    This file contains the final version of the countdown numbers game. It does not compute the result but
    comments are left below to outline the steps that are needed to make the program work fully.
|#

<<<<<<< HEAD
; A hard coded list to represent a round from the countdown number game
(define n-list (list 1 1 2 2 3 3 4 4 5 5 6 6 7 7 8 8 9 9 10 10 25 50 75 100))

=======
; Welcome message
(displayln "***** Welcome to the Countdown numbers round *****")
(displayln "")
>>>>>>> cm-countdown-17.04.22

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

<<<<<<< HEAD

=======
; An empty list which is used to store the random elements
; taken from n-list
(define random-list (list))
>>>>>>> cm-countdown-17.04.22

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
; Could make this function recursive and run it with the different values
; E.G (list 1 2) l (list '-)
;     (list 1 2) l (list '/)
;     (list 2 1) l (list '-)
(define perm-list (map make-rpn dup-free))

; ====================  Steps to check permutation for valid Reverse Polish Notation  ====================

; 1: Pass in the list of permutations and an empty list to be the stack
; 2: Check that the list is not empty - This means there are still permutations to check
; 3: Check the elements in the permutation - If it's a number put number on to the stack
;    - If it's an operator take the top two numbers from stack and evaluate them with the
;      operator
; 4: Put the new value back into the top of the stack (LIFO last in first out)
; 5: Repeat these steps throughout the permutation and take the final number and compare it
;    to the target number
; If it turns out that the permutation can not be evaluated as it's not it the correct order
; then throw out that permutation and move on to the next one

; ========================================================================================================

; This is a function to determine which permutations of the perm-list are
; in the correct order to be valid Reverse Polish Notation
(define (valid-rpn? l [stack 0]) ; e is duplicate free list, s is the stack

   ; Check if the list is empty 
   (if(null? l)
      (if(positive? stack) #t #f) ; If list is empty check if the top element on the stack is a number 
          (if (positive? (car l)) ; If list is not empty check if the top element in the list is a number 

         (valid-rpn? (cdr l)(+ 1 stack)) #f ; If element in list is a number recursively call valid-rpn? and pass in list minus top element
                                            ; and add the top element onto the stack

         )))
                                                               



