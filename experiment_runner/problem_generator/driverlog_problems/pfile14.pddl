(define (problem DLOG-7-7-14)
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
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	p0-1 - location
	p0-2 - location
	p0-3 - location
	p1-0 - location
	p1-4 - location
	p2-3 - location
	p4-1 - location
	p4-2 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s3)
	(at driver3 s4)
	(at driver4 s3)
	(at driver5 s3)
	(at driver6 s0)
	(at driver7 s4)
	(at truck1 s0)
	(empty truck1)
	(at truck2 s2)
	(empty truck2)
	(at truck3 s2)
	(empty truck3)
	(at truck4 s1)
	(empty truck4)
	(at truck5 s1)
	(empty truck5)
	(at truck6 s2)
	(empty truck6)
	(at truck7 s0)
	(empty truck7)
	(at package1 s4)
	(at package2 s4)
	(at package3 s0)
	(at package4 s1)
	(at package5 s0)
	(at package6 s3)
	(at package7 s2)
	(at package8 s0)
	(at package9 s4)
	(at package10 s2)
	(at package11 s4)
	(at package12 s4)
	(at package13 s0)
	(at package14 s1)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(path s0 p0-3)
	(path p0-3 s0)
	(path s3 p0-3)
	(path p0-3 s3)
	(path s1 p1-4)
	(path p1-4 s1)
	(path s4 p1-4)
	(path p1-4 s4)
	(path s2 p2-3)
	(path p2-3 s2)
	(path s3 p2-3)
	(path p2-3 s3)
	(path s4 p4-2)
	(path p4-2 s4)
	(path s2 p4-2)
	(path p4-2 s2)
	(link s0 s1)
	(link s1 s0)
	(link s0 s4)
	(link s4 s0)
	(link s1 s2)
	(link s2 s1)
	(link s2 s0)
	(link s0 s2)
	(link s2 s3)
	(link s3 s2)
	(link s3 s0)
	(link s0 s3)
	(link s4 s1)
	(link s1 s4)
	(link s4 s3)
	(link s3 s4)
)
	(:goal (and
	(at driver1 s3)
	(at driver3 s4)
	(at driver4 s3)
	(at truck1 s3)
	(at truck2 s4)
	(at truck3 s4)
	(at truck4 s4)
	(at truck5 s2)
	(at truck6 s2)
	(at package1 s4)
	(at package2 s4)
	(at package3 s4)
	(at package4 s4)
	(at package5 s2)
	(at package6 s4)
	(at package7 s1)
	(at package8 s3)
	(at package9 s0)
	(at package10 s0)
	(at package11 s0)
	(at package12 s0)
	(at package13 s0)
	(at package14 s1)
	))


)
