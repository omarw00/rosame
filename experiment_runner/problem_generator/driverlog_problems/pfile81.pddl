(define (problem DLOG-5-5-9)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	driver4 - driver
	driver5 - driver
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
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	s5 - location
	p0-3 - location
	p0-5 - location
	p1-2 - location
	p2-3 - location
	p2-5 - location
	p3-1 - location
	p4-0 - location
	p4-3 - location
	p5-3 - location
	)
	(:init
	(at driver1 s2)
	(at driver2 s5)
	(at driver3 s3)
	(at driver4 s1)
	(at driver5 s2)
	(at truck1 s1)
	(empty truck1)
	(at truck2 s3)
	(empty truck2)
	(at truck3 s5)
	(empty truck3)
	(at truck4 s2)
	(empty truck4)
	(at truck5 s2)
	(empty truck5)
	(at package1 s2)
	(at package2 s3)
	(at package3 s2)
	(at package4 s3)
	(at package5 s0)
	(at package6 s0)
	(at package7 s1)
	(at package8 s4)
	(at package9 s3)
	(path s0 p0-3)
	(path p0-3 s0)
	(path s3 p0-3)
	(path p0-3 s3)
	(path s0 p0-5)
	(path p0-5 s0)
	(path s5 p0-5)
	(path p0-5 s5)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(path s2 p2-3)
	(path p2-3 s2)
	(path s3 p2-3)
	(path p2-3 s3)
	(path s2 p2-5)
	(path p2-5 s2)
	(path s5 p2-5)
	(path p2-5 s5)
	(path s3 p3-1)
	(path p3-1 s3)
	(path s1 p3-1)
	(path p3-1 s1)
	(path s4 p4-0)
	(path p4-0 s4)
	(path s0 p4-0)
	(path p4-0 s0)
	(path s4 p4-3)
	(path p4-3 s4)
	(path s3 p4-3)
	(path p4-3 s3)
	(path s5 p5-3)
	(path p5-3 s5)
	(path s3 p5-3)
	(path p5-3 s3)
	(link s0 s1)
	(link s1 s0)
	(link s0 s3)
	(link s3 s0)
	(link s0 s5)
	(link s5 s0)
	(link s1 s2)
	(link s2 s1)
	(link s1 s4)
	(link s4 s1)
	(link s2 s3)
	(link s3 s2)
	(link s2 s5)
	(link s5 s2)
	(link s4 s0)
	(link s0 s4)
	(link s4 s3)
	(link s3 s4)
)
	(:goal (and
	(at driver2 s2)
	(at driver4 s3)
	(at truck2 s3)
	(at truck3 s2)
	(at truck5 s2)
	(at package1 s4)
	(at package2 s3)
	(at package3 s0)
	(at package4 s2)
	(at package5 s4)
	(at package6 s5)
	(at package7 s3)
	(at package8 s2)
	(at package9 s4)
	))


)
