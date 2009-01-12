(define (ptriangle x y)
  (if (or (= x 0) 
		  (= y 1) 
		  (> y x))
	1
	(+ (ptriangle (- x 1) (- y 1)) (ptriangle (- x 1) y))))
