(define (problem DLOG-3-6-13)
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
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	s5 - location
	s6 - location
	s7 - location
	s8 - location
	s9 - location
	p0-5 - location
	p0-6 - location
	p1-5 - location
	p1-6 - location
	p1-7 - location
	p2-8 - location
	p3-0 - location
	p4-1 - location
	p4-6 - location
	p4-7 - location
	p4-9 - location
	p5-4 - location
	p6-5 - location
	p7-8 - location
	p8-6 - location
	p9-2 - location
	p9-3 - location
	p9-8 - location
	)
	(:init
	(at driver1 s9)
	(at driver2 s7)
	(at driver3 s4)
	(at truck1 s4)
	(empty truck1)
	(at truck2 s4)
	(empty truck2)
	(at truck3 s1)
	(empty truck3)
	(at truck4 s5)
	(empty truck4)
	(at truck5 s3)
	(empty truck5)
	(at truck6 s5)
	(empty truck6)
	(at package1 s3)
	(at package2 s6)
	(at package3 s9)
	(at package4 s3)
	(at package5 s2)
	(at package6 s5)
	(at package7 s5)
	(at package8 s7)
	(at package9 s7)
	(at package10 s4)
	(at package11 s0)
	(at package12 s3)
	(at package13 s7)
	(path s0 p0-5)
	(path p0-5 s0)
	(path s5 p0-5)
	(path p0-5 s5)
	(path s0 p0-6)
	(path p0-6 s0)
	(path s6 p0-6)
	(path p0-6 s6)
	(path s1 p1-5)
	(path p1-5 s1)
	(path s5 p1-5)
	(path p1-5 s5)
	(path s1 p1-6)
	(path p1-6 s1)
	(path s6 p1-6)
	(path p1-6 s6)
	(path s1 p1-7)
	(path p1-7 s1)
	(path s7 p1-7)
	(path p1-7 s7)
	(path s2 p2-8)
	(path p2-8 s2)
	(path s8 p2-8)
	(path p2-8 s8)
	(path s3 p3-0)
	(path p3-0 s3)
	(path s0 p3-0)
	(path p3-0 s0)
	(path s4 p4-1)
	(path p4-1 s4)
	(path s1 p4-1)
	(path p4-1 s1)
	(path s4 p4-6)
	(path p4-6 s4)
	(path s6 p4-6)
	(path p4-6 s6)
	(path s4 p4-7)
	(path p4-7 s4)
	(path s7 p4-7)
	(path p4-7 s7)
	(path s4 p4-9)
	(path p4-9 s4)
	(path s9 p4-9)
	(path p4-9 s9)
	(path s5 p5-4)
	(path p5-4 s5)
	(path s4 p5-4)
	(path p5-4 s4)
	(path s6 p6-5)
	(path p6-5 s6)
	(path s5 p6-5)
	(path p6-5 s5)
	(path s7 p7-8)
	(path p7-8 s7)
	(path s8 p7-8)
	(path p7-8 s8)
	(path s8 p8-6)
	(path p8-6 s8)
	(path s6 p8-6)
	(path p8-6 s6)
	(path s9 p9-2)
	(path p9-2 s9)
	(path s2 p9-2)
	(path p9-2 s2)
	(path s9 p9-3)
	(path p9-3 s9)
	(path s3 p9-3)
	(path p9-3 s3)
	(path s9 p9-8)
	(path p9-8 s9)
	(path s8 p9-8)
	(path p9-8 s8)
	(link s0 s7)
	(link s7 s0)
	(link s0 s8)
	(link s8 s0)
	(link s1 s9)
	(link s9 s1)
	(link s2 s1)
	(link s1 s2)
	(link s2 s3)
	(link s3 s2)
	(link s2 s4)
	(link s4 s2)
	(link s2 s6)
	(link s6 s2)
	(link s3 s0)
	(link s0 s3)
	(link s3 s5)
	(link s5 s3)
	(link s3 s9)
	(link s9 s3)
	(link s4 s7)
	(link s7 s4)
	(link s4 s9)
	(link s9 s4)
	(link s5 s2)
	(link s2 s5)
	(link s6 s0)
	(link s0 s6)
	(link s6 s1)
	(link s1 s6)
	(link s6 s5)
	(link s5 s6)
	(link s7 s1)
	(link s1 s7)
	(link s7 s2)
	(link s2 s7)
	(link s7 s5)
	(link s5 s7)
	(link s7 s9)
	(link s9 s7)
	(link s8 s2)
	(link s2 s8)
	(link s8 s4)
	(link s4 s8)
	(link s8 s5)
	(link s5 s8)
	(link s9 s5)
	(link s5 s9)
	(link s9 s8)
	(link s8 s9)
)
	(:goal (and
	(at driver2 s2)
	(at driver3 s7)
	(at truck5 s6)
	(at truck6 s7)
	(at package1 s0)
	(at package2 s0)
	(at package3 s7)
	(at package4 s1)
	(at package5 s5)
	(at package6 s0)
	(at package7 s2)
	(at package8 s7)
	(at package9 s1)
	(at package10 s6)
	(at package11 s0)
	(at package12 s7)
	(at package13 s6)
	))


)
