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
	(<= (+ (* (cost ) 0.8944) (* (x ?f1) -0.4472)) -3.5777)
	(<= (+ (* (cost ) 0.9899) (* (x ?f1) 0.1414)) 2.8284)
	(<= (cost ) 1)
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
	(<= (* (x ?f1) -1) -1)
	(<= (* (x ?f2) -1) 0)
	(<= (+ (* (cost ) 0.6092) (+ (* (x ?f2) 0.6092) (* (x ?f1) -0.5077))) 0.7107)
	(<= (+ (* (cost ) 0.9615) (* (x ?f2) 0.2747)) 1.9230)
	(<= (+ (* (x ?f1) 0.1723) (+ (* (cost ) 0.9331) (* (x ?f2) 0.3158))) 3.4164)
	(<= (+ (* (x ?f1) 0.1925) (+ (* (x ?f2) 0.1925) (* (cost ) 0.9623))) 3.6566))
	:effect (and 
(decrease (x ?f1) 1)		
(increase (x ?f2) 1)))

)