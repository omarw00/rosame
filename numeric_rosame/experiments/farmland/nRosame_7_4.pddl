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
	(<= (+ (* (cost ) 0.9285) (* (x ?a) -0.3714)) -2.5997)
	(<= (+ (* (cost ) 0.9701) (* (x ?a) 0.2425)) 4.8507)
	(= (x ?b) 0))
	:effect (and 
(assign (x ?b) 2)		
(decrease (x ?a) 4)		
(increase (cost ) 1)))

(:action move-slow
	:parameters (?a - farm ?b - farm)
	:precondition (and (adj ?a ?b)
	(adj ?b ?a)
	(<= (* (cost ) -1) 0)
	(<= (* (x ?b) -1) 0)
	(<= (+ (* (cost ) 0.0547) (+ (* (x ?b) 0.9849) (* (x ?a) -0.1642))) 0)
	(<= (+ (* (cost ) 0.7071) (* (x ?b) 0.7071)) 2.1213)
	(<= (+ (* (x ?a) 0.2037) (+ (* (cost ) 0.5431) (* (x ?b) -0.8146))) 3.2585)
	(<= (+ (* (x ?a) 0.2194) (+ (* (x ?b) 0.2194) (* (cost ) 0.9507))) 4.6070)
	(<= (+ (* (x ?b) 0.9839) (* (x ?a) -0.1789)) -0.1789))
	:effect (and 
(increase (x ?b) 1)		
(decrease (x ?a) 1)))

)