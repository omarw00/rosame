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
	(<= (+ (* (x ?b) -0.9962) (* (y ?b) -0.0874)) 0.9962)
	(<= (+ (* (x ?b) 0.7071) (* (y ?b) -0.7071)) 2.1213)
	(<= (+ (* (x ?b) 0.7071) (* (y ?b) 0.7071)) 68.5894)
	(<= (+ (* (x ?b) 0.7645) (* (y ?b) -0.6446)) 3.5528)
	(<= (+ (* (x ?b) 0.9985) (* (y ?b) -0.0555)) 32.9492)
	(<= (+ (* (y ?b) 0.0508) (* (x ?b) -0.9987)) 8.8868)
	(<= (+ (* (y ?b) 0.1414) (* (x ?b) -0.9899)) 16.6877)
	(<= (+ (* (y ?b) 0.6196) (* (x ?b) 0.7849)) 61.7166)
	(<= (+ (* (y ?b) 0.6616) (* (x ?b) 0.7498)) 64.7066)
	(<= (+ (* (y ?b) 0.7071) (* (x ?b) -0.7071)) 70.7107))
	:effect (and 
(increase (y ?b) 1.5000)		
(increase (x ?b) 1.5000)))

(:action go_north_west
	:parameters (?b - boat)
	:precondition (and (<= (+ (* (x ?b) -0.7071) (* (y ?b) -0.7071)) -5.6569)
	(<= (+ (* (x ?b) -0.9939) (* (y ?b) -0.1104)) -2.6504)
	(<= (+ (* (x ?b) 0.6690) (* (y ?b) -0.7433)) 1.1149)
	(<= (+ (* (x ?b) 0.7071) (* (y ?b) 0.7071)) 70.7107)
	(<= (+ (* (x ?b) 0.8575) (* (y ?b) -0.5145)) 6.6884)
	(<= (+ (* (x ?b) 0.8944) (* (y ?b) -0.4472)) 8.7207)
	(<= (+ (* (y ?b) -0.0335) (* (x ?b) -0.9994)) -1.7037)
	(<= (+ (* (y ?b) -0.0476) (* (x ?b) -0.9989)) -1.9977)
	(<= (+ (* (y ?b) 0.6196) (* (x ?b) 0.7849)) 63.8234)
	(<= (+ (* (y ?b) 0.6616) (* (x ?b) 0.7498)) 66.8238)
	(<= (+ (* (y ?b) 0.7071) (* (x ?b) -0.7071)) 68.5894))
	:effect (and 
(decrease (x ?b) 1.5000)		
(increase (y ?b) 1.5000)))

(:action go_est
	:parameters (?b - boat)
	:precondition (and (= (x ?b) 0)
	(= (y ?b) 0))
	:effect (and 
(assign (x ?b) 3)))

(:action go_west
	:parameters (?b - boat)
	:precondition (and (<= (+ (* (x ?b) 0.5039) (* (y ?b) 0.8638)) 76.9843)
	(<= (+ (* (x ?b) 0.7071) (* (y ?b) -0.7071)) -0.7071)
	(<= (+ (* (x ?b) 0.7071) (* (y ?b) 0.7071)) 67.8823)
	(<= (+ (* (y ?b) -0.2912) (* (x ?b) -0.9567)) -13.7262)
	(<= (+ (* (y ?b) -0.9037) (* (x ?b) -0.4281)) -23.5447)
	(<= (+ (* (y ?b) 0.0508) (* (x ?b) -0.9987)) 5.8907)
	(<= (+ (* (y ?b) 0.3406) (* (x ?b) 0.9402)) 47.0913)
	(<= (y ?b) 86.5000))
	:effect (and 
(decrease (x ?b) 3)))

(:action go_south_west
	:parameters (?b - boat)
	:precondition (and (<= (+ (* (x ?b) 0.7071) (* (y ?b) 0.7071)) 70.7107)
	(<= (+ (* (x ?b) 0.8756) (* (y ?b) -0.4831)) -25.4219)
	(<= (+ (* (x ?b) 0.9487) (* (y ?b) -0.3162)) -11.3842)
	(<= (+ (* (y ?b) 0.0392) (* (x ?b) -0.9992)) 3.9186))
	:effect (and 
(increase (x ?b) 2)		
(decrease (y ?b) 2)))

(:action go_south_east
	:parameters (?b - boat)
	:precondition (and (<= (* (x ?b) -1) 0)
	(<= (+ (* (x ?b) 0.2983) (* (y ?b) 0.9545)) 83.6363)
	(<= (+ (* (x ?b) 0.8423) (* (y ?b) -0.5391)) -27.4917)
	(<= (+ (* (x ?b) 0.9487) (* (y ?b) -0.3162)) -8.8544)
	(<= (+ (* (y ?b) 0.0830) (* (x ?b) -0.9965)) 5.2319))
	:effect (and 
(decrease (y ?b) 2)		
(decrease (x ?b) 2)))

