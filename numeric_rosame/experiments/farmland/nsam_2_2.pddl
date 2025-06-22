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
(increase (cost ) (+ (* (x ?f1) -0.1400) (+ (* (cost ) -0.9800) 3.6600)))		
(assign (x ?f2) 2)		
(decrease (x ?f1) (+ (* (x ?f1) 0.0200) (+ (* (cost ) 0.1400) 3.6200)))))

(:action move-slow
	:parameters (?f1 - farm ?f2 - farm)
	:precondition (and (adj ?f1 ?f2)
	(adj ?f2 ?f1)
	(<= (* (cost ) -1) 0)
	(<= (* (x ?f1) -1) -1)
	(<= (+ (* (cost ) 0.7071) (* (x ?f1) -0.7071)) 0)
	(<= (+ (* (x ?f1) 0.0767) (* (cost ) 0.9971)) 2.1475)
	(<= (+ (* (x ?f1) 0.7071) (* (cost ) -0.7071)) 9.8995)
	(= (x ?f2) 0))
	:effect (and 
(assign (x ?f2) 1)		
(decrease (x ?f1) 1)))

)