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
	(<= (* (x ?f1) -1) -7)
	(<= (x ?f1) 14)
	(= (cost ) 0)
	(= (x ?f2) 0))
	:effect (and 
(decrease (x ?f1) 4)		
(assign (x ?f2) 2)		
(assign (cost ) 1)))

(:action move-slow
	:parameters (?f1 - farm ?f2 - farm)
	:precondition (and (adj ?f1 ?f2)
	(adj ?f2 ?f1)
	(<= (* (cost ) -1) 0)
	(<= (* (x ?f1) -1) -1)
	(<= (* (x ?f2) -1) 0)
	(<= (+ (* (cost ) 0.8941) (+ (* (x ?f2) 0.4471) (* (x ?f1) -0.0263))) 0.8678)
	(<= (+ (* (cost ) 0.9956) (+ (* (x ?f1) 0.0664) (* (x ?f2) -0.0664))) 1.2611)
	(<= (+ (* (x ?f1) 0.0586) (+ (* (x ?f2) 0.0586) (* (cost ) 0.9966))) 1.2310)
	(<= (+ (* (x ?f2) 0.3162) (* (cost ) 0.9487)) 0.9487))
	:effect (and 
(decrease (x ?f1) 1)		
(increase (x ?f2) 1)))

)