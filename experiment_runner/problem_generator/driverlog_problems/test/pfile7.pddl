(define (problem DLOG-6-6-17)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	driver4 - driver
	driver5 - driver
	driver6 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	truck4 - truck
	truck5 - truck
	truck6 - truck
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
	s0 - location
	s1 - location
	s2 - location
	p0-1 - location
	p0-2 - location
	p2-0 - location
	p2-1 - location
	)
	(:init
	(at driver1 s2)
	(at driver2 s2)
	(at driver3 s0)
	(at driver4 s0)
	(at driver5 s2)
	(at driver6 s2)
	(at truck1 s0)
	(empty truck1)
	(at truck2 s0)
	(empty truck2)
	(at truck3 s0)
	(empty truck3)
	(at truck4 s1)
	(empty truck4)
	(at truck5 s2)
	(empty truck5)
	(at truck6 s2)
	(empty truck6)
	(at package1 s1)
	(at package2 s0)
	(at package3 s2)
	(at package4 s0)
	(at package5 s1)
	(at package6 s1)
	(at package7 s1)
	(at package8 s0)
	(at package9 s1)
	(at package10 s0)
	(at package11 s2)
	(at package12 s2)
	(at package13 s0)
	(at package14 s0)
	(at package15 s0)
	(at package16 s2)
	(at package17 s1)
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
)
	(:goal (and
	(at driver1 s1)
	(at driver2 s0)
	(at driver3 s0)
	(at driver4 s2)
	(at driver6 s1)
	(at truck2 s0)
	(at truck3 s2)
	(at truck5 s2)
	(at truck6 s1)
	(at package3 s2)
	(at package4 s2)
	(at package5 s2)
	(at package6 s2)
	(at package7 s2)
	(at package8 s1)
	(at package9 s1)
	(at package10 s0)
	(at package11 s2)
	(at package12 s2)
	(at package13 s2)
	(at package14 s2)
	(at package15 s1)
	(at package16 s2)
	(at package17 s1)
	))


)
