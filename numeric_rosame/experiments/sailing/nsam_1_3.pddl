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
	:parameters (?b - boat)
	:precondition (and (<= (* (x ?b) -1) 0)
	(<= (+ (* (x ?b) 0.7071) (* (y ?b) -0.7071)) 0)
	(<= (+ (* (x ?b) 0.9744) (* (y ?b) -0.2249)) 8.9944)
	(<= (+ (* (x ?b) 0.9939) (* (y ?b) 0.1104)) 19.8777)
	(<= (+ (* (y ?b) 0.4961) (* (x ?b) 0.8682)) 35.3499)
	(<= (+ (* (y ?b) 0.7071) (* (x ?b) -0.7071)) 44.5477))
	:effect (and 
(increase (y ?b) 1.5000)		
(increase (x ?b) 1.5000)))

(:action go_north_west
	:parameters (?b - boat)
	:precondition (and (<= (* (x ?b) -1) -1.5000)
	(<= (+ (* (x ?b) -0.7071) (* (y ?b) -0.7071)) -19.0919)
	(<= (+ (* (x ?b) -0.9899) (* (y ?b) -0.1414)) -10.1823)
	(<= (+ (* (x ?b) 0.7071) (* (y ?b) 0.7071)) 50.9117)
	(<= (+ (* (x ?b) 0.9191) (* (y ?b) 0.3939)) 30.7257)
	(<= (+ (* (x ?b) 0.9744) (* (y ?b) -0.2249)) 10.1187)
	(<= (+ (* (y ?b) 0.3162) (* (x ?b) 0.9487)) 27.5118))
	:effect (and 
(decrease (x ?b) 1.5000)		
(increase (y ?b) 1.5000)))

(:action go_west
	:parameters (?b - boat)
	:precondition (and (= (x ?b) 16.5000)
	(= (y ?b) 46.5000))
	:effect (and 
(assign (x ?b) 13.5000)))

(:action save_person
	:parameters (?b - boat ?t - person)
	:precondition (and (not (saved ?t))
	(<= (+ (* (d ?t) 0.5759) (+ (* (y ?b) -0.7038) (* (x ?b) -0.4159))) -9.2139)
	(<= (+ (* (d ?t) 0.5774) (+ (* (x ?b) 0.5774) (* (y ?b) -0.5774))) 0)
	(<= (+ (* (x ?b) 0.2850) (+ (* (y ?b) 0.7125) (* (d ?t) -0.6412))) 14.5344)
	(<= (+ (* (x ?b) 0.5121) (+ (* (y ?b) 0.7682) (* (d ?t) -0.3841))) 29.1924)
	(<= (+ (* (x ?b) 0.5522) (+ (* (d ?t) 0.5820) (* (y ?b) -0.5969))) -1.0745)
	(<= (+ (* (x ?b) 0.5597) (+ (* (d ?t) 0.5772) (* (y ?b) -0.5947))) -1.0494)
	(<= (+ (* (y ?b) 0.5588) (+ (* (x ?b) -0.5971) (* (d ?t) -0.5755))) 0.0935)
	(<= (+ (* (y ?b) 0.5597) (+ (* (x ?b) -0.5947) (* (d ?t) -0.5772))) 0.1049)
	(<= (+ (* (y ?b) 0.6882) (+ (* (x ?b) -0.2294) (* (d ?t) -0.6882))) 6.1942)
	(<= (+ (* (y ?b) 0.6943) (+ (* (d ?t) -0.5681) (* (x ?b) -0.4418))) 9.0892)
	(<= (+ (* (y ?b) 0.6953) (+ (* (x ?b) -0.4272) (* (d ?t) -0.5780))) 8.5443)
	(<= (x ?b) 12))
	:effect (and (saved ?t) 
		))

)