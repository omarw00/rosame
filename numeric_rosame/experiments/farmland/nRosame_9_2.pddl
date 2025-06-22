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
	(<= (+ (* (cost ) -0.4472) (* (x ?a) -0.8944)) -6.2610)
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
	(<= (+ (* (cost ) 0.7900) (+ (* (x ?a) 0.0677) (* (x ?b) 0.6094))) 2.5053)
	(<= (+ (* (cost ) 0.8729) (+ (* (x ?a) 0.2182) (* (x ?b) -0.4364))) 3.9279)
	(<= (+ (* (x ?a) 0.1761) (+ (* (x ?b) 0.1761) (* (cost ) 0.9685))) 3.6979)
	(<= (+ (* (x ?b) 0.3333) (+ (* (cost ) 0.6667) (* (x ?a) -0.6667))) 0.6667)
	(<= (+ (* (x ?b) 0.3982) (+ (* (cost ) 0.9102) (* (x ?a) 0.1138))) 2.9582))
	:effect (and 
(increase (x ?b) 1)		
(decrease (x ?a) 1)))

)