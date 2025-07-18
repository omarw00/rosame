(define (domain zeno-travel)
(:requirements :typing :fluents :negative-preconditions :equality)
(:types 	aircraft person - movable
	movable city - object
)

(:predicates (at ?x - movable ?c - city)
	(in ?p - person ?a - aircraft)
)

(:functions (fuel ?a - aircraft)
	(distance ?c1 - city ?c2 - city)
	(slow-burn ?a - aircraft)
	(fast-burn ?a - aircraft)
	(capacity ?a - aircraft)
	(total-fuel-used )
	(onboard ?a - aircraft)
	(zoom-limit ?a - aircraft)
)

(:action board
	:parameters (?p - person ?a - aircraft ?c - city)
	:precondition (and (at ?a ?c)
	(at ?p ?c)
	(not (in ?p ?a))
	(<= (+ (* (zoom-limit ?a) -1) (* (total-fuel-used ) -0.0015)) -13.3910)
	(<= (+ (zoom-limit ?a) (+ (* (capacity ?a) 0.0002) (* (total-fuel-used ) -0.0017))) 0.1695)
	(<= (+ (zoom-limit ?a) (+ (* (total-fuel-used ) 0.0015) (* (capacity ?a) -0.0002))) 13.0649)
	(<= (+ (zoom-limit ?a) (+ (* (total-fuel-used ) 0.0018) (* (capacity ?a) 0.0002))) 16.2349)
	(= (+ (* (fast-burn ?a) 1) (+ (* (total-fuel-used ) 0.0047) (+ (* (zoom-limit ?a) 3.4873) (* (capacity ?a) -0.0019)))) 40.7882)
	(= (+ (* (fuel ?a) 1) (+ (* (capacity ?a) 0.1355) (+ (* (zoom-limit ?a) 109.9272) (+ (* (total-fuel-used ) 0.6968) (+ (* (slow-burn ?a) -81.2823) (* (fast-burn ?a) -383.3563)))))) 4233.6867)
	(= (+ (* (slow-burn ?a) 1) (+ (* (zoom-limit ?a) 0.0562) (* (fast-burn ?a) -0.1959))) 0.9758)
	(= (onboard ?a) 0))
	:effect (and (in ?p ?a)
		(not (at ?p ?c))
(assign (onboard ?a) 1)))

(:action debark
	:parameters (?p - person ?a - aircraft ?c - city)
	:precondition (and (at ?a ?c)
	(in ?p ?a)
	(not (at ?p ?c))
	(<= (+ (* (zoom-limit ?a) -1) (+ (* (capacity ?a) 0.0006) (* (total-fuel-used ) -0.0013))) -11.3985)
	(<= (+ (* (zoom-limit ?a) -1) (+ (* (capacity ?a) 0.0011) (* (total-fuel-used ) -0.0010))) -6.6990)
	(<= (+ (zoom-limit ?a) (* (total-fuel-used ) 0.0002)) 7.8264)
	(<= (+ (zoom-limit ?a) (+ (* (total-fuel-used ) 0.0015) (* (capacity ?a) -0.0013))) 10.1910)
	(= (+ (* (capacity ?a) 0.0005) (+ (* (zoom-limit ?a) 0.8749) (+ (* (total-fuel-used ) 0.0017) (* (fast-burn ?a) -1)))) 13.9940)
	(= (+ (* (fast-burn ?a) 0.0797) (+ (* (zoom-limit ?a) 0.0911) (+ (* (total-fuel-used ) 0.0002) (* (slow-burn ?a) -1)))) 1.2236)
	(= (+ (* (slow-burn ?a) 15.5089) (+ (* (total-fuel-used ) 0.6299) (+ (* (fast-burn ?a) 84.3362) (+ (* (zoom-limit ?a) 96.3977) (+ (* (fuel ?a) -1) (* (capacity ?a) -0.4538)))))) 2349.8296)
	(= (onboard ?a) 1))
	:effect (and (at ?p ?c)
		(not (in ?p ?a))
(assign (onboard ?a) 0)))

(:action fly
	:parameters (?a - aircraft ?c1 - city ?c2 - city)
	:precondition (and (at ?a ?c1)
	(not (at ?a ?c2))
	(<= (+ (* (capacity ?a) 0.0004) (+ (* (onboard ?a) 0.9585) (+ (* (zoom-limit ?a) -0.2508) (+ (* (fast-burn ?a) -0.1357) (+ (* (distance ?c2 ?c1) -0.0024) (* (total-fuel-used ) -0.0002)))))) -2.2787)
	(<= (+ (* (capacity ?a) 0.0009) (+ (* (total-fuel-used ) 0.0002) (+ (* (onboard ?a) 0.8333) (+ (* (fast-burn ?a) -0.5117) (+ (* (distance ?c2 ?c1) -0.0036) (* (zoom-limit ?a) -0.2090)))))) -0.3664)
	(<= (+ (* (capacity ?a) 0.0018) (+ (* (onboard ?a) -0.6266) (+ (* (zoom-limit ?a) -0.0188) (+ (* (distance ?c2 ?c1) -0.0105) (+ (* (fast-burn ?a) -0.7790) (* (total-fuel-used ) -0.0002)))))) -4.9035)
	(<= (+ (* (capacity ?a) 0.0019) (+ (* (fast-burn ?a) -0.7782) (* (zoom-limit ?a) -0.6280))) 2.1223)
	(<= (+ (* (distance ?c2 ?c1) 0.0029) (+ (* (fast-burn ?a) 0.0537) (+ (* (zoom-limit ?a) 0.1639) (+ (* (capacity ?a) -0.0003) (* (onboard ?a) -0.9850))))) 1.6380)
	(<= (+ (* (zoom-limit ?a) 0.2518) (+ (* (fast-burn ?a) 0.9678) (* (capacity ?a) -0.0020))) -2.3488)
	(<= (+ (* (zoom-limit ?a) 0.6366) (+ (* (onboard ?a) 0.4324) (+ (* (fast-burn ?a) 0.6384) (+ (* (distance ?c2 ?c1) 0.0073) (* (capacity ?a) -0.0014))))) 7.5440)
	(= (+ (* (distance ?c1 ?c2) 8.9113) (+ (* (distance ?c2 ?c1) 8.9113) (+ (* (zoom-limit ?a) 1162.4687) (+ (* (slow-burn ?a) 371.0167) (+ (* (total-fuel-used ) 0.3048) (+ (* (fast-burn ?a) 1908.5212) (+ (* (fuel ?a) -1) (+ (* (onboard ?a) -3537.7271) (* (capacity ?a) -3.5760))))))))) 10475.9610)
	(= (+ (* (slow-burn ?a) 1) (+ (* (zoom-limit ?a) 0.0197) (* (fast-burn ?a) -0.2064))) 0.5489)
	(= (distance ?c1 ?c2) (distance ?c2 ?c1)))
	:effect (and (at ?a ?c2)
		(not (at ?a ?c1))
(increase (total-fuel-used ) (+ (* (fuel ?a) 0.0557) (+ (* (distance ?c1 ?c2) 1.6196) (+ (* (slow-burn ?a) 25.5254) (+ (* (fast-burn ?a) 120.0475) (+ (* (capacity ?a) 0.0727) (+ (* (total-fuel-used ) -0.0578) (+ (* (onboard ?a) 54.9348) (+ (* (zoom-limit ?a) -38.0810) -502.4192)))))))))		
(decrease (fuel ?a) (+ (* (fuel ?a) 0.0557) (+ (* (distance ?c1 ?c2) 1.6196) (+ (* (slow-burn ?a) 25.5254) (+ (* (fast-burn ?a) 120.0474) (+ (* (capacity ?a) 0.0727) (+ (* (total-fuel-used ) -0.0578) (+ (* (onboard ?a) 54.9350) (+ (* (zoom-limit ?a) -38.0811) -502.4188)))))))))))

(:action zoom
	:parameters (?a - aircraft ?c1 - city ?c2 - city)
	:precondition (and (at ?a ?c1)
	(not (at ?a ?c2))
	(= (capacity ?a) 5739)
	(= (distance ?c1 ?c2) 609)
	(= (distance ?c2 ?c1) 609)
	(= (fast-burn ?a) 7)
	(= (fuel ?a) 5739)
	(= (onboard ?a) 0)
	(= (slow-burn ?a) 2)
	(= (total-fuel-used ) 0)
	(= (zoom-limit ?a) 4))
	:effect (and (at ?a ?c2)
		(not (at ?a ?c1))
(assign (fuel ?a) 1476)		
(assign (total-fuel-used ) 4263)))

(:action refuel
	:parameters (?a - aircraft ?c - city)
	:precondition (and (at ?a ?c)
	(<= (* (onboard ?a) -1) 0)
	(<= (+ (* (onboard ?a) 0.9701) (* (zoom-limit ?a) 0.2425)) 1.4552)
	(<= (+ (* (zoom-limit ?a) -0.3006) (* (onboard ?a) -0.9537)) -1.2025)
	(<= (onboard ?a) 0)
	(= (+ (* (capacity ?a) 0.0026) (+ (* (onboard ?a) 0.6587) (+ (* (fast-burn ?a) -1) (* (zoom-limit ?a) -0.9763)))) 3.8986)
	(= (+ (* (fast-burn ?a) 0.2143) (+ (* (onboard ?a) 0.1017) (+ (* (slow-burn ?a) -1) (* (zoom-limit ?a) -0.1508)))) -0.3283)
	(= (+ (* (fuel ?a) 1) (+ (* (onboard ?a) 105.1200) (+ (* (fast-burn ?a) 221.3743) (+ (* (slow-burn ?a) 81.6236) (+ (* (total-fuel-used ) -0.0812) (+ (* (zoom-limit ?a) -155.8242) (* (capacity ?a) -0.6546))))))) -1614.1604)
	(= (+ (* (onboard ?a) 4009) (+ (* (zoom-limit ?a) 2704.5000) (* (capacity ?a) -1))) 5079))
	:effect (and 
(assign (fuel ?a) (+ (* (slow-burn ?a) 0.0007) (+ (* (fast-burn ?a) 0.0026) (+ (capacity ?a) (+ (* (onboard ?a) 0.0002) 0.0156)))))))

)