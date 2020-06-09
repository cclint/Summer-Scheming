
(cons #t #f)
;; this yields '(#t . #f)
;; car points to #f and cdr points to #f


(define x(cons(cons 3 4)5))


(define z f)
(define f (cons(d e)))
(define e (cons c '()))
(define c (cons '() 3))
(define b (cons 7 8))
(define d (cons a b))
(define a (cons 5 6))

(define z (cons (cons (cons 5 6) (cons 7 8)) (cons (cons '() 3) '()))) ;;(((5 . 6) 7 . 8) (() . 3))

;; --------------------------------------------------------------------

;; recursion on lists

(define proper-list?
(lambda (x)
    if (equal? x '())
        if (pair? x)
        (proper-list? (cdr x))
        ))))
