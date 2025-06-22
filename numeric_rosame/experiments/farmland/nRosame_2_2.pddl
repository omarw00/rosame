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
	(<= (* (x ?a) -1) -1)
	(<= (+ (* (cost ) 0.7071) (* (x ?a) -0.7071)) 0)
	(<= (+ (* (x ?a) 0.0767) (* (cost ) 0.9971)) 2.1475)
	(<= (+ (* (x ?a) 0.7071) (* (cost ) -0.7071)) 9.8995)
	(= (x ?b) 0))
	:effect (and 
(assign (x ?b) 1)		
(decrease (x ?a) 1)))

)