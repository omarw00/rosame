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
	:precondition (and (<= (* (y ?b) -1) 0)
	(<= (+ (* (x ?b) 0.7071) (* (y ?b) -0.7071)) 0)
	(<= (+ (* (x ?b) 0.7415) (* (y ?b) -0.6709)) 0.4237)
	(<= (+ (* (x ?b) 0.9701) (* (y ?b) 0.2425)) 30.8020)
	(<= (+ (* (y ?b) -0.4668) (* (x ?b) -0.8844)) 1.7688)
	(<= (+ (* (y ?b) 0.2425) (* (x ?b) -0.9701)) 29.1043)
	(<= (+ (* (y ?b) 0.6601) (* (x ?b) -0.7512)) 50.8743)
	(<= (+ (* (y ?b) 0.7071) (* (x ?b) -0.7071)) 54.4472))
	:effect (and 
(increase (x ?b) 1.5000)		
(increase (y ?b) 1.5000)))

(:action go_north_west
	:parameters (?b - boat)
	:precondition (and (<= (+ (* (x ?b) -0.7071) (* (y ?b) -0.7071)) -10.6066)
	(<= (+ (* (x ?b) 0.7071) (* (y ?b) 0.7071)) 70.7107)
	(<= (+ (* (x ?b) 0.7415) (* (y ?b) -0.6709)) 0.5297)
	(<= (+ (* (x ?b) 0.9701) (* (y ?b) 0.2425)) 32.6210)
	(<= (+ (* (y ?b) 0.2425) (* (x ?b) -0.9701)) 27.2853)
	(<= (+ (* (y ?b) 0.3796) (* (x ?b) -0.9252)) 34.6938))
	:effect (and 
(decrease (x ?b) 1.5000)		
(increase (y ?b) 1.5000)))

(:action save_person
	:parameters (?b - boat ?t - person)
	:precondition (and (not (saved ?t))
	(<= (+ (* (d ?t) 0.3841) (+ (* (y ?b) -0.5121) (* (x ?b) -0.7682))) -2.6888)
	(<= (+ (* (d ?t) 0.5223) (+ (* (x ?b) 0.6908) (* (y ?b) -0.4999))) 2.3927)
	(<= (+ (* (d ?t) 0.5520) (+ (* (x ?b) 0.5919) (* (y ?b) -0.5874))) -1.6359)
	(<= (+ (* (d ?t) 0.5722) (+ (* (x ?b) -0.5626) (* (y ?b) -0.5967))) -1.5120)
	(<= (+ (* (d ?t) 0.5750) (+ (* (y ?b) -0.5337) (* (x ?b) -0.6201))) 2.8976)
	(<= (+ (* (d ?t) 0.5824) (+ (* (y ?b) -0.5563) (* (x ?b) -0.5927))) 1.6111)
	(<= (+ (* (d ?t) 0.6766) (+ (* (y ?b) -0.6540) (* (x ?b) -0.3383))) 1.2179)
	(<= (+ (* (x ?b) 0.0046) (+ (* (y ?b) 0.7237) (* (d ?t) -0.6901))) 10.1373)
	(<= (+ (* (x ?b) 0.5079) (+ (* (d ?t) 0.6021) (* (y ?b) -0.6161))) -1.4136)
	(<= (+ (* (x ?b) 0.5096) (+ (* (d ?t) 0.6022) (* (y ?b) -0.6146))) -1.3156)
	(<= (+ (* (y ?b) 0.5450) (+ (* (x ?b) -0.0399) (* (d ?t) -0.8375))) -2.7118)
	(<= (+ (* (y ?b) 0.6749) (+ (* (x ?b) -0.6327) (* (d ?t) -0.3796))) 28.9793)
	(<= (+ (* (y ?b) 0.7650) (+ (* (x ?b) 0.0573) (* (d ?t) -0.6415))) 14.0483)
	(<= (+ (* (y ?b) 0.7738) (+ (* (x ?b) 0.0836) (* (d ?t) -0.6279))) 15.1571))
	:effect (and (saved ?t) 
		))

)