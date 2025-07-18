(define (problem DLOG-4-8-25)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	driver4 - driver
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
	p1-6 - location
	p2-4 - location
	p2-5 - location
	p3-6 - location
	p3-7 - location
	p3-9 - location
	p4-3 - location
	p5-4 - location
	p5-8 - location
	p6-0 - location
	p6-2 - location
	p8-5 - location
	p8-6 - location
	p8-7 - location
	p9-1 - location
	p9-7 - location
	)
	(:init
	(at driver1 s3)
	(at driver2 s6)
	(at driver3 s1)
	(at driver4 s2)
	(at truck1 s3)
	(empty truck1)
	(at truck2 s0)
	(empty truck2)
	(at truck3 s6)
	(empty truck3)
	(at truck4 s3)
	(empty truck4)
	(at truck5 s9)
	(empty truck5)
	(at truck6 s2)
	(empty truck6)
	(at truck7 s7)
	(empty truck7)
	(at truck8 s3)
	(empty truck8)
	(at package1 s8)
	(at package2 s8)
	(at package3 s5)
	(at package4 s3)
	(at package5 s3)
	(at package6 s2)
	(at package7 s6)
	(at package8 s9)
	(at package9 s6)
	(at package10 s1)
	(at package11 s9)
	(at package12 s4)
	(at package13 s3)
	(at package14 s2)
	(at package15 s0)
	(at package16 s2)
	(at package17 s6)
	(at package18 s6)
	(at package19 s8)
	(at package20 s5)
	(at package21 s4)
	(at package22 s7)
	(at package23 s7)
	(at package24 s8)
	(at package25 s0)
	(path s1 p1-6)
	(path p1-6 s1)
	(path s6 p1-6)
	(path p1-6 s6)
	(path s2 p2-4)
	(path p2-4 s2)
	(path s4 p2-4)
	(path p2-4 s4)
	(path s2 p2-5)
	(path p2-5 s2)
	(path s5 p2-5)
	(path p2-5 s5)
	(path s3 p3-6)
	(path p3-6 s3)
	(path s6 p3-6)
	(path p3-6 s6)
	(path s3 p3-7)
	(path p3-7 s3)
	(path s7 p3-7)
	(path p3-7 s7)
	(path s3 p3-9)
	(path p3-9 s3)
	(path s9 p3-9)
	(path p3-9 s9)
	(path s4 p4-3)
	(path p4-3 s4)
	(path s3 p4-3)
	(path p4-3 s3)
	(path s5 p5-4)
	(path p5-4 s5)
	(path s4 p5-4)
	(path p5-4 s4)
	(path s5 p5-8)
	(path p5-8 s5)
	(path s8 p5-8)
	(path p5-8 s8)
	(path s6 p6-0)
	(path p6-0 s6)
	(path s0 p6-0)
	(path p6-0 s0)
	(path s6 p6-2)
	(path p6-2 s6)
	(path s2 p6-2)
	(path p6-2 s2)
	(path s8 p8-6)
	(path p8-6 s8)
	(path s6 p8-6)
	(path p8-6 s6)
	(path s8 p8-7)
	(path p8-7 s8)
	(path s7 p8-7)
	(path p8-7 s7)
	(path s9 p9-1)
	(path p9-1 s9)
	(path s1 p9-1)
	(path p9-1 s1)
	(path s9 p9-7)
	(path p9-7 s9)
	(path s7 p9-7)
	(path p9-7 s7)
	(link s0 s1)
	(link s1 s0)
	(link s0 s8)
	(link s8 s0)
	(link s1 s2)
	(link s2 s1)
	(link s1 s5)
	(link s5 s1)
	(link s1 s6)
	(link s6 s1)
	(link s1 s8)
	(link s8 s1)
	(link s1 s9)
	(link s9 s1)
	(link s2 s6)
	(link s6 s2)
	(link s3 s5)
	(link s5 s3)
	(link s3 s6)
	(link s6 s3)
	(link s3 s8)
	(link s8 s3)
	(link s4 s3)
	(link s3 s4)
	(link s4 s6)
	(link s6 s4)
	(link s4 s7)
	(link s7 s4)
	(link s4 s8)
	(link s8 s4)
	(link s5 s0)
	(link s0 s5)
	(link s6 s0)
	(link s0 s6)
	(link s6 s5)
	(link s5 s6)
	(link s7 s0)
	(link s0 s7)
	(link s7 s2)
	(link s2 s7)
	(link s7 s5)
	(link s5 s7)
	(link s8 s6)
	(link s6 s8)
	(link s9 s4)
	(link s4 s9)
	(link s9 s5)
	(link s5 s9)
	(link s9 s6)
	(link s6 s9)
	(link s9 s8)
	(link s8 s9)
)
	(:goal (and
	(at driver1 s6)
	(at driver2 s3)
	(at driver4 s3)
	(at truck1 s0)
	(at truck2 s8)
	(at truck3 s5)
	(at truck4 s1)
	(at truck6 s2)
	(at truck7 s5)
	(at truck8 s2)
	(at package1 s3)
	(at package2 s6)
	(at package3 s0)
	(at package4 s1)
	(at package5 s8)
	(at package6 s1)
	(at package7 s1)
	(at package8 s4)
	(at package9 s2)
	(at package10 s6)
	(at package11 s4)
	(at package13 s8)
	(at package14 s2)
	(at package15 s5)
	(at package16 s8)
	(at package17 s5)
	(at package18 s4)
	(at package19 s1)
	(at package20 s2)
	(at package22 s6)
	(at package23 s0)
	(at package24 s2)
	(at package25 s2)
	))


)
