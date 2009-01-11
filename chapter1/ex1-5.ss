; Because applicative-order evaluation evaluates the arguments and then applies them, the procedure p defined as (define (p) (p)) would call itself over and over when called with 
; (test 0 (p)) where the procedure test is defined as (define (test x y) (if (= x 0) 0 y)). Normal-order evaluation however will not have this problem because it does not evaluate the arguments, 
; but rather expands them and reduces them. (test 0 (p)) would simply return 0.
;
; Notes: I see now that I could have simplified 1.3's sum-of-squares-larger-num to use min. It would have made what was going on clearer, but I wrote it using and's first and tested it out. 
; It works so I just left it.
;

(define (square x)
  (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (sum-of-squares-larger-nums x y z)
  (cond ((and (< x y) (< x z)) (sum-of-squares y z))
		((and (< y z) (< y x)) (sum-of-squares x z))
		((and (< z x) (< z y)) (sum-of-squares x y))))

