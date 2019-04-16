(define (compose f g)
    (lambda (x) (f (g x))))

(define (inc n) (+ n 1))

(display ((compose magnitude-squared inc) 6)) ; 49



(exit)