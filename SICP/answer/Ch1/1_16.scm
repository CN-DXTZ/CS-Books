(define (fast-expt b n)
    (expt-iter b n 1))

(define (expt-iter b n a)
    (cond ((= n 0) a)
          ;偶数：设n=2t，则有:(b^t)^2=(b^2)^t
          ((even? n) (expt-iter (* b b) 
                                (/ n 2) 
                                a))
          ;奇数：设n=2t+1，则有:a*b^(2t+1)=(a*b)*b^2t
          (else (expt-iter b 
                           (- n 1) 
                           (* b a)))))

(display (fast-expt 2 10))

(exit)