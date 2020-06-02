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


;; Lists (the 4 main concepts)

;; 1. empty list ()
'() ;; evaluates to the empty list
(list) ;; as an aside, this expression also evaluates to the empty list

;; 2. cons (list constructor)
(cons #f (cons 7 '()))
;; 3. head (returns the first element in a list)
(first '(1 2 3)) ;; returns 1
;; =>
1

;; the first of the empty list produces an error

;; 4. rest (returns the rest of the list)

(rest '(1 2 3))
;; =>
;; (2 3)


;; pairs

;; 'cons' constructs pairs not lists
;; lists are special types of pair structures (or the empty list)

;; (cons 3 4)
;;=>
;; (3 . 4) this is a pair structure 

(cons 1 (cons 2(cons 3 (cons 4 '()))) ;; returns ( 1 2 3 4)

;; what is a list?
;;
;; inductive definition
;; 1. the empty list [base case]
;; 2. or, a cons pair whose cdr (or rest) is a list [inductive/recursive case]

(list? '()) ;; returns #t (true), where list? is a predicate

;; The real story:
;; cons constructs pairs. some pairs are lists, but not all

;;(cons(cons 1 2)(cons 3 4))
;;=>
;;((1 . 2) 3 . 4)
;;
;; (define x (cons(cons 1 2)(cons 3 4)))
;; (cdar x) 
;; =>
;; 2