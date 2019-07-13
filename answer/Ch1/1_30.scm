(define (sum term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a)
                  (+ (term a)
                     result))))
    (iter a 0))
    
(define (integral f a b dx)
    (define (add-dx x) (+ x dx))
    (* (sum f (+ a (/ dx 2.0)) add-dx b)
        dx))

(define (cube x) (* x x x))

(display (integral cube 0 1 0.01)) ; 0.24998750000000042



(exit)