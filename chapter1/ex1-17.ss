(define (double a)
  (+ a a))

(define (halve a)
  (/ a 2))

(define (new-* a b)
  (cond ((= b 1) a)
        ((even? b) 
         (new-* (double a) (halve b)))
        (else (+ a (new-* a (- b 1))))))
