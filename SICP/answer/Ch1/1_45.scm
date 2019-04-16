; 建立一个对x开n-exp次方根,通过平均阻尼n-average次的函数
; 寻找不动点值
(define (fixed-point f-next first-guess)
    (define tolerance 0.00001)  
    (define (close-enough? v1 v2)
        (< (abs (- v1 v2)) tolerance))

    (define (try guess)
        (let ((next (f-next guess)))
        (if (close-enough? guess next)
            next
            (try next))))

    (try first-guess))

; 重复函数
(define (repeated f n)
    (define (compose g h)
        (lambda (x) (g (h x))))
    (define (iter result i)
        (if (= i n)
            result
            (compose f
                     (repeated f (- n 1)))))
    (iter f 1))

; 平均阻尼函数
(define (average-damp fixed-fun)
    (define (average a b)
        (/ (+ a b ) 2))
    (lambda (x y n-exp) (average y (fixed-fun x y n-exp))))
; 指数（多次）平均阻尼
(define (exp-average-damp fixed-fun n-average)
  ((repeated average-damp n-average) fixed-fun))


; 指数函数
(define (expt_ base n-exp)
    (if (= n-exp 0)
        1
        ((repeated (lambda (x) (* base x)) n-exp) 1)))

; 不动函数
(define (fixed-fun x y n-exp)
    (/ x (expt_  y (- n-exp 1))))

 
; 手动调整平均阻尼次数n-average开n-exp次方根函数
(define (nth-root-manual x n-exp n-average)
    ; 下一个点
    (define (f-next y)
        ((exp-average-damp fixed-fun n-average) x y n-exp))
        
    (fixed-point f-next 1.0)) 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 测试开方次数 n-exp 和平方阻尼次数 n-average 之间的关系
(display (nth-root-manual 2 1 1)) ; 1-1
(newline) ; 1.9999923706054688

(display (nth-root-manual 4 2 1)) ; 2-1
(newline) ; 2.000000000000002

(display (nth-root-manual 8 3 1)) ; 3-1
(newline) ; 1.9999981824788517

; (display (nth-root-manual 16 4 1)) ;×××××× 4-1
(display (nth-root-manual 16 4 2)) ; 4-2
(newline) ; 2.0000000000021965

(display (nth-root-manual 32 5 2)) ; 5-2
(newline) ; 2.0000015129957607

(display (nth-root-manual 64 6 2)) ; 6-2
(newline) ; 2.0000029334662086

(display (nth-root-manual 128 7 2)) ; 7-2
(newline) ; 2.0000035538623377

; (display (nth-root-manual 256 8 2)) ;×××××× 8-2
(display (nth-root-manual 256 8 3)) ; 8-3
(newline) ; 2.0000000000039666

(display (nth-root-manual 32768 15 3)) ;15-3
(newline) ; 2.0000040951543028

; (display (nth-root-manual 65536 16 3)) ;×××××× 16-3
(display (nth-root-manual 65536 16 4)) ; 16-4
(newline) ; 2.0000000000769576


; 通过上述可以发现开方次数 n-exp 和平方阻尼次数 n-average 之间的关系为:
; floor(log_2(n-exp))=n-average
; 自动(调整平均阻尼次数)n-exp次方根函数
(define (nth-root-automatic x n-exp)
    ; 自动调整平均阻尼次数
    (define (log_2 x) 
        (/ (log x) (log 2)))
    (define (n-average-auto n)
        (if (= n 1)
            1
            (floor (log_2 n))))
    ; 下一个点
    (define (f-next y)
        ((exp-average-damp fixed-fun (n-average-auto n-exp)) x y n-exp))
        
    (fixed-point f-next 1.0)) 

(newline)
(display "test auto")
(newline)
(display (nth-root-automatic 2 1))
(newline) ; 1.9999923706054688
(display (nth-root-automatic 4 2))
(newline) ; 2.000000000000002
(display (nth-root-automatic 8 3))
(newline) ; 1.9999981824788517
(display (nth-root-automatic 16 4))
(newline) ; 2.0000000000021965
(display (nth-root-automatic 127 7))
(newline) ; 1.997764214328329
(display (nth-root-automatic 256 8))
(newline) ; 2.0000000000039666
(display (nth-root-automatic 32768 15))
(newline) ; 2.0000040951543028
(display (nth-root-automatic 65536 16))
(newline) ; 2.0000000000769576



(exit)