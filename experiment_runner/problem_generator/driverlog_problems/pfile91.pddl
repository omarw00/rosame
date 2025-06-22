(define (problem DLOG-4-7-16)
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
	package13 - package
	package14 - package
	package15 - package
	package16 - package
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	p0-1 - location
	p0-2 - location
	p1-3 - location
	p4-0 - location
	p4-1 - location
	p4-3 - location
	)
	(:init
	(at driver1 s3)
	(at driver2 s4)
	(at driver3 s2)
	(at driver4 s2)
	(at truck1 s2)
	(empty truck1)
	(at truck2 s4)
	(empty truck2)
	(at truck3 s3)
	(empty truck3)
	(at truck4 s4)
	(empty truck4)
	(at truck5 s4)
	(empty truck5)
	(at truck6 s3)
	(empty truck6)
	(at truck7 s0)
	(empty truck7)
	(at package1 s2)
	(at package2 s1)
	(at package3 s1)
	(at package4 s1)
	(at package5 s2)
	(at package6 s3)
	(at package7 s0)
	(at package8 s2)
	(at package9 s3)
	(at package10 s3)
	(at package11 s4)
	(at package12 s0)
	(at package13 s2)
	(at package14 s0)
	(at package15 s2)
	(at package16 s4)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(path s1 p1-3)
	(path p1-3 s1)
	(path s3 p1-3)
	(path p1-3 s3)
	(path s4 p4-0)
	(path p4-0 s4)
	(path s0 p4-0)
	(path p4-0 s0)
	(path s4 p4-1)
	(path p4-1 s4)
	(path s1 p4-1)
	(path p4-1 s1)
	(path s4 p4-3)
	(path p4-3 s4)
	(path s3 p4-3)
	(path p4-3 s3)
	(link s0 s1)
	(link s1 s0)
	(link s0 s2)
	(link s2 s0)
	(link s0 s4)
	(link s4 s0)
	(link s2 s4)
	(link s4 s2)
	(link s4 s3)
	(link s3 s4)
)
	(:goal (and
	(at driver1 s1)
	(at driver2 s3)
	(at driver3 s2)
	(at truck3 s0)
	(at truck4 s1)
	(at truck6 s3)
	(at package1 s1)
	(at package2 s3)
	(at package3 s1)
	(at package4 s3)
	(at package5 s3)
	(at package6 s2)
	(at package7 s2)
	(at package8 s1)
	(at package10 s0)
	(at package11 s3)
	(at package12 s4)
	(at package13 s0)
	(at package14 s1)
	(at package15 s4)
	(at package16 s2)
	))


)
