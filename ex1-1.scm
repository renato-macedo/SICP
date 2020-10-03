(define (sqr a) (* a a))

(define (sum-of-sqrs a b) (+ (sqr a) (sqr b)))

(define (sum-of-sqrs-of-two-lg-nums a b c) 
    (cond ((and (= (max a b c) a) (= (min a b c) c)) (sum-of-sqrs a b))
        ((and (= (max a b c) b) (= (min a b c) a)) (sum-of-sqrs b c))
        ((and (= (max a b c) b) (= (min a b c) c)) (sum-of-sqrs a b))
        ((and (= (max a b c) c) (= (min a b c) a)) (sum-of-sqrs b c))
        (else (sum-of-sqrs a c))
    )
)
