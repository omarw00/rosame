(define (problem DLOG-3-8-4)
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
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	s5 - location
	s6 - location
	s7 - location
	p1-3 - location
	p1-5 - location
	p2-1 - location
	p4-1 - location
	p4-6 - location
	p5-0 - location
	p5-2 - location
	p6-1 - location
	p6-3 - location
	p7-2 - location
	p7-3 - location
	p7-4 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s5)
	(at driver3 s0)
	(at truck1 s0)
	(empty truck1)
	(at truck2 s1)
	(empty truck2)
	(at truck3 s5)
	(empty truck3)
	(at truck4 s3)
	(empty truck4)
	(at truck5 s3)
	(empty truck5)
	(at truck6 s3)
	(empty truck6)
	(at truck7 s3)
	(empty truck7)
	(at truck8 s4)
	(empty truck8)
	(at package1 s4)
	(at package2 s2)
	(at package3 s4)
	(at package4 s0)
	(path s1 p1-3)
	(path p1-3 s1)
	(path s3 p1-3)
	(path p1-3 s3)
	(path s1 p1-5)
	(path p1-5 s1)
	(path s5 p1-5)
	(path p1-5 s5)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(path s4 p4-1)
	(path p4-1 s4)
	(path s1 p4-1)
	(path p4-1 s1)
	(path s4 p4-6)
	(path p4-6 s4)
	(path s6 p4-6)
	(path p4-6 s6)
	(path s5 p5-0)
	(path p5-0 s5)
	(path s0 p5-0)
	(path p5-0 s0)
	(path s5 p5-2)
	(path p5-2 s5)
	(path s2 p5-2)
	(path p5-2 s2)
	(path s6 p6-1)
	(path p6-1 s6)
	(path s1 p6-1)
	(path p6-1 s1)
	(path s6 p6-3)
	(path p6-3 s6)
	(path s3 p6-3)
	(path p6-3 s3)
	(path s7 p7-2)
	(path p7-2 s7)
	(path s2 p7-2)
	(path p7-2 s2)
	(path s7 p7-3)
	(path p7-3 s7)
	(path s3 p7-3)
	(path p7-3 s3)
	(path s7 p7-4)
	(path p7-4 s7)
	(path s4 p7-4)
	(path p7-4 s4)
	(link s0 s4)
	(link s4 s0)
	(link s0 s5)
	(link s5 s0)
	(link s1 s0)
	(link s0 s1)
	(link s1 s2)
	(link s2 s1)
	(link s2 s0)
	(link s0 s2)
	(link s2 s6)
	(link s6 s2)
	(link s2 s7)
	(link s7 s2)
	(link s3 s0)
	(link s0 s3)
	(link s3 s5)
	(link s5 s3)
	(link s4 s1)
	(link s1 s4)
	(link s4 s5)
	(link s5 s4)
	(link s5 s6)
	(link s6 s5)
	(link s6 s3)
	(link s3 s6)
	(link s7 s3)
	(link s3 s7)
	(link s7 s4)
	(link s4 s7)
	(link s7 s5)
	(link s5 s7)
)
	(:goal (and
	(at driver2 s4)
	(at driver3 s1)
	(at truck1 s5)
	(at truck2 s0)
	(at truck4 s1)
	(at truck5 s0)
	(at truck8 s1)
	(at package1 s6)
	(at package2 s6)
	(at package3 s6)
	(at package4 s0)
	))


)
