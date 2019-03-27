;两个过程都是递归过程，但前者是递归计算过程（线性递归），后者是迭代计算过程（线性迭代）

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;1:递归函数在计算过程中间步骤调用自身
(define (plus1 a b)
    (if (= a 0)
        b
        (inc (plus1 (dec a) b))))
;已知应用序求值会将所有参数的值先计算出来，再进行传递
;而本法调用自身的位置为(plus1 (dec a) b)，正是inc()的参数;
;故应先计算参数(plus1 (dec a) b)，再传递给inc()即可，故(plus1 4 5)计算过程如下
(plus1 4 5)
(inc (plus1 3 5))
(inc (inc (plus1 2 5)))
(inc (inc (inc (plus1 1 5))))
(inc (inc (inc (inc (plus1 0 5)))))
(inc (inc (inc (inc 5))))
(inc (inc (inc 6)))
(inc (inc 7))
(inc 8)
9
;即为递归计算过程（线性递归）

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;2:递归函数在计算过程的最终结果调用自身
(define (plus2 a b)
    (if (= a 0)
        b
        (plus2 (dec a) (inc b))))
;本法调用自身的位置为(plus2 (dec a) (inc b))))，为最终结果，;
;故应先计算参数(dec a)、(inc b)，最终再传递给(plus2 (dec a) (inc b))即可，故(plus2 4 5)计算过程如下
(plus2 4 5)
(plus2 3 6)
(plus2 2 7)
(plus2 1 8)
(plus2 0 9)
9


