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
	(<= (+ (* (cost ) 0.9899) (* (x ?a) 0.1414)) 2.6870)
	(<= (+ (* (x ?a) -0.1961) (* (cost ) -0.9806)) -2.5495)
	(<= (cost ) 1)
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
	(<= (+ (* (cost ) 0.7071) (* (x ?a) -0.7071)) 0)
	(<= (+ (* (x ?a) 0.0767) (* (cost ) 0.9971)) 2.1475)
	(<= (+ (* (x ?a) 0.7071) (* (cost ) -0.7071)) 9.8995)
	(= (x ?b) 0))
	:effect (and 
(decrease (x ?a) 1)		
(assign (x ?b) 1)))

)