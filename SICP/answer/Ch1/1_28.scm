(define (expmod base exp m)
    (cond ((= exp 0)
            1)
          ((nontrivial-square-root? base m) ; 判断是否为非平凡方根
            0)                                              
          ((even? exp)
            (remainder (magnitude-squared (expmod base (/ exp 2) m))
                       m))
          (else
            (remainder (* base (expmod base (- exp 1) m))
                       m))))

(define (nontrivial-square-root? a n)
    (and (not (= a 1))
         (not (= a (- n 1)))
         (= 1 (remainder (magnitude-squared a) n))))

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
(newline) ; #f
(display (fast-prime? 1105 10000))
(newline) ; #f
(display (fast-prime? 1729 10000))
(newline) ; #f
(display (fast-prime? 2465 10000))
(newline) ; #f
(display (fast-prime? 2821 10000))
(newline) ; #f
(display (fast-prime? 6601 10000))
(newline) ; #f

(display (fast-prime? 7 100))
(newline) ; #t
(display (fast-prime? 13 100))
(newline) ; #t



(exit)