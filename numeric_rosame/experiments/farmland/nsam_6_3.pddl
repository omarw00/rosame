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
	(<= (+ (* (cost ) -0.9615) (* (x ?f1) -0.2747)) -3.5714)
	(<= (+ (* (cost ) 0.9701) (* (x ?f1) 0.2425)) 4.3656)
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
	(<= (+ (* (cost ) 0.7900) (+ (* (x ?f1) 0.0677) (* (x ?f2) 0.6094))) 2.5053)
	(<= (+ (* (cost ) 0.8729) (+ (* (x ?f1) 0.2182) (* (x ?f2) -0.4364))) 3.9279)
	(<= (+ (* (x ?f1) 0.1761) (+ (* (x ?f2) 0.1761) (* (cost ) 0.9685))) 3.6979)
	(<= (+ (* (x ?f2) 0.3333) (+ (* (cost ) 0.6667) (* (x ?f1) -0.6667))) 0.6667)
	(<= (+ (* (x ?f2) 0.3982) (+ (* (cost ) 0.9102) (* (x ?f1) 0.1138))) 2.9582))
	:effect (and 
(increase (x ?f2) 1)		
(decrease (x ?f1) 1)))

)