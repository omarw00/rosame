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
	(<= (+ (* (cost ) 0.9899) (* (x ?a) 0.1414)) 2.8284)
	(<= (+ (* (x ?a) -0.3162) (* (cost ) -0.9487)) -3.1623)
	(<= (cost ) 1)
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
	(<= (* (x ?b) -1) 0)
	(<= (+ (* (cost ) 0.3333) (+ (* (x ?b) 0.6667) (* (x ?a) -0.6667))) 0)
	(<= (+ (* (cost ) 0.9615) (* (x ?b) 0.2747)) 1.9230)
	(<= (+ (* (x ?a) 0.3482) (+ (* (x ?b) 0.3482) (* (cost ) 0.8704))) 4.8742)
	(<= (+ (* (x ?b) 0.5547) (* (x ?a) -0.8321)) -0.8321))
	:effect (and 
(decrease (x ?a) 1)		
(increase (x ?b) 1)))

)