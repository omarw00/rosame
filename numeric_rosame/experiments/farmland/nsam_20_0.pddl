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
	(<= (* (x ?f1) -1) -6)
	(<= (+ (* (x ?f1) 0.1240) (* (cost ) 0.9923)) 2.7288)
	(<= (+ (* (x ?f1) 0.1961) (* (cost ) 0.9806)) 3.7262)
	(= (x ?f2) 0))
	:effect (and 
(assign (x ?f2) 2)		
(decrease (x ?f1) 4)		
(increase (cost ) 1)))

(:action move-slow
	:parameters (?f1 - farm ?f2 - farm)
	:precondition (and (adj ?f1 ?f2)
	(adj ?f2 ?f1)
	(<= (* (cost ) -1) 0)
	(<= (* (x ?f1) -1) -1)
	(<= (* (x ?f2) -1) 0)
	(<= (+ (* (cost ) 0.9191) (* (x ?f2) 0.3939)) 2.7574)
	(<= (+ (* (x ?f1) 0.1925) (+ (* (x ?f2) 0.1925) (* (cost ) 0.9623))) 3.8490)
	(<= (+ (* (x ?f2) 0.2245) (+ (* (cost ) 0.9670) (* (x ?f1) 0.1209))) 3.1426)
	(<= (+ (* (x ?f2) 0.2294) (+ (* (cost ) 0.6882) (* (x ?f1) -0.6882))) 0.6882)
	(<= (+ (* (x ?f2) 0.4409) (+ (* (cost ) 0.8965) (* (x ?f1) -0.0441))) 2.6013))
	:effect (and 
(decrease (x ?f1) 1)		
(increase (x ?f2) 1)))

)