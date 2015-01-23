#lang racket

(provide name-game-f name-game-m name-game-b)

(define (vowel? char)
 (local 
   [
  (define ans (or (equal? #\a char)
                  (equal? #\e char)
                  (equal? #\i char)
                  (equal? #\o char)
                  (equal? #\u char)))]
   (cond 
     [(equal? #t ans) #t]
     [else #f])))


;; MAIN ASSEMBLY HALL 

(define (name-game-f name)
  (local 
    [(define nom (string->list name))
     ;;ONLY USE IN NON-SPECIAL LINE 
     (define (get-rest str)
       (local 
         [(define name-list (string->list str))
          (define (get-rest-list lst)
            (cond 
              [(equal? (vowel? (first lst)) #t) (cons #\f lst)]
              [else (get-rest-list (rest lst))]))]  
    (list->string (get-rest-list name-list ))))]
   (cond 
     [(equal? #\f (first nom))  (list->string (rest nom))]
     [else (get-rest name)])))

(define (name-game-b name)
  (local 
    [(define nom (string->list name))
     ;;ONLY USE IN NON-SPECIAL LINE 
     (define (get-rest str)
       (local 
         [(define name-list (string->list str))
          (define (get-rest-list lst)
            (cond 
              [(equal? (vowel? (first lst)) #t) (cons #\b lst)]
              [else (get-rest-list (rest lst))]))]  
    (list->string (get-rest-list name-list ))))]
   (cond 
     [(equal? #\b (first nom)) (list->string(rest nom))]
     [else (get-rest name)])))

(define (name-game-m name)
  (local 
    [(define nom (string->list name))
     ;;ONLY USE IN NON-SPECIAL LINE 
     (define (get-rest str)
       (local 
         [(define name-list (string->list str))
          (define (get-rest-list lst)
            (cond 
              [(equal? (vowel? (first lst)) #t) (cons #\m lst)]
              [else (get-rest-list (rest lst))]))]  
    (list->string (get-rest-list name-list ))))]
   (cond 
     [(equal? #\m (first nom)) (list->string(rest nom))]
     [else (get-rest name)])))


(printf "What is your first name?") 
(define nameinput (read))
(printf "~a, ~a, bo-~a,\n" (symbol->string nameinput) (symbol->string nameinput) (name-game-b (symbol->string nameinput)))
(printf "banana-fana fo-~a\n" (name-game-f (symbol->string nameinput)))
(printf "fee-fi-mo-~a\n" (name-game-m (symbol->string nameinput)))
(printf "~a!\n" (symbol->string nameinput))

;
;(printf "~a, ~a ,bo-~a \n" (symbol->string nameinput) (symbol->string nameinput) (get-rest (symbol->string nameinput)))
;(printf "banana-fana fo-~a \n" (get-rest (symbol->string nameinput)))
;(printf "fee-fi-mo-~a \n" (get-rest (symbol->string nameinput)))
;(printf "~a ! \n" (symbol->string nameinput)) 