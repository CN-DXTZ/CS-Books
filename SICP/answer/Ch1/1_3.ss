(define (square x) (* x x))

(define (sum-of-squares x y) 
    (+ (square x) (square y)))

(define (f a b c) 
    (cond ((and (< a b) (< a c)) (sum-of-squares b c))
          ((and (< b a) (< b c)) (sum-of-squares a c))
          (else (sum-of-squares a b))))

;;;test
(display (f 1 2 3))
(newline);13

(display (f 5 4 6))
(newline);61

(display (f 9 8 7))
(newline);145

(exit)