#lang racket

(provide has-vowel?)
;;has-vowel? String -> Boolean 
;; PRE: String
;; POST: Produces a Boolean 

;; the purpose of this function is to take in a string, and return #t
;; if the str contains a vowel, else #f. 
;;

(define (has-vowel? str)
 (local 
   [(define strlst (string->list str))
  (define ans (or (member #\a strlst)
                  (member #\e strlst)
                  (member #\i strlst)
                  (member #\o strlst)
                  (member #\u strlst)))]
   (cond 
     [(cons? ans) #t]
     [else #f])))

;;(equal? (has-vowel? "shy") #f)
;;(equal? (has-vowel? "bobinsky") #t)
