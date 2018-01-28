#lang racket

; 2. Define a procedure discount that takes two arguments: an item’s initial price 
; and a percentage discount [2]. It should return the new price:
; > (discount 10 5)  ==> 9.50

(define (discount price discount)
  ( * price (- 1.0 ( * discount 0.01))))

(discount 10 5)
(discount 29.9 50)