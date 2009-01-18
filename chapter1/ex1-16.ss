(define (square x)
  (* x x))

(define (fast-expt b n)
  (fast-expt-iter 1 b n))

(define (fast-expt-iter a b counter)
	(cond ((= counter 0) a)
		   ((even? counter) (fast-expt-iter a (square b) (/ counter 2)))
		   (else (fast-expt-iter (* a b) b (- counter 1)))))
