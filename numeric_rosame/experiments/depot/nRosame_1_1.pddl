(define (domain depot)
(:requirements :typing :fluents :negative-preconditions :equality)
(:types 	place locatable - object
	depot distributor - place
	truck hoist surface - locatable
	pallet crate - surface
)

(:predicates (at ?x - locatable ?y - place)
	(on ?x - crate ?y - surface)
	(in ?x - crate ?y - truck)
	(lifting ?x - hoist ?y - crate)
	(available ?x - hoist)
	(clear ?x - surface)
)

(:functions (load_limit ?t - truck)
	(current_load ?t - truck)
	(weight ?c - crate)
	(fuel-cost )
)

(:action drive
	:parameters (?a - truck ?b - place ?c - place)
	:precondition (and (at ?a ?b)
	(<= (+ (* (current_load ?a) -0.9958) (* (load_limit ?a) -0.0916)) -41.1452)
	(<= (+ (* (current_load ?a) 0.2147) (+ (* (load_limit ?a) -0.4770) (* (fuel-cost ) -0.8523))) -216.7150)
	(<= (+ (* (current_load ?a) 0.3034) (+ (* (fuel-cost ) 0.9254) (* (load_limit ?a) -0.2272))) 30.2649)
	(<= (+ (* (fuel-cost ) 0.5073) (+ (* (current_load ?a) 0.7892) (* (load_limit ?a) -0.3462))) -37.4493)
	(<= (+ (* (fuel-cost ) 0.7526) (+ (* (current_load ?a) -0.6271) (* (load_limit ?a) -0.2008))) 6.9047)
	(<= (load_limit ?a) 449))
	:effect (and (at ?a ?c)
		(not (at ?a ?b))
(increase (fuel-cost ) 10)))

(:action lift
	:parameters (?a - hoist ?b - crate ?c - surface ?d - place)
	:precondition (and (at ?b ?d)
	(available ?a)
	(clear ?b)
	(on ?b ?c)
	(<= (+ (* (fuel-cost ) -0.4472) (* (weight ?b) -0.8944)) -30.8577)
	(<= (+ (* (fuel-cost ) 0.1198) (* (weight ?b) 0.9928)) 86.6129)
	(<= (+ (* (fuel-cost ) 0.1351) (* (weight ?b) -0.9908)) -5.8099)
	(<= (+ (* (fuel-cost ) 0.7510) (* (weight ?b) -0.6603)) 40.4100)
	(<= (+ (* (weight ?b) -0.8666) (* (fuel-cost ) -0.4990)) -32.0650)
	(<= (+ (* (weight ?b) 0.0303) (* (fuel-cost ) -0.9995)) 1.1207)
	(<= (+ (* (weight ?b) 0.0587) (* (fuel-cost ) -0.9983)) 3.1123))
	:effect (and (at ?a ?d)
		(at ?c ?d)
		(clear ?c)
		(lifting ?a ?b)
		(not (at ?b ?d))
		(not (available ?a))
		(not (clear ?b))
		(not (on ?b ?c))
(increase (fuel-cost ) 1)))

(:action drop
	:parameters (?a - hoist ?b - crate ?c - surface ?d - place)
	:precondition (and (at ?a ?d)
	(at ?c ?d)
	(clear ?c)
	(lifting ?a ?b)
	(<= (+ (* (fuel-cost ) -0.0730) (* (weight ?b) -0.9973)) -22.8414)
	(<= (+ (* (fuel-cost ) -0.7399) (* (weight ?b) -0.6727)) -49.3069)
	(<= (+ (* (fuel-cost ) 0.1663) (* (weight ?b) 0.9861)) 95.1024)
	(<= (+ (* (weight ?b) -0.9596) (* (fuel-cost ) -0.2815)) -44.7927)
	(<= (+ (* (weight ?b) 0.1618) (* (fuel-cost ) 0.9868)) 148.9786)
	(<= (+ (* (weight ?b) 0.9522) (* (fuel-cost ) -0.3054)) 65.7388))
	:effect (and (at ?b ?d)
		(available ?a)
		(clear ?b)
		(not (clear ?c))
		(not (lifting ?a ?b))
		(on ?b ?c) 
		))

(:action load
	:parameters (?a - hoist ?b - crate ?c - truck ?d - place)
	:precondition (and (at ?a ?d)
	(at ?c ?d)
	(lifting ?a ?b)
	(<= (* (current_load ?c) -1) 0)
	(<= (+ (* (current_load ?c) 0.2068) (+ (* (weight ?b) -0.5564) (+ (* (fuel-cost ) -0.7419) (* (load_limit ?c) -0.3118)))) -170.2221)
	(<= (+ (* (current_load ?c) 0.6004) (+ (* (fuel-cost ) 0.3648) (+ (* (weight ?b) 0.6543) (* (load_limit ?c) -0.2798)))) -34.4589)
	(<= (+ (* (fuel-cost ) 0.5520) (+ (* (current_load ?c) 0.6900) (+ (* (weight ?b) 0.4140) (* (load_limit ?c) -0.2184)))) -2.1649)
	(<= (+ (* (fuel-cost ) 0.6937) (+ (* (weight ?b) 0.2274) (+ (* (current_load ?c) 0.6618) (* (load_limit ?c) -0.1703)))) 22.6883)
	(<= (+ (* (load_limit ?c) 0.0301) (+ (* (current_load ?c) -0.1815) (+ (* (fuel-cost ) -0.1902) (* (weight ?b) -0.9643)))) -24.4993)
	(<= (+ (* (load_limit ?c) 0.0302) (+ (* (weight ?b) -0.9639) (+ (* (current_load ?c) -0.1823) (* (fuel-cost ) -0.1917)))) -24.6165)
	(<= (+ (* (load_limit ?c) 0.0304) (+ (* (weight ?b) -0.9639) (+ (* (current_load ?c) -0.1828) (* (fuel-cost ) -0.1912)))) -24.5163)
	(<= (+ (* (weight ?b) 0.1839) (+ (* (current_load ?c) 0.2065) (+ (* (load_limit ?c) -0.4637) (* (fuel-cost ) -0.8417)))) -212.3619)
	(<= (+ (* (weight ?b) 0.6230) (+ (* (current_load ?c) -0.7275) (+ (* (fuel-cost ) -0.2116) (* (load_limit ?c) -0.1944)))) -66.9954)
	(<= (load_limit ?c) 449))
	:effect (and (available ?a)
		(in ?b ?c)
		(not (lifting ?a ?b))
(increase (current_load ?c) (weight ?b))))

(:action unload
	:parameters (?a - hoist ?b - crate ?c - truck ?d - place)
	:precondition (and (at ?a ?d)
	(at ?c ?d)
	(available ?a)
	(in ?b ?c)
	(<= (+ (* (current_load ?c) 0.4258) (+ (* (fuel-cost ) 0.1161) (+ (* (load_limit ?c) -0.1112) (* (weight ?b) -0.8904)))) -26.2147)
	(<= (+ (* (current_load ?c) 0.6227) (+ (* (weight ?b) 0.4327) (+ (* (fuel-cost ) -0.2638) (* (load_limit ?c) -0.5962)))) -183.1741)
	(<= (+ (* (fuel-cost ) 0.0736) (+ (* (current_load ?c) 0.3944) (+ (* (weight ?b) -0.9097) (* (load_limit ?c) -0.1071)))) -30.4169)
	(<= (+ (* (fuel-cost ) 0.1119) (+ (* (current_load ?c) 0.1911) (+ (* (load_limit ?c) -0.0426) (* (weight ?b) -0.9742)))) -11.8347)
	(<= (+ (* (fuel-cost ) 0.3366) (+ (* (current_load ?c) 0.7476) (+ (* (weight ?b) 0.3666) (* (load_limit ?c) -0.4398)))) -72.7262)
	(<= (+ (* (fuel-cost ) 0.4375) (+ (* (current_load ?c) 0.5640) (+ (* (weight ?b) -0.6913) (* (load_limit ?c) -0.1124)))) 13.1995)
	(<= (+ (* (fuel-cost ) 0.5946) (+ (* (current_load ?c) 0.6480) (+ (* (load_limit ?c) -0.1460) (* (weight ?b) -0.4531)))) 25.3911)
	(<= (+ (* (load_limit ?c) 0.0513) (+ (* (weight ?b) 0.2888) (+ (* (current_load ?c) -0.7296) (* (fuel-cost ) -0.6178)))) -58.6486)
	(<= (+ (* (weight ?b) 0.1381) (+ (* (load_limit ?c) -0.0716) (+ (* (fuel-cost ) -0.8490) (* (current_load ?c) -0.5050)))) -117.6760)
	(<= (+ (* (weight ?b) 0.1449) (+ (* (load_limit ?c) 0.1120) (+ (* (current_load ?c) -0.8484) (* (fuel-cost ) -0.4966)))) -32.1666)
	(<= (+ (* (weight ?b) 0.7071) (* (current_load ?c) -0.7071)) 0)
	(<= (+ (* (weight ?b) 0.7556) (+ (* (current_load ?c) -0.6488) (+ (* (fuel-cost ) -0.0862) (* (load_limit ?c) -0.0269)))) -15.4003)
	(<= (load_limit ?c) 449))
	:effect (and (lifting ?a ?b)
		(not (available ?a))
		(not (in ?b ?c))
(decrease (current_load ?c) (weight ?b))))

)