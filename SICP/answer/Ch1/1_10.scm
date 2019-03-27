(define (A x y)
    (cond ((= y 0) 0)
          ((= x 0) (* 2 y))
          ((= y 1) 2)
          (else (A (- x 1)
                   (A x (- y 1))))))

(display (A 1 10))
(newline);=2^10=1024

(display (A 2 4))
(newline);=2^2^2^2=2^16=65536

(display (A 3 3))
(newline);=(A 2 (A 2 (A 2 1))=(A 2 (A 2 2)=(A 2 (2^2))=2^2^2^2=65536

(define (f n) (A 0 n));=2*N

(define (g n) (A 1 n));=2^N

(define (h n) (A 2 n));=2^2...^2(n个2)


(exit)