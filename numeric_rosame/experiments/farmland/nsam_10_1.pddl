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
	(<= (+ (* (cost ) 0.9701) (* (x ?f1) 0.2425)) 4.3656)
	(<= (+ (* (x ?f1) 0.1240) (* (cost ) 0.9923)) 2.7288)
	(= (x ?f2) 0))
	:effect (and 
(increase (cost ) 1)		
(assign (x ?f2) 2)		
(decrease (x ?f1) 4)))

(:action move-slow
	:parameters (?f1 - farm ?f2 - farm)
	:precondition (and (adj ?f1 ?f2)
	(adj ?f2 ?f1)
	(<= (* (cost ) -1) 0)
	(<= (* (x ?f1) -1) -1)
	(<= (* (x ?f2) -1) 0)
	(<= (+ (* (x ?f1) 0.1925) (+ (* (x ?f2) 0.1925) (* (cost ) 0.9623))) 3.8490)
	(<= (+ (* (x ?f2) 0.2245) (+ (* (cost ) 0.9670) (* (x ?f1) 0.1209))) 3.1426)
	(<= (+ (* (x ?f2) 0.3333) (+ (* (cost ) 0.6667) (* (x ?f1) -0.6667))) 0.6667)
	(<= (+ (* (x ?f2) 0.5708) (+ (* (cost ) 0.8086) (* (x ?f1) -0.1427))) 2.1404))
	:effect (and 
(decrease (x ?f1) 1)		
(increase (x ?f2) 1)))

)