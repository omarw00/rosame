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
	(= (+ (x ?a) (* (cost ) 5)) 13)
	(= (x ?b) 0))
	:effect (and 
(assign (x ?b) 2)		
(decrease (x ?a) (+ (* (x ?a) 0.0385) (+ (* (cost ) 0.1923) 3.5000)))		
(increase (cost ) (+ (* (x ?a) -0.1923) (+ (* (cost ) -0.9615) 3.5000)))))

(:action move-slow
	:parameters (?a - farm ?b - farm)
	:precondition (and (adj ?a ?b)
	(adj ?b ?a)
	(<= (* (cost ) -1) 0)
	(<= (* (x ?a) -1) -1)
	(<= (+ (* (cost ) 0.7071) (* (x ?a) 0.7071)) 7.0711)
	(<= (cost ) 1)
	(= (x ?b) 0))
	:effect (and 
(assign (x ?b) 1)		
(decrease (x ?a) 1)))

)