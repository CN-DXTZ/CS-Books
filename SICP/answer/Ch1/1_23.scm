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
; 新版：
(define (next-test-divisor n)
    (if (= n 2)
        3
        (+ n 2)))

(define (find-divisor_2 n test-divisor)
    (cond ((> (* test-divisor test-divisor) n) n)
          ((divides? test-divisor n) test-divisor)
          (else (find-divisor_2 n (next-test-divisor test-divisor)))))

(define (smallest-divisor_2 n)
    (find-divisor_2 n 2))

(define (prime?_2 n)
    (= n (smallest-divisor_2 n)))

(define (search-for-primes_2 Value count)
    (cond ( (= count 0) )
          ( (prime?_2 Value)
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

; 可以看到基数越大比例越接近2

(exit)