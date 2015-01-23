#lang racket

(provide range-missing)
;;range-missing: Listof Num Num Num --> listof Num 
;;PRE: b > a 
;;POST: produce a listof Num

;; The purpose of this function if to produce all the numbers missing from the lon, which are within
;; the range of a to b

(define (range-missing lon a b)
  (local 
    [(define base-list (append (filter (lambda (x) (>= x a)) (build-list b identity)) (list b)))
     
     (define (filterlst lon base-list)
       (cond
         [(empty? base-list) empty]
         [(cons? (member (first base-list) lon)) (filterlst lon (rest base-list))]
         [else (cons (first base-list) (filterlst lon (rest base-list)))]))
     ]
     (filterlst lon base-list)))

;(equal? (range-missing '(1 2 4) 2 6) '(3 5 6))
;(equal? (range-missing '(1 2 4 7 8) 2 6) '(3 5 6))
;(equal? (range-missing '(1 3 5 7 9) 2 12) '(2 4 6 8 10 11 12))
;(equal? (range-missing '(0 1 2 3 4) 4 5) '(5))
;(equal? (range-missing '(1 2 3 4 5) 6 13) '(6 7 8 9 10 11 12 13))