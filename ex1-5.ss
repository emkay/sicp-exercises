(define (square x)
  (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (sum-of-squares-larger-nums x y z)
  (cond ((and (< x y) (< x z)) (sum-of-squares y z))
		((and (< y z) (< y x)) (sum-of-squares x z))
		((and (< z x) (< z y)) (sum-of-squares x y))))

