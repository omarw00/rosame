(define (problem DLOG-6-3-22)
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
	s0 - location
	s1 - location
	s2 - location
	p0-1 - location
	p0-2 - location
	p1-2 - location
	)
	(:init
	(at driver1 s2)
	(at driver2 s2)
	(at driver3 s2)
	(at driver4 s1)
	(at driver5 s2)
	(at driver6 s1)
	(at truck1 s0)
	(empty truck1)
	(at truck2 s0)
	(empty truck2)
	(at truck3 s2)
	(empty truck3)
	(at package1 s0)
	(at package2 s1)
	(at package3 s2)
	(at package4 s0)
	(at package5 s1)
	(at package6 s0)
	(at package7 s0)
	(at package8 s1)
	(at package9 s2)
	(at package10 s2)
	(at package11 s0)
	(at package12 s1)
	(at package13 s0)
	(at package14 s1)
	(at package15 s0)
	(at package16 s1)
	(at package17 s1)
	(at package18 s1)
	(at package19 s1)
	(at package20 s2)
	(at package21 s2)
	(at package22 s0)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(link s0 s2)
	(link s2 s0)
	(link s1 s0)
	(link s0 s1)
	(link s1 s2)
	(link s2 s1)
)
	(:goal (and
	(at driver2 s1)
	(at driver3 s1)
	(at driver4 s1)
	(at truck1 s0)
	(at truck2 s0)
	(at package1 s0)
	(at package2 s0)
	(at package3 s0)
	(at package4 s0)
	(at package5 s1)
	(at package6 s0)
	(at package7 s1)
	(at package8 s2)
	(at package9 s0)
	(at package10 s0)
	(at package11 s0)
	(at package12 s1)
	(at package13 s1)
	(at package14 s1)
	(at package15 s0)
	(at package16 s0)
	(at package17 s1)
	(at package18 s2)
	(at package19 s1)
	(at package21 s1)
	(at package22 s2)
	))


)
