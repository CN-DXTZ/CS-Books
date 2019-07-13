(define (pascal row col)
    (cond ((> col row) (display "error"))
          ((or (= col 0) (= row col)) 1)
          (else (+ (pascal (- row 1) (- col 1))
                   (pascal (- row 1) col)))))

(display (pascal 4 2)) ;6
                    
                    
(exit)