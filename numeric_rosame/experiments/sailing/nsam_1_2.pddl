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
	(<= (+ (* (x ?b) 0.9762) (* (y ?b) -0.2169)) 9.1111)
	(<= (+ (* (y ?b) 0.5812) (* (x ?b) 0.8137)) 54.6364)
	(<= (x ?b) 18))
	:effect (and 
(increase (y ?b) 1.5000)		
(increase (x ?b) 1.5000)))

(:action go_north_west
	:parameters (?b - boat)
	:precondition (and (<= (* (x ?b) -1) -1.5000)
	(<= (+ (* (x ?b) -0.9823) (* (y ?b) -0.1871)) -15.7876)
	(<= (+ (* (x ?b) 0.9297) (* (y ?b) 0.3684)) 39.6781)
	(<= (+ (* (x ?b) 0.9762) (* (y ?b) -0.2169)) 10.2500)
	(<= (+ (* (y ?b) 0.5812) (* (x ?b) 0.8137)) 56.7288)
	(<= (x ?b) 19.5000))
	:effect (and 
(increase (y ?b) 1.5000)		
(decrease (x ?b) 1.5000)))

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
	(<= (+ (* (d ?t) 0.0438) (+ (* (y ?b) -0.2363) (* (x ?b) -0.9707))) -15.1052)
	(<= (+ (* (d ?t) 0.5225) (+ (* (x ?b) 0.7088) (* (y ?b) -0.4739))) 4.7146)
	(<= (+ (* (d ?t) 0.5367) (+ (* (y ?b) -0.7155) (* (x ?b) -0.4472))) -15.0264)
	(<= (+ (* (d ?t) 0.5774) (+ (* (x ?b) 0.5774) (* (y ?b) -0.5774))) 0)
	(<= (+ (* (x ?b) 0.0989) (+ (* (y ?b) 0.8900) (* (d ?t) -0.4450))) 43.1671)
	(<= (+ (* (x ?b) 0.2017) (+ (* (d ?t) 0.6571) (* (y ?b) -0.7263))) -6.7095)
	(<= (+ (* (x ?b) 0.5439) (+ (* (y ?b) 0.5934) (* (d ?t) -0.5934))) 14.2407)
	(<= (+ (* (x ?b) 0.8434) (+ (* (d ?t) 0.4389) (* (y ?b) -0.3098))) 12.5222)
	(<= (+ (* (x ?b) 0.8525) (+ (* (d ?t) 0.4307) (* (y ?b) -0.2961))) 13.0837)
	(<= (+ (* (x ?b) 0.8571) (+ (* (d ?t) 0.4286) (* (y ?b) -0.2857))) 13.8571)
	(<= (+ (* (y ?b) 0.5785) (+ (* (x ?b) 0.6004) (* (d ?t) -0.5522))) 15.1718)
	(<= (+ (* (y ?b) 0.5788) (+ (* (x ?b) 0.6400) (* (d ?t) -0.5053))) 17.4926)
	(<= (+ (* (y ?b) 0.6691) (+ (* (x ?b) 0.6218) (* (d ?t) -0.4070))) 28.9006)
	(<= (x ?b) 12))
	:effect (and (saved ?t) 
		))

)