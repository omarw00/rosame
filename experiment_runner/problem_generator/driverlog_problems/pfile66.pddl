(define (problem DLOG-7-8-39)
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
	package37 - package
	package38 - package
	package39 - package
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	s5 - location
	s6 - location
	p0-1 - location
	p1-3 - location
	p1-4 - location
	p2-1 - location
	p2-5 - location
	p3-4 - location
	p4-2 - location
	p5-0 - location
	p5-6 - location
	p6-3 - location
	p6-4 - location
	)
	(:init
	(at driver1 s3)
	(at driver2 s2)
	(at driver3 s5)
	(at driver4 s6)
	(at driver5 s6)
	(at driver6 s1)
	(at driver7 s5)
	(at truck1 s4)
	(empty truck1)
	(at truck2 s2)
	(empty truck2)
	(at truck3 s4)
	(empty truck3)
	(at truck4 s0)
	(empty truck4)
	(at truck5 s4)
	(empty truck5)
	(at truck6 s6)
	(empty truck6)
	(at truck7 s0)
	(empty truck7)
	(at truck8 s4)
	(empty truck8)
	(at package1 s5)
	(at package2 s2)
	(at package3 s0)
	(at package4 s0)
	(at package5 s6)
	(at package6 s5)
	(at package7 s6)
	(at package8 s0)
	(at package9 s2)
	(at package10 s6)
	(at package11 s0)
	(at package12 s3)
	(at package13 s1)
	(at package14 s1)
	(at package15 s4)
	(at package16 s3)
	(at package17 s1)
	(at package18 s0)
	(at package19 s0)
	(at package20 s1)
	(at package21 s1)
	(at package22 s2)
	(at package23 s3)
	(at package24 s1)
	(at package25 s5)
	(at package26 s6)
	(at package27 s6)
	(at package28 s1)
	(at package29 s5)
	(at package30 s5)
	(at package31 s5)
	(at package32 s3)
	(at package33 s3)
	(at package34 s3)
	(at package35 s5)
	(at package36 s1)
	(at package37 s3)
	(at package38 s4)
	(at package39 s4)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(path s1 p1-3)
	(path p1-3 s1)
	(path s3 p1-3)
	(path p1-3 s3)
	(path s1 p1-4)
	(path p1-4 s1)
	(path s4 p1-4)
	(path p1-4 s4)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(path s2 p2-5)
	(path p2-5 s2)
	(path s5 p2-5)
	(path p2-5 s5)
	(path s3 p3-4)
	(path p3-4 s3)
	(path s4 p3-4)
	(path p3-4 s4)
	(path s4 p4-2)
	(path p4-2 s4)
	(path s2 p4-2)
	(path p4-2 s2)
	(path s5 p5-0)
	(path p5-0 s5)
	(path s0 p5-0)
	(path p5-0 s0)
	(path s5 p5-6)
	(path p5-6 s5)
	(path s6 p5-6)
	(path p5-6 s6)
	(path s6 p6-3)
	(path p6-3 s6)
	(path s3 p6-3)
	(path p6-3 s3)
	(path s6 p6-4)
	(path p6-4 s6)
	(path s4 p6-4)
	(path p6-4 s4)
	(link s0 s5)
	(link s5 s0)
	(link s0 s6)
	(link s6 s0)
	(link s1 s0)
	(link s0 s1)
	(link s1 s3)
	(link s3 s1)
	(link s1 s4)
	(link s4 s1)
	(link s1 s5)
	(link s5 s1)
	(link s2 s0)
	(link s0 s2)
	(link s2 s1)
	(link s1 s2)
	(link s2 s6)
	(link s6 s2)
	(link s3 s0)
	(link s0 s3)
	(link s3 s5)
	(link s5 s3)
	(link s3 s6)
	(link s6 s3)
	(link s4 s2)
	(link s2 s4)
	(link s4 s5)
	(link s5 s4)
	(link s6 s4)
	(link s4 s6)
)
	(:goal (and
	(at driver1 s1)
	(at driver2 s1)
	(at driver4 s1)
	(at driver6 s2)
	(at driver7 s1)
	(at truck2 s2)
	(at truck3 s2)
	(at truck7 s0)
	(at package1 s0)
	(at package2 s6)
	(at package3 s4)
	(at package4 s6)
	(at package5 s4)
	(at package6 s5)
	(at package7 s2)
	(at package9 s3)
	(at package11 s5)
	(at package12 s0)
	(at package13 s0)
	(at package14 s1)
	(at package15 s1)
	(at package16 s6)
	(at package17 s5)
	(at package18 s6)
	(at package21 s1)
	(at package22 s5)
	(at package24 s1)
	(at package25 s6)
	(at package26 s2)
	(at package27 s3)
	(at package29 s5)
	(at package30 s0)
	(at package31 s2)
	(at package32 s5)
	(at package33 s1)
	(at package34 s2)
	(at package35 s1)
	(at package36 s1)
	(at package37 s0)
	(at package38 s1)
	(at package39 s6)
	))


)
