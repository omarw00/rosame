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
	(<= (+ (* (x ?a) 0.7740) (* (y ?a) -0.6332)) 3.0958)
	(<= (+ (* (x ?a) 0.8137) (* (y ?a) -0.5812)) 4.6499)
	(<= (+ (* (y ?a) -0.4668) (* (x ?a) -0.8844)) 1.7688)
	(<= (+ (* (y ?a) 0.2272) (* (x ?a) 0.9738)) 30.4812)
	(<= (+ (* (y ?a) 0.2316) (* (x ?a) 0.9728)) 30.7129)
	(<= (+ (* (y ?a) 0.2425) (* (x ?a) -0.9701)) 29.1043)
	(<= (+ (* (y ?a) 0.3060) (* (x ?a) -0.9520)) 32.6410)
	(<= (+ (* (y ?a) 0.3162) (* (x ?a) 0.9487)) 36.9986)
	(<= (+ (* (y ?a) 0.7071) (* (x ?a) -0.7071)) 66.4680))
	:effect (and 
(increase (y ?a) 1.5000)		
(increase (x ?a) 1.5000)))

(:action go_north_west
	:parameters (?a - boat)
	:precondition (and (<= (+ (* (x ?a) -0.7071) (* (y ?a) -0.7071)) -2.8284)
	(<= (+ (* (x ?a) 0.7071) (* (y ?a) -0.7071)) 2.8284)
	(<= (+ (* (x ?a) 0.7071) (* (y ?a) 0.7071)) 70.7107)
	(<= (+ (* (x ?a) 0.7740) (* (y ?a) -0.6332)) 3.3069)
	(<= (+ (* (x ?a) 0.8137) (* (y ?a) -0.5812)) 4.9986)
	(<= (+ (* (y ?a) -0.5547) (* (x ?a) -0.8321)) -2.9122)
	(<= (+ (* (y ?a) 0.2272) (* (x ?a) 0.9738)) 32.2828)
	(<= (+ (* (y ?a) 0.2316) (* (x ?a) 0.9728)) 32.5195)
	(<= (+ (* (y ?a) 0.2425) (* (x ?a) -0.9701)) 27.2853)
	(<= (+ (* (y ?a) 0.3162) (* (x ?a) 0.9487)) 38.8960)
	(<= (+ (* (y ?a) 0.3757) (* (x ?a) -0.9267)) 34.4897)
	(<= (+ (* (y ?a) 0.4472) (* (x ?a) -0.8944)) 41.3673))
	:effect (and 
(increase (y ?a) 1.5000)		
(decrease (x ?a) 1.5000)))

(:action go_west
	:parameters (?a - boat)
	:precondition (and (<= (+ (* (x ?a) -0.4472) (* (y ?a) -0.8944)) -25.2676)
	(<= (+ (* (x ?a) 0.7071) (* (y ?a) -0.7071)) -1.4142)
	(<= (+ (* (y ?a) -0.1348) (* (x ?a) -0.9909)) -8.8862)
	(<= (+ (* (y ?a) 0.0587) (* (x ?a) 0.9983)) 20.2004)
	(<= (+ (* (y ?a) 0.2670) (* (x ?a) 0.9637)) 29.2821)
	(<= (y ?a) 88))
	:effect (and 
(decrease (x ?a) 3)))

(:action go_south_west
	:parameters (?a - boat)
	:precondition (and (<= (+ (* (x ?a) -0.7071) (* (y ?a) -0.7071)) -46.6690)
	(<= (+ (* (x ?a) 0.3162) (* (y ?a) 0.9487)) 86.6464)
	(<= (+ (* (x ?a) 0.8526) (* (y ?a) -0.5226)) -37.2394)
	(<= (+ (* (x ?a) 0.8805) (* (y ?a) 0.4741)) 46.1909)
	(<= (+ (* (y ?a) 0.3714) (* (x ?a) -0.9285)) 42.7099)
	(<= (+ (* (y ?a) 0.8706) (* (x ?a) -0.4921)) 79.9025))
	:effect (and 
(increase (x ?a) 2)		
(decrease (y ?a) 2)))

