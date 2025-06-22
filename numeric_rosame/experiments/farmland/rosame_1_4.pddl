(define (domain farmland)
(:requirements :typing :fluents)
(:types 	farm - object
)

(:predicates (adj ?f1 - farm ?f2 - farm)
)

(:functions (x ?b - farm)
	(cost )
)

(:action move-fast
	:parameters (?a - farm ?b - farm)
	:precondition (and )
	:effect (and (adj ?b ?a)))

(:action move-slow
	:parameters (?a - farm ?b - farm)
	:precondition (and (adj ?a ?b) (adj ?b ?a))
	:effect (and ))

)