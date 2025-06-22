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
	:parameters (?f1 - farm ?f2 - farm)
	:precondition (and (adj ?f1 ?f2)
	(adj ?f2 ?f1)
	(= (cost ) 0)
	(= (x ?f1) 19)
	(= (x ?f2) 0))
	:effect (and 
(assign (cost ) 1)		
(assign (x ?f2) 2)		
(assign (x ?f1) 15)))

(:action move-slow
	:parameters (?f1 - farm ?f2 - farm)
	:precondition (and (adj ?f1 ?f2)
	(adj ?f2 ?f1)
	(<= (* (cost ) -1) 0)
	(<= (+ (* (cost ) 0.7071) (* (x ?f1) -0.7071)) -0.7071)
	(<= (+ (* (x ?f1) 0.1961) (* (cost ) 0.9806)) 1.3728)
	(= (x ?f2) 0))
	:effect (and 
(decrease (x ?f1) 1)		
(assign (x ?f2) 1)))

)