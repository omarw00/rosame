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
	(<= (* (x ?a) -1) -11)
	(<= (x ?a) 19)
	(= (cost ) 0)
	(= (x ?b) 0))
	:effect (and 
(assign (cost ) 1)		
(assign (x ?b) 2)		
(decrease (x ?a) 4)))

(:action move-slow
	:parameters (?a - farm ?b - farm)
	:precondition (and (adj ?a ?b)
	(adj ?b ?a)
	(<= (* (cost ) -1) 0)
	(<= (* (x ?b) -1) 0)
	(<= (+ (* (cost ) 0.9879) (+ (* (x ?a) 0.1098) (* (x ?b) 0.1098))) 1.2074)
	(<= (+ (* (x ?b) 0.2621) (+ (* (x ?a) 0.0874) (* (cost ) 0.9611))) 1.1358)
	(<= (+ (* (x ?b) 0.3333) (+ (* (cost ) 0.6667) (* (x ?a) -0.6667))) -0.6667)
	(<= (+ (* (x ?b) 0.4472) (* (cost ) 0.8944)) 0.8944))
	:effect (and 
(increase (x ?b) 1)		
(decrease (x ?a) 1)))

)