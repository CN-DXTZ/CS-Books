(define (f g)
    (g 2))

(f f) ; attempt to apply non-procedure 2
; 尝试应用非过程2
; (f f)
; ⇨ (f g=f) ⇨ (f 2)
; ⇨ (f g=2) ⇨ (2 2)
; 而2不是个过程






(exit)