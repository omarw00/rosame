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
	(= (cost ) 0)
	(= (x ?a) 11)
	(= (x ?b) 0))
	:effect (and 
(assign (x ?a) 7)		
(assign (cost ) 1)		
(assign (x ?b) 2)))

(:action move-slow
	:parameters (?a - farm ?b - farm)
	:precondition (and (adj ?a ?b)
	(adj ?b ?a)
	(<= (* (cost ) -1) 0)
	(<= (* (x ?b) -1) 0)
	(<= (+ (* (cost ) 0.9415) (+ (* (x ?b) 0.3323) (* (x ?a) 0.0554))) 1.0523)
	(<= (+ (* (cost ) 0.9901) (+ (* (x ?a) 0.0990) (* (x ?b) -0.0990))) 1.1882)
	(<= (+ (* (x ?b) 0.3333) (+ (* (cost ) 0.6667) (* (x ?a) -0.6667))) -0.6667)
	(<= (+ (* (x ?b) 0.4472) (* (cost ) 0.8944)) 0.8944))
	:effect (and 
(increase (x ?b) 1)		
(decrease (x ?a) 1)))

)