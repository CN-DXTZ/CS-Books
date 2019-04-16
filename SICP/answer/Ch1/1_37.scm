;;; 递归 1 -> k
(define (cont-frac-recursion N D k)
    (define (recursion i)
        (if (= i k)
            (/ (N i) (D i))
            (/ (N i)
               (+ (D i)
                  (recursion (+ i 1))))))
    (recursion 1))
    
(define (golden-ratio-recursion)
    (/ 1.0 
       (cont-frac-recursion (lambda (i) 1)
                            (lambda (i) 1)
                            1000)))

(display  (golden-ratio-recursion)) 
(newline) ; 1.6180339887498947


;;; 迭代 k -> 1
(define (cont-frac-iter N D k)
    (define (iter result k)
        (if (= 0 k)
            result
            (iter (/ (N k)
                     (+ (D k)
                        result))
                  (- k 1))))
    (iter 0 k))

(define (golden-ratio-iter)
    (/ 1.0 
       (cont-frac-iter (lambda (i) 1)
                       (lambda (i) 1)
                       1000)))

(display  (golden-ratio-iter))
(newline) ; 1.6180339887498947
  


(exit)