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
	(<= (* (x ?f2) -1) 0)
	(<= (x ?f2) 7)
	(= (+ (x ?f1) (x ?f2)) 18)
	(= (cost ) 0))
	:effect (and 
(increase (x ?f2) (+ (* (x ?f1) -0.5000) (+ (* (x ?f2) -0.5000) 10)))		
(decrease (x ?f1) (+ (* (x ?f1) 0.5000) (+ (* (x ?f2) 0.5000) -8)))))

)