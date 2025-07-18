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
	:precondition (and (<= (* (x ?b) -1) 6)
	(<= (* (y ?b) -1) 0)
	(<= (+ (* (x ?b) 0.7071) (* (y ?b) -0.7071)) 2.1213)
	(<= (+ (* (x ?b) 0.7071) (* (y ?b) 0.7071)) 68.5894)
	(<= (+ (* (x ?b) 0.7433) (* (y ?b) -0.6690)) 3.0103)
	(<= (+ (* (x ?b) 0.7557) (* (y ?b) 0.6549)) 64.9893)
	(<= (+ (* (y ?b) -0.0700) (* (x ?b) -0.9975)) 1.9951)
	(<= (+ (* (y ?b) 0.1560) (* (x ?b) -0.9878)) 18.0917)
	(<= (+ (* (y ?b) 0.3162) (* (x ?b) 0.9487)) 51.2289)
	(<= (+ (* (y ?b) 0.7071) (* (x ?b) -0.7071)) 70.7107))
	:effect (and 
(increase (x ?b) 1.5000)		
(increase (y ?b) 1.5000)))

(:action go_north_west
	:parameters (?b - boat)
	:precondition (and (<= (+ (* (x ?b) 0.6000) (* (y ?b) -0.8000)) 0.6000)
	(<= (+ (* (x ?b) 0.6690) (* (y ?b) -0.7433)) 1.1149)
	(<= (+ (* (x ?b) 0.7071) (* (y ?b) 0.7071)) 70.7107)
	(<= (+ (* (x ?b) 0.7433) (* (y ?b) -0.6690)) 3.1218)
	(<= (+ (* (y ?b) -0.0496) (* (x ?b) -0.9988)) -0.9988)
	(<= (+ (* (y ?b) 0.0400) (* (x ?b) -0.9992)) 5.3157)
	(<= (+ (* (y ?b) 0.3162) (* (x ?b) 0.9487)) 53.1263)
	(<= (+ (* (y ?b) 0.5812) (* (x ?b) -0.8137)) 56.7288)
	(<= (+ (* (y ?b) 0.6616) (* (x ?b) 0.7498)) 67.3090))
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
	:precondition (and (<= (* (x ?b) -1) 3)
	(<= (+ (* (x ?b) 0.2124) (* (y ?b) 0.9772)) 85.4817)
	(<= (+ (* (x ?b) 0.6718) (* (y ?b) -0.7407)) 0)
	(<= (+ (* (x ?b) 0.7682) (* (y ?b) -0.6402)) 4.0332)
	(<= (+ (* (y ?b) -0.0526) (* (x ?b) -0.9986)) 0)
	(<= (+ (* (y ?b) 0.1738) (* (x ?b) -0.9848)) 16.5096)
	(<= (+ (* (y ?b) 0.3406) (* (x ?b) 0.9402)) 47.0913)
	(<= (+ (* (y ?b) 0.5547) (* (x ?b) 0.8321)) 59.9076)
	(<= (y ?b) 86.5000))
	:effect (and 
(decrease (x ?b) 3)))

(:action go_south_west
	:parameters (?b - boat)
	:precondition (and (<= (+ (* (x ?b) -0.7740) (* (y ?b) -0.6332)) -37.9943)
	(<= (+ (* (x ?b) 0.3714) (* (y ?b) -0.9285)) -55.7086)
	(<= (+ (* (x ?b) 0.7071) (* (y ?b) 0.7071)) 70.7107)
	(<= (+ (* (x ?b) 0.9578) (* (y ?b) -0.2873)) -8.8120)
	(<= (+ (* (y ?b) 0.7071) (* (x ?b) -0.7071)) 70.7107))
	:effect (and 
(decrease (y ?b) 2)		
(increase (x ?b) 2)))

(:action go_south_east
	:parameters (?b - boat)
	:precondition (and (<= (+ (* (x ?b) 0.7071) (* (y ?b) -0.7071)) -33.9411)
	(<= (+ (* (x ?b) 0.7071) (* (y ?b) 0.7071)) 70.7107)
	(<= (+ (* (x ?b) 0.9767) (* (y ?b) -0.2144)) 0)
	(<= (+ (* (y ?b) -0.5145) (* (x ?b) -0.8575)) -29.4978)
	(<= (+ (* (y ?b) 0.7071) (* (x ?b) -0.7071)) 70.7107))
	:effect (and 
(decrease (x ?b) 2)		
(decrease (y ?b) 2)))

