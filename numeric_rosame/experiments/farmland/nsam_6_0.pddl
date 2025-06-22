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
	(= (+ (x ?f1) (* (cost ) 7)) 19)
	(= (x ?f2) 0))
	:effect (and 
(decrease (x ?f1) (+ (* (x ?f1) 0.0200) (+ (* (cost ) 0.1400) 3.6200)))		
(increase (cost ) (+ (* (x ?f1) -0.1400) (+ (* (cost ) -0.9800) 3.6600)))		
(assign (x ?f2) 2)))

(:action move-slow
	:parameters (?f1 - farm ?f2 - farm)
	:precondition (and (adj ?f1 ?f2)
	(adj ?f2 ?f1)
	(<= (* (cost ) -1) 0)
	(<= (* (x ?f1) -1) -1)
	(<= (* (x ?f2) -1) 0)
	(<= (+ (* (cost ) 0.7022) (+ (* (x ?f2) 0.1170) (* (x ?f1) -0.7022))) 0)
	(<= (+ (* (cost ) 0.9802) (+ (* (x ?f1) 0.0754) (* (x ?f2) 0.1831))) 2.1112)
	(<= (+ (* (x ?f1) 0.3015) (+ (* (x ?f2) 0.3015) (* (cost ) 0.9045))) 5.4272)
	(<= (+ (* (x ?f2) 0.3114) (+ (* (cost ) 0.9498) (* (x ?f1) -0.0311))) 1.8373))
	:effect (and 
(decrease (x ?f1) 1)		
(increase (x ?f2) 1)))

)