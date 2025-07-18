(define (problem DLOG-8-4-21)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	driver4 - driver
	driver5 - driver
	driver6 - driver
	driver7 - driver
	driver8 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	truck4 - truck
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
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	s5 - location
	s6 - location
	p0-5 - location
	p2-1 - location
	p2-4 - location
	p3-0 - location
	p3-5 - location
	p3-6 - location
	p4-3 - location
	p6-2 - location
	p6-4 - location
	p6-5 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s6)
	(at driver3 s3)
	(at driver4 s6)
	(at driver5 s4)
	(at driver6 s5)
	(at driver7 s3)
	(at driver8 s1)
	(at truck1 s1)
	(empty truck1)
	(at truck2 s0)
	(empty truck2)
	(at truck3 s0)
	(empty truck3)
	(at truck4 s1)
	(empty truck4)
	(at package1 s6)
	(at package2 s4)
	(at package3 s2)
	(at package4 s3)
	(at package5 s3)
	(at package6 s1)
	(at package7 s3)
	(at package8 s2)
	(at package9 s4)
	(at package10 s2)
	(at package11 s4)
	(at package12 s6)
	(at package13 s2)
	(at package14 s1)
	(at package15 s3)
	(at package16 s4)
	(at package17 s4)
	(at package18 s5)
	(at package19 s3)
	(at package20 s0)
	(at package21 s2)
	(path s0 p0-5)
	(path p0-5 s0)
	(path s5 p0-5)
	(path p0-5 s5)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(path s2 p2-4)
	(path p2-4 s2)
	(path s4 p2-4)
	(path p2-4 s4)
	(path s3 p3-0)
	(path p3-0 s3)
	(path s0 p3-0)
	(path p3-0 s0)
	(path s3 p3-5)
	(path p3-5 s3)
	(path s5 p3-5)
	(path p3-5 s5)
	(path s3 p3-6)
	(path p3-6 s3)
	(path s6 p3-6)
	(path p3-6 s6)
	(path s4 p4-3)
	(path p4-3 s4)
	(path s3 p4-3)
	(path p4-3 s3)
	(path s6 p6-2)
	(path p6-2 s6)
	(path s2 p6-2)
	(path p6-2 s2)
	(path s6 p6-4)
	(path p6-4 s6)
	(path s4 p6-4)
	(path p6-4 s4)
	(path s6 p6-5)
	(path p6-5 s6)
	(path s5 p6-5)
	(path p6-5 s5)
	(link s0 s5)
	(link s5 s0)
	(link s1 s0)
	(link s0 s1)
	(link s1 s2)
	(link s2 s1)
	(link s2 s0)
	(link s0 s2)
	(link s2 s3)
	(link s3 s2)
	(link s3 s1)
	(link s1 s3)
	(link s4 s0)
	(link s0 s4)
	(link s4 s3)
	(link s3 s4)
	(link s5 s1)
	(link s1 s5)
	(link s5 s2)
	(link s2 s5)
	(link s5 s3)
	(link s3 s5)
	(link s5 s6)
	(link s6 s5)
	(link s6 s1)
	(link s1 s6)
	(link s6 s4)
	(link s4 s6)
)
	(:goal (and
	(at driver2 s3)
	(at driver3 s6)
	(at driver4 s1)
	(at driver6 s2)
	(at driver7 s5)
	(at driver8 s0)
	(at truck1 s6)
	(at truck3 s5)
	(at package1 s1)
	(at package2 s1)
	(at package3 s5)
	(at package4 s4)
	(at package5 s0)
	(at package6 s2)
	(at package8 s4)
	(at package9 s5)
	(at package10 s0)
	(at package11 s0)
	(at package12 s4)
	(at package13 s0)
	(at package14 s4)
	(at package15 s0)
	(at package16 s1)
	(at package17 s5)
	(at package18 s0)
	(at package19 s4)
	(at package20 s0)
	(at package21 s5)
	))


)
