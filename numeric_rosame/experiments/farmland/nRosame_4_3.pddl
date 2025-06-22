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
	(<= (* (x ?a) -1) -11)
	(<= (x ?a) 18)
	(= (cost ) 0)
	(= (x ?b) 0))
	:effect (and 
(assign (x ?b) 2)		
(assign (cost ) 1)		
(decrease (x ?a) 4)))

(:action move-slow
	:parameters (?a - farm ?b - farm)
	:precondition (and (adj ?a ?b)
	(adj ?b ?a)
	(<= (* (cost ) -1) 0)
	(<= (* (x ?b) -1) 0)
	(<= (+ (* (x ?a) 0.1270) (+ (* (x ?b) 0.7620) (* (cost ) 0.6350))) 2.4130)
	(<= (+ (* (x ?a) 0.4082) (+ (* (cost ) -0.8165) (* (x ?b) -0.4082))) 4.8990)
	(<= (+ (* (x ?b) 0.4472) (* (cost ) 0.8944)) 0.8944)
	(<= (+ (* (x ?b) 0.4472) (* (x ?a) -0.8944)) -0.8944))
	:effect (and 
(decrease (x ?a) 1)		
(increase (x ?b) 1)))

)