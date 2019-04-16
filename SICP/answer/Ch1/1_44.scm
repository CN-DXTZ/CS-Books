(define dx 0.00001)

(define (smooth f)
    (lambda (x)
        (/ (+ (f (- x dx))
              (f x)
              (f (+ x dx)))
            3)))

(display ((smooth magnitude-squared) 5))
(newline) ; 25.000000000066663



(define (compose f g)
    (lambda (x) (f (g x))))

(define (repeated f n)
    (define (iter result i)
        (if (= i n)
            result
            (compose f
                     (repeated f (- n 1)))))
    (iter f 1))

(define (smooth-n f n)
    ((repeated smooth n) f))

(display ((smooth-n magnitude-squared 10) 5))
(newline) ; 25.000000000666663


(exit)