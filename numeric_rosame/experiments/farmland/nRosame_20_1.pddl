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
	(<= (+ (* (cost ) 0.8321) (* (x ?a) -0.5547)) -3.8829)
	(<= (+ (* (cost ) 0.9701) (* (x ?a) 0.2425)) 4.8507)
	(<= (cost ) 2)
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
	(<= (* (x ?a) -1) -1)
	(<= (* (x ?b) -1) 0)
	(<= (+ (* (cost ) 0.8666) (+ (* (x ?b) 0.4857) (* (x ?a) 0.1143))) 3.5141)
	(<= (+ (* (cost ) 0.9191) (* (x ?b) 0.3939)) 2.7574)
	(<= (+ (* (cost ) 0.9330) (+ (* (x ?a) 0.2545) (* (x ?b) -0.2545))) 4.8347)
	(<= (+ (* (x ?a) 0.2194) (+ (* (x ?b) 0.2194) (* (cost ) 0.9507))) 4.6070))
	:effect (and 
(decrease (x ?a) 1)		
(increase (x ?b) 1)))

)