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
	(<= (+ (* (cost ) 0.9701) (* (x ?f1) 0.2425)) 4.3656)
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
	(<= (+ (* (cost ) 0.9535) (+ (* (x ?f1) 0.0953) (* (x ?f2) 0.2860))) 2.0976)
	(<= (+ (* (cost ) 0.9615) (* (x ?f2) 0.2747)) 1.9230)
	(<= (+ (* (x ?f2) 0.3418) (+ (* (x ?f1) 0.1329) (* (cost ) 0.9303))) 2.5252))
	:effect (and 
(decrease (x ?f1) 1)		
(increase (x ?f2) 1)))

)