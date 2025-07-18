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
	(<= (+ (* (x ?b) -0.9191) (* (y ?b) -0.3939)) 8.0097)
	(<= (+ (* (x ?b) 0.7071) (* (y ?b) -0.7071)) 1.4142)
	(<= (+ (* (x ?b) 0.7071) (* (y ?b) 0.7071)) 66.4680)
	(<= (+ (* (x ?b) 0.9806) (* (y ?b) -0.1961)) 20.7883)
	(<= (+ (* (y ?b) -0.6485) (* (x ?b) -0.7612)) 2.2837)
	(<= (+ (* (y ?b) 0.1644) (* (x ?b) -0.9864)) 28.8520)
	(<= (+ (* (y ?b) 0.4305) (* (x ?b) 0.9026)) 47.5464)
	(<= (+ (* (y ?b) 0.5313) (* (x ?b) -0.8472)) 49.9412))
	:effect (and 
(increase (x ?b) 1.5000)		
(increase (y ?b) 1.5000)))

(:action go_north_west
	:parameters (?b - boat)
	:precondition (and (<= (* (y ?b) -1) 0)
	(<= (+ (* (x ?b) -0.7071) (* (y ?b) -0.7071)) 0.7071)
	(<= (+ (* (x ?b) -0.9191) (* (y ?b) -0.3939)) 7.2219)
	(<= (+ (* (x ?b) 0.7071) (* (y ?b) 0.7071)) 68.5894)
	(<= (+ (* (x ?b) 0.7288) (* (y ?b) -0.6847)) 0.7288)
	(<= (+ (* (x ?b) 0.8321) (* (y ?b) -0.5547)) 4.5763)
	(<= (+ (* (x ?b) 0.9383) (* (y ?b) -0.3457)) 10.6181)
	(<= (+ (* (y ?b) 0.1644) (* (x ?b) -0.9864)) 27.1258)
	(<= (+ (* (y ?b) 0.4305) (* (x ?b) 0.9026)) 46.8382)
	(<= (+ (* (y ?b) 0.4789) (* (x ?b) -0.8779)) 45.0919)
	(<= (+ (* (y ?b) 0.5647) (* (x ?b) 0.8253)) 56.5987))
	:effect (and 
(decrease (x ?b) 1.5000)		
(increase (y ?b) 1.5000)))

(:action go_west
	:parameters (?b - boat)
	:precondition (and (<= (* (y ?b) -1) -25.5000)
	(<= (+ (* (x ?b) -0.8742) (* (y ?b) -0.4856)) -23.3109)
	(<= (+ (* (x ?b) 0.9806) (* (y ?b) -0.1961)) 21.9650)
	(<= (+ (* (y ?b) -0.1961) (* (x ?b) -0.9806)) -14.1204)
	(<= (+ (* (y ?b) 0.3162) (* (x ?b) -0.9487)) 11.3842)
	(<= (+ (* (y ?b) 0.3684) (* (x ?b) -0.9297)) 14.3136)
	(<= (+ (* (y ?b) 0.4305) (* (x ?b) 0.9026)) 49.5460))
	:effect (and 
(decrease (x ?b) 3)))

(:action go_south_west
	:parameters (?b - boat)
	:precondition (and (<= (* (y ?b) -1) -91)
	(<= (y ?b) 93)
	(= (+ (x ?b) (y ?b)) 89))
	:effect (and 
(decrease (y ?b) (+ (* (x ?b) 0.5000) (+ (* (y ?b) 0.5000) -42.5000)))		
(increase (x ?b) (+ (* (x ?b) -0.5000) (+ (* (y ?b) -0.5000) 46.5000)))))

(:action go_south_east
	:parameters (?b - boat)
	:precondition (and (<= (+ (* (y ?b) -0.0971) (* (x ?b) -0.9953)) -7.2339)
	(<= (+ (* (y ?b) 0.0465) (* (x ?b) 0.9989)) 4.5068)
	(<= (+ (* (y ?b) 0.7071) (* (x ?b) -0.7071)) 68.5894))
	:effect (and 
(decrease (y ?b) 2)		
(decrease (x ?b) 2)))

(:action save_person
	:parameters (?b - boat ?t - person)
	:precondition (and (not (saved ?t))
	(<= (* (x ?b) -1) 11.5000)
	(<= (+ (* (d ?t) 0.0150) (+ (* (x ?b) -0.6763) (* (y ?b) -0.7364))) -4.3285)
	(<= (+ (* (d ?t) 0.3329) (+ (* (x ?b) 0.7027) (* (y ?b) -0.6288))) -1.7753)
	(<= (+ (* (d ?t) 0.4404) (+ (* (y ?b) -0.3291) (* (x ?b) -0.8353))) 11.0564)
	(<= (+ (* (d ?t) 0.5225) (+ (* (x ?b) -0.6452) (* (y ?b) -0.5574))) -0.2090)
	(<= (+ (* (d ?t) 0.5518) (+ (* (x ?b) 0.6745) (* (y ?b) -0.4905))) 5.9475)
	(<= (+ (* (d ?t) 0.5774) (+ (* (x ?b) -0.5774) (* (y ?b) -0.5774))) 0)
	(<= (+ (* (d ?t) 0.5774) (+ (* (x ?b) 0.5774) (* (y ?b) -0.5774))) 0)
	(<= (+ (* (x ?b) 0.1127) (+ (* (y ?b) 0.5312) (* (d ?t) -0.8397))) 4.9498)
	(<= (+ (* (x ?b) 0.1556) (+ (* (y ?b) 0.3949) (* (d ?t) -0.9055))) 2.0104)
	(<= (+ (* (x ?b) 0.4316) (+ (* (y ?b) 0.5721) (* (d ?t) -0.6975))) 10.9142)
	(<= (+ (* (x ?b) 0.5436) (+ (* (y ?b) 0.8133) (* (d ?t) -0.2075))) 58.8926)
	(<= (+ (* (x ?b) 0.5774) (+ (* (y ?b) 0.5774) (* (d ?t) -0.5774))) 14.4338)
	(<= (+ (* (x ?b) 0.7051) (+ (* (y ?b) 0.7051) (* (d ?t) -0.0755))) 61.0655)
	(<= (+ (* (x ?b) 0.9074) (+ (* (d ?t) 0.3141) (* (y ?b) -0.2792))) 9.6674)
	(<= (+ (* (y ?b) 0.5304) (+ (* (d ?t) -0.4333) (* (x ?b) -0.7286))) 19.0453)
	(<= (+ (* (y ?b) 0.5379) (+ (* (x ?b) -0.8285) (* (d ?t) -0.1558))) 37.7465)
	(<= (+ (* (y ?b) 0.5534) (+ (* (d ?t) -0.5243) (* (x ?b) -0.6472))) 15.1758)
	(<= (+ (* (y ?b) 0.5743) (+ (* (d ?t) -0.5592) (* (x ?b) -0.5979))) 14.7651)
	(<= (+ (* (y ?b) 0.5774) (+ (* (d ?t) -0.5774) (* (x ?b) -0.5774))) 14.4338)
	(<= (+ (* (y ?b) 0.6006) (+ (* (x ?b) 0.5453) (* (d ?t) -0.5848))) 15.4415))
	:effect (and (saved ?t) 
		))

)