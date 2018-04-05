;;checking if two trees have the same structure recusively
(defun same_structure(tree otree)

(if (and (null tree)(null otree)) (return-from same_structure t))
(if(or(and(listp(car tree))(not (listp (car otree))))(and (listp(car otree))(not (listp (car tree)))))(return-from same_structure NIL))
(if (and(listp (car tree))(listp (car otree)))  
    (progn 
         (if(same_structure (car tree)(car otree))
            (progn 
                (if(same_structure (cdr tree)(cdr otree))
                   (return-from same_structure t)
                   (return-from same_structure NIL)
                   )
       
                )
                                                    
       ))
            (progn
                (if(same_structure (cdr tree)(cdr otree))
                   (return-from same_structure t)
                   (return-from same_structure NIL)
                   )
    )
    )
    )