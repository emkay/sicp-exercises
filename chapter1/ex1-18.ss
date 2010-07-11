(define (double a)
  (+ a a))

(define (halve a)
  (/ a 2))

(define (new-* a b)
  (new-*-iter 0 a b))

(define (new-*-iter p a counter)
  (cond ((= counter 0) p)
        ((even? counter)
         (new-*-iter p (double a) (halve counter)))
        (else (new-*-iter (+ p a) a (- counter 1)))))
