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
	(<= (+ (* (cost ) 0.9285) (* (x ?f1) -0.3714)) -2.5997)
	(<= (+ (* (cost ) 0.9701) (* (x ?f1) 0.2425)) 4.8507)
	(= (x ?f2) 0))
	:effect (and 
(assign (x ?f2) 2)		
(decrease (x ?f1) 4)		
(increase (cost ) 1)))

(:action move-slow
	:parameters (?f1 - farm ?f2 - farm)
	:precondition (and (adj ?f1 ?f2)
	(adj ?f2 ?f1)
	(<= (* (cost ) -1) 0)
	(<= (* (x ?f2) -1) 0)
	(<= (+ (* (cost ) 0.0547) (+ (* (x ?f2) 0.9849) (* (x ?f1) -0.1642))) 0)
	(<= (+ (* (cost ) 0.7071) (* (x ?f2) 0.7071)) 2.1213)
	(<= (+ (* (x ?f1) 0.2037) (+ (* (cost ) 0.5431) (* (x ?f2) -0.8146))) 3.2585)
	(<= (+ (* (x ?f1) 0.2194) (+ (* (x ?f2) 0.2194) (* (cost ) 0.9507))) 4.6070)
	(<= (+ (* (x ?f2) 0.9839) (* (x ?f1) -0.1789)) -0.1789))
	:effect (and 
(increase (x ?f2) 1)		
(decrease (x ?f1) 1)))

)