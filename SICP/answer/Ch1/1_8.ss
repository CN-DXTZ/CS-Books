(define (cbrt x)
    (cbrt-iter 1.0 x))

(define (cbrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (cbrt-iter (improve guess x)
                   x)))

(define (good-enough? guess x)
    (< (abs (- (cube guess) x)) 0.001))

(define (cube x) (* x x x))

(define (improve guess x)
    (/ (+ (/ x (* guess guess)) (* 2 guess))
       3))

(display (cbrt 27))
(newline);3.0000005410641766

(exit)