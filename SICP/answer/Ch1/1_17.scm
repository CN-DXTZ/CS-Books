(define (double a)
    (+ a a))

(define (halve a)
    (/ a 2))

(define (fast-multi a b)
    (cond ((= b 0) a) 
          ((= b 1) a) 
          ((even? b) (fast-multi (double a)
                                   (halve b)))
          (else (+ (fast-multi a 
                                 (- b 1))
                   a))))

(display (fast-multi 3 13))
(newline);39


(exit)