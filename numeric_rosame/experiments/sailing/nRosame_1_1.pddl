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
	:precondition (and (<= (+ (* (x ?a) 0.7071) (* (y ?a) -0.7071)) 0)
	(<= (+ (* (y ?a) -0.5039) (* (x ?a) -0.8638)) 0)
	(<= (+ (* (y ?a) 0.0416) (* (x ?a) 0.9991)) 6.2446)
	(<= (+ (* (y ?a) 0.2425) (* (x ?a) -0.9701)) 29.1043)
	(<= (+ (* (y ?a) 0.7071) (* (x ?a) -0.7071)) 53.0330))
	:effect (and 
(increase (y ?a) 1.5000)		
(increase (x ?a) 1.5000)))

(:action go_north_west
	:parameters (?a - boat)
	:precondition (and (<= (+ (* (x ?a) -0.7071) (* (y ?a) -0.7071)) -10.6066)
	(<= (+ (* (x ?a) 0.7071) (* (y ?a) 0.7071)) 59.3970)
	(<= (+ (* (y ?a) 0.0416) (* (x ?a) 0.9991)) 7.8057)
	(<= (+ (* (y ?a) 0.2425) (* (x ?a) -0.9701)) 27.2853)
	(<= (+ (* (y ?a) 0.5300) (* (x ?a) -0.8480)) 42.4529))
	:effect (and 
(decrease (x ?a) 1.5000)		
(increase (y ?a) 1.5000)))

(:action save_person
	:parameters (?a - boat ?b - person)
	:precondition (and (<= (+ (* (d ?b) 0.3841) (+ (* (y ?a) -0.5121) (* (x ?a) -0.7682))) -2.6888)
	(<= (+ (* (d ?b) 0.4867) (+ (* (y ?a) -0.3244) (* (x ?a) -0.8111))) 13.1399)
	(<= (+ (* (d ?b) 0.5934) (+ (* (x ?a) -0.5439) (* (y ?a) -0.5934))) -0.5934)
	(<= (+ (* (d ?b) 0.5946) (+ (* (x ?a) -0.5302) (* (y ?a) -0.6045))) -1.3378)
	(<= (+ (* (x ?a) 0.2395) (+ (* (y ?a) 0.7184) (* (d ?b) -0.6531))) 8.6862)
	(<= (+ (* (y ?a) 0.5745) (+ (* (x ?a) 0.5909) (* (d ?b) -0.5663))) 1.2557)
	(<= (+ (* (y ?a) 0.6231) (+ (* (x ?a) 0.5163) (* (d ?b) -0.5875))) 3.5785)
	(<= (x ?a) 0))
	:effect (and (saved ?b) 
		))

)