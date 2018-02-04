#lang racket

; 13. Write a procedure to-binary that takes a decimal interger and converts it into a
; list of 0’s and 1’s representing the number in binary form. The least significant bit
; should be on the right of the list.

; > (to-binary 9) => 1001
; > (to-binary 23) => 10111

; first let's look at a reverse function
(define (rev l)
    (define (rev-aux l m)
        (if (null? l)
            m
            (rev-aux (cdr l) (cons (car l) m))))
    (rev-aux l null))

(rev (list 1 2 3 4 5))

; e.g. to-binary 19 => 10%2=1
; 1 ((19-1)/2) => 1 1 ((9-1)/2) => 1 1 0 ((4-1)/2)
; => 1 1 0 0 ((2-1)/2) => 1 1 0 0 ((1-1)/2)
; => 1 1 0 0 1 --reverse--> 10011
; similarity method of reverse function
(define (to-binary m)
    (define (rev m n)
        (if (= m 0)
            n
            (rev (/ (- m (modulo m 2)) 2) (cons (modulo m 2) n))))
    (rev m null))

(to-binary 9)
(to-binary 19)