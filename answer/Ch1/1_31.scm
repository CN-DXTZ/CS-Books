(define (product-recursion term a next b) ; 递归
    (if (> a b)
        1
        (* (term a)
           (product-recursion term (next a) next b))))

(define (product-iter term a next b) ; 迭代
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a)
                          (* (term a)
                          result))))
    (iter a 1))
    
(define (inc n) (+ n 1))

;;; 阶乘（递归）
(define (factorial n)
    (define (identity x) x)
    (product-recursion identity 1 inc n))


(display (factorial 10))
(newline) ; 3628800



;;; Π（递归）
(define (pi n)
    ; 本方法直接通过k分别计算出分母和分子
    ; 也可以通过奇偶条件判断分别确定分子分母
    (define (term k)
        (/ (* 2
              (+ 1 
                 (floor (/ k 2)))) ; 分母
           (+ 1.0 
              (* 2 
                 (floor (/ (+ k 1)
                           2)))))) ; 分子

    (* 4 (product-iter term 1 inc n)))

(display (pi 100000)) ; 3.141608361277941



(exit)