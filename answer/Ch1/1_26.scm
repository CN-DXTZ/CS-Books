; 原算法，当exp为偶数时
; 可以使得通过等价计算过程 —— (remainder (square (expmod base (/ exp 2) m)) m) 
; 相比直接相乘计算过程计算量减少一半

; 而新算法，当exp为偶数时
; (remainder (* (expmod base (/ exp 2) m)
;               (expmod base (/ exp 2) m))
;            m)
; (expmod base (/ exp 2) m) 计算了两次，计算量又增加了两倍
; 所以计算量又从 logn 回到了 n