;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 原始
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

(define (search-for-primes Value count)
    (cond ( (= count 0) ) ; 找完了
          ( (prime? Value)
            ; (display Value)
            (search-for-primes (+ Value 2) (- count 1)) )
          (else
            (search-for-primes (+ Value 2) count) ) )) 

(define (test-runtime Value count)
    (define startTime (current-time)) 
    (search-for-primes Value count)
    (display (time-difference (current-time) startTime))
    (newline))

(display "origin release test")
(newline)
(test-runtime 1001 3)
(test-runtime 10001 3)
(test-runtime 100001 3)
(test-runtime 1000001 3)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 新版：费马检查
; 注：Chez Scheme 平方过程为 magnitude-squared，正误为#t，#f
(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (magnitude-squared (expmod base (/ exp 2) m))
                    m))
        (else
         (remainder (* base (expmod base (- exp 1) m))
                    m))))        
                    
(define (fermat-test n)
    (define (try-it a)
        (= (expmod a n n) a))
    (try-it (+ 1 (random (- n 1)))))

(define (fast-prime? n times)
    (cond ((= times 0)
            #t)
          ((fermat-test n)
            (fast-prime? n (- times 1)))
          (else
            #f)))

; 测试时间
(define (search-for-primes_2 Value count)
    (cond ( (= count 0) ) ; 找完了
          ( (fast-prime? Value 10)
            ; (display Value)
            (search-for-primes_2 (+ Value 2) (- count 1)) )
          (else
            (search-for-primes_2 (+ Value 2) count) ) )) 

(define (test-runtime_2 Value count)
    (define startTime (current-time)) 
    (search-for-primes_2 Value count)
    (display (time-difference (current-time) startTime))
    (newline))

; 测试
(display "new release test")
(newline)
(test-runtime_2 1001 3)
(test-runtime_2 10001 3)
(test-runtime_2 100001 3)
(test-runtime_2 1000001 3)


; 由于时间短不太明显，且或许是本身编译器优化过于好，原始版本反倒显得效率更高
; 故新增一组大数据组
(display "big data test")
(newline)
(test-runtime 10000000000001 3)
(test-runtime_2 10000000000001 3)
; 可以看出原始版本已经到秒级了，而费马检查版本是毫秒级
; 可取消掉打印输出的注释查看结果也是对的



(exit)