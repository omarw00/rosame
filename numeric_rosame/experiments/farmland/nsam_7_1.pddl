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
	(<= (* (x ?f1) -1) -11)
	(<= (x ?f1) 19)
	(= (cost ) 0)
	(= (x ?f2) 0))
	:effect (and 
(decrease (x ?f1) 4)		
(assign (cost ) 1)		
(assign (x ?f2) 2)))

(:action move-slow
	:parameters (?f1 - farm ?f2 - farm)
	:precondition (and (adj ?f1 ?f2)
	(adj ?f2 ?f1)
	(<= (* (cost ) -1) 0)
	(<= (* (x ?f2) -1) 0)
	(<= (+ (* (cost ) 0.9879) (+ (* (x ?f1) 0.1098) (* (x ?f2) 0.1098))) 1.2074)
	(<= (+ (* (x ?f2) 0.2621) (+ (* (x ?f1) 0.0874) (* (cost ) 0.9611))) 1.1358)
	(<= (+ (* (x ?f2) 0.3333) (+ (* (cost ) 0.6667) (* (x ?f1) -0.6667))) -0.6667)
	(<= (+ (* (x ?f2) 0.4472) (* (cost ) 0.8944)) 0.8944))
	:effect (and 
(increase (x ?f2) 1)		
(decrease (x ?f1) 1)))

)