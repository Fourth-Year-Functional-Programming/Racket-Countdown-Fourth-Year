#lang racket

#|
   This file is used create a list of random numbers
|#

; A hard coded list to represent a round from the countdown number game
(define n-list (list 1 1 2 2 3 3 4 4 5 5 6 6 7 7 8 8 9 9 10 10 25 50 75 100))

; Empty list to store random elments from n-list
(define ran-list (list))

; Code obtained from http://stackoverflow.com/questions/4174839/random-function-in-scheme
; Retrives one random element from the given list
; ** Issue with putting the retrieved element into a list **
(define (random-element list)
 (list-ref list (random (length list))))


; Append the two lists
; list-ref is returning number, append is looking for list
;(append ran-list (list-ref list (random (length list)))))