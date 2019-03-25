;将原开方函数添加参数epsilon便于调整精度
(define (sqrt x epsilon)
    (sqrt-iter 1.0 x epsilon))

(define (sqrt-iter guess x epsilon)
    (if (good-enough? guess x epsilon)
        guess
        (sqrt-iter (improve guess x )
                   x
                   epsilon)))

(define (good-enough? guess x epsilon)
    (< (abs (- (square guess) x)) epsilon))

(define (square x) (* x x))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;过大或过小数据，原函数出错，用epsilon=0.001即等价于原函数
;小：1e-150^2=1e-300
(display (sqrt 1e-300 0.001))
(newline);0.03125 错误

;大：1e150^2=1e300
;(display (sqrt 1e300 0.001)) ;^c强行终止，陷入死循环，递归太深
    

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;手动调整精度以适应极端数据
(display (sqrt 1e-300 1e-305))
(newline) ;1.0000041168872887e-150 正确

(display (sqrt 1e300 1e290))
(newline) ;1.0000000000084744e150 正确

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;新开方函数，按改变值相对于目标值的变化比例衡量迭代进度
;自适应极端数据
(define (sqrt-delta x)
    (sqrt-iter-delta 1.0 x))

(define (sqrt-iter-delta guess x)
    (if (good-enough?-delta guess x)
        guess
        (sqrt-iter-delta (improve guess x)
                   x)))

(define (good-enough?-delta guess x)
    (< (abs (- (/ (square guess)
                  x)
               1))
       0.001))

(display (sqrt-delta 1e-300))
(newline);1.0000041168872887e-150
(display (sqrt-delta 1e300))
(newline);1.0000041168872888e150

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;更为极端数据，如：1e1000，1e-1000 由于scheme本身算数运算的精度无论哪种方法都不行
;(display (sqrt 1e-1000 1e-1005)) ;^c强行终止
;(display (sqrt 1e1000 1e995)) ;^c强行终止
;(display (sqrt-delta 1e1000)) ;^c强行终止
;(display (sqrt-delta 1e1000)) ;^c强行终止


(exit)