;;compute tetranicci series
(defun tetranicci_r(var)
 (cond 
     ((< var 4) 0)
     ((equal var 4) 1)
     (t (+ (tetranicci_r (- var 1))(tetranicci_r (- var 2))(tetranicci_r (- var 3))(tetranicci_r (- var 4)))) 
     )
    )

(write (tetranicci_r 10))

(defun tetranicci_i(var)
   (setq first 0)
   (setq second 0)
   (setq third 0)
   (setq fourth 1)
    (loop for i from 1 to (- var 4) do
     (setq next (+ first second third fourth)) 
      (setq first second)
      (setq second third)
      (setq third fourth)
      (setq fourth next)
                (terpri))
    next
    )
(write (tetranicci_i 10))
