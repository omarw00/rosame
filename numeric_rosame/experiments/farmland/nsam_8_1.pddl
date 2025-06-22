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
	(<= (* (x ?f1) -1) -11)
	(<= (x ?f1) 19)
	(= (cost ) 0)
	(= (x ?f2) 0))
	:effect (and 
(assign (cost ) 1)		
(assign (x ?f2) 2)		
(decrease (x ?f1) 4)))

(:action move-slow
	:parameters (?f1 - farm ?f2 - farm)
	:precondition (and (adj ?f1 ?f2)
	(adj ?f2 ?f1)
	(<= (* (cost ) -1) 0)
	(<= (* (x ?f2) -1) 0)
	(<= (+ (* (x ?f1) 0.1270) (+ (* (x ?f2) 0.7620) (* (cost ) 0.6350))) 2.4130)
	(<= (+ (* (x ?f1) 0.4082) (+ (* (cost ) -0.8165) (* (x ?f2) -0.4082))) 4.8990)
	(<= (+ (* (x ?f2) 0.4472) (* (cost ) 0.8944)) 0.8944)
	(<= (+ (* (x ?f2) 0.4472) (* (x ?f1) -0.8944)) -0.8944))
	:effect (and 
(increase (x ?f2) 1)		
(decrease (x ?f1) 1)))

)