#lang racket

(provide difference)

;; difference: listof Any listof Any --> Listof Any 
;PRE: listof Any listof Any 
;POST: listof Any

;; The purpose of this function is to take in two lists and return a list containing
;; elements that occure only in one of the lists not both. 

(define (difference lst1 lst2)
  (local 
    [(define (lst1-lst2 lon1 lon2)
  (cond 
    [(empty? lon1) empty]
    [(cons? (member (first lon1) lon2))(lst1-lst2 (rest lon1) lon2)]
    [else (cons (first lon1) (lst1-lst2 (rest lon1) lon2))]))

(define (lst2-lst1 lon1 lon2)
  (cond 
    [(empty? lon2) empty]
    [(cons? (member (first lon2) lon1))(lst2-lst1  lon1 (rest lon2))]
    [else (cons (first lon2) (lst2-lst1 lon1 (rest lon2)))]))]
  (sort (append (lst1-lst2 lst1 lst2)(lst2-lst1 lst1 lst2)) <)))

;(define (part1 lst1 lst2)
;    (lst1-lst2 lst1 lst2))
;
;(define (part2 lst1 lst2)
;    (lst2-lst1 lst1 lst2))
;  
;(part2 '(2 3 4) '(1 2 3 4 5))