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
	(<= (+ (* (cost ) 0.7071) (* (x ?a) -0.7071)) -0.7071)
	(<= (+ (* (x ?a) 0.1240) (* (cost ) 0.9923)) 1.2403)
	(= (x ?b) 0))
	:effect (and 
(assign (x ?b) 1)		
(decrease (x ?a) 1)))

)