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
	(<= (+ (* (capacity ?a) 0.0012) (+ (* (fast-burn ?a) -0.8877) (* (zoom-limit ?a) -0.4604))) -1.7773)
	(<= (+ (* (capacity ?a) 0.0023) (+ (* (total-fuel-used ) 0.0007) (+ (* (fast-burn ?a) -0.9399) (* (zoom-limit ?a) -0.3414)))) 9.3345)
	(<= (+ (* (fast-burn ?a) 0.9894) (+ (* (zoom-limit ?a) -0.1452) (+ (* (capacity ?a) -0.0021) (* (total-fuel-used ) -0.0006)))) -7.7922)
	(<= (+ (* (total-fuel-used ) 0.0013) (+ (* (zoom-limit ?a) 0.9613) (+ (* (fast-burn ?a) 0.2756) (* (capacity ?a) -0.0005)))) 11.2430)
	(<= (+ (* (zoom-limit ?a) 0.9999) (+ (* (capacity ?a) 0.0002) (+ (* (fast-burn ?a) -0.0154) (* (total-fuel-used ) -0.0019)))) -0.4501)
	(= (+ (* (fuel ?a) 1) (+ (* (total-fuel-used ) 0.6898) (+ (* (zoom-limit ?a) 104.7293) (+ (* (capacity ?a) 0.1383) (+ (* (slow-burn ?a) -81.6772) (* (fast-burn ?a) -384.7631)))))) 4172.7666)
	(= (+ (* (zoom-limit ?a) 0.0173) (+ (* (fast-burn ?a) 0.2170) (* (slow-burn ?a) -1))) -0.1169)
	(= (onboard ?a) 0))
	:effect (and (in ?p ?a)
		(not (at ?p ?c))
(assign (onboard ?a) 1)))

(:action debark
	:parameters (?p - person ?a - aircraft ?c - city)
	:precondition (and (at ?a ?c)
	(in ?p ?a)
	(not (at ?p ?c))
	(<= (+ (* (capacity ?a) 0.0012) (+ (* (zoom-limit ?a) -0.4575) (* (fast-burn ?a) -0.8892))) -1.6387)
	(<= (+ (* (capacity ?a) 0.0018) (+ (* (total-fuel-used ) 0.0003) (+ (* (fast-burn ?a) -0.9173) (* (zoom-limit ?a) -0.3981)))) 4.7940)
	(<= (+ (* (total-fuel-used ) 0.0013) (+ (* (zoom-limit ?a) 0.6584) (+ (* (capacity ?a) 0.0004) (* (fast-burn ?a) -0.7526)))) 10.5322)
	(<= (+ (* (zoom-limit ?a) 0.0519) (+ (* (fast-burn ?a) 0.9987) (+ (* (capacity ?a) -0.0018) (* (total-fuel-used ) -0.0003)))) -4.5427)
	(<= (+ (* (zoom-limit ?a) 0.8162) (+ (* (fast-burn ?a) 0.5778) (+ (* (capacity ?a) -0.0005) (* (total-fuel-used ) -0.0006)))) 2.2583)
	(= (+ (* (fuel ?a) 1) (+ (* (total-fuel-used ) 0.2583) (+ (* (capacity ?a) 0.7502) (+ (* (zoom-limit ?a) 369.1520) (+ (* (fast-burn ?a) -598.8625) (* (slow-burn ?a) -111.2730)))))) 5074.4750)
	(= (+ (* (slow-burn ?a) 1) (+ (* (zoom-limit ?a) 0.0011) (* (fast-burn ?a) -0.1851))) 0.2515)
	(= (onboard ?a) 1))
	:effect (and (at ?p ?c)
		(not (in ?p ?a))
(assign (onboard ?a) 0)))

