(define (domain sailing)
(:requirements :typing :fluents :negative-preconditions :equality)
(:types 	boat person - object
)

(:predicates (saved ?t - person)
)

(:functions (x ?b - boat)
	(y ?b - boat)
	(d ?t - person)
)

(:action go_north_east
	:parameters (?a - boat)
	:precondition (and (<= (* (x ?a) -1) 0)
	(<= (+ (* (x ?a) 0.7071) (* (y ?a) -0.7071)) 0)
	(<= (+ (* (x ?a) 0.9744) (* (y ?a) -0.2249)) 8.9944)
	(<= (+ (* (x ?a) 0.9939) (* (y ?a) 0.1104)) 19.8777)
	(<= (+ (* (y ?a) 0.4961) (* (x ?a) 0.8682)) 35.3499)
	(<= (+ (* (y ?a) 0.7071) (* (x ?a) -0.7071)) 44.5477))
	:effect (and 
(increase (y ?a) 1.5000)		
(increase (x ?a) 1.5000)))

(:action go_north_west
	:parameters (?a - boat)
	:precondition (and (<= (* (x ?a) -1) -1.5000)
	(<= (+ (* (x ?a) -0.7071) (* (y ?a) -0.7071)) -19.0919)
	(<= (+ (* (x ?a) -0.9899) (* (y ?a) -0.1414)) -10.1823)
	(<= (+ (* (x ?a) 0.7071) (* (y ?a) 0.7071)) 50.9117)
	(<= (+ (* (x ?a) 0.9191) (* (y ?a) 0.3939)) 30.7257)
	(<= (+ (* (x ?a) 0.9744) (* (y ?a) -0.2249)) 10.1187)
	(<= (+ (* (y ?a) 0.3162) (* (x ?a) 0.9487)) 27.5118))
	:effect (and 
(increase (y ?a) 1.5000)		
(decrease (x ?a) 1.5000)))

(:action go_west
	:parameters (?a - boat)
	:precondition (and (= (x ?a) 16.5000)
	(= (y ?a) 46.5000))
	:effect (and 
(assign (x ?a) 13.5000)))

(:action save_person
	:parameters (?a - boat ?b - person)
	:precondition (and (<= (+ (* (d ?b) 0.5759) (+ (* (y ?a) -0.7038) (* (x ?a) -0.4159))) -9.2139)
	(<= (+ (* (d ?b) 0.5774) (+ (* (x ?a) 0.5774) (* (y ?a) -0.5774))) 0)
	(<= (+ (* (x ?a) 0.2850) (+ (* (y ?a) 0.7125) (* (d ?b) -0.6412))) 14.5344)
	(<= (+ (* (x ?a) 0.5121) (+ (* (y ?a) 0.7682) (* (d ?b) -0.3841))) 29.1924)
	(<= (+ (* (x ?a) 0.5522) (+ (* (d ?b) 0.5820) (* (y ?a) -0.5969))) -1.0745)
	(<= (+ (* (x ?a) 0.5597) (+ (* (d ?b) 0.5772) (* (y ?a) -0.5947))) -1.0494)
	(<= (+ (* (y ?a) 0.5588) (+ (* (x ?a) -0.5971) (* (d ?b) -0.5755))) 0.0935)
	(<= (+ (* (y ?a) 0.5597) (+ (* (x ?a) -0.5947) (* (d ?b) -0.5772))) 0.1049)
	(<= (+ (* (y ?a) 0.6882) (+ (* (x ?a) -0.2294) (* (d ?b) -0.6882))) 6.1942)
	(<= (+ (* (y ?a) 0.6943) (+ (* (d ?b) -0.5681) (* (x ?a) -0.4418))) 9.0892)
	(<= (+ (* (y ?a) 0.6953) (+ (* (x ?a) -0.4272) (* (d ?b) -0.5780))) 8.5443)
	(<= (x ?a) 12))
	:effect (and (saved ?b) 
		))

)