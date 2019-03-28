(define (double a)
    (+ a a))

(define (halve a)
    (/ a 2))

(define (fast-multi a b)
    (multi-iter a b 0))

(define (multi-iter a b t)
    (cond ((= b 0) t) 
          ;偶数：设b=2t，则有:a*2t=2a*t
          ((even? b) (multi-iter (double a) 
                                (halve b) 
                                t))
          ;奇数：设n=2t+1，则有:a*b^(2t+1)=(a*b)*b^2t
          (else (multi-iter a 
                           (- b 1) 
                           (+ a t)))))

(display (fast-multi 3 13))
(newline);39

    
(exit)