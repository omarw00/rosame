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
	:precondition (and (<= (* (x ?a) -1) 14)
	(<= (* (y ?a) -1) 0)
	(<= (+ (* (x ?a) 0.3590) (* (y ?a) 0.9333)) 87.9499)
	(<= (+ (* (x ?a) 0.7071) (* (y ?a) -0.7071)) 1.4142)
	(<= (+ (* (x ?a) 0.7071) (* (y ?a) 0.7071)) 68.5894)
	(<= (+ (* (x ?a) 0.7474) (* (y ?a) -0.6644)) 1.8685)
	(<= (+ (* (x ?a) 0.7557) (* (y ?a) -0.6549)) 2.2671)
	(<= (+ (* (x ?a) 0.9158) (* (y ?a) 0.4017)) 46.4160)
	(<= (+ (* (y ?a) -0.3162) (* (x ?a) -0.9487)) 7.5895)
	(<= (+ (* (y ?a) -0.5755) (* (x ?a) -0.8178)) 2.4534)
	(<= (+ (* (y ?a) 0.0830) (* (x ?a) 0.9965)) 31.3912)
	(<= (+ (* (y ?a) 0.1240) (* (x ?a) -0.9923)) 16.8687)
	(<= (+ (* (y ?a) 0.2425) (* (x ?a) -0.9701)) 27.1640)
	(<= (+ (* (y ?a) 0.7071) (* (x ?a) -0.7071)) 68.5894))
	:effect (and 
(increase (y ?a) 1.5000)		
(increase (x ?a) 1.5000)))

(:action go_north_west
	:parameters (?a - boat)
	:precondition (and (<= (* (x ?a) -1) 12.5000)
	(<= (* (y ?a) -1) 0)
	(<= (+ (* (x ?a) -0.7071) (* (y ?a) -0.7071)) -0.7071)
	(<= (+ (* (x ?a) 0.7071) (* (y ?a) 0.7071)) 70.7107)
	(<= (+ (* (x ?a) 0.7652) (* (y ?a) -0.6438)) 3.0609)
	(<= (+ (* (x ?a) 0.9158) (* (y ?a) 0.4017)) 48.3922)
	(<= (+ (* (y ?a) -0.3162) (* (x ?a) -0.9487)) 6.6408)
	(<= (+ (* (y ?a) 0.0830) (* (x ?a) 0.9965)) 33.0106)
	(<= (+ (* (y ?a) 0.1738) (* (x ?a) -0.9848)) 16.2200))
	:effect (and 
(decrease (x ?a) 1.5000)		
(increase (y ?a) 1.5000)))

(:action go_est
	:parameters (?a - boat)
	:precondition (and (= (x ?a) 0)
	(= (y ?a) 0))
	:effect (and 
(assign (x ?a) 3)))

(:action go_west
	:parameters (?a - boat)
	:precondition (and (<= (+ (* (x ?a) 0.7415) (* (y ?a) -0.6709)) 0)
	(<= (+ (* (x ?a) 0.8020) (* (y ?a) 0.5973)) 58.1567)
	(<= (+ (* (x ?a) 0.9062) (* (y ?a) -0.4229)) 8.3369)
	(<= (+ (* (y ?a) -0.0341) (* (x ?a) -0.9994)) 0)
	(<= (+ (* (y ?a) 0.0250) (* (x ?a) 0.9997)) 23.2052)
	(<= (+ (* (y ?a) 0.2425) (* (x ?a) -0.9701)) 24.2536)
	(<= (y ?a) 92))
	:effect (and 
(decrease (x ?a) 3)))

(:action go_south_west
	:parameters (?a - boat)
	:precondition (and (<= (+ (* (x ?a) -0.7071) (* (y ?a) -0.7071)) -46.6690)
	(<= (+ (* (x ?a) 0.9648) (* (y ?a) -0.2631)) -19.8215)
	(<= (+ (* (y ?a) 0.4472) (* (x ?a) 0.8944)) 43.8269)
	(<= (+ (* (y ?a) 0.4741) (* (x ?a) -0.8805)) 50.2546)
	(<= (+ (* (y ?a) 0.8575) (* (x ?a) -0.5145)) 79.5753))
	:effect (and 
(increase (x ?a) 2)		
(decrease (y ?a) 2)))

(:action go_south_east
	:parameters (?a - boat)
	:precondition (and (<= (+ (* (x ?a) 0.9992) (* (y ?a) -0.0408)) -3.8335)
	(<= (+ (* (y ?a) -0.2609) (* (x ?a) -0.9654)) -9.8102)
	(<= (+ (* (y ?a) 0.1961) (* (x ?a) 0.9806)) 18.4349)
	(<= (+ (* (y ?a) 0.4741) (* (x ?a) -0.8805)) 49.4418)
	(<= (+ (* (y ?a) 0.7071) (* (x ?a) -0.7071)) 68.5894))
	:effect (and 
(decrease (y ?a) 2)		
(decrease (x ?a) 2)))

