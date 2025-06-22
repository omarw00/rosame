(define (domain farmland)
(:requirements :typing :fluents :negative-preconditions :equality)
(:types 	farm - object
)

(:predicates (adj ?f1 - farm ?f2 - farm)
)

(:functions (x ?b - farm)
	(cost )
)

(:action move-slow
	:parameters (?f1 - farm ?f2 - farm)
	:precondition (and (adj ?f1 ?f2)
	(adj ?f2 ?f1)
	(<= (* (x ?f1) -1) -1)
	(<= (* (x ?f2) -1) 0)
	(<= (+ (* (x ?f1) 0.4472) (* (x ?f2) 0.8944)) 8.0498)
	(<= (+ (* (x ?f1) 0.7071) (* (x ?f2) 0.7071)) 12.0208)
	(<= (+ (* (x ?f2) -0.4472) (* (x ?f1) -0.8944)) -1.7889)
	(<= (+ (* (x ?f2) 0.9558) (* (x ?f1) 0.2941)) 6.0288)
	(= (cost ) 0))
	:effect (and 
(decrease (x ?f1) 1)		
(increase (x ?f2) 1)))

)