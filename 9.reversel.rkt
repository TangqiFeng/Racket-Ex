#lang racket

; 9. Write a function called reversel that takes a list and returns it reversed.

(define (reversel l)
    (define (rev-aux l m)
        (if (null? l)
            m
            (rev-aux (cdr l) (cons (car l) m))))
    (rev-aux l null))

(reversel (list 1 2 3 4 5))