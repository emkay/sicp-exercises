; When we use new-if instead of if it results in a stack overflow. The reason for this is that new-if is not defined as a special form and will evaulate each argument
; using applicative -order evaluation instead of normal order evaluation. This causes the recursive call in sqrt-iter to infinitely recurse because before we take into 
; account what good-enough? returns. 
;
(define (average x y)
  (/ (+ x y) 2))

(define (square x)
  (* x x))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.0001))

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
		(else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
		  guess
		  (sqrt-iter (improve guess x)
					 x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))


(sqrt 15)
