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
	(<= (* (x ?a) -1) -6)
	(<= (x ?a) 18)
	(= (cost ) 0)
	(= (x ?b) 0))
	:effect (and 
(decrease (x ?a) 4)		
(assign (x ?b) 2)		
(assign (cost ) 1)))

(:action move-slow
	:parameters (?a - farm ?b - farm)
	:precondition (and (adj ?a ?b)
	(adj ?b ?a)
	(<= (* (cost ) -1) 0)
	(<= (* (x ?b) -1) 0)
	(<= (+ (* (cost ) 0.9733) (+ (* (x ?a) 0.1622) (* (x ?b) 0.1622))) 3.2444)
	(<= (+ (* (cost ) 0.9899) (* (x ?b) 0.1414)) 0.9899)
	(<= (+ (* (x ?b) 0.4472) (* (x ?a) -0.8944)) -0.8944)
	(<= (+ (* (x ?b) 0.5274) (+ (* (cost ) 0.8151) (* (x ?a) -0.2397))) 0.5754))
	:effect (and 
(decrease (x ?a) 1)		
(increase (x ?b) 1)))

)