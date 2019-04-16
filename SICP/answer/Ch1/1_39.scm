(define (cont-frac-iter N D k)
    (define (iter result k)
        (if (= 0 k)
            result
            (iter (/ (N k)
                     (+ (D k)
                        result))
                  (- k 1))))
    (iter 0.0 k))

(define (tan-cf x)
    (define (N i)
        (if (= i 1)
            x
            (- (* x x))))
    (define (D i)
        (- (* i 2) 1))
    (cont-frac-iter N D 1000))
  
(display (tan-cf 1)) ; 1.557407724654902



(exit)