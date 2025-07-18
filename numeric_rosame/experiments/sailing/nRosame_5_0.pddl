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
	:precondition (and (<= (* (y ?a) -1) 0)
	(<= (+ (* (x ?a) 0.5735) (* (y ?a) 0.8192)) 77.0078)
	(<= (+ (* (x ?a) 0.7071) (* (y ?a) -0.7071)) 0.7071)
	(<= (+ (* (x ?a) 0.8137) (* (y ?a) -0.5812)) 4.6499)
	(<= (+ (* (x ?a) 0.9662) (* (y ?a) 0.2577)) 32.0790)
	(<= (+ (* (y ?a) -0.4668) (* (x ?a) -0.8844)) 1.7688)
	(<= (+ (* (y ?a) 0.2272) (* (x ?a) 0.9738)) 30.4812)
	(<= (+ (* (y ?a) 0.2425) (* (x ?a) -0.9701)) 29.1043)
	(<= (+ (* (y ?a) 0.4036) (* (x ?a) -0.9149)) 37.9422))
	:effect (and 
(increase (y ?a) 1.5000)		
(increase (x ?a) 1.5000)))

(:action go_north_west
	:parameters (?a - boat)
	:precondition (and (<= (+ (* (x ?a) -0.7071) (* (y ?a) -0.7071)) -10.6066)
	(<= (+ (* (x ?a) 0.6743) (* (y ?a) -0.7385)) -0.4816)
	(<= (+ (* (x ?a) 0.7071) (* (y ?a) 0.7071)) 70.7107)
	(<= (+ (* (x ?a) 0.8137) (* (y ?a) -0.5812)) 4.9986)
	(<= (+ (* (x ?a) 0.9662) (* (y ?a) 0.2577)) 33.9148)
	(<= (+ (* (y ?a) 0.2272) (* (x ?a) 0.9738)) 32.2828)
	(<= (+ (* (y ?a) 0.2425) (* (x ?a) -0.9701)) 27.2853)
	(<= (+ (* (y ?a) 0.3757) (* (x ?a) -0.9267)) 34.4897)
	(<= (+ (* (y ?a) 0.4472) (* (x ?a) -0.8944)) 41.3673))
	:effect (and 
(decrease (x ?a) 1.5000)		
(increase (y ?a) 1.5000)))

(:action go_west
	:parameters (?a - boat)
	:precondition (and (= (x ?a) 16.5000)
	(= (y ?a) 46.5000))
	:effect (and 
(assign (x ?a) 13.5000)))

(:action go_south_west
	:parameters (?a - boat)
	:precondition (and (<= (+ (* (x ?a) -0.7071) (* (y ?a) -0.7071)) -51.6188)
	(<= (+ (* (x ?a) 0.6668) (* (y ?a) -0.7452)) -57.2267)
	(<= (+ (* (x ?a) 0.7071) (* (y ?a) 0.7071)) 64.3467)
	(<= (+ (* (y ?a) 0.8706) (* (x ?a) -0.4921)) 79.9025))
	:effect (and 
(decrease (y ?a) 2)		
(increase (x ?a) 2)))

(:action go_south_east
	:parameters (?a - boat)
	:precondition (and (<= (+ (* (x ?a) -0.6485) (* (y ?a) -0.7612)) -59.7435)
	(<= (+ (* (x ?a) 0.7071) (* (y ?a) -0.7071)) -50.9117)
	(<= (+ (* (y ?a) 0.5226) (* (x ?a) 0.8526)) 50.6885)
	(<= (+ (* (y ?a) 0.7071) (* (x ?a) -0.7071)) 68.5894))
	:effect (and 
(decrease (x ?a) 2)		
(decrease (y ?a) 2)))

(:action go_south
	:parameters (?a - boat)
	:precondition (and (= (x ?a) 0)
	(= (y ?a) 78))
	:effect (and 
(assign (y ?a) 76)))

(:action save_person
	:parameters (?a - boat ?b - person)
	:precondition (and (<= (+ (* (d ?b) 0.2621) (+ (* (x ?a) 0.9632) (* (y ?a) -0.0590))) 20.8111)
	(<= (+ (* (d ?b) 0.3841) (+ (* (y ?a) -0.5121) (* (x ?a) -0.7682))) -2.6888)
	(<= (+ (* (d ?b) 0.4942) (+ (* (x ?a) 0.7548) (* (y ?a) -0.4313))) 6.4877)
	(<= (+ (* (d ?b) 0.5722) (+ (* (x ?a) -0.5626) (* (y ?a) -0.5967))) -1.5120)
	(<= (+ (* (d ?b) 0.5774) (+ (* (x ?a) -0.5774) (* (y ?a) -0.5774))) 0)
	(<= (+ (* (d ?b) 0.5774) (+ (* (x ?a) 0.5774) (* (y ?a) -0.5774))) 0)
	(<= (+ (* (d ?b) 0.6835) (+ (* (y ?a) -0.7075) (* (x ?a) -0.1799))) -1.7267)
	(<= (+ (* (x ?a) 0.4819) (+ (* (d ?b) 0.5257) (* (y ?a) -0.7010))) -3.6801)
	(<= (+ (* (x ?a) 0.5050) (+ (* (d ?b) 0.5997) (* (y ?a) -0.6207))) -1.5150)
	(<= (+ (* (x ?a) 0.5774) (+ (* (y ?a) 0.5774) (* (d ?b) -0.5774))) 14.4338)
	(<= (+ (* (x ?a) 0.6736) (+ (* (y ?a) 0.6392) (* (d ?b) -0.3711))) 29.4339)
	(<= (+ (* (x ?a) 0.8364) (+ (* (y ?a) 0.4027) (* (d ?b) -0.3717))) 16.0781)
	(<= (+ (* (x ?a) 0.9577) (+ (* (d ?b) 0.2394) (* (y ?a) -0.1596))) 12.6896)
	(<= (+ (* (y ?a) 0.2572) (+ (* (x ?a) -0.6530) (* (d ?b) -0.7123))) -5.4020)
	(<= (+ (* (y ?a) 0.5185) (+ (* (d ?b) -0.2074) (* (x ?a) -0.8296))) 30.1753)
	(<= (+ (* (y ?a) 0.5433) (+ (* (x ?a) 0.6985) (* (d ?b) -0.4657))) 17.9291)
	(<= (+ (* (y ?a) 0.5526) (+ (* (x ?a) 0.6850) (* (d ?b) -0.4748))) 17.9061)
	(<= (+ (* (y ?a) 0.5586) (+ (* (x ?a) -0.3114) (* (d ?b) -0.7688))) 3.1038)
	(<= (+ (* (y ?a) 0.5657) (+ (* (d ?b) -0.6149) (* (x ?a) -0.5493))) 11.1673)
	(<= (+ (* (y ?a) 0.6187) (+ (* (d ?b) -0.3136) (* (x ?a) -0.7204))) 29.7977)
	(<= (+ (* (y ?a) 0.6394) (+ (* (x ?a) 0.2674) (* (d ?b) -0.7208))) 11.3589)
	(<= (+ (* (y ?a) 0.8201) (+ (* (x ?a) 0.3756) (* (d ?b) -0.4318))) 39.2518)
	(<= (+ (* (y ?a) 0.8830) (+ (* (x ?a) 0.0183) (* (d ?b) -0.4689))) 41.4849)
	(<= (x ?a) 12))
	:effect (and (saved ?b) 
		))

)