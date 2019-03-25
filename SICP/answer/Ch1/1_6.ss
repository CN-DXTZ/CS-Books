(define (sqrt x)
    (sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x)
                   x)))

(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))

(define (square x) (* x x))
                   
(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))

(display (sqrt 9))
(newline);3.00009155413138

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;用new-if重写开方函数并测试
(define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
          (else else-clause)))

(define (sqrt-iter-2 guess x)
    (new-if (good-enough? guess x)
            guess
            (sqrt-iter-2 (improve guess x)
                         x)))

(define (sqrt-2 x)
    (sqrt-iter-2 1.0 x))

;(display (sqrt-2 9))
;Chez Scheme解释器经过等待后报错: out of memory，有的解释器需要^c强行终止
;根据经验可知是由于递归层数太深爆栈了（无限递归）

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;if和new-if区别
(if #t (display "111") (display "222"))
(newline);111

(new-if #t (display "111") (display "222"))
(newline);222111

;对比可以发现：
;if只显示了true所对应的111
;但new-if不耽显示了111，还显示了222

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;问题分析
;那么问题从哪开始出现的呢
;首先cond本身其实本质和if是一样的，只显示第一个了true所对应的
(cond (#f (display "111"))
      (#t (display "222"))
      (else (display "333")))
(newline);222

;那么问题应该出在函数调用了
(define (test a b c) 999)
(display (test (display "111") (display "222") (display "333")))
(newline);333111222999
;显然先将三个参数全部求值（调用）过后（显示333111222，显示具体顺序和解释器有关，此处不深究）
;再显示最终结果999

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;错误原因
;因为应用序求值会将所有参数的值先计算出来，再进行传递
;故在sqrt-iter-2中，即使通过good-enough?本应该判断出迭代达到精度要求了，
;但已经开始计算参数的值，开始下一轮sqrt-iter-2的迭代了，并无限迭代下去

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;解决方案
;直接用cond替代if，而中间不经过函数调用
(define (sqrt-iter-3 guess x)
    (cond ((good-enough? guess x) guess)
          (else (sqrt-iter-3 (improve guess x)
                             x))))

(define (sqrt-3 x)
    (sqrt-iter-3 1.0 x))

(display (sqrt-3 9))
(newline);3.00009155413138


(exit)