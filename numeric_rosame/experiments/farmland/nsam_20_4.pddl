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
	(<= (+ (* (cost ) -0.9701) (* (x ?f1) -0.2425)) -2.4254)
	(<= (+ (* (cost ) 0.9701) (* (x ?f1) 0.2425)) 4.6082)
	(<= (cost ) 2)
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
	(<= (+ (* (cost ) 0.6312) (+ (* (x ?f2) 0.6312) (* (x ?f1) -0.4508))) 1.4427)
	(<= (+ (* (x ?f1) 0.2194) (+ (* (x ?f2) 0.2194) (* (cost ) 0.9507))) 4.3876)
	(<= (+ (* (x ?f2) 0.3231) (+ (* (x ?f1) 0.1939) (* (cost ) 0.9263))) 4.1360)
	(<= (+ (* (x ?f2) 0.3511) (* (cost ) 0.9363)) 2.8090))
	:effect (and 
(increase (x ?f2) 1)		
(decrease (x ?f1) 1)))

)