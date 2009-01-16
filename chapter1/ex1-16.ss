(define (square x)
  (* x x))

(define (fast-expt b n)
  (fast-expt-iter 1 b n))

(define (fast-expt-iter a b counter)
	(cond ((= counter 0) a)
		  ((even? counter) (+ a (square (fast-expt-iter a b (/ counter 2) ))))
		  (else (+ a (* b (fast-expt-iter a b (- counter 1)))))))

