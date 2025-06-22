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
	(<= (* (cost ) -1) 0)
	(<= (+ (* (x ?f1) -0.3162) (* (cost ) -0.9487)) -3.4785)
	(<= (+ (* (x ?f1) 0.0905) (* (cost ) 0.9959)) 1.7202)
	(= (x ?f2) 0))
	:effect (and 
(increase (cost ) 1)		
(decrease (x ?f1) 4)		
(assign (x ?f2) 2)))

(:action move-slow
	:parameters (?f1 - farm ?f2 - farm)
	:precondition (and (adj ?f1 ?f2)
	(adj ?f2 ?f1)
	(<= (* (cost ) -1) 0)
	(<= (* (x ?f1) -1) -1)
	(<= (+ (* (cost ) 0.7071) (* (x ?f1) 0.7071)) 7.0711)
	(<= (cost ) 1)
	(= (x ?f2) 0))
	:effect (and 
(assign (x ?f2) 1)		
(decrease (x ?f1) 1)))

)