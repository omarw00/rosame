(define (problem DLOG-4-7-12)
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
	p0-1 - location
	p1-3 - location
	p1-8 - location
	p1-9 - location
	p2-5 - location
	p2-6 - location
	p2-7 - location
	p3-0 - location
	p3-1 - location
	p3-4 - location
	p3-7 - location
	p3-8 - location
	p5-6 - location
	p5-9 - location
	p6-0 - location
	p8-0 - location
	p9-2 - location
	p9-7 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s1)
	(at driver3 s3)
	(at driver4 s8)
	(at truck1 s6)
	(empty truck1)
	(at truck2 s4)
	(empty truck2)
	(at truck3 s5)
	(empty truck3)
	(at truck4 s8)
	(empty truck4)
	(at truck5 s0)
	(empty truck5)
	(at truck6 s6)
	(empty truck6)
	(at truck7 s4)
	(empty truck7)
	(at package1 s3)
	(at package2 s2)
	(at package3 s8)
	(at package4 s2)
	(at package5 s4)
	(at package6 s9)
	(at package7 s2)
	(at package8 s1)
	(at package9 s8)
	(at package10 s3)
	(at package11 s8)
	(at package12 s1)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(path s1 p1-3)
	(path p1-3 s1)
	(path s3 p1-3)
	(path p1-3 s3)
	(path s1 p1-8)
	(path p1-8 s1)
	(path s8 p1-8)
	(path p1-8 s8)
	(path s1 p1-9)
	(path p1-9 s1)
	(path s9 p1-9)
	(path p1-9 s9)
	(path s2 p2-5)
	(path p2-5 s2)
	(path s5 p2-5)
	(path p2-5 s5)
	(path s2 p2-6)
	(path p2-6 s2)
	(path s6 p2-6)
	(path p2-6 s6)
	(path s2 p2-7)
	(path p2-7 s2)
	(path s7 p2-7)
	(path p2-7 s7)
	(path s3 p3-0)
	(path p3-0 s3)
	(path s0 p3-0)
	(path p3-0 s0)
	(path s3 p3-4)
	(path p3-4 s3)
	(path s4 p3-4)
	(path p3-4 s4)
	(path s3 p3-7)
	(path p3-7 s3)
	(path s7 p3-7)
	(path p3-7 s7)
	(path s3 p3-8)
	(path p3-8 s3)
	(path s8 p3-8)
	(path p3-8 s8)
	(path s5 p5-6)
	(path p5-6 s5)
	(path s6 p5-6)
	(path p5-6 s6)
	(path s5 p5-9)
	(path p5-9 s5)
	(path s9 p5-9)
	(path p5-9 s9)
	(path s6 p6-0)
	(path p6-0 s6)
	(path s0 p6-0)
	(path p6-0 s0)
	(path s8 p8-0)
	(path p8-0 s8)
	(path s0 p8-0)
	(path p8-0 s0)
	(path s9 p9-2)
	(path p9-2 s9)
	(path s2 p9-2)
	(path p9-2 s2)
	(path s9 p9-7)
	(path p9-7 s9)
	(path s7 p9-7)
	(path p9-7 s7)
	(link s0 s4)
	(link s4 s0)
	(link s0 s9)
	(link s9 s0)
	(link s1 s0)
	(link s0 s1)
	(link s2 s3)
	(link s3 s2)
	(link s2 s5)
	(link s5 s2)
	(link s2 s8)
	(link s8 s2)
	(link s3 s9)
	(link s9 s3)
	(link s4 s1)
	(link s1 s4)
	(link s4 s5)
	(link s5 s4)
	(link s4 s6)
	(link s6 s4)
	(link s4 s7)
	(link s7 s4)
	(link s5 s1)
	(link s1 s5)
	(link s5 s6)
	(link s6 s5)
	(link s5 s7)
	(link s7 s5)
	(link s6 s8)
	(link s8 s6)
	(link s7 s2)
	(link s2 s7)
	(link s7 s3)
	(link s3 s7)
	(link s7 s6)
	(link s6 s7)
	(link s8 s0)
	(link s0 s8)
	(link s8 s3)
	(link s3 s8)
	(link s8 s4)
	(link s4 s8)
	(link s8 s7)
	(link s7 s8)
	(link s9 s6)
	(link s6 s9)
	(link s9 s7)
	(link s7 s9)
	(link s9 s8)
	(link s8 s9)
)
	(:goal (and
	(at driver1 s1)
	(at driver2 s7)
	(at driver3 s0)
	(at driver4 s7)
	(at truck2 s6)
	(at truck4 s3)
	(at truck5 s6)
	(at truck6 s5)
	(at truck7 s7)
	(at package1 s8)
	(at package2 s1)
	(at package3 s0)
	(at package4 s6)
	(at package5 s1)
	(at package6 s6)
	(at package7 s4)
	(at package8 s4)
	(at package9 s1)
	(at package10 s5)
	(at package11 s9)
	(at package12 s1)
	))


)
