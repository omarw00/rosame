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
	(<= (+ (* (cost ) -0.9701) (* (x ?a) -0.2425)) -2.4254)
	(<= (+ (* (cost ) 0.9701) (* (x ?a) 0.2425)) 4.6082)
	(<= (cost ) 2)
	(= (x ?b) 0))
	:effect (and 
(assign (x ?b) 2)		
(decrease (x ?a) 4)		
(increase (cost ) 1)))

(:action move-slow
	:parameters (?a - farm ?b - farm)
	:precondition (and (adj ?a ?b)
	(adj ?b ?a)
	(<= (* (cost ) -1) 0)
	(<= (* (x ?a) -1) -1)
	(<= (* (x ?b) -1) 0)
	(<= (+ (* (cost ) 0.6312) (+ (* (x ?b) 0.6312) (* (x ?a) -0.4508))) 1.4427)
	(<= (+ (* (x ?a) 0.2194) (+ (* (x ?b) 0.2194) (* (cost ) 0.9507))) 4.3876)
	(<= (+ (* (x ?b) 0.3231) (+ (* (x ?a) 0.1939) (* (cost ) 0.9263))) 4.1360)
	(<= (+ (* (x ?b) 0.3511) (* (cost ) 0.9363)) 2.8090))
	:effect (and 
(increase (x ?b) 1)		
(decrease (x ?a) 1)))

)