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
	(<= (* (x ?a) -1) -1)
	(<= (x ?a) 14)
	(= (cost ) 0)
	(= (x ?b) 0))
	:effect (and 
(assign (x ?b) 1)		
(decrease (x ?a) 1)))

)