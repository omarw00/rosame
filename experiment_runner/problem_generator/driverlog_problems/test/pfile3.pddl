(define (problem DLOG-6-5-29)
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
	p0-2 - location
	p0-6 - location
	p2-5 - location
	p3-1 - location
	p3-5 - location
	p3-7 - location
	p3-9 - location
	p4-0 - location
	p4-9 - location
	p5-4 - location
	p7-0 - location
	p7-2 - location
	p7-8 - location
	p7-9 - location
	p8-6 - location
	p8-7 - location
	p9-5 - location
	p9-6 - location
	)
	(:init
	(at driver1 s9)
	(at driver2 s5)
	(at driver3 s2)
	(at driver4 s3)
	(at driver5 s5)
	(at driver6 s8)
	(at truck1 s5)
	(empty truck1)
	(at truck2 s6)
	(empty truck2)
	(at truck3 s6)
	(empty truck3)
	(at truck4 s6)
	(empty truck4)
	(at truck5 s2)
	(empty truck5)
	(at package1 s8)
	(at package2 s5)
	(at package3 s3)
	(at package4 s3)
	(at package5 s4)
	(at package6 s3)
	(at package7 s6)
	(at package8 s9)
	(at package9 s6)
	(at package10 s6)
	(at package11 s1)
	(at package12 s4)
	(at package13 s9)
	(at package14 s5)
	(at package15 s7)
	(at package16 s1)
	(at package17 s3)
	(at package18 s8)
	(at package19 s2)
	(at package20 s3)
	(at package21 s0)
	(at package22 s0)
	(at package23 s6)
	(at package24 s0)
	(at package25 s7)
	(at package26 s8)
	(at package27 s6)
	(at package28 s9)
	(at package29 s3)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(path s0 p0-6)
	(path p0-6 s0)
	(path s6 p0-6)
	(path p0-6 s6)
	(path s2 p2-5)
	(path p2-5 s2)
	(path s5 p2-5)
	(path p2-5 s5)
	(path s3 p3-1)
	(path p3-1 s3)
	(path s1 p3-1)
	(path p3-1 s1)
	(path s3 p3-5)
	(path p3-5 s3)
	(path s5 p3-5)
	(path p3-5 s5)
	(path s3 p3-7)
	(path p3-7 s3)
	(path s7 p3-7)
	(path p3-7 s7)
	(path s3 p3-9)
	(path p3-9 s3)
	(path s9 p3-9)
	(path p3-9 s9)
	(path s4 p4-0)
	(path p4-0 s4)
	(path s0 p4-0)
	(path p4-0 s0)
	(path s4 p4-9)
	(path p4-9 s4)
	(path s9 p4-9)
	(path p4-9 s9)
	(path s5 p5-4)
	(path p5-4 s5)
	(path s4 p5-4)
	(path p5-4 s4)
	(path s7 p7-0)
	(path p7-0 s7)
	(path s0 p7-0)
	(path p7-0 s0)
	(path s7 p7-2)
	(path p7-2 s7)
	(path s2 p7-2)
	(path p7-2 s2)
	(path s7 p7-8)
	(path p7-8 s7)
	(path s8 p7-8)
	(path p7-8 s8)
	(path s7 p7-9)
	(path p7-9 s7)
	(path s9 p7-9)
	(path p7-9 s9)
	(path s8 p8-6)
	(path p8-6 s8)
	(path s6 p8-6)
	(path p8-6 s6)
	(path s9 p9-5)
	(path p9-5 s9)
	(path s5 p9-5)
	(path p9-5 s5)
	(path s9 p9-6)
	(path p9-6 s9)
	(path s6 p9-6)
	(path p9-6 s6)
	(link s0 s1)
	(link s1 s0)
	(link s0 s2)
	(link s2 s0)
	(link s0 s3)
	(link s3 s0)
	(link s0 s5)
	(link s5 s0)
	(link s0 s7)
	(link s7 s0)
	(link s0 s8)
	(link s8 s0)
	(link s0 s9)
	(link s9 s0)
	(link s1 s8)
	(link s8 s1)
	(link s3 s1)
	(link s1 s3)
	(link s3 s2)
	(link s2 s3)
	(link s3 s5)
	(link s5 s3)
	(link s3 s9)
	(link s9 s3)
	(link s4 s1)
	(link s1 s4)
	(link s4 s3)
	(link s3 s4)
	(link s5 s1)
	(link s1 s5)
	(link s5 s2)
	(link s2 s5)
	(link s5 s6)
	(link s6 s5)
	(link s5 s9)
	(link s9 s5)
	(link s6 s0)
	(link s0 s6)
	(link s6 s2)
	(link s2 s6)
	(link s6 s3)
	(link s3 s6)
	(link s7 s3)
	(link s3 s7)
	(link s7 s5)
	(link s5 s7)
	(link s8 s2)
	(link s2 s8)
	(link s8 s5)
	(link s5 s8)
	(link s9 s4)
	(link s4 s9)
	(link s9 s7)
	(link s7 s9)
	(link s9 s8)
	(link s8 s9)
)
	(:goal (and
	(at driver1 s4)
	(at driver2 s7)
	(at driver3 s2)
	(at driver6 s2)
	(at truck1 s8)
	(at truck3 s8)
	(at truck5 s6)
	(at package1 s2)
	(at package2 s5)
	(at package3 s8)
	(at package4 s4)
	(at package5 s2)
	(at package6 s8)
	(at package7 s4)
	(at package8 s0)
	(at package9 s6)
	(at package10 s9)
	(at package12 s4)
	(at package13 s7)
	(at package14 s1)
	(at package16 s9)
	(at package17 s5)
	(at package18 s5)
	(at package20 s8)
	(at package21 s0)
	(at package22 s4)
	(at package23 s3)
	(at package24 s9)
	(at package25 s6)
	(at package26 s7)
	(at package27 s1)
	(at package28 s0)
	(at package29 s2)
	))


)
