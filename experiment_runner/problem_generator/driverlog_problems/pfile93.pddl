(define (problem DLOG-8-8-10)
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
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	s5 - location
	p0-4 - location
	p1-0 - location
	p2-1 - location
	p3-0 - location
	p3-5 - location
	p4-3 - location
	p5-0 - location
	p5-1 - location
	p5-2 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s2)
	(at driver3 s5)
	(at driver4 s5)
	(at driver5 s0)
	(at driver6 s3)
	(at driver7 s2)
	(at driver8 s5)
	(at truck1 s5)
	(empty truck1)
	(at truck2 s5)
	(empty truck2)
	(at truck3 s1)
	(empty truck3)
	(at truck4 s1)
	(empty truck4)
	(at truck5 s2)
	(empty truck5)
	(at truck6 s4)
	(empty truck6)
	(at truck7 s4)
	(empty truck7)
	(at truck8 s2)
	(empty truck8)
	(at package1 s3)
	(at package2 s0)
	(at package3 s3)
	(at package4 s1)
	(at package5 s5)
	(at package6 s2)
	(at package7 s4)
	(at package8 s4)
	(at package9 s0)
	(at package10 s3)
	(path s0 p0-4)
	(path p0-4 s0)
	(path s4 p0-4)
	(path p0-4 s4)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(path s3 p3-0)
	(path p3-0 s3)
	(path s0 p3-0)
	(path p3-0 s0)
	(path s3 p3-5)
	(path p3-5 s3)
	(path s5 p3-5)
	(path p3-5 s5)
	(path s4 p4-3)
	(path p4-3 s4)
	(path s3 p4-3)
	(path p4-3 s3)
	(path s5 p5-0)
	(path p5-0 s5)
	(path s0 p5-0)
	(path p5-0 s0)
	(path s5 p5-1)
	(path p5-1 s5)
	(path s1 p5-1)
	(path p5-1 s1)
	(path s5 p5-2)
	(path p5-2 s5)
	(path s2 p5-2)
	(path p5-2 s2)
	(link s0 s1)
	(link s1 s0)
	(link s0 s2)
	(link s2 s0)
	(link s0 s5)
	(link s5 s0)
	(link s1 s2)
	(link s2 s1)
	(link s1 s5)
	(link s5 s1)
	(link s2 s3)
	(link s3 s2)
	(link s2 s5)
	(link s5 s2)
	(link s3 s0)
	(link s0 s3)
	(link s3 s1)
	(link s1 s3)
	(link s4 s0)
	(link s0 s4)
	(link s4 s3)
	(link s3 s4)
	(link s5 s3)
	(link s3 s5)
	(link s5 s4)
	(link s4 s5)
)
	(:goal (and
	(at driver3 s2)
	(at driver5 s0)
	(at driver7 s0)
	(at driver8 s3)
	(at truck1 s0)
	(at truck2 s2)
	(at truck3 s4)
	(at truck4 s0)
	(at truck5 s0)
	(at truck6 s0)
	(at truck7 s0)
	(at truck8 s3)
	(at package1 s0)
	(at package2 s5)
	(at package3 s5)
	(at package4 s4)
	(at package5 s5)
	(at package6 s1)
	(at package7 s4)
	(at package8 s3)
	(at package9 s2)
	(at package10 s4)
	))


)
