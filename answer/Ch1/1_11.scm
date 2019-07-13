(define (f-recursion n)
    (if (< n 3)
        n
        (+ (f-recursion (- n 1)) 
           (* 2 (f-recursion (- n 2))) 
           (* 3 (f-recursion (- n 3))))))

(display (f-recursion 7))
(newline) ;142


(define (f-iteration n)
    (f-iter 2 1 0 n))
(define (f-iter a b c n)
    (if (= n 0)
        c
        (f-iter (+ a (* b 2) (* c 3)) a b  (- n 1))))

(display (f-iteration 7))
(newline) ;142


(exit)