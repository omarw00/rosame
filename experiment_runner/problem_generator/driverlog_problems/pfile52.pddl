(define (problem DLOG-7-6-30)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	driver4 - driver
	driver5 - driver
	driver6 - driver
	driver7 - driver
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
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	p1-2 - location
	p1-4 - location
	p2-3 - location
	p3-0 - location
	p4-1 - location
	p4-2 - location
	p4-3 - location
	)
	(:init
	(at driver1 s4)
	(at driver2 s1)
	(at driver3 s1)
	(at driver4 s3)
	(at driver5 s3)
	(at driver6 s1)
	(at driver7 s4)
	(at truck1 s0)
	(empty truck1)
	(at truck2 s2)
	(empty truck2)
	(at truck3 s2)
	(empty truck3)
	(at truck4 s4)
	(empty truck4)
	(at truck5 s4)
	(empty truck5)
	(at truck6 s4)
	(empty truck6)
	(at package1 s0)
	(at package2 s4)
	(at package3 s3)
	(at package4 s1)
	(at package5 s3)
	(at package6 s0)
	(at package7 s3)
	(at package8 s4)
	(at package9 s0)
	(at package10 s2)
	(at package11 s3)
	(at package12 s1)
	(at package13 s0)
	(at package14 s0)
	(at package15 s4)
	(at package16 s3)
	(at package17 s4)
	(at package18 s0)
	(at package19 s1)
	(at package20 s4)
	(at package21 s0)
	(at package22 s2)
	(at package23 s1)
	(at package24 s1)
	(at package25 s3)
	(at package26 s2)
	(at package27 s0)
	(at package28 s0)
	(at package29 s0)
	(at package30 s1)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(path s1 p1-4)
	(path p1-4 s1)
	(path s4 p1-4)
	(path p1-4 s4)
	(path s2 p2-3)
	(path p2-3 s2)
	(path s3 p2-3)
	(path p2-3 s3)
	(path s3 p3-0)
	(path p3-0 s3)
	(path s0 p3-0)
	(path p3-0 s0)
	(path s4 p4-2)
	(path p4-2 s4)
	(path s2 p4-2)
	(path p4-2 s2)
	(path s4 p4-3)
	(path p4-3 s4)
	(path s3 p4-3)
	(path p4-3 s3)
	(link s0 s3)
	(link s3 s0)
	(link s0 s4)
	(link s4 s0)
	(link s1 s0)
	(link s0 s1)
	(link s1 s2)
	(link s2 s1)
	(link s1 s3)
	(link s3 s1)
	(link s2 s0)
	(link s0 s2)
	(link s2 s4)
	(link s4 s2)
)
	(:goal (and
	(at driver2 s1)
	(at driver4 s2)
	(at driver5 s4)
	(at driver6 s2)
	(at driver7 s3)
	(at truck1 s0)
	(at truck2 s1)
	(at truck3 s0)
	(at truck5 s1)
	(at package1 s1)
	(at package2 s0)
	(at package3 s2)
	(at package4 s1)
	(at package5 s1)
	(at package6 s4)
	(at package7 s1)
	(at package8 s0)
	(at package9 s0)
	(at package10 s4)
	(at package11 s0)
	(at package12 s4)
	(at package13 s2)
	(at package14 s4)
	(at package15 s2)
	(at package16 s3)
	(at package17 s1)
	(at package19 s2)
	(at package21 s3)
	(at package22 s0)
	(at package23 s0)
	(at package24 s1)
	(at package25 s0)
	(at package26 s4)
	(at package27 s3)
	(at package28 s4)
	))


)
