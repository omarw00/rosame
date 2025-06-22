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
	:parameters (?f1 - farm ?f2 - farm)
	:precondition (and (adj ?f1 ?f2)
	(adj ?f2 ?f1)
	(<= (* (x ?f1) -1) -1)
	(<= (x ?f1) 10)
	(= (cost ) 0)
	(= (x ?f2) 0))
	:effect (and 
(decrease (x ?f1) 1)		
(assign (x ?f2) 1)))

)