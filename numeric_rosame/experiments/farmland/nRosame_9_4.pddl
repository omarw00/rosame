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
	(<= (+ (* (cost ) 0.8944) (* (x ?a) -0.4472)) -3.5777)
	(<= (+ (* (cost ) 0.9899) (* (x ?a) 0.1414)) 2.8284)
	(<= (cost ) 1)
	(= (x ?b) 0))
	:effect (and 
(assign (x ?b) 2)		
(increase (cost ) 1)		
(decrease (x ?a) 4)))

(:action move-slow
	:parameters (?a - farm ?b - farm)
	:precondition (and (adj ?a ?b)
	(adj ?b ?a)
	(<= (* (cost ) -1) 0)
	(<= (* (x ?a) -1) -1)
	(<= (* (x ?b) -1) 0)
	(<= (+ (* (cost ) 0.6092) (+ (* (x ?b) 0.6092) (* (x ?a) -0.5077))) 0.7107)
	(<= (+ (* (cost ) 0.9615) (* (x ?b) 0.2747)) 1.9230)
	(<= (+ (* (x ?a) 0.1723) (+ (* (cost ) 0.9331) (* (x ?b) 0.3158))) 3.4164)
	(<= (+ (* (x ?a) 0.1925) (+ (* (x ?b) 0.1925) (* (cost ) 0.9623))) 3.6566))
	:effect (and 
(decrease (x ?a) 1)		
(increase (x ?b) 1)))

)