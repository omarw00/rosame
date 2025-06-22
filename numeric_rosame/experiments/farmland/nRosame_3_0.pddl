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
	(<= (* (x ?b) -1) 0)
	(<= (+ (* (x ?a) 0.4472) (* (x ?b) 0.8944)) 8.0498)
	(<= (+ (* (x ?a) 0.7071) (* (x ?b) 0.7071)) 12.0208)
	(<= (+ (* (x ?b) 0.9558) (* (x ?a) 0.2941)) 6.0288)
	(= (cost ) 0))
	:effect (and 
(increase (x ?b) 1)		
(decrease (x ?a) 1)))

)