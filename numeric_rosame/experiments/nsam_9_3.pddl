(define (domain driverlog)
(:requirements :typing :fluents :negative-preconditions :equality)
(:types 	location locatable - object
	driver truck obj - locatable
)

(:predicates (at ?obj - locatable ?loc - location)
	(in ?obj1 - obj ?obj - truck)
	(driving ?d - driver ?v - truck)
	(link ?x - location ?y - location)
	(path ?x - location ?y - location)
	(empty ?v - truck)
)

(:functions (time-to-walk ?l1 - location ?l2 - location)
	(time-to-drive ?l1 - location ?l2 - location)
	(driven )
	(walked )
)

(:action load-truck
	:parameters (?obj - obj ?truck - truck ?loc - location)
	:precondition (and (at ?obj ?loc)
	(at ?truck ?loc)
	(not (in ?obj ?truck))
	(<= (* (driven ) -1) 0)
	(<= (* (walked ) -1) 0)
	(<= (+ (* (walked ) 0.0229) (* (driven ) -0.9997)) 2.8161)
	(<= (+ (* (walked ) 0.3340) (* (driven ) 0.9426)) 175.3196)
	(<= (walked ) 254))
	:effect (and (in ?obj ?truck)
		(not (at ?obj ?loc)) 
		))

(:action unload-truck
	:parameters (?obj - obj ?truck - truck ?loc - location)
	:precondition (and (at ?truck ?loc)
	(in ?obj ?truck)
	(not (at ?obj ?loc))
	(<= (* (driven ) -1) -6)
	(<= (* (walked ) -1) 0)
	(<= (+ (* (driven ) 0.7362) (* (walked ) 0.6768)) 297.7878)
	(<= (+ (* (driven ) 0.8688) (* (walked ) 0.4951)) 323.2001)
	(<= (walked ) 254))
	:effect (and (at ?obj ?loc)
		(not (in ?obj ?truck)) 
		))

(:action board-truck
	:parameters (?driver - driver ?truck - truck ?loc - location)
	:precondition (and (at ?driver ?loc)
	(at ?truck ?loc)
	(empty ?truck)
	(not (driving ?driver ?truck))
	(<= (* (driven ) -1) 0)
	(<= (* (walked ) -1) 0)
	(<= (+ (* (driven ) 0.3162) (* (walked ) 0.9487)) 168.8656)
	(<= (+ (* (driven ) 0.4044) (* (walked ) -0.9146)) 61.0570)
	(<= (+ (* (walked ) 0.3610) (* (driven ) 0.9326)) 244.5735)
	(<= (+ (* (walked ) 0.4258) (* (driven ) -0.9048)) 39.5991)
	(<= (walked ) 110))
	:effect (and (driving ?driver ?truck)
		(not (at ?driver ?loc))
		(not (empty ?truck)) 
		))

(:action disembark-truck
	:parameters (?driver - driver ?truck - truck ?loc - location)
	:precondition (and (at ?truck ?loc)
	(driving ?driver ?truck)
	(not (at ?driver ?loc))
	(not (empty ?truck))
	(<= (* (walked ) -1) 0)
	(<= (+ (* (walked ) 0.3858) (* (driven ) -0.9226)) -27.6774)
	(<= (+ (* (walked ) 0.8666) (* (driven ) 0.4991)) 231.0683)
	(<= (walked ) 110))
	:effect (and (at ?driver ?loc)
		(empty ?truck)
		(not (driving ?driver ?truck)) 
		))

(:action drive-truck
	:parameters (?truck - truck ?loc-from - location ?loc-to - location ?driver - driver)
	:precondition (and (at ?truck ?loc-from)
	(driving ?driver ?truck)
	(link ?loc-from ?loc-to)
	(link ?loc-to ?loc-from)
	(not (at ?driver ?loc-from))
	(not (at ?driver ?loc-to))
	(not (at ?truck ?loc-to))
	(not (empty ?truck))
	(not (path ?loc-from ?loc-to))
	(not (path ?loc-to ?loc-from))
	(<= (* (driven ) -1) 0)
	(<= (* (time-to-drive ?loc-to ?loc-from) -1) -3)
	(<= (* (walked ) -1) 0)
	(<= (+ (* (driven ) 0.0384) (+ (* (walked ) -0.0259) (* (time-to-drive ?loc-to ?loc-from) -0.9989))) -2.9968)
	(<= (+ (* (driven ) 0.0436) (+ (* (time-to-drive ?loc-to ?loc-from) -0.9984) (* (walked ) -0.0355))) -2.9952)
	(<= (+ (* (driven ) 0.0459) (+ (* (time-to-drive ?loc-to ?loc-from) -0.9981) (* (walked ) -0.0405))) -2.9944)
	(<= (+ (* (driven ) 0.0476) (+ (* (walked ) -0.0238) (* (time-to-drive ?loc-to ?loc-from) -0.9986))) -0.9035)
	(<= (+ (* (driven ) 0.0763) (+ (* (walked ) -0.0139) (* (time-to-drive ?loc-to ?loc-from) -0.9970))) 6.5210)
	(<= (+ (* (driven ) 0.1222) (+ (* (time-to-drive ?loc-to ?loc-from) -0.7944) (* (walked ) -0.5950))) -2.3831)
	(<= (+ (* (driven ) 0.1506) (+ (* (time-to-drive ?loc-to ?loc-from) -0.6114) (* (walked ) -0.7768))) 0.3691)
	(<= (+ (* (driven ) 0.1885) (+ (* (walked ) 0.2754) (* (time-to-drive ?loc-to ?loc-from) 0.9427))) 155.9172)
	(<= (+ (* (driven ) 0.3809) (+ (* (time-to-drive ?loc-to ?loc-from) 0.7943) (* (walked ) 0.4733))) 213.9709)
	(<= (+ (* (driven ) 0.5064) (+ (* (time-to-drive ?loc-to ?loc-from) 0.5504) (* (walked ) 0.6638))) 256.8448)
	(<= (+ (* (driven ) 0.6549) (+ (* (walked ) 0.1333) (* (time-to-drive ?loc-to ?loc-from) -0.7438))) 175.9469)
	(<= (+ (* (time-to-drive ?loc-to ?loc-from) 0.0221) (+ (* (walked ) 0.0307) (* (driven ) -0.9993))) 4.8562)
	(<= (+ (* (time-to-drive ?loc-to ?loc-from) 0.0388) (+ (* (walked ) 0.0336) (* (driven ) -0.9987))) 6.0335)
	(<= (+ (* (time-to-drive ?loc-to ?loc-from) 0.1391) (+ (* (walked ) 0.0239) (* (driven ) -0.9900))) 12.6592)
	(<= (+ (* (time-to-drive ?loc-to ?loc-from) 0.9998) (* (walked ) 0.0197)) 94.9816)
	(<= (+ (* (walked ) 0.0050) (+ (* (time-to-drive ?loc-to ?loc-from) 0.9990) (* (driven ) -0.0439))) 90.9111)
	(<= (+ (* (walked ) 0.0116) (+ (* (time-to-drive ?loc-to ?loc-from) -0.1733) (* (driven ) -0.9848))) -0.5199)
	(<= (+ (* (walked ) 0.0349) (+ (* (driven ) 0.0215) (* (time-to-drive ?loc-to ?loc-from) 0.9992))) 98.9168)
	(<= (+ (* (walked ) 0.0350) (+ (* (time-to-drive ?loc-to ?loc-from) 0.0344) (* (driven ) -0.9988))) 5.9886)
	(<= (+ (* (walked ) 0.2420) (+ (* (driven ) 0.5707) (* (time-to-drive ?loc-to ?loc-from) -0.7847))) 156.6947)
	(<= (walked ) 254)
	(= (time-to-drive ?loc-from ?loc-to) (time-to-drive ?loc-to ?loc-from)))
	:effect (and (at ?truck ?loc-to)
		(not (at ?truck ?loc-from))
(increase (driven ) (time-to-drive ?loc-from ?loc-to))))

(:action walk
	:parameters (?driver - driver ?loc-from - location ?loc-to - location)
	:precondition (and (at ?driver ?loc-from)
	(not (at ?driver ?loc-to))
	(not (link ?loc-from ?loc-to))
	(not (link ?loc-to ?loc-from))
	(path ?loc-from ?loc-to)
	(path ?loc-to ?loc-from)
	(<= (* (driven ) -1) 0)
	(<= (* (walked ) -1) 0)
	(<= (+ (* (driven ) 0.1908) (+ (* (walked ) -0.0562) (* (time-to-walk ?loc-to ?loc-from) -0.9800))) -7.8402)
	(<= (+ (* (driven ) 0.2093) (+ (* (time-to-walk ?loc-to ?loc-from) -0.9680) (* (walked ) -0.1383))) -7.7442)
	(<= (+ (* (time-to-walk ?loc-to ?loc-from) 0.2040) (+ (* (driven ) -0.9521) (* (walked ) -0.2276))) 13.6701)
	(<= (+ (* (time-to-walk ?loc-to ?loc-from) 0.8668) (+ (* (driven ) 0.0990) (* (walked ) -0.4887))) 70.5104)
	(<= (+ (* (time-to-walk ?loc-to ?loc-from) 0.9716) (+ (* (walked ) 0.1388) (* (driven ) 0.1914))) 96.9059)
	(<= (+ (* (walked ) 0.0257) (+ (* (time-to-walk ?loc-to ?loc-from) 0.0175) (* (driven ) -0.9995))) 3.1561)
	(<= (+ (* (walked ) 0.0516) (+ (* (time-to-walk ?loc-to ?loc-from) 0.1193) (* (driven ) -0.9915))) 13.2403)
	(<= (+ (* (walked ) 0.0519) (+ (* (time-to-walk ?loc-to ?loc-from) 0.1519) (* (driven ) -0.9870))) 15.9357)
	(<= (+ (* (walked ) 0.1386) (+ (* (time-to-walk ?loc-to ?loc-from) 0.9717) (* (driven ) 0.1913))) 96.8865)
	(<= (+ (* (walked ) 0.3832) (+ (* (driven ) 0.2579) (* (time-to-walk ?loc-to ?loc-from) 0.8869))) 121.2850)
	(<= (+ (* (walked ) 0.4326) (+ (* (driven ) 0.3080) (* (time-to-walk ?loc-to ?loc-from) -0.8473))) 51.9330)
	(= (time-to-walk ?loc-from ?loc-to) (time-to-walk ?loc-to ?loc-from)))
	:effect (and (at ?driver ?loc-to)
		(not (at ?driver ?loc-from))
(increase (walked ) (time-to-walk ?loc-from ?loc-to))))

)