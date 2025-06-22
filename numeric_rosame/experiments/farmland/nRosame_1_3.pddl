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
	(<= (* (x ?b) -1) 0)
	(<= (x ?b) 7)
	(= (+ (x ?a) (x ?b)) 18)
	(= (cost ) 0))
	:effect (and 
(increase (x ?b) (+ (* (x ?a) -0.5000) (+ (* (x ?b) -0.5000) 10)))		
(decrease (x ?a) (+ (* (x ?a) 0.5000) (+ (* (x ?b) 0.5000) -8)))))

)