(:action go_south
	:parameters (?a - boat)
	:precondition (and (= (x ?a) 1.5000)
	(= (y ?a) 46.5000))
	:effect (and 
(assign (y ?a) 44.5000)))

(:action save_person
	:parameters (?a - boat ?b - person)
	:precondition (and (<= (+ (* (d ?b) 0.3771) (+ (* (x ?a) 0.8957) (* (y ?a) -0.2357))) 16.8763)
	(<= (+ (* (d ?b) 0.4782) (+ (* (x ?a) -0.6474) (* (y ?a) -0.5935))) -0.8240)
	(<= (+ (* (d ?b) 0.4821) (+ (* (x ?a) 0.8002) (* (y ?a) -0.3567))) 13.4014)
	(<= (+ (* (d ?b) 0.5455) (+ (* (x ?a) -0.5905) (* (y ?a) -0.5947))) -0.6932)
	(<= (+ (* (d ?b) 0.5774) (+ (* (x ?a) -0.5774) (* (y ?a) -0.5774))) 0)
	(<= (+ (* (d ?b) 0.5774) (+ (* (x ?a) 0.5774) (* (y ?a) -0.5774))) 0)
	(<= (+ (* (d ?b) 0.6000) (* (y ?a) -0.8000)) -1.2000)
	(<= (+ (* (d ?b) 0.6926) (+ (* (y ?a) -0.7019) (* (x ?a) -0.1662))) -0.6649)
	(<= (+ (* (d ?b) 0.6934) (+ (* (y ?a) -0.7056) (* (x ?a) -0.1460))) -0.7299)
	(<= (+ (* (d ?b) 0.6993) (* (y ?a) -0.7148)) -0.7459)
	(<= (+ (* (d ?b) 0.7002) (+ (* (x ?a) -0.1059) (* (y ?a) -0.7061))) -0.5531)
	(<= (+ (* (x ?a) 0.0571) (+ (* (y ?a) 0.8877) (* (d ?b) -0.4568))) 44.1262)
	(<= (+ (* (x ?a) 0.2579) (+ (* (y ?a) 0.8394) (* (d ?b) -0.4783))) 39.2146)
	(<= (+ (* (x ?a) 0.5080) (+ (* (y ?a) 0.6345) (* (d ?b) -0.5825))) 17.9910)
	(<= (+ (* (x ?a) 0.5538) (+ (* (y ?a) 0.5800) (* (d ?b) -0.5974))) 13.7843)
	(<= (+ (* (x ?a) 0.5774) (+ (* (y ?a) 0.5774) (* (d ?b) -0.5774))) 14.4338)
	(<= (+ (* (x ?a) 0.7071) (* (y ?a) 0.7071)) 70.7107)
	(<= (+ (* (x ?a) 0.8628) (+ (* (y ?a) 0.0479) (* (d ?b) -0.5033))) 1.3661)
	(<= (+ (* (x ?a) 0.8810) (+ (* (d ?b) 0.4066) (* (y ?a) -0.2420))) 18.2195)
	(<= (+ (* (x ?a) 0.9249) (+ (* (d ?b) 0.2609) (* (y ?a) -0.2767))) 7.1382)
	(<= (+ (* (y ?a) -0.0806) (+ (* (x ?a) -0.2417) (* (d ?b) -0.9670))) -0.4835)
	(<= (+ (* (y ?a) -0.6750) (+ (* (d ?b) -0.0460) (* (x ?a) -0.7364))) -2.1171)
	(<= (+ (* (y ?a) 0.1342) (+ (* (x ?a) 0.4025) (* (d ?b) -0.9056))) 0.8049)
	(<= (+ (* (y ?a) 0.1744) (+ (* (x ?a) 0.0103) (* (d ?b) -0.9846))) 0.5333)
	(<= (+ (* (y ?a) 0.2776) (+ (* (x ?a) 0.7891) (* (d ?b) -0.5480))) 6.8606)
	(<= (+ (* (y ?a) 0.3505) (+ (* (d ?b) -0.1752) (* (x ?a) -0.9200))) 18.1596)
	(<= (+ (* (y ?a) 0.5774) (+ (* (d ?b) -0.5774) (* (x ?a) -0.5774))) 14.4338)
	(<= (+ (* (y ?a) 0.5917) (+ (* (d ?b) -0.6329) (* (x ?a) -0.4994))) 13.1026)
	(<= (+ (* (y ?a) 0.6130) (+ (* (d ?b) -0.6962) (* (x ?a) -0.3736))) 11.9118)
	(<= (+ (* (y ?a) 0.6667) (+ (* (d ?b) -0.3333) (* (x ?a) -0.6667))) 34)
	(<= (+ (* (y ?a) 0.8904) (+ (* (x ?a) -0.0189) (* (d ?b) -0.4547))) 44.4844))
	:effect (and (saved ?b) 
		))

)