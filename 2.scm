; 2.17
(define (last-pair list)
  (if (null? (cdr list))
    (car list)
    (last-pair (cdr list))))

(last-pair (list 23 72 149 34)) ; (34)

; 2.18 
; (34 (149 nil))
; (34 (149 (72 nil)))

(define (reverse l)
  (define (helper list acc)
    (if (null? (cdr list))
      (cons (car list) acc)
      (helper (cdr list) (cons (car list) acc))))
  (helper l '()))

(reverse (list 23 72 149 34)) ;

; 2.21
(define (square-list items)
  (if (null? items)
    ()
    (let ((x (car items)))
      (cons (* x x) (square-list (cdr items))))))

(square-list (list 23 72 149 34)) ;

(define (square-list items)
  (map (lambda (x) (* x x)) items))

(square-list (list 23 72 149 34)) ;
