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
	(<= (+ (* (x ?a) 0.9297) (* (y ?a) 0.3684)) 37.7310)
	(<= (+ (* (x ?a) 0.9744) (* (y ?a) -0.2249)) 8.9944)
	(<= (+ (* (x ?a) 0.9806) (* (y ?a) -0.1961)) 10.0019)
	(<= (+ (* (y ?a) 0.5812) (* (x ?a) 0.8137)) 54.6364)
	(<= (x ?a) 18))
	:effect (and 
(increase (x ?a) 1.5000)		
(increase (y ?a) 1.5000)))

(:action go_north_west
	:parameters (?a - boat)
	:precondition (and (<= (* (x ?a) -1) -1.5000)
	(<= (+ (* (x ?a) -0.7071) (* (y ?a) -0.7071)) -19.0919)
	(<= (+ (* (x ?a) -0.9899) (* (y ?a) -0.1414)) -10.1823)
	(<= (+ (* (x ?a) 0.9297) (* (y ?a) 0.3684)) 39.6781)
	(<= (+ (* (x ?a) 0.9744) (* (y ?a) -0.2249)) 10.1187)
	(<= (+ (* (x ?a) 0.9806) (* (y ?a) -0.1961)) 11.1786)
	(<= (+ (* (y ?a) 0.5812) (* (x ?a) 0.8137)) 56.7288)
	(<= (x ?a) 19.5000))
	:effect (and 
(increase (y ?a) 1.5000)		
(decrease (x ?a) 1.5000)))

(:action go_west
	:parameters (?a - boat)
	:precondition (and (= (x ?a) 16.5000)
	(= (y ?a) 46.5000))
	:effect (and 
(assign (x ?a) 13.5000)))

(:action go_south_west
	:parameters (?a - boat)
	:precondition (and (<= (* (y ?a) -1) -75)
	(<= (y ?a) 85)
	(= (+ (x ?a) (y ?a)) 73))
	:effect (and 
(increase (x ?a) (+ (* (x ?a) -0.5000) (+ (* (y ?a) -0.5000) 38.5000)))		
(decrease (y ?a) (+ (* (x ?a) 0.5000) (+ (* (y ?a) 0.5000) -34.5000)))))

(:action go_south_east
	:parameters (?a - boat)
	:precondition (and (<= (* (y ?a) -1) -87)
	(<= (y ?a) 97)
	(= (+ (x ?a) (* (y ?a) -1)) -97))
	:effect (and 
(decrease (x ?a) (+ (* (x ?a) 0.5000) (+ (* (y ?a) -0.5000) 50.5000)))		
(decrease (y ?a) (+ (* (x ?a) -0.5000) (+ (* (y ?a) 0.5000) -46.5000)))))

(:action go_south
	:parameters (?a - boat)
	:precondition (and (= (x ?a) 0)
	(= (y ?a) 78))
	:effect (and 
(assign (y ?a) 76)))

(:action save_person
	:parameters (?a - boat ?b - person)
	:precondition (and (<= (* (x ?a) -1) 0)
	(<= (+ (* (d ?b) 0.5225) (+ (* (x ?a) 0.7088) (* (y ?a) -0.4739))) 4.7146)
	(<= (+ (* (d ?b) 0.5571) (+ (* (x ?a) 0.3714) (* (y ?a) -0.7428))) -5.5709)
	(<= (+ (* (d ?b) 0.5759) (+ (* (y ?a) -0.7038) (* (x ?a) -0.4159))) -9.2139)
	(<= (+ (* (d ?b) 0.5774) (+ (* (x ?a) 0.5774) (* (y ?a) -0.5774))) 0)
	(<= (+ (* (d ?b) 0.6035) (+ (* (x ?a) 0.4904) (* (y ?a) -0.6287))) -1.8106)
	(<= (+ (* (x ?a) 0.0989) (+ (* (y ?a) 0.8900) (* (d ?b) -0.4450))) 43.1671)
	(<= (+ (* (x ?a) 0.5439) (+ (* (y ?a) 0.5934) (* (d ?b) -0.5934))) 14.2407)
	(<= (+ (* (x ?a) 0.8434) (+ (* (d ?b) 0.4389) (* (y ?a) -0.3098))) 12.5222)
	(<= (+ (* (x ?a) 0.8525) (+ (* (d ?b) 0.4307) (* (y ?a) -0.2961))) 13.0837)
	(<= (+ (* (x ?a) 0.8571) (+ (* (d ?b) 0.4286) (* (y ?a) -0.2857))) 13.8571)
	(<= (+ (* (y ?a) -0.0736) (+ (* (d ?b) -0.0613) (* (x ?a) -0.9954))) -8.3761)
	(<= (+ (* (y ?a) 0.2673) (+ (* (d ?b) -0.5345) (* (x ?a) -0.8018))) -6.6815)
	(<= (+ (* (y ?a) 0.5788) (+ (* (x ?a) 0.6400) (* (d ?b) -0.5053))) 17.4926)
	(<= (+ (* (y ?a) 0.5789) (+ (* (x ?a) 0.6160) (* (d ?b) -0.5343))) 16.0745)
	(<= (+ (* (y ?a) 0.6691) (+ (* (x ?a) 0.6218) (* (d ?b) -0.4070))) 28.9006)
	(<= (x ?a) 12))
	:effect (and (saved ?b) 
		))

)