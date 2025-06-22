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
	(<= (* (x ?f1) -1) -6)
	(<= (+ (* (cost ) -0.9701) (* (x ?f1) -0.2425)) -2.4254)
	(<= (+ (* (cost ) 0.9778) (* (x ?f1) 0.2095)) 4.1906)
	(= (x ?f2) 0))
	:effect (and 
(increase (cost ) 1)		
(decrease (x ?f1) 4)		
(assign (x ?f2) 2)))

(:action move-slow
	:parameters (?f1 - farm ?f2 - farm)
	:precondition (and (adj ?f1 ?f2)
	(adj ?f2 ?f1)
	(<= (* (cost ) -1) 0)
	(<= (* (x ?f2) -1) 0)
	(<= (+ (* (cost ) 0.2294) (+ (* (x ?f2) 0.6882) (* (x ?f1) -0.6882))) 0)
	(<= (+ (* (cost ) 0.9191) (* (x ?f2) 0.3939)) 2.7574)
	(<= (+ (* (x ?f1) 0.1346) (+ (* (x ?f2) 0.3076) (* (cost ) 0.9420))) 3.0950)
	(<= (+ (* (x ?f1) 0.3482) (+ (* (x ?f2) 0.3482) (* (cost ) 0.8704))) 4.8742)
	(<= (+ (* (x ?f2) 0.5547) (* (x ?f1) -0.8321)) -0.8321))
	:effect (and 
(increase (x ?f2) 1)		
(decrease (x ?f1) 1)))

)