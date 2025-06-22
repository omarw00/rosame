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
	(<= (+ (* (cost ) 0.9701) (* (x ?a) 0.2425)) 4.3656)
	(<= (+ (* (x ?a) -0.5547) (* (cost ) -0.8321)) -7.2111)
	(= (x ?b) 0))
	:effect (and 
(decrease (x ?a) 4)		
(assign (x ?b) 2)		
(increase (cost ) 1)))

(:action move-slow
	:parameters (?a - farm ?b - farm)
	:precondition (and (adj ?a ?b)
	(adj ?b ?a)
	(<= (* (cost ) -1) 0)
	(<= (* (x ?b) -1) 0)
	(<= (+ (* (cost ) 0.7071) (* (x ?b) 0.7071)) 1.4142)
	(<= (+ (* (cost ) 0.8452) (+ (* (x ?a) 0.1690) (* (x ?b) -0.5071))) 2.8735)
	(<= (+ (* (cost ) 0.9879) (+ (* (x ?a) 0.1098) (* (x ?b) 0.1098))) 2.3050)
	(<= (+ (* (x ?b) 0.1476) (+ (* (cost ) 0.9841) (* (x ?a) 0.0984))) 2.1651)
	(<= (+ (* (x ?b) 0.9939) (* (x ?a) -0.1104)) -0.1104))
	:effect (and 
(increase (x ?b) 1)		
(decrease (x ?a) 1)))

)