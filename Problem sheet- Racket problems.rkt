#lang racket

; 1.Re-write the following expressions in Racket and evaluate them using a Racket in- terpreter/compiler.
; (a) (3×(5+(10÷5)))
( * 3 ( + 5 ( / 10 5 )))

; (b) (2+3+4+5)
( + 2 3 4 5)

; (c) (1+(5+(2+(10÷3))))
( + 1 ( + 5 ( + 2 ( / 10 3))))

; (d) (1+(5+(2+(10÷3.0))))
( + 1 ( + 5 ( + 2 ( / 10 3.0))))

; (e) (3+5)×(10÷2)
( * ( + 3 5) ( / 10 2))

; (f) (3+5)×(10÷2)+(1+(5+(2+(10÷3))))
( + ( * ( + 3 5) ( / 10 2)) ( + 1 ( + 5 ( + 2 ( / 10 3)))))



; 2. Define a procedure discount that takes two arguments: an item’s initial price and a percentage discount [2]. It should return the new price:
; > (discount 10 5)  ==> 9.50

(define (discount price discount)
  ( - price ( * price discount 0.01)))

(discount 10 5)



; 3. Define a function grcomdiv that takes two integers and returns their greatest common divisor.
; > (grcomdiv 10 15)  ==> 5
; adapt from: http://blog.csdn.net/iwm_next/article/details/7450424
(define (grcomdiv m n)
  (if (eq? m n)
      m
      (if (> m n)
      (grcomdiv (- m n) n)
      (grcomdiv m (- n m)))))

(grcomdiv 10 15)



; 4. Write a function called appearances that returns the number of times its first argu- ment appears as a member of its second argument [2].




; 5. Write a procedure inter that takes two lists as arguments. It should return a list containing every element that appears in both lists, exactly once.
