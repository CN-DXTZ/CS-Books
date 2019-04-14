;;; 以递归为例
(define (filtered-accumulate combiner null-value term a next b valid?)
    (if (> a b)
        null-value
        (if (valid? a)
            (combiner (term a)
                  (filtered-accumulate combiner null-value term (next a) next b valid?))
            (filtered-accumulate combiner null-value term (next a) next b valid?) )))

; prime?
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


;;; 素数和
(define (primes-sum a b)
    (define (identity x) x)
    (define (inc n) (+ n 1))
    (filtered-accumulate + 0 identity a inc b prime?))

(display (primes-sum 1 10))
(newline) ; 18


;;; 小于n的所有互素积
(define (gcd a b)
    (if (= b 0)
        a
        (gcd b (remainder a b))))

(define (coprime-product n)
    (define (identity x) x)
    (define (inc n) (+ n 1))
    (define (coprime? i)
        (= 1 (gcd i n)))
    (filtered-accumulate * 1 identity 1 inc n coprime?))

(display (coprime-product 10))
(newline) ; 189


(exit)