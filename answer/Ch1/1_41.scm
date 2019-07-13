(define (double f)
    (lambda (x) (f (f x)) ))

(define (inc n) (+ n 1))

(display ((double inc) 3))
(newline) ; 5

(display (((double (double double)) inc) 5))
(newline) ; 21
; ((((inc)^2)^2)^2) -> (((+2)^2)^2) -> ((+4)^2) -> (+16)

(display (((double (double (double double))) inc) 5))
(newline) ; 261



(exit)