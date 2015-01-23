#lang racket
(provide list-range)
;;list-range: Nat Nat -> Listof Nat 
;; PRE: num1 >= num2
;;POST: produce a listof Nat

;; the purpose of this function is to take in 2 natural numbers num1 and num2 and return all 
;; the numbers between the two. 

(define (list-range num1 num2)
  (cond
    [(> num1 num2) empty]
    [else (cons num1 (list-range (add1 num1) num2))]))

;(list-range 2 9)
;(list-range 2 10)
;(list-range 2 2)
;(list-range 6 9)