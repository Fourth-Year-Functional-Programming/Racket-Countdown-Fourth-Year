#lang racket

#|
    This file contains the final version of the countdown numbers game.
|#

; A hard coded list to represent a round from the countdown number game
(define n-list (list 1 2 3 4 25 50))

; A list of operators which are allowed in game
(define op-list (list + - / *))