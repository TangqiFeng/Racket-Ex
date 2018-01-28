#lang racket



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

