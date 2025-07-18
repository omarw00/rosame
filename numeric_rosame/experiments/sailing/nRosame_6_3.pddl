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
	(<= (+ (* (x ?a) -0.9191) (* (y ?a) -0.3939)) 8.0097)
	(<= (+ (* (x ?a) 0.7071) (* (y ?a) -0.7071)) 1.4142)
	(<= (+ (* (x ?a) 0.7719) (* (y ?a) 0.6357)) 61.7998)
	(<= (+ (* (x ?a) 0.9806) (* (y ?a) -0.1961)) 20.7883)
	(<= (+ (* (y ?a) -0.6485) (* (x ?a) -0.7612)) 2.2837)
	(<= (+ (* (y ?a) 0.1644) (* (x ?a) -0.9864)) 28.8520)
	(<= (+ (* (y ?a) 0.4305) (* (x ?a) 0.9026)) 47.5464)
	(<= (+ (* (y ?a) 0.5145) (* (x ?a) -0.8575)) 49.0486)
	(<= (+ (* (y ?a) 0.7071) (* (x ?a) -0.7071)) 67.1751))
	:effect (and 
(increase (x ?a) 1.5000)		
(increase (y ?a) 1.5000)))

(:action go_north_west
	:parameters (?a - boat)
	:precondition (and (<= (* (y ?a) -1) 0)
	(<= (+ (* (x ?a) -0.7071) (* (y ?a) -0.7071)) 0.7071)
	(<= (+ (* (x ?a) -0.9191) (* (y ?a) -0.3939)) 7.2219)
	(<= (+ (* (x ?a) 0.7071) (* (y ?a) -0.7071)) 0.7071)
	(<= (+ (* (x ?a) 0.7071) (* (y ?a) 0.7071)) 70.7107)
	(<= (+ (* (x ?a) 0.8742) (* (y ?a) -0.4856)) 6.7019)
	(<= (+ (* (x ?a) 0.9383) (* (y ?a) -0.3457)) 10.6181)
	(<= (+ (* (y ?a) 0.1644) (* (x ?a) -0.9864)) 27.1258)
	(<= (+ (* (y ?a) 0.4305) (* (x ?a) 0.9026)) 46.8382)
	(<= (+ (* (y ?a) 0.4472) (* (x ?a) -0.8944)) 43.3797)
	(<= (+ (* (y ?a) 0.5433) (* (x ?a) 0.8396)) 55.0659))
	:effect (and 
(increase (y ?a) 1.5000)		
(decrease (x ?a) 1.5000)))

(:action go_west
	:parameters (?a - boat)
	:precondition (and (<= (* (y ?a) -1) -25.5000)
	(<= (+ (* (x ?a) 0.9806) (* (y ?a) -0.1961)) 21.9650)
	(<= (+ (* (y ?a) 0.0725) (* (x ?a) -0.9974)) -10.6174)
	(<= (+ (* (y ?a) 0.4305) (* (x ?a) 0.9026)) 49.5460))
	:effect (and 
(decrease (x ?a) 3)))

(:action go_south_west
	:parameters (?a - boat)
	:precondition (and (<= (* (y ?a) -1) -91)
	(<= (y ?a) 93)
	(= (+ (x ?a) (y ?a)) 89))
	:effect (and 
(decrease (y ?a) (+ (* (x ?a) 0.5000) (+ (* (y ?a) 0.5000) -42.5000)))		
(increase (x ?a) (+ (* (x ?a) -0.5000) (+ (* (y ?a) -0.5000) 46.5000)))))

(:action go_south_east
	:parameters (?a - boat)
	:precondition (and (<= (+ (* (y ?a) -0.0971) (* (x ?a) -0.9953)) -7.2339)
	(<= (+ (* (y ?a) 0.0465) (* (x ?a) 0.9989)) 4.5068)
	(<= (+ (* (y ?a) 0.7071) (* (x ?a) -0.7071)) 68.5894))
	:effect (and 
(decrease (y ?a) 2)		
(decrease (x ?a) 2)))

(:action save_person
	:parameters (?a - boat ?b - person)
	:precondition (and (<= (* (x ?a) -1) 11.5000)
	(<= (+ (* (d ?b) 0.0150) (+ (* (x ?a) -0.6763) (* (y ?a) -0.7364))) -4.3285)
	(<= (+ (* (d ?b) 0.3328) (+ (* (x ?a) 0.7055) (* (y ?a) -0.6257))) -1.7572)
	(<= (+ (* (d ?b) 0.4196) (+ (* (y ?a) -0.3056) (* (x ?a) -0.8547))) 11.6708)
	(<= (+ (* (d ?b) 0.5153) (+ (* (x ?a) 0.7916) (* (y ?a) -0.3286))) 18.1086)
	(<= (+ (* (d ?b) 0.5225) (+ (* (x ?a) -0.6452) (* (y ?a) -0.5574))) -0.2090)
	(<= (+ (* (d ?b) 0.5518) (+ (* (x ?a) 0.6745) (* (y ?a) -0.4905))) 5.9475)
	(<= (+ (* (d ?b) 0.5774) (+ (* (x ?a) -0.5774) (* (y ?a) -0.5774))) 0)
	(<= (+ (* (d ?b) 0.5774) (+ (* (x ?a) 0.5774) (* (y ?a) -0.5774))) 0)
	(<= (+ (* (x ?a) 0.0749) (+ (* (y ?a) 0.5417) (* (d ?b) -0.8372))) 5.5650)
	(<= (+ (* (x ?a) 0.4857) (+ (* (y ?a) 0.5763) (* (d ?b) -0.6573))) 12.2225)
	(<= (+ (* (x ?a) 0.5774) (+ (* (y ?a) 0.5774) (* (d ?b) -0.5774))) 14.4338)
	(<= (+ (* (x ?a) 0.6496) (+ (* (d ?b) 0.4807) (* (y ?a) -0.5890))) -0.6496)
	(<= (+ (* (x ?a) 0.9074) (+ (* (d ?b) 0.3141) (* (y ?a) -0.2792))) 9.6674)
	(<= (+ (* (y ?a) 0.3562) (+ (* (x ?a) 0.1148) (* (d ?b) -0.9273))) 1.7752)
	(<= (+ (* (y ?a) 0.5304) (+ (* (d ?b) -0.4333) (* (x ?a) -0.7286))) 19.0453)
	(<= (+ (* (y ?a) 0.5395) (+ (* (x ?a) -0.8205) (* (d ?b) -0.1890))) 35.7298)
	(<= (+ (* (y ?a) 0.5534) (+ (* (d ?b) -0.5243) (* (x ?a) -0.6472))) 15.1758)
	(<= (+ (* (y ?a) 0.5743) (+ (* (d ?b) -0.5592) (* (x ?a) -0.5979))) 14.7651)
	(<= (+ (* (y ?a) 0.5774) (+ (* (d ?b) -0.5774) (* (x ?a) -0.5774))) 14.4338)
	(<= (+ (* (y ?a) 0.6006) (+ (* (x ?a) 0.5453) (* (d ?b) -0.5848))) 15.4415)
	(<= (+ (* (y ?a) 0.7963) (+ (* (x ?a) 0.5491) (* (d ?b) -0.2538))) 54.3732))
	:effect (and (saved ?b) 
		))

)