(:action fly
	:parameters (?a - aircraft ?c1 - city ?c2 - city)
	:precondition (and (at ?a ?c1)
	(not (at ?a ?c2))
	(<= (+ (* (distance ?c2 ?c1) 0.0002) (+ (* (fast-burn ?a) 0.2191) (+ (* (zoom-limit ?a) -0.0042) (+ (* (onboard ?a) -0.0360) (* (slow-burn ?a) -0.9750))))) -0.3248)
	(<= (+ (* (fast-burn ?a) 0.2738) (+ (* (distance ?c2 ?c1) 0.0007) (+ (* (zoom-limit ?a) 0.0263) (+ (* (onboard ?a) -0.1380) (* (slow-burn ?a) -0.9515))))) -0.1216)
	(<= (+ (* (fast-burn ?a) 0.2882) (+ (* (zoom-limit ?a) 0.0047) (* (slow-burn ?a) -0.9576))) -0.7454)
	(<= (+ (* (fast-burn ?a) 0.3356) (+ (* (distance ?c2 ?c1) 0.0007) (+ (* (onboard ?a) 0.0901) (+ (* (slow-burn ?a) -0.9375) (* (zoom-limit ?a) -0.0181))))) -0.5346)
	(<= (+ (* (onboard ?a) 0.2319) (+ (* (distance ?c2 ?c1) 0.0003) (+ (* (fast-burn ?a) 0.2070) (+ (* (zoom-limit ?a) 0.0301) (* (slow-burn ?a) -0.9500))))) 0.2138)
	(<= (+ (* (slow-burn ?a) 0.9613) (+ (* (onboard ?a) 0.0088) (+ (* (fast-burn ?a) -0.2754) (+ (* (distance ?c2 ?c1) -0.0003) (* (zoom-limit ?a) -0.0067))))) 0.3257)
	(<= (+ (* (slow-burn ?a) 0.9620) (+ (* (fast-burn ?a) -0.2703) (* (zoom-limit ?a) -0.0390))) 0.7236)
	(<= (+ (* (slow-burn ?a) 0.9694) (+ (* (onboard ?a) 0.0654) (+ (* (zoom-limit ?a) -0.0023) (+ (* (distance ?c2 ?c1) -0.0003) (* (fast-burn ?a) -0.2367))))) 0.3422)
	(<= (+ (* (zoom-limit ?a) 0.0558) (+ (* (fast-burn ?a) 0.1973) (+ (* (distance ?c2 ?c1) -0.0005) (+ (* (onboard ?a) -0.3359) (* (slow-burn ?a) -0.9193))))) -0.6049)
	(= (distance ?c1 ?c2) (distance ?c2 ?c1)))
	:effect (and (at ?a ?c2)
		(not (at ?a ?c1))
(increase (total-fuel-used ) (+ (* (fuel ?a) 0.0177) (+ (* (distance ?c1 ?c2) 2.2972) (+ (* (slow-burn ?a) 1584.4522) (+ (* (fast-burn ?a) -126.2195) (+ (* (capacity ?a) -0.1530) (+ (* (total-fuel-used ) -0.0462) (+ (* (onboard ?a) -79.5690) (+ (* (zoom-limit ?a) 36.5138) -1748.6432)))))))))		
(decrease (fuel ?a) (+ (* (fuel ?a) 0.0177) (+ (* (distance ?c1 ?c2) 2.2972) (+ (* (slow-burn ?a) 1584.4522) (+ (* (fast-burn ?a) -126.2195) (+ (* (capacity ?a) -0.1530) (+ (* (total-fuel-used ) -0.0462) (+ (* (onboard ?a) -79.5690) (+ (* (zoom-limit ?a) 36.5138) -1748.6432)))))))))))

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
	(<= (+ (* (capacity ?a) 0.0003) (+ (* (onboard ?a) 0.9342) (* (zoom-limit ?a) -0.3567))) 1.7254)
	(<= (+ (* (onboard ?a) 0.8290) (+ (* (zoom-limit ?a) 0.5592) (* (capacity ?a) -0.0002))) 1.0503)
	(<= (+ (* (zoom-limit ?a) -0.1910) (* (onboard ?a) -0.9816)) -1.2356)
	(<= (onboard ?a) 0)
	(= (+ (* (fuel ?a) 1) (+ (* (onboard ?a) 101.9298) (+ (* (capacity ?a) 0.2358) (+ (* (slow-burn ?a) 4.9965) (+ (* (total-fuel-used ) -0.0812) (+ (* (zoom-limit ?a) -629.0327) (* (fast-burn ?a) -81.9438))))))) -673.5313)
	(= (+ (* (onboard ?a) 0.1046) (+ (* (fast-burn ?a) 0.2980) (+ (* (slow-burn ?a) -1) (* (zoom-limit ?a) -0.0298)))) -0.5814)
	(= (+ (* (onboard ?a) 3.0259) (+ (* (capacity ?a) 0.0020) (+ (* (zoom-limit ?a) 0.6206) (* (fast-burn ?a) -1)))) 6.8976))
	:effect (and 
(assign (fuel ?a) (+ (* (fast-burn ?a) 0.0003) (+ (capacity ?a) (+ (* (onboard ?a) -0.0006) (+ (* (zoom-limit ?a) 0.0002) 0.0010)))))))

)