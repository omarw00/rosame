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
	(<= (* (cost ) -1) 0)
	(<= (* (x ?a) -1) -6)
	(<= (+ (* (x ?a) 0.1240) (* (cost ) 0.9923)) 2.7288)
	(<= (+ (* (x ?a) 0.1961) (* (cost ) 0.9806)) 3.7262)
	(= (x ?b) 0))
	:effect (and 
(decrease (x ?a) 4)		
(increase (cost ) 1)		
(assign (x ?b) 2)))

(:action move-slow
	:parameters (?a - farm ?b - farm)
	:precondition (and (adj ?a ?b)
	(adj ?b ?a)
	(<= (* (cost ) -1) 0)
	(<= (* (x ?a) -1) -1)
	(<= (* (x ?b) -1) 0)
	(<= (+ (* (cost ) 0.9191) (* (x ?b) 0.3939)) 2.7574)
	(<= (+ (* (x ?a) 0.1925) (+ (* (x ?b) 0.1925) (* (cost ) 0.9623))) 3.8490)
	(<= (+ (* (x ?b) 0.2245) (+ (* (cost ) 0.9670) (* (x ?a) 0.1209))) 3.1426)
	(<= (+ (* (x ?b) 0.2294) (+ (* (cost ) 0.6882) (* (x ?a) -0.6882))) 0.6882)
	(<= (+ (* (x ?b) 0.4409) (+ (* (cost ) 0.8965) (* (x ?a) -0.0441))) 2.6013))
	:effect (and 
(decrease (x ?a) 1)		
(increase (x ?b) 1)))

)