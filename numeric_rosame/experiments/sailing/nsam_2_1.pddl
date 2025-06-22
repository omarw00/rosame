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
	(<= (+ (* (x ?b) 0.9297) (* (y ?b) 0.3684)) 37.7310)
	(<= (+ (* (x ?b) 0.9744) (* (y ?b) -0.2249)) 8.9944)
	(<= (+ (* (x ?b) 0.9806) (* (y ?b) -0.1961)) 10.0019)
	(<= (+ (* (y ?b) 0.5812) (* (x ?b) 0.8137)) 54.6364)
	(<= (x ?b) 18))
	:effect (and 
(increase (y ?b) 1.5000)		
(increase (x ?b) 1.5000)))

(:action go_north_west
	:parameters (?b - boat)
	:precondition (and (<= (* (x ?b) -1) -1.5000)
	(<= (+ (* (x ?b) -0.7071) (* (y ?b) -0.7071)) -19.0919)
	(<= (+ (* (x ?b) -0.9899) (* (y ?b) -0.1414)) -10.1823)
	(<= (+ (* (x ?b) 0.9297) (* (y ?b) 0.3684)) 39.6781)
	(<= (+ (* (x ?b) 0.9744) (* (y ?b) -0.2249)) 10.1187)
	(<= (+ (* (x ?b) 0.9806) (* (y ?b) -0.1961)) 11.1786)
	(<= (+ (* (y ?b) 0.5812) (* (x ?b) 0.8137)) 56.7288)
	(<= (x ?b) 19.5000))
	:effect (and 
(decrease (x ?b) 1.5000)		
(increase (y ?b) 1.5000)))

(:action go_west
	:parameters (?b - boat)
	:precondition (and (= (x ?b) 16.5000)
	(= (y ?b) 46.5000))
	:effect (and 
(assign (x ?b) 13.5000)))

(:action go_south_west
	:parameters (?b - boat)
	:precondition (and (<= (* (y ?b) -1) -75)
	(<= (y ?b) 85)
	(= (+ (x ?b) (y ?b)) 73))
	:effect (and 
(decrease (y ?b) (+ (* (x ?b) 0.5000) (+ (* (y ?b) 0.5000) -34.5000)))		
(increase (x ?b) (+ (* (x ?b) -0.5000) (+ (* (y ?b) -0.5000) 38.5000)))))

(:action go_south_east
	:parameters (?b - boat)
	:precondition (and (<= (* (y ?b) -1) -87)
	(<= (y ?b) 97)
	(= (+ (x ?b) (* (y ?b) -1)) -97))
	:effect (and 
(decrease (x ?b) (+ (* (x ?b) 0.5000) (+ (* (y ?b) -0.5000) 50.5000)))		
(decrease (y ?b) (+ (* (x ?b) -0.5000) (+ (* (y ?b) 0.5000) -46.5000)))))

(:action go_south
	:parameters (?b - boat)
	:precondition (and (= (x ?b) 0)
	(= (y ?b) 78))
	:effect (and 
(assign (y ?b) 76)))

(:action save_person
	:parameters (?b - boat ?t - person)
	:precondition (and (not (saved ?t))
	(<= (* (x ?b) -1) 0)
	(<= (+ (* (d ?t) 0.5225) (+ (* (x ?b) 0.7088) (* (y ?b) -0.4739))) 4.7146)
	(<= (+ (* (d ?t) 0.5571) (+ (* (x ?b) 0.3714) (* (y ?b) -0.7428))) -5.5709)
	(<= (+ (* (d ?t) 0.5759) (+ (* (y ?b) -0.7038) (* (x ?b) -0.4159))) -9.2139)
	(<= (+ (* (d ?t) 0.5774) (+ (* (x ?b) 0.5774) (* (y ?b) -0.5774))) 0)
	(<= (+ (* (d ?t) 0.6035) (+ (* (x ?b) 0.4904) (* (y ?b) -0.6287))) -1.8106)
	(<= (+ (* (x ?b) 0.0989) (+ (* (y ?b) 0.8900) (* (d ?t) -0.4450))) 43.1671)
	(<= (+ (* (x ?b) 0.5439) (+ (* (y ?b) 0.5934) (* (d ?t) -0.5934))) 14.2407)
	(<= (+ (* (x ?b) 0.8434) (+ (* (d ?t) 0.4389) (* (y ?b) -0.3098))) 12.5222)
	(<= (+ (* (x ?b) 0.8525) (+ (* (d ?t) 0.4307) (* (y ?b) -0.2961))) 13.0837)
	(<= (+ (* (x ?b) 0.8571) (+ (* (d ?t) 0.4286) (* (y ?b) -0.2857))) 13.8571)
	(<= (+ (* (y ?b) -0.0736) (+ (* (d ?t) -0.0613) (* (x ?b) -0.9954))) -8.3761)
	(<= (+ (* (y ?b) 0.2673) (+ (* (d ?t) -0.5345) (* (x ?b) -0.8018))) -6.6815)
	(<= (+ (* (y ?b) 0.5788) (+ (* (x ?b) 0.6400) (* (d ?t) -0.5053))) 17.4926)
	(<= (+ (* (y ?b) 0.5789) (+ (* (x ?b) 0.6160) (* (d ?t) -0.5343))) 16.0745)
	(<= (+ (* (y ?b) 0.6691) (+ (* (x ?b) 0.6218) (* (d ?t) -0.4070))) 28.9006)
	(<= (x ?b) 12))
	:effect (and (saved ?t) 
		))

)