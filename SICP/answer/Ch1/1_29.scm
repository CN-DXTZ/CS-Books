(define (sum term a next b)
    (if (> a b)
        0
        (+ (term a)
           (sum term (next a) next b))))

(define (integral f a b n)
    (define h (/ (- b a)
                 n))
    (define (yk k) ; y_k
        (f (+ a (* k h 1.0))))
    (define (coefficient k) ; 第k项系数
        (cond ( (or (= k 0) (= k n))
                1)
              ( (odd? k)
                4)
              (else
                2)))
    (define (term k)
        (* (coefficient k)
           (yk k)))
    (define (next k)
        (+ k 1))


    (* (sum term 0 next n) ;;; 将从 a加到b 转化为从 y_0加到y_k
       (/ h 3.0)))

(define (cube x) (* x x x))

(display (integral cube 0 1 100))
(newline) ; 0.24999999999999992
(display (integral cube 0 1 1000))
(newline) ; 0.2500000000000003



(exit)