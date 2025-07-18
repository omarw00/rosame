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
	(not (empty ?truck))
	(not (in ?obj ?truck))
	(<= (* (walked ) -1) -53)
	(<= (+ (* (driven ) -0.0816) (* (walked ) -0.9967)) -66.7766)
	(<= (+ (* (walked ) 0.5865) (* (driven ) 0.8099)) 233.5706)
	(<= (+ (* (walked ) 0.9681) (* (driven ) -0.2504)) 64.8658)
	(<= (walked ) 82))
	:effect (and (in ?obj ?truck)
		(not (at ?obj ?loc)) 
		))

(:action unload-truck
	:parameters (?obj - obj ?truck - truck ?loc - location)
	:precondition (and (at ?truck ?loc)
	(in ?obj ?truck)
	(not (at ?obj ?loc))
	(not (empty ?truck))
	(<= (* (walked ) -1) -53)
	(<= (+ (* (driven ) -0.0755) (* (walked ) -0.9971)) -74.7323)
	(<= (+ (* (walked ) 0.5579) (* (driven ) 0.8299)) 379.7865)
	(<= (+ (* (walked ) 0.5914) (* (driven ) -0.8064)) -45.0512)
	(<= (+ (* (walked ) 0.9290) (* (driven ) -0.3700)) 33.2647))
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
	(<= (+ (* (driven ) 0.1246) (* (walked ) -0.9922)) 0)
	(<= (+ (* (driven ) 0.6530) (* (walked ) 0.7573)) 315.7241)
	(<= (+ (* (walked ) 0.9379) (* (driven ) -0.3468)) 62.8425))
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
	(<= (* (walked ) -1) -53)
	(<= (+ (* (driven ) 0.6318) (* (walked ) 0.7751)) 349.3964)
	(<= (+ (* (walked ) 0.9183) (* (driven ) -0.3959)) 22.5378))
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
	(<= (+ (* (driven ) -0.0108) (+ (* (walked ) -0.4325) (* (time-to-drive ?loc-to ?loc-from) -0.9016))) -59.5037)
	(<= (+ (* (driven ) 0.0219) (+ (* (time-to-drive ?loc-to ?loc-from) -0.8529) (* (walked ) -0.5216))) -56.2930)
	(<= (+ (* (driven ) 0.0229) (+ (* (walked ) -0.4497) (* (time-to-drive ?loc-to ?loc-from) -0.8929))) -53.8263)
	(<= (+ (* (driven ) 0.0962) (+ (* (time-to-drive ?loc-to ?loc-from) -0.6361) (* (walked ) -0.7656))) -41.9821)
	(<= (+ (* (driven ) 0.1328) (+ (* (time-to-drive ?loc-to ?loc-from) -0.8788) (* (walked ) -0.4584))) -26.2349)
	(<= (+ (* (time-to-drive ?loc-to ?loc-from) -0.8910) (* (walked ) -0.4539)) -58.8086)
	(<= (+ (* (time-to-drive ?loc-to ?loc-from) -0.9191) (* (walked ) -0.3939)) -56.7244)
	(<= (+ (* (time-to-drive ?loc-to ?loc-from) 0.9960) (+ (* (driven ) 0.0112) (* (walked ) -0.0892))) 65.7328)
	(<= (+ (* (walked ) -0.0912) (+ (* (driven ) -0.3435) (* (time-to-drive ?loc-to ?loc-from) -0.9347))) -61.6901)
	(<= (+ (* (walked ) 0.0867) (+ (* (driven ) 0.0170) (* (time-to-drive ?loc-to ?loc-from) 0.9961))) 77.5287)
	(<= (+ (* (walked ) 0.1684) (+ (* (driven ) 0.2012) (* (time-to-drive ?loc-to ?loc-from) -0.9650))) 30.1409)
	(<= (+ (* (walked ) 0.2316) (* (time-to-drive ?loc-to ?loc-from) -0.9728)) -16.5840)
	(<= (+ (* (walked ) 0.5432) (+ (* (driven ) -0.1722) (* (time-to-drive ?loc-to ?loc-from) -0.8217))) -3.1156)
	(<= (+ (* (walked ) 0.6669) (+ (* (time-to-drive ?loc-to ?loc-from) 0.7145) (* (driven ) -0.2113))) 96.1297)
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
	(<= (+ (* (driven ) -0.2542) (+ (* (time-to-walk ?loc-to ?loc-from) -0.9594) (* (walked ) -0.1225))) -24.9434)
	(<= (+ (* (driven ) 0.0247) (+ (* (time-to-walk ?loc-to ?loc-from) 0.9915) (* (walked ) -0.1278))) 52.1992)
	(<= (+ (* (driven ) 0.1855) (+ (* (walked ) -0.6046) (* (time-to-walk ?loc-to ?loc-from) -0.7747))) -20.1412)
	(<= (+ (* (driven ) 0.2289) (+ (* (time-to-walk ?loc-to ?loc-from) -0.6042) (* (walked ) -0.7632))) -15.7102)
	(<= (+ (* (driven ) 0.3169) (+ (* (time-to-walk ?loc-to ?loc-from) 0.6707) (* (walked ) -0.6707))) 55.1178)
	(<= (+ (* (time-to-walk ?loc-to ?loc-from) 0.9434) (+ (* (walked ) -0.3266) (* (driven ) -0.0572))) 44.3417)
	(<= (+ (* (walked ) 0.7071) (+ (* (driven ) -0.0097) (* (time-to-walk ?loc-to ?loc-from) -0.7071))) 34.0044)
	(<= (+ (* (walked ) 0.8342) (+ (* (time-to-walk ?loc-to ?loc-from) 0.4866) (* (driven ) -0.2595))) 48.9396)
	(<= (+ (* (walked ) 0.9148) (+ (* (time-to-walk ?loc-to ?loc-from) -0.3722) (* (driven ) -0.1569))) 35.5512)
	(= (time-to-walk ?loc-from ?loc-to) (time-to-walk ?loc-to ?loc-from)))
	:effect (and (at ?driver ?loc-to)
		(not (at ?driver ?loc-from))
(increase (walked ) (time-to-walk ?loc-from ?loc-to))))

)