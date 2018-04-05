;;construct a string from letters and their corresponding indexes
(defun mystring(Letters Index)
 (if (not(null Index))(progn
 (setq pair (list (fetch(car(car Index)) Letters)(fetch(car(cdr(car Index))) Letters)))
 (cons pair (mystring Letters (cdr Index))))NIL))
(defun fetch(n list)
    (if(not(integerp n)) (error "Index ~S is a non-integer value" n))
    (if(< n 0)(error "Index ~F must be a positive value" n))
    (if (equal 1 n) (car list) (fetch (- n 1) (cdr list)))
    )