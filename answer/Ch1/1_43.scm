(define (compose f g)
    (lambda (x) (f (g x))))

; 递归版
(define (repeated f n)
    (if (= n 1)
        f
        (compose f
                 (repeated f (- n 1)))))

; 迭代版
; (define (repeated f n)
;     (define (iter result i)
;         (if (= i n)
;             result
;             (compose f
;                      (repeated f (- n 1)))))
;     (iter f 1))

(display ((repeated magnitude-squared 2) 5)) ; 625


(exit)