;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 判断素数
(define (smallest-divisor n)
    (find-divisor n 2))

(define (find-divisor n test-divisor)
    (cond ((> (* test-divisor test-divisor) n) n)
          ((divides? test-divisor n) test-divisor)
          (else (find-divisor n (+ test-divisor 1)))))

(define (divides? a b)
    (= (remainder b a) 0))

(define (prime? n)
  (= n (smallest-divisor n)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 测试运行时间
; 书中运行时间为runtime，不过Chez Scheme中没有该过程
; 参看文档 https://cisco.github.io/ChezScheme/csug9.5/csug.html 可知在Chez Scheme中：
; current-time 过程返回 "a time object representing the current time"
; 而 time object 本身不能直接相减，而通过 time-difference 过程即可
; 注意测试过程中尽量不要有display，打印输出十分耗时

(define (test-runtime1)
    (define startTime (current-time)) 
    (define result (prime? 1009))
    (display (time-difference (current-time) startTime))
    (display result)
    (newline))


; 测试
(test-runtime1)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 解：
; 打印输出十分耗时，已将结果打印输出注释掉，若想看结果可取消注释
(define (search-for-primes Value count)
    (cond ( (= count 0) ) ; 找完了
          ( (prime? Value)
            ; (display Value)
            (search-for-primes (+ Value 2) (- count 1)) )
          (else
            (search-for-primes (+ Value 2) count) ) )) 

(define (test-runtime2 Value count)
    (define startTime (current-time)) 
    (search-for-primes Value count)
    (display (time-difference (current-time) startTime))
    (newline))

; 测试
(test-runtime2 1001 3)
(test-runtime2 10001 3)
(test-runtime2 100001 3)
(test-runtime2 1000001 3)



(exit)