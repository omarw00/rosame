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
	:parameters (?a - farm ?b - farm)
	:precondition (and (adj ?a ?b)
	(adj ?b ?a)
	(<= (* (cost ) -1) 0)
	(<= (+ (* (cost ) 0.9487) (* (x ?a) -0.3162)) -1.5811)
	(<= (+ (* (cost ) 0.9701) (* (x ?a) 0.2425)) 4.3656)
	(<= (cost ) 1)
	(= (x ?b) 0))
	:effect (and 
(increase (cost ) 1)		
(assign (x ?b) 2)		
(decrease (x ?a) 4)))

(:action move-slow
	:parameters (?a - farm ?b - farm)
	:precondition (and (adj ?a ?b)
	(adj ?b ?a)
	(<= (* (cost ) -1) 0)
	(<= (* (x ?a) -1) -1)
	(<= (* (x ?b) -1) 0)
	(<= (+ (* (cost ) 0.7001) (+ (* (x ?b) 0.1400) (* (x ?a) -0.7001))) 0)
	(<= (+ (* (cost ) 0.9631) (+ (* (x ?a) 0.1204) (* (x ?b) 0.2408))) 2.6485)
	(<= (+ (* (x ?b) 0.1961) (* (cost ) 0.9806)) 1.9612)
	(<= (+ (* (x ?b) 0.2138) (+ (* (cost ) 0.9720) (* (x ?a) 0.0972))) 2.3328)
	(<= (+ (* (x ?b) 0.2643) (+ (* (cost ) 0.9513) (* (x ?a) 0.1586))) 3.1711))
	:effect (and 
(decrease (x ?a) 1)		
(increase (x ?b) 1)))

)