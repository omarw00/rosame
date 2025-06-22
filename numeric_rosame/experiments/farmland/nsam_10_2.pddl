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
	(<= (+ (* (cost ) 0.8321) (* (x ?f1) -0.5547)) -3.8829)
	(<= (+ (* (cost ) 0.9701) (* (x ?f1) 0.2425)) 4.8507)
	(<= (cost ) 2)
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
	(<= (+ (* (cost ) 0.9330) (+ (* (x ?f1) 0.2545) (* (x ?f2) -0.2545))) 4.8347)
	(<= (+ (* (x ?f1) 0.2194) (+ (* (x ?f2) 0.2194) (* (cost ) 0.9507))) 4.6070)
	(<= (+ (* (x ?f2) 0.5053) (+ (* (x ?f1) 0.1404) (* (cost ) 0.8515))) 3.6772))
	:effect (and 
(decrease (x ?f1) 1)		
(increase (x ?f2) 1)))

)