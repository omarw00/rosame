(define (domain farmland)
(:requirements :typing :fluents :negative-preconditions :equality)
(:types 	farm - object
)

(:predicates (adj ?f1 - farm ?f2 - farm)
)

(:functions (x ?b - farm)
	(cost )
)

(:action move-fast
	:parameters (?f1 - farm ?f2 - farm)
	:precondition (and (adj ?f1 ?f2)
	(adj ?f2 ?f1)
	(<= (* (cost ) -1) 0)
	(<= (+ (* (cost ) 0.9487) (* (x ?f1) -0.3162)) -1.5811)
	(<= (+ (* (cost ) 0.9701) (* (x ?f1) 0.2425)) 4.3656)
	(<= (cost ) 1)
	(= (x ?f2) 0))
	:effect (and 
(decrease (x ?f1) 4)		
(assign (x ?f2) 2)		
(increase (cost ) 1)))

(:action move-slow
	:parameters (?f1 - farm ?f2 - farm)
	:precondition (and (adj ?f1 ?f2)
	(adj ?f2 ?f1)
	(<= (* (cost ) -1) 0)
	(<= (* (x ?f1) -1) -1)
	(<= (* (x ?f2) -1) 0)
	(<= (+ (* (cost ) 0.7001) (+ (* (x ?f2) 0.1400) (* (x ?f1) -0.7001))) 0)
	(<= (+ (* (cost ) 0.9631) (+ (* (x ?f1) 0.1204) (* (x ?f2) 0.2408))) 2.6485)
	(<= (+ (* (x ?f2) 0.1961) (* (cost ) 0.9806)) 1.9612)
	(<= (+ (* (x ?f2) 0.2138) (+ (* (cost ) 0.9720) (* (x ?f1) 0.0972))) 2.3328)
	(<= (+ (* (x ?f2) 0.2643) (+ (* (cost ) 0.9513) (* (x ?f1) 0.1586))) 3.1711))
	:effect (and 
(decrease (x ?f1) 1)		
(increase (x ?f2) 1)))

)