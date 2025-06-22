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
	(<= (* (x ?a) -1) -7)
	(<= (x ?a) 14)
	(= (cost ) 0)
	(= (x ?b) 0))
	:effect (and 
(assign (x ?b) 2)		
(decrease (x ?a) 4)		
(assign (cost ) 1)))

(:action move-slow
	:parameters (?a - farm ?b - farm)
	:precondition (and (adj ?a ?b)
	(adj ?b ?a)
	(<= (* (cost ) -1) 0)
	(<= (* (x ?a) -1) -1)
	(<= (* (x ?b) -1) 0)
	(<= (+ (* (cost ) 0.8941) (+ (* (x ?b) 0.4471) (* (x ?a) -0.0263))) 0.8678)
	(<= (+ (* (cost ) 0.9956) (+ (* (x ?a) 0.0664) (* (x ?b) -0.0664))) 1.2611)
	(<= (+ (* (x ?a) 0.0586) (+ (* (x ?b) 0.0586) (* (cost ) 0.9966))) 1.2310)
	(<= (+ (* (x ?b) 0.3162) (* (cost ) 0.9487)) 0.9487))
	:effect (and 
(decrease (x ?a) 1)		
(increase (x ?b) 1)))

)