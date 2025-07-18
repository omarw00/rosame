(define (problem DLOG-3-4-15)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
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
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	s5 - location
	s6 - location
	s7 - location
	p0-5 - location
	p1-0 - location
	p2-3 - location
	p2-4 - location
	p2-6 - location
	p3-7 - location
	p4-1 - location
	p4-5 - location
	p4-6 - location
	p4-7 - location
	p5-2 - location
	p6-3 - location
	p6-7 - location
	p7-0 - location
	)
	(:init
	(at driver1 s2)
	(at driver2 s4)
	(at driver3 s7)
	(at truck1 s6)
	(empty truck1)
	(at truck2 s6)
	(empty truck2)
	(at truck3 s1)
	(empty truck3)
	(at truck4 s6)
	(empty truck4)
	(at package1 s4)
	(at package2 s7)
	(at package3 s1)
	(at package4 s0)
	(at package5 s1)
	(at package6 s4)
	(at package7 s4)
	(at package8 s2)
	(at package9 s6)
	(at package10 s3)
	(at package11 s4)
	(at package12 s1)
	(at package13 s5)
	(at package14 s7)
	(at package15 s1)
	(path s0 p0-5)
	(path p0-5 s0)
	(path s5 p0-5)
	(path p0-5 s5)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(path s2 p2-3)
	(path p2-3 s2)
	(path s3 p2-3)
	(path p2-3 s3)
	(path s2 p2-4)
	(path p2-4 s2)
	(path s4 p2-4)
	(path p2-4 s4)
	(path s2 p2-6)
	(path p2-6 s2)
	(path s6 p2-6)
	(path p2-6 s6)
	(path s3 p3-7)
	(path p3-7 s3)
	(path s7 p3-7)
	(path p3-7 s7)
	(path s4 p4-1)
	(path p4-1 s4)
	(path s1 p4-1)
	(path p4-1 s1)
	(path s4 p4-5)
	(path p4-5 s4)
	(path s5 p4-5)
	(path p4-5 s5)
	(path s4 p4-6)
	(path p4-6 s4)
	(path s6 p4-6)
	(path p4-6 s6)
	(path s4 p4-7)
	(path p4-7 s4)
	(path s7 p4-7)
	(path p4-7 s7)
	(path s5 p5-2)
	(path p5-2 s5)
	(path s2 p5-2)
	(path p5-2 s2)
	(path s6 p6-3)
	(path p6-3 s6)
	(path s3 p6-3)
	(path p6-3 s3)
	(path s6 p6-7)
	(path p6-7 s6)
	(path s7 p6-7)
	(path p6-7 s7)
	(path s7 p7-0)
	(path p7-0 s7)
	(path s0 p7-0)
	(path p7-0 s0)
	(link s1 s0)
	(link s0 s1)
	(link s1 s2)
	(link s2 s1)
	(link s1 s5)
	(link s5 s1)
	(link s2 s0)
	(link s0 s2)
	(link s2 s7)
	(link s7 s2)
	(link s3 s1)
	(link s1 s3)
	(link s3 s2)
	(link s2 s3)
	(link s3 s4)
	(link s4 s3)
	(link s4 s1)
	(link s1 s4)
	(link s4 s2)
	(link s2 s4)
	(link s4 s6)
	(link s6 s4)
	(link s4 s7)
	(link s7 s4)
	(link s5 s0)
	(link s0 s5)
	(link s5 s3)
	(link s3 s5)
	(link s6 s3)
	(link s3 s6)
	(link s6 s7)
	(link s7 s6)
	(link s7 s1)
	(link s1 s7)
	(link s7 s5)
	(link s5 s7)
)
	(:goal (and
	(at driver2 s1)
	(at truck1 s7)
	(at truck2 s2)
	(at truck3 s4)
	(at package1 s6)
	(at package2 s5)
	(at package3 s4)
	(at package4 s7)
	(at package5 s3)
	(at package6 s2)
	(at package7 s1)
	(at package8 s7)
	(at package9 s1)
	(at package10 s0)
	(at package11 s5)
	(at package12 s4)
	(at package13 s5)
	(at package14 s5)
	(at package15 s7)
	))


)
