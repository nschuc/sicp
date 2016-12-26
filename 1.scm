; 1.2
(/ 
  (+ 5 1 (- 2 (- 3 (+ 6 (/ 1 5)))))
  (* 3 (- 6 2) (- 7 2))
  )

; 1.3
(define (sum-of-squares a b)
  (+ (* a a) (* b b)))

(define
  (larger x y)
    (if (> x y) x y)
    )       

(larger 5 2)
(larger 2 5)

(define (sum-of-largest-two a b c)
    (if (= a (larger a b))
      (sum-of-squares a (larger b c))
      (sum-of-squares b (larger a c))
    )
)

(sum-of-largest-two 1 2 3)
(sum-of-largest-two 3 2 1)
(sum-of-largest-two 2 3 1)
(sum-of-largest-two 1 3 2)

; 1.4

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
