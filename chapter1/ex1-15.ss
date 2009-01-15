; a. 
; (sine 12.5)
; (p (sine 4.049))
; (p (p (sine 1.349)))
; (p (p (p (sine 0.449))))
; (p (p (p (p (sine 0.149)))))
; (p (p (p (p (p (sine 0.049))))))
;
; p gets evaluated 5 times.
;
; b. order of growth for space is Theata(n) and number of steps is Theata(lg n)?
;
(define (cube x) (* x x x))

(define (p x) (- (* 3 x) (* 4 (cube x))))

(define (sine angle)
  (if (not (> (abs angle) 0.1))
	angle
	(p (sine (/ angle 3.0)))))