(:action go_south_east
	:parameters (?a - boat)
	:precondition (and (<= (+ (* (x ?a) -0.3867) (* (y ?a) -0.9222)) -70.9792)
	(<= (+ (* (x ?a) 0.7071) (* (y ?a) -0.7071)) -50.9117)
	(<= (+ (* (y ?a) 0.3714) (* (x ?a) -0.9285)) 41.5958)
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
	:precondition (and (<= (+ (* (d ?b) 0.3229) (+ (* (x ?a) -0.8290) (* (y ?a) -0.4567))) -1.5533)
	(<= (+ (* (d ?b) 0.5296) (+ (* (x ?a) 0.6921) (* (y ?a) -0.4904))) 4.0463)
	(<= (+ (* (d ?b) 0.5733) (+ (* (y ?a) -0.5927) (* (x ?a) -0.5657))) -1.1972)
	(<= (+ (* (d ?b) 0.5774) (+ (* (x ?a) -0.5774) (* (y ?a) -0.5774))) 0)
	(<= (+ (* (d ?b) 0.5774) (+ (* (x ?a) 0.5774) (* (y ?a) -0.5774))) 0)
	(<= (+ (* (d ?b) 0.6552) (+ (* (y ?a) -0.6698) (* (x ?a) -0.3494))) -1.0483)
	(<= (+ (* (x ?a) 0.0943) (+ (* (y ?a) 0.8796) (* (d ?b) -0.4663))) 41.4761)
	(<= (+ (* (x ?a) 0.1849) (+ (* (y ?a) 0.7396) (* (d ?b) -0.6472))) 22.2805)
	(<= (+ (* (x ?a) 0.5249) (+ (* (y ?a) 0.5915) (* (d ?b) -0.6120))) 13.9480)
	(<= (+ (* (x ?a) 0.5774) (+ (* (y ?a) 0.5774) (* (d ?b) -0.5774))) 14.4338)
	(<= (+ (* (x ?a) 0.6575) (+ (* (d ?b) 0.4521) (* (y ?a) -0.6027))) -0.2466)
	(<= (+ (* (x ?a) 0.7372) (* (y ?a) -0.6757)) -1.2900)
	(<= (+ (* (x ?a) 0.7741) (+ (* (d ?b) 0.4645) (* (y ?a) -0.4301))) 5.4706)
	(<= (+ (* (y ?a) -0.2556) (* (x ?a) -0.9668)) -1.7335)
	(<= (+ (* (y ?a) 0.1293) (+ (* (x ?a) 0.9844) (* (d ?b) -0.1193))) 13.7518)
	(<= (+ (* (y ?a) 0.1425) (+ (* (d ?b) -0.4758) (* (x ?a) -0.8679))) -0.4406)
	(<= (+ (* (y ?a) 0.1759) (+ (* (d ?b) -0.9843) (* (x ?a) -0.0129))) 0.5147)
	(<= (+ (* (y ?a) 0.5185) (+ (* (d ?b) -0.2074) (* (x ?a) -0.8296))) 30.1753)
	(<= (+ (* (y ?a) 0.5325) (+ (* (x ?a) -0.5745) (* (d ?b) -0.6217))) 9.6555)
	(<= (+ (* (y ?a) 0.5362) (+ (* (d ?b) -0.5937) (* (x ?a) -0.6000))) 11.0497)
	(<= (+ (* (y ?a) 0.5923) (+ (* (x ?a) -0.6170) (* (d ?b) -0.5182))) 17.8423)
	(<= (+ (* (y ?a) 0.6187) (+ (* (d ?b) -0.3136) (* (x ?a) -0.7204))) 29.7977)
	(<= (+ (* (y ?a) 0.8830) (+ (* (x ?a) 0.0183) (* (d ?b) -0.4689))) 41.4849)
	(<= (x ?a) 12))
	:effect (and (saved ?b) 
		))

)