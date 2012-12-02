atom

turkey

1492

u

*abc$

(atom)

(atom turkey or)

xyz

(x y z)

((x y) z)

(how are you doing so far)

(((how) are) ((you) (doing so)) far)

()

(() () () ())

(car '(a b c))

(car '((a b c) x y z))

(car 'hotdog)

(car '())

;; The Law of Car
;; - the primitive `car` is defined only for non-empty lists

(car '(((hotdogs)) (and) (pickle) relish))

(car (car '(((hotdogs)) (and))))

(car '(((hotdogs)) (and)))

(car '((hotdogs)))

(cdr '(a b c))

(cdr '((a b c) x y z))

(cdr '(hamburger))

(cdr '((x) t r))

(cdr 'hotdogs)

(cdr '())

;; The Law of Cdr
;; - the primitive `cdr` is defined only for non-empty lists
;; - the `cdr` of any non-empty list is always another list

(car (cdr '((b) (x y) ((c)))))

(cdr (cdr '((b) (x y) ((c)))))

(cdr (car '(a (b (c)) d)))

(cons 'peanut '(butter and jelly))

(cons '(banana and) '(peanut butter and jelly))

(cons '((help) this) '(is very ((hard) to learn)))

(cons '(a b (c)) '())

(cons 'a '())

(cons '((a b c)) 'b)

;; The Law of Cons
;; - the primitive `cons` takes two arguments
;; - the second argument to `cons` must be a list
;; - the result is a list

(cons 'a (car '((b) c d)))

(cons 'a (cdr '((b) c d)))

(null? '())

(null? '(a))

(null? (quote ()))

(null? '(a b c))

(null? 'a)

;; in practice, `null?` is false for everthing, except the empty list

;; The Law of Null
;; - the primitive `null?` is defined only for lists

(atom? 'Harry)

(atom? '(Harry had a heap of apples))

(atom? (car '(Harry had a heap of apples)))

(atom? (cdr '(Harry had a heap of apples)))

(atom? (cdr '(Harry)))

(atom? (car (cdr '(swing low sweet cherry oat))))

(atom? (car (cdr '(swing (low sweet) cherry oat))))

(eq? 'Harry 'Harry)

(eq? 'Harry 'harry)

(eq? 'margarine 'butter)

(eq? '() '(strawberry))

(eq? '(strawberry) '(strawberry))

(eq? 6 7)

;; The Law of Eq?
;; - the primitive `eq?` takes two arguments
;; - each must be a non-numeric atom

(eq? (car '(Mary had a little lamb chop)) 'Mary)

(eq? (cdr '(soured milk)) 'milk)

(eq? (car '(beans beans we need jelly beans)) (car (cdr '(beans beans we need jelly beans))))
