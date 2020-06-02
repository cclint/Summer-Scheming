;; REVIEW OF SESSION1

;; should print out hi
(if (+ 3 4) 'hi 'hello)

;; LISP = LISt Processing 

;; returns a list with 3 4 6
(list 3 5 6)

;; tree
(list 3 (list 4 5) 6)

;; this is a string. A sequence/array of characters
"hi"

;; this is a symbol. These represent an idea. You cant break apart symbols like you can strings
'hi

;; list constructor cons
;; returns (3)
(cons 3 '())

;; creates the list (4 5 6 7)
'(4 5 6 7)

;; cons is the best when creating lists and when defining recursive functions

;; homoiconicity: Scheme is a homoiconic language 
;; which means the data and code representation are the same

;; returns a list ('list 3 4 5) where 'lists is a symbol
(list 'list 3 4 5) ;; expression we're evaluating 
(list 3 4 5) ;; value of that expression.. and this evaluates to (3 4 5)

'(expt 3 4)
;; =>
(expt 3 4)

(eval '(expt 3 4))
;; => 
81
 
 ;; END OF REVIEW 

 
