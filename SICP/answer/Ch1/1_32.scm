;;; 递归
(define (accumulate-recursion combiner null-value term a next b)
    (if (> a b)
        null-value
        (combiner (term a)
                  (accumulate-recursion combiner null-value term (next a) next b))))

;;; 迭代
(define (accumulate-iter combiner null-value term a next b) 
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a)
                  (combiner (term a)
                            result))))
    (iter a null-value))


(define (inc n) (+ n 1))

;;; 递归测试
(define (product-recursion term a next b)
    (accumulate-recursion * 1 term a next b))

(define (factorial-recursion n)
    (define (identity x) x)
    (product-recursion identity 1 inc n))

(display (factorial-recursion 10))
(newline) ; 3628800


;;; 迭代测试
(define (product-iter term a next b)
    (accumulate-iter * 1 term a next b))

(define (factorial-iter n)
    (define (identity x) x)
    (product-iter identity 1 inc n))


(display (factorial-iter 10))
(newline) ; 3628800



(exit)