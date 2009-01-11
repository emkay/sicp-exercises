(define (rf n)
  (if (< n 3)
	n
	(+ (rf (- n 1))
	   (* 2 (rf (- n 2)))
	   (* 3 (rf (- n 3))))))

(define (f n)
  (if (< n 3)
	n
	(f-iter 0 1 2 n)))

(define (f-iter a b c counter)
  (if (= 0 counter)
	a
	(f-iter b c (+ c (* 2 b) (* 3 a)) (- counter 1))))

