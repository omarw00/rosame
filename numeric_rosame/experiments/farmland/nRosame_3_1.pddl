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
	(<= (cost ) 1)
	(= (+ (x ?a) (* (cost ) 7)) 19)
	(= (x ?b) 0))
	:effect (and 
(assign (x ?b) 2)		
(decrease (x ?a) (+ (* (x ?a) 0.0200) (+ (* (cost ) 0.1400) 3.6200)))		
(increase (cost ) (+ (* (x ?a) -0.1400) (+ (* (cost ) -0.9800) 3.6600)))))

(:action move-slow
	:parameters (?a - farm ?b - farm)
	:precondition (and (adj ?a ?b)
	(adj ?b ?a)
	(<= (* (cost ) -1) 0)
	(<= (* (x ?b) -1) 0)
	(<= (+ (* (cost ) 0.4730) (+ (* (x ?b) 0.7433) (* (x ?a) -0.4730))) 0)
	(<= (+ (* (cost ) 0.9802) (+ (* (x ?a) 0.0754) (* (x ?b) 0.1831))) 2.1112)
	(<= (+ (* (x ?a) 0.3015) (+ (* (x ?b) 0.3015) (* (cost ) 0.9045))) 5.4272)
	(<= (+ (* (x ?b) 0.8192) (* (x ?a) -0.5735)) -0.5735))
	:effect (and 
(decrease (x ?a) 1)		
(increase (x ?b) 1)))

)