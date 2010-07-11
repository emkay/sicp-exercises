(define (double a)
  (+ a a))

(define (halve a)
  (/ a 2))

(define (new-* a b)
  (new-*-iter a b))

(define (new-*-iter a counter)
  (cond ((= counter 1) a)
        ((even? counter) 
         (new-*-iter (double a) (halve counter)))
        (else (+ a (new-*-iter a (- counter 1))))))
