#lang racket

#|
    This file contains the mock attempt at creating a list in the form
    of RPN (Reverse Polish Notation). It will try to create a list
    with using -1 for operators and 1 for numbers.
|#

#|
    Useful functions for testing
    (displayln X)
|#

;define a list of ops and numbers
;-1 represents operators
;1 represents numbers
(define start-perm (list -1 -1 -1 -1 1 1 1 1))

; 40320 permutations with the 8 element list
;(length (permutations start-perm))

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
;(map make-rpn dup-free)

;(null? dup-free)

; define procedure valid-rpn?
; valid-rpn takes 2 arguments
; second argument is stack or set to 0 as default value
; optional arguement to the func with default value of 0
#|(define (valid-rpn? e [s 0]) ; e is duplicate free list, s is the stack 
   (if(null? e)    ; check if list is null

     ; This won't work in final version
     ; It's only true is values are the exact same
     ; Here it's mock testing if both elements are numbers
     ; In final version the test is to check if both elements are numbers E.G 12 and 34
     ; The other scenario is that one or both elements are operators
     (if (= s 1) #t #f) ; What element of s is being compared??????

      ; if the first thing on e is 1 (A number)
      ; needs an else to be valid if statement  
     (if(= (car e) 1) ; if top element of dup free list is equal to 1 (A Number)

        
         (valid-rpn? (cdr e)(+ 1 s)) #f ; cdr returns the list with the previuos top element 

         ;fill this part in
         )))
|#

#|(define (valid-rpn? e [s 0])
   (if(null? e)
      (displayln dup-free)))
|#

; Function for testing if statements
; If list is not null display list
; else print error message
;(define (valid-rpn? e [s 0])
  ;(if (null? e) (error "doesn't get here")  (displayln dup-free)))

; If dup-free list 
;(valid-rpn? dup-free)

; Define two numbers and test whether they are the same type
(define num1 10)
(define num2 20)
(define number-string "number")

; Define an operator to test against a number
(define op1 '+)

; If statement to test how the equals evalutes numbers
; Result: = operator tests if number are the exact same value
; (if (= num1 num2) #t #f)

; =====  See how the valid-rpn function is working step by step  =====

#|
; list e
(define e (list 1 2 3 '+ '+))

 ; list stack has one element which is 0
(define stack (list 1))

; valid-rpn is id
; Pass in two arguments e and s
(define (valid-rpn? e [stack 0])

  ; body is here

   ; check is list is empty
   ; If it isn't empty go into next if statement
  (if(null? e) #t (if (= (car stack) 1) #t #f) )

  (if (= (car e) 1 (valid-rpn? (cdr e)(+ 1 s)) ) ; If car of list is a number return number??
                                                 ; Else pass in the list again
  
  
  ); End body of function

; call valid-rpn? here
(valid-rpn? e stack)

  ;(if(null? e) #t #f)  
|#












      

