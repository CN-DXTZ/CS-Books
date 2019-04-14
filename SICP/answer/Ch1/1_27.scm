(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (magnitude-squared (expmod base (/ exp 2) m))
                    m))
        (else
         (remainder (* base (expmod base (- exp 1) m))
                    m))))        
                    
(define (fermat-test n)
    (define (try-it a)
        (= (expmod a n n) a))
    (try-it (+ 1 (random (- n 1)))))

(define (fast-prime? n times)
    (cond ((= times 0)
            #t)
          ((fermat-test n)
            (fast-prime? n (- times 1)))
          (else
            #f)))

(display (fast-prime? 561 10000))
(newline) ; #t
(display (fast-prime? 1105 10000))
(newline) ; #t
(display (fast-prime? 1729 10000))
(newline) ; #t
(display (fast-prime? 2465 10000))
(newline) ; #t
(display (fast-prime? 2821 10000))
(newline) ; #t
(display (fast-prime? 6601 10000))
(newline) ; #t



(exit)