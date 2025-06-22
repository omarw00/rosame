(define (domain farmland)
(:requirements :typing :fluents :negative-preconditions :equality)
(:types 	farm - object
)

(:predicates (adj ?f1 - farm ?f2 - farm)
)

(:functions (x ?b - farm)
	(cost )
)

(:action move-slow
	:parameters (?a - farm ?b - farm)
	:precondition (and (adj ?a ?b)
	(adj ?b ?a)
	(<= (* (x ?a) -1) -3)
	(<= (x ?a) 6)
	(= (cost ) 0)
	(= (x ?b) 0))
	:effect (and 
(decrease (x ?a) 1)		
(assign (x ?b) 1)))

)