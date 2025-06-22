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
	(<= (cost ) 1)
	(= (+ (x ?f1) (* (cost ) 5)) 13)
	(= (x ?f2) 0))
	:effect (and 
(assign (x ?f2) 2)		
(decrease (x ?f1) (+ (* (x ?f1) 0.0385) (+ (* (cost ) 0.1923) 3.5000)))		
(increase (cost ) (+ (* (x ?f1) -0.1923) (+ (* (cost ) -0.9615) 3.5000)))))

(:action move-slow
	:parameters (?f1 - farm ?f2 - farm)
	:precondition (and (adj ?f1 ?f2)
	(adj ?f2 ?f1)
	(<= (* (cost ) -1) 0)
	(<= (* (x ?f1) -1) -1)
	(<= (+ (* (cost ) 0.7071) (* (x ?f1) 0.7071)) 7.0711)
	(<= (cost ) 1)
	(= (x ?f2) 0))
	:effect (and 
(decrease (x ?f1) 1)		
(assign (x ?f2) 1)))

)