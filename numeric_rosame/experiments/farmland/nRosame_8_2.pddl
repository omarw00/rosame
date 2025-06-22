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
	(<= (+ (* (cost ) 0.9701) (* (x ?a) 0.2425)) 4.3656)
	(<= (cost ) 2)
	(= (x ?b) 0))
	:effect (and 
(increase (cost ) 1)		
(assign (x ?b) 2)		
(decrease (x ?a) 4)))

(:action move-slow
	:parameters (?a - farm ?b - farm)
	:precondition (and (adj ?a ?b)
	(adj ?b ?a)
	(<= (* (cost ) -1) 0)
	(<= (* (x ?a) -1) -1)
	(<= (* (x ?b) -1) 0)
	(<= (+ (* (x ?a) 0.1761) (+ (* (x ?b) 0.1761) (* (cost ) 0.9685))) 3.6979)
	(<= (+ (* (x ?a) 0.1961) (* (cost ) 0.9806)) 3.9223)
	(<= (+ (* (x ?b) 0.2030) (+ (* (x ?a) 0.1692) (* (cost ) 0.9644))) 3.6209)
	(<= (+ (* (x ?b) 0.2245) (+ (* (cost ) 0.9670) (* (x ?a) 0.1209))) 3.1426)
	(<= (+ (* (x ?b) 0.3333) (+ (* (cost ) 0.6667) (* (x ?a) -0.6667))) 0.6667)
	(<= (+ (* (x ?b) 0.5708) (+ (* (cost ) 0.8086) (* (x ?a) -0.1427))) 2.1404))
	:effect (and 
(increase (x ?b) 1)		
(decrease (x ?a) 1)))

)