(:action go_south
	:parameters (?b - boat)
	:precondition (and (<= (+ (* (x ?b) -0.9943) (* (y ?b) -0.1065)) -6.8181)
	(<= (+ (* (x ?b) 0.9450) (* (y ?b) -0.3271)) -8.9410)
	(<= (+ (* (y ?b) -0.0963) (* (x ?b) -0.9954)) -6.1647)
	(<= (+ (* (y ?b) 0.3387) (* (x ?b) 0.9409)) 32.2913)
	(<= (+ (* (y ?b) 0.5145) (* (x ?b) -0.8575)) 42.1887))
	:effect (and 
(decrease (y ?b) 2)))

(:action save_person
	:parameters (?b - boat ?t - person)
	:precondition (and (not (saved ?t))
	(<= (+ (* (d ?t) 0.5180) (+ (* (x ?b) 0.7447) (* (y ?b) -0.4209))) 10.1014)
	(<= (+ (* (d ?t) 0.5207) (+ (* (x ?b) 0.7365) (* (y ?b) -0.4318))) 9.2703)
	(<= (+ (* (d ?t) 0.5774) (+ (* (x ?b) -0.5774) (* (y ?b) -0.5774))) 0)
	(<= (+ (* (d ?t) 0.5774) (+ (* (x ?b) 0.5774) (* (y ?b) -0.5774))) 0)
	(<= (+ (* (x ?b) 0.1922) (+ (* (y ?b) 0.9128) (* (d ?t) -0.3603))) 55.6098)
	(<= (+ (* (x ?b) 0.4377) (+ (* (y ?b) 0.8069) (* (d ?t) -0.3966))) 44.3950)
	(<= (+ (* (x ?b) 0.5179) (+ (* (d ?t) 0.5754) (* (y ?b) -0.6330))) -0.6905)
	(<= (+ (* (x ?b) 0.5414) (+ (* (y ?b) 0.6082) (* (d ?t) -0.5805))) 16.2827)
	(<= (+ (* (x ?b) 0.5774) (+ (* (y ?b) 0.5774) (* (d ?t) -0.5774))) 14.4338)
	(<= (+ (* (x ?b) 0.5987) (+ (* (d ?t) 0.5322) (* (y ?b) -0.5987))) -0.5987)
	(<= (+ (* (x ?b) 0.6534) (+ (* (d ?t) 0.4629) (* (y ?b) -0.5990))) -0.5718)
	(<= (+ (* (x ?b) 0.6804) (+ (* (y ?b) 0.6804) (* (d ?t) -0.2722))) 44.9073)
	(<= (+ (* (x ?b) 0.7071) (* (y ?b) 0.7071)) 70.7107)
	(<= (+ (* (x ?b) 0.7221) (+ (* (y ?b) 0.6461) (* (d ?t) -0.2470))) 44.2026)
	(<= (+ (* (x ?b) 0.7341) (+ (* (d ?t) 0.5216) (* (y ?b) -0.4347))) 9.0705)
	(<= (+ (* (x ?b) 0.9613) (+ (* (y ?b) 0.1831) (* (d ?t) -0.2060))) 13.5265)
	(<= (+ (* (y ?b) -0.0476) (* (x ?b) -0.9989)) -0.5708)
	(<= (+ (* (y ?b) 0.0245) (+ (* (d ?t) -0.0356) (* (x ?b) -0.9991))) 0.2670)
	(<= (+ (* (y ?b) 0.0364) (+ (* (x ?b) -0.9961) (* (d ?t) -0.0800))) -0.4435)
	(<= (+ (* (y ?b) 0.0416) (+ (* (d ?t) -0.0416) (* (x ?b) -0.9983))) 1.0399)
	(<= (+ (* (y ?b) 0.0440) (+ (* (x ?b) -0.9981) (* (d ?t) -0.0420))) 1.1782)
	(<= (+ (* (y ?b) 0.0484) (+ (* (d ?t) -0.0320) (* (x ?b) -0.9983))) 2.1588)
	(<= (+ (* (y ?b) 0.4326) (+ (* (x ?b) -0.4719) (* (d ?t) -0.7682))) 0.4130)
	(<= (+ (* (y ?b) 0.6859) (+ (* (x ?b) 0.5235) (* (d ?t) -0.5054))) 27.4736)
	(<= (x ?b) 12))
	:effect (and (saved ?t) 
		))

)