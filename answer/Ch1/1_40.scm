 ; 寻找不动点
(define tolerance 0.00001)
(define (fixed-point f first-guess)
    (define (close-enough? v1 v2)
        (< (abs (- v1 v2)) tolerance))
    (define (try guess)
        (let ((next (f guess)))
        (if (close-enough? guess next)
            next
            (try next))))
    (try first-guess))

 ; 求导
(define (deriv g)
    (define dx 0.00001)
    (lambda (x)
        (/ (- (g (+ x dx)) (g x))
        dx)))

; 牛顿法
(define (newton-transform g)
    (lambda (x)
        (- x (/ (g x) ((deriv g) x)))))

; 牛顿法找不动点
(define (newtons-method g guess)
    (fixed-point (newton-transform g) guess))

(define (cubic a b c)
    (lambda (x)
        (+ (* x x x)
           (* a (* x x))
           (* b x)
           c)))
 
(display (newtons-method (cubic 3 2 1) 1.0)) ; -2.3247179572447267



(exit)