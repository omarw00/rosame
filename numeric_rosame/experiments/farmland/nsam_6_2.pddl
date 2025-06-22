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
	(<= (* (x ?f1) -1) -6)
	(<= (x ?f1) 18)
	(= (cost ) 0)
	(= (x ?f2) 0))
	:effect (and 
(assign (cost ) 1)		
(decrease (x ?f1) 4)		
(assign (x ?f2) 2)))

(:action move-slow
	:parameters (?f1 - farm ?f2 - farm)
	:precondition (and (adj ?f1 ?f2)
	(adj ?f2 ?f1)
	(<= (* (cost ) -1) 0)
	(<= (* (x ?f2) -1) 0)
	(<= (+ (* (cost ) 0.9733) (+ (* (x ?f1) 0.1622) (* (x ?f2) 0.1622))) 3.2444)
	(<= (+ (* (cost ) 0.9899) (* (x ?f2) 0.1414)) 0.9899)
	(<= (+ (* (x ?f2) 0.4472) (* (x ?f1) -0.8944)) -0.8944)
	(<= (+ (* (x ?f2) 0.5274) (+ (* (cost ) 0.8151) (* (x ?f1) -0.2397))) 0.5754))
	:effect (and 
(increase (x ?f2) 1)		
(decrease (x ?f1) 1)))

)