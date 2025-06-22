(define (problem DLOG-3-8-36)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	truck4 - truck
	truck5 - truck
	truck6 - truck
	truck7 - truck
	truck8 - truck
	package1 - package
	package2 - package
	package3 - package
	package4 - package
	package5 - package
	package6 - package
	package7 - package
	package8 - package
	package9 - package
	package10 - package
	package11 - package
	package12 - package
	package13 - package
	package14 - package
	package15 - package
	package16 - package
	package17 - package
	package18 - package
	package19 - package
	package20 - package
	package21 - package
	package22 - package
	package23 - package
	package24 - package
	package25 - package
	package26 - package
	package27 - package
	package28 - package
	package29 - package
	package30 - package
	package31 - package
	package32 - package
	package33 - package
	package34 - package
	package35 - package
	package36 - package
	s0 - location
	s1 - location
	s2 - location
	p0-1 - location
	p0-2 - location
	p1-0 - location
	p2-0 - location
	p2-1 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s2)
	(at driver3 s1)
	(at truck1 s2)
	(empty truck1)
	(at truck2 s1)
	(empty truck2)
	(at truck3 s2)
	(empty truck3)
	(at truck4 s0)
	(empty truck4)
	(at truck5 s1)
	(empty truck5)
	(at truck6 s0)
	(empty truck6)
	(at truck7 s0)
	(empty truck7)
	(at truck8 s2)
	(empty truck8)
	(at package1 s1)
	(at package2 s2)
	(at package3 s1)
	(at package4 s0)
	(at package5 s2)
	(at package6 s0)
	(at package7 s1)
	(at package8 s1)
	(at package9 s2)
	(at package10 s2)
	(at package11 s1)
	(at package12 s1)
	(at package13 s1)
	(at package14 s0)
	(at package15 s0)
	(at package16 s1)
	(at package17 s0)
	(at package18 s1)
	(at package19 s0)
	(at package20 s2)
	(at package21 s1)
	(at package22 s0)
	(at package23 s2)
	(at package24 s2)
	(at package25 s2)
	(at package26 s0)
	(at package27 s1)
	(at package28 s1)
	(at package29 s0)
	(at package30 s0)
	(at package31 s1)
	(at package32 s1)
	(at package33 s2)
	(at package34 s1)
	(at package35 s1)
	(at package36 s2)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(link s0 s1)
	(link s1 s0)
	(link s0 s2)
	(link s2 s0)
	(link s1 s2)
	(link s2 s1)
)
	(:goal (and
	(at driver1 s1)
	(at driver2 s0)
	(at driver3 s0)
	(at truck1 s1)
	(at truck2 s0)
	(at truck3 s1)
	(at truck4 s0)
	(at truck5 s2)
	(at truck6 s0)
	(at truck8 s2)
	(at package1 s2)
	(at package2 s1)
	(at package3 s1)
	(at package4 s2)
	(at package5 s1)
	(at package6 s2)
	(at package7 s0)
	(at package8 s0)
	(at package9 s1)
	(at package10 s0)
	(at package11 s2)
	(at package12 s1)
	(at package13 s0)
	(at package14 s1)
	(at package15 s0)
	(at package16 s0)
	(at package17 s2)
	(at package18 s0)
	(at package19 s0)
	(at package20 s0)
	(at package22 s0)
	(at package23 s1)
	(at package24 s2)
	(at package25 s2)
	(at package26 s1)
	(at package27 s1)
	(at package28 s2)
	(at package29 s0)
	(at package30 s0)
	(at package31 s1)
	(at package32 s1)
	(at package33 s1)
	(at package34 s1)
	(at package35 s0)
	(at package36 s1)
	))


)
