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
	(<= (+ (* (cost ) 0.9899) (* (x ?f1) 0.1414)) 2.8284)
	(<= (+ (* (x ?f1) -0.3162) (* (cost ) -0.9487)) -3.1623)
	(<= (cost ) 1)
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
	(<= (* (x ?f2) -1) 0)
	(<= (+ (* (cost ) 0.3333) (+ (* (x ?f2) 0.6667) (* (x ?f1) -0.6667))) 0)
	(<= (+ (* (cost ) 0.9615) (* (x ?f2) 0.2747)) 1.9230)
	(<= (+ (* (x ?f1) 0.3482) (+ (* (x ?f2) 0.3482) (* (cost ) 0.8704))) 4.8742)
	(<= (+ (* (x ?f2) 0.5547) (* (x ?f1) -0.8321)) -0.8321))
	:effect (and 
(decrease (x ?f1) 1)		
(increase (x ?f2) 1)))

)