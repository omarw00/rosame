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
	(<= (* (x ?a) -1) -6)
	(<= (+ (* (cost ) -0.9701) (* (x ?a) -0.2425)) -2.4254)
	(<= (+ (* (cost ) 0.9778) (* (x ?a) 0.2095)) 4.1906)
	(= (x ?b) 0))
	:effect (and 
(increase (cost ) 1)		
(assign (x ?b) 2)		
(decrease (x ?a) 4)))

(:action move-slow
	:parameters (?a - farm ?b - farm)
	:precondition (and (adj ?a ?b)
	(adj ?b ?a)
	(<= (* (cost ) -1) 0)
	(<= (* (x ?b) -1) 0)
	(<= (+ (* (cost ) 0.2294) (+ (* (x ?b) 0.6882) (* (x ?a) -0.6882))) 0)
	(<= (+ (* (cost ) 0.9191) (* (x ?b) 0.3939)) 2.7574)
	(<= (+ (* (x ?a) 0.1346) (+ (* (x ?b) 0.3076) (* (cost ) 0.9420))) 3.0950)
	(<= (+ (* (x ?a) 0.3482) (+ (* (x ?b) 0.3482) (* (cost ) 0.8704))) 4.8742)
	(<= (+ (* (x ?b) 0.5547) (* (x ?a) -0.8321)) -0.8321))
	:effect (and 
(increase (x ?b) 1)		
(decrease (x ?a) 1)))

)