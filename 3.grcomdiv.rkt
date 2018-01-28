#lang racket



; 3. Define a function grcomdiv that takes two integers and 
; returns their greatest common divisor.
; > (grcomdiv 10 15)  ==> 5

(define (grcomdiv m n)
  (if (eq? m n)
      m
      (if (> m n)
        (grcomdiv (- m n) n)
        (grcomdiv m (- n m)))))

(grcomdiv 10 15)
(grcomdiv 64 30)


; (gcd m n) 
(gcd 10 15)


; greatest common divisor
(define (grc m n)
    (if ( < m n)
        ( grc n m)
        (if ( = n 0)
            m
            (grc (modulo m n) n))))


(grc 10 15)

