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
	(= (cost ) 0)
	(= (x ?f1) 11)
	(= (x ?f2) 0))
	:effect (and 
(assign (x ?f2) 2)		
(assign (cost ) 1)		
(assign (x ?f1) 7)))

(:action move-slow
	:parameters (?f1 - farm ?f2 - farm)
	:precondition (and (adj ?f1 ?f2)
	(adj ?f2 ?f1)
	(<= (* (cost ) -1) 0)
	(<= (* (x ?f2) -1) 0)
	(<= (+ (* (cost ) 0.9415) (+ (* (x ?f2) 0.3323) (* (x ?f1) 0.0554))) 1.0523)
	(<= (+ (* (cost ) 0.9901) (+ (* (x ?f1) 0.0990) (* (x ?f2) -0.0990))) 1.1882)
	(<= (+ (* (x ?f2) 0.3333) (+ (* (cost ) 0.6667) (* (x ?f1) -0.6667))) -0.6667)
	(<= (+ (* (x ?f2) 0.4472) (* (cost ) 0.8944)) 0.8944))
	:effect (and 
(decrease (x ?f1) 1)		
(increase (x ?f2) 1)))

)