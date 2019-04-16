(define tolerance 0.00001)
(define (fixed-point f first-guess)
    (define (close-enough? v1 v2)
        (< (abs (- v1 v2)) tolerance))
    (define (try guess)
        (display guess) ; 打印
        (newline)
        (let ((next (f guess)))
        (if (close-enough? guess next)
            next
            (try next))))
    (try first-guess))



(display "not average")
(newline)
(define (test1)
    (fixed-point (lambda (x) (/ (log 1000)
                                (log x)))
                 2))

(display (test1)) 
(newline) ;猜测了34次


(newline)
(display "average")
(newline)
(define (test2)
    (define (average x y)
        (/ (+ x y) 2))
    (fixed-point (lambda (x) (average x
                                      (/ (log 1000)
                                         (log x))))
                 2))

(display (test2))
(newline) ;猜测了9次
  

(exit)