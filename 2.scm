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

(reverse (list 23 72 149 34)) ; (34)
