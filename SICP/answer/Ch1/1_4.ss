(define (a-plus-abs-b a b)
    ((if (> b 0) + -) a b))
;允许将表达式: (if (> b 0) + -)
;作为运算符

(exit)