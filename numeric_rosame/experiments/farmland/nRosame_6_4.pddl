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
(decrease (x ?a) 4)		
(increase (cost ) 1)		
(assign (x ?b) 2)))

(:action move-slow
	:parameters (?a - farm ?b - farm)
	:precondition (and (adj ?a ?b)
	(adj ?b ?a)
	(<= (* (cost ) -1) 0)
	(<= (* (x ?a) -1) -1)
	(<= (* (x ?b) -1) 0)
	(<= (+ (* (cost ) 0.9191) (* (x ?b) 0.3939)) 2.7574)
	(<= (+ (* (x ?b) 0.5604) (+ (* (cost ) 0.7991) (* (x ?a) 0.2179))) 4.1406))
	:effect (and 
(decrease (x ?a) 1)		
(increase (x ?b) 1)))

)