(define (problem DLOG-7-8-11)
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
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	s5 - location
	p1-2 - location
	p1-5 - location
	p3-0 - location
	p3-1 - location
	p3-2 - location
	p3-4 - location
	p4-2 - location
	p5-3 - location
	)
	(:init
	(at driver1 s2)
	(at driver2 s5)
	(at driver3 s2)
	(at driver4 s3)
	(at driver5 s2)
	(at driver6 s5)
	(at driver7 s2)
	(at truck1 s1)
	(empty truck1)
	(at truck2 s3)
	(empty truck2)
	(at truck3 s1)
	(empty truck3)
	(at truck4 s4)
	(empty truck4)
	(at truck5 s0)
	(empty truck5)
	(at truck6 s5)
	(empty truck6)
	(at truck7 s4)
	(empty truck7)
	(at truck8 s2)
	(empty truck8)
	(at package1 s3)
	(at package2 s2)
	(at package3 s4)
	(at package4 s4)
	(at package5 s4)
	(at package6 s3)
	(at package7 s3)
	(at package8 s3)
	(at package9 s3)
	(at package10 s1)
	(at package11 s5)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(path s1 p1-5)
	(path p1-5 s1)
	(path s5 p1-5)
	(path p1-5 s5)
	(path s3 p3-0)
	(path p3-0 s3)
	(path s0 p3-0)
	(path p3-0 s0)
	(path s3 p3-1)
	(path p3-1 s3)
	(path s1 p3-1)
	(path p3-1 s1)
	(path s3 p3-2)
	(path p3-2 s3)
	(path s2 p3-2)
	(path p3-2 s2)
	(path s3 p3-4)
	(path p3-4 s3)
	(path s4 p3-4)
	(path p3-4 s4)
	(path s4 p4-2)
	(path p4-2 s4)
	(path s2 p4-2)
	(path p4-2 s2)
	(path s5 p5-3)
	(path p5-3 s5)
	(path s3 p5-3)
	(path p5-3 s3)
	(link s0 s3)
	(link s3 s0)
	(link s0 s4)
	(link s4 s0)
	(link s1 s2)
	(link s2 s1)
	(link s1 s5)
	(link s5 s1)
	(link s2 s0)
	(link s0 s2)
	(link s2 s3)
	(link s3 s2)
	(link s3 s1)
	(link s1 s3)
	(link s4 s1)
	(link s1 s4)
	(link s4 s2)
	(link s2 s4)
	(link s4 s3)
	(link s3 s4)
	(link s4 s5)
	(link s5 s4)
	(link s5 s2)
	(link s2 s5)
	(link s5 s3)
	(link s3 s5)
)
	(:goal (and
	(at driver1 s2)
	(at driver2 s5)
	(at driver3 s5)
	(at driver4 s4)
	(at driver6 s0)
	(at driver7 s4)
	(at truck1 s1)
	(at truck3 s3)
	(at truck6 s1)
	(at truck7 s5)
	(at truck8 s1)
	(at package1 s0)
	(at package2 s3)
	(at package3 s4)
	(at package4 s2)
	(at package5 s4)
	(at package6 s2)
	(at package7 s3)
	(at package8 s3)
	(at package9 s2)
	(at package10 s4)
	(at package11 s1)
	))


)
