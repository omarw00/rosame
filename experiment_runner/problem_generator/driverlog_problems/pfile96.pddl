(define (problem DLOG-3-6-10)
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
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	s5 - location
	p1-0 - location
	p1-3 - location
	p1-5 - location
	p2-0 - location
	p2-4 - location
	p3-0 - location
	p3-2 - location
	p4-0 - location
	p4-1 - location
	p5-3 - location
	)
	(:init
	(at driver1 s4)
	(at driver2 s3)
	(at driver3 s2)
	(at truck1 s0)
	(empty truck1)
	(at truck2 s3)
	(empty truck2)
	(at truck3 s2)
	(empty truck3)
	(at truck4 s1)
	(empty truck4)
	(at truck5 s0)
	(empty truck5)
	(at truck6 s4)
	(empty truck6)
	(at package1 s0)
	(at package2 s2)
	(at package3 s0)
	(at package4 s5)
	(at package5 s1)
	(at package6 s1)
	(at package7 s4)
	(at package8 s3)
	(at package9 s4)
	(at package10 s2)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(path s1 p1-3)
	(path p1-3 s1)
	(path s3 p1-3)
	(path p1-3 s3)
	(path s1 p1-5)
	(path p1-5 s1)
	(path s5 p1-5)
	(path p1-5 s5)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(path s2 p2-4)
	(path p2-4 s2)
	(path s4 p2-4)
	(path p2-4 s4)
	(path s3 p3-0)
	(path p3-0 s3)
	(path s0 p3-0)
	(path p3-0 s0)
	(path s3 p3-2)
	(path p3-2 s3)
	(path s2 p3-2)
	(path p3-2 s2)
	(path s4 p4-0)
	(path p4-0 s4)
	(path s0 p4-0)
	(path p4-0 s0)
	(path s4 p4-1)
	(path p4-1 s4)
	(path s1 p4-1)
	(path p4-1 s1)
	(path s5 p5-3)
	(path p5-3 s5)
	(path s3 p5-3)
	(path p5-3 s3)
	(link s0 s1)
	(link s1 s0)
	(link s0 s2)
	(link s2 s0)
	(link s0 s3)
	(link s3 s0)
	(link s0 s4)
	(link s4 s0)
	(link s1 s4)
	(link s4 s1)
	(link s2 s1)
	(link s1 s2)
	(link s3 s4)
	(link s4 s3)
	(link s3 s5)
	(link s5 s3)
	(link s4 s2)
	(link s2 s4)
	(link s5 s1)
	(link s1 s5)
	(link s5 s2)
	(link s2 s5)
	(link s5 s4)
	(link s4 s5)
)
	(:goal (and
	(at driver1 s4)
	(at driver2 s0)
	(at truck2 s0)
	(at truck3 s1)
	(at truck5 s3)
	(at truck6 s1)
	(at package1 s1)
	(at package2 s0)
	(at package3 s4)
	(at package4 s1)
	(at package5 s2)
	(at package6 s5)
	(at package7 s2)
	(at package8 s3)
	(at package9 s3)
	(at package10 s2)
	))


)