(:action go_south
	:parameters (?b - boat)
	:precondition (and (<= (+ (* (x ?b) -0.9943) (* (y ?b) -0.1065)) -6.8181)
	(<= (+ (* (y ?b) 0.1293) (* (x ?b) -0.9916)) 8.2777)
	(<= (x ?b) 3))
	:effect (and 
(decrease (y ?b) 2)))

(:action save_person
	:parameters (?b - boat ?t - person)
	:precondition (and (not (saved ?t))
	(<= (* (x ?b) -1) 0.5000)
	(<= (+ (* (d ?t) 0.0879) (+ (* (x ?b) 0.9930) (* (y ?b) -0.0791))) 11.4853)
	(<= (+ (* (d ?t) 0.2986) (+ (* (x ?b) -0.9077) (* (y ?b) -0.2947))) 0.3930)
	(<= (+ (* (d ?t) 0.5774) (+ (* (x ?b) -0.5774) (* (y ?b) -0.5774))) 0)
	(<= (+ (* (d ?t) 0.5774) (+ (* (x ?b) 0.5774) (* (y ?b) -0.5774))) 0)
	(<= (+ (* (x ?b) 0.1119) (+ (* (y ?b) 0.5146) (* (d ?t) -0.8501))) 5.4811)
	(<= (+ (* (x ?b) 0.2106) (+ (* (y ?b) 0.9124) (* (d ?t) -0.3509))) 56.4999)
	(<= (+ (* (x ?b) 0.3594) (+ (* (y ?b) 0.8660) (* (d ?t) -0.3476))) 52.7578)
	(<= (+ (* (x ?b) 0.4243) (+ (* (d ?t) 0.5657) (* (y ?b) -0.7071))) -1.6971)
	(<= (+ (* (x ?b) 0.5147) (+ (* (y ?b) 0.7632) (* (d ?t) -0.3905))) 41.4461)
	(<= (+ (* (x ?b) 0.5758) (+ (* (d ?t) 0.4742) (* (y ?b) -0.6661))) -1.8628)
	(<= (+ (* (x ?b) 0.5774) (+ (* (y ?b) 0.5774) (* (d ?t) -0.5774))) 14.4338)
	(<= (+ (* (x ?b) 0.5987) (+ (* (d ?t) 0.5089) (* (y ?b) -0.6186))) -1.0177)
	(<= (+ (* (x ?b) 0.7071) (* (y ?b) 0.7071)) 70.7107)
	(<= (+ (* (x ?b) 0.7322) (+ (* (d ?t) 0.5248) (* (y ?b) -0.4341))) 9.3563)
	(<= (+ (* (x ?b) 0.7464) (+ (* (d ?t) 0.5157) (* (y ?b) -0.4207))) 9.9473)
	(<= (+ (* (x ?b) 0.7842) (+ (* (d ?t) 0.4613) (* (y ?b) -0.4151))) 7.1496)
	(<= (+ (* (x ?b) 0.8245) (+ (* (d ?t) 0.4947) (* (y ?b) -0.2748))) 21.9860)
	(<= (+ (* (x ?b) 0.9133) (+ (* (d ?t) 0.4059) (* (y ?b) -0.0338))) 37.2081)
	(<= (+ (* (y ?b) 0.0204) (+ (* (d ?t) -0.0712) (* (x ?b) -0.9973))) -0.6106)
	(<= (+ (* (y ?b) 0.0204) (+ (* (x ?b) -0.9996) (* (d ?t) -0.0211))) 0.4948)
	(<= (+ (* (y ?b) 0.0222) (+ (* (x ?b) -0.9995) (* (d ?t) -0.0222))) 0.5553)
	(<= (+ (* (y ?b) 0.0236) (+ (* (d ?t) -0.0221) (* (x ?b) -0.9995))) 0.6781)
	(<= (+ (* (y ?b) 0.0301) (+ (* (d ?t) -0.1054) (* (x ?b) -0.9940))) -0.9036)
	(<= (+ (* (y ?b) 0.3115) (+ (* (x ?b) -0.5346) (* (d ?t) -0.7856))) -2.6451)
	(<= (+ (* (y ?b) 0.3162) (* (x ?b) -0.9487)) 31.6228)
	(<= (+ (* (y ?b) 0.5518) (+ (* (x ?b) -0.8065) (* (d ?t) -0.2122))) 34.1703))
	:effect (and (saved ?t) 
		))

)