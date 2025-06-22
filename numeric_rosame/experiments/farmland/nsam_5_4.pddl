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
	(<= (+ (* (cost ) 0.9701) (* (x ?f1) 0.2425)) 4.3656)
	(<= (+ (* (x ?f1) -0.5547) (* (cost ) -0.8321)) -7.2111)
	(= (x ?f2) 0))
	:effect (and 
(decrease (x ?f1) 4)		
(assign (x ?f2) 2)		
(increase (cost ) 1)))

(:action move-slow
	:parameters (?f1 - farm ?f2 - farm)
	:precondition (and (adj ?f1 ?f2)
	(adj ?f2 ?f1)
	(<= (* (cost ) -1) 0)
	(<= (* (x ?f2) -1) 0)
	(<= (+ (* (cost ) 0.7071) (* (x ?f2) 0.7071)) 1.4142)
	(<= (+ (* (cost ) 0.8452) (+ (* (x ?f1) 0.1690) (* (x ?f2) -0.5071))) 2.8735)
	(<= (+ (* (cost ) 0.9879) (+ (* (x ?f1) 0.1098) (* (x ?f2) 0.1098))) 2.3050)
	(<= (+ (* (x ?f2) 0.1476) (+ (* (cost ) 0.9841) (* (x ?f1) 0.0984))) 2.1651)
	(<= (+ (* (x ?f2) 0.9939) (* (x ?f1) -0.1104)) -0.1104))
	:effect (and 
(decrease (x ?f1) 1)		
(increase (x ?f2) 1)))

)