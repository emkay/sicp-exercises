(define (fib-golden n)
  (/ 
	(- (expt (/ (+ 1 (sqrt 5)) 2) n) 
	   (expt (/ (- 1 (sqrt 5)) 2) n))
	(sqrt 5)))
