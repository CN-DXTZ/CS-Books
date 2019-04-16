(define (cont-frac-iter N D k)
    (define (iter result k)
        (if (= 0 k)
            result
            (iter (/ (N k)
                     (+ (D k)
                        result))
                  (- k 1))))
    (iter 0 k))

(define (e)
    (define (N k) 1)
    (define (D k)
        (if (= 0 
               (remainder (+ k 1) 
                          3))
            (* 2 
               (/ (+ k 1) 
                  3))
            1))
    (+ (cont-frac-iter N D 1000)
       2.0))
  
(display (e)) ; 2.718281828459045

(exit)