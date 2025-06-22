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
	(<= (+ (* (cost ) 0.7022) (+ (* (x ?b) 0.1170) (* (x ?a) -0.7022))) 0)
	(<= (+ (* (cost ) 0.9802) (+ (* (x ?a) 0.0754) (* (x ?b) 0.1831))) 2.1112)
	(<= (+ (* (x ?a) 0.3015) (+ (* (x ?b) 0.3015) (* (cost ) 0.9045))) 5.4272)
	(<= (+ (* (x ?b) 0.3114) (+ (* (cost ) 0.9498) (* (x ?a) -0.0311))) 1.8373))
	:effect (and 
(decrease (x ?a) 1)		
(increase (x ?b) 1)))

)