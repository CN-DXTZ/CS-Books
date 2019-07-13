(define (iterative-improve close-enough? improve)
    (define (try guess)
        (display guess)
        (newline)
        (let ((next (improve guess)))
             (if (close-enough? guess next)
                 next
                 (try next))))
    (lambda (first-guess) (try first-guess)))

(define (fixed-point f)
    (define (close-enough? v1 v2)
        (< (abs (- v1 v2)) 0.00001))
    (define (improve y)
        (define (average a b)
            (/ (+ a b ) 2))
        (average y (f y)))
    ((iterative-improve close-enough? improve) 1.0))

(define (sqrt x)
    (define (f y)
        (/ x y))
    (fixed-point f))

(display (sqrt 4))

(exit)