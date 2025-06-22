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
	(<= (+ (* (cost ) 0.8321) (* (x ?a) -0.5547)) -3.8829)
	(<= (+ (* (cost ) 0.9701) (* (x ?a) 0.2425)) 4.3656)
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
	(<= (+ (* (cost ) 0.9535) (+ (* (x ?a) 0.0953) (* (x ?b) 0.2860))) 2.0976)
	(<= (+ (* (cost ) 0.9615) (* (x ?b) 0.2747)) 1.9230)
	(<= (+ (* (x ?b) 0.3418) (+ (* (x ?a) 0.1329) (* (cost ) 0.9303))) 2.5252))
	:effect (and 
(increase (x ?b) 1)		
(decrease (x ?a) 1)))

)