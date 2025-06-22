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
	(<= (* (x ?f2) -1) 0)
	(<= (+ (* (x ?f1) 0.7071) (* (x ?f2) 0.7071)) 12.7279)
	(<= (+ (* (x ?f2) 0.9950) (* (x ?f1) -0.0995)) 5.8707)
	(= (cost ) 0))
	:effect (and 
(decrease (x ?f1) 1)		
(increase (x ?f2) 1)))

)