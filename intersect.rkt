#lang racket

(provide intersect)

;;intersect: (listof Any) (listof Any) --> (listof Any)
;;PRE: two (listof Any) 
;;POST: one (listof Any)

;; The purpose of this function is to take in two listof Any, and return a listof Any 
;; which contains the elements in which appear both the lists. 

(define (intersect lon1 lon2)
  (cond 
    [(empty? lon1) empty]
    [(cons? (member (first lon1) lon2))(cons (first lon1) (intersect (rest lon1) lon2))]
    [else (intersect (rest lon1) lon2)]))

;;(intersect '(1 2 3 4 5) '(5 6 7 8 9 10 11))
