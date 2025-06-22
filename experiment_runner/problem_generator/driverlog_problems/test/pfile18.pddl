(define (problem DLOG-3-7-13)
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
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	p0-2 - location
	p0-3 - location
	p2-1 - location
	p3-1 - location
	p3-2 - location
	)
	(:init
	(at driver1 s3)
	(at driver2 s2)
	(at driver3 s2)
	(at truck1 s1)
	(empty truck1)
	(at truck2 s1)
	(empty truck2)
	(at truck3 s2)
	(empty truck3)
	(at truck4 s0)
	(empty truck4)
	(at truck5 s0)
	(empty truck5)
	(at truck6 s2)
	(empty truck6)
	(at truck7 s0)
	(empty truck7)
	(at package1 s0)
	(at package2 s3)
	(at package3 s3)
	(at package4 s2)
	(at package5 s3)
	(at package6 s1)
	(at package7 s0)
	(at package8 s1)
	(at package9 s2)
	(at package10 s1)
	(at package11 s0)
	(at package12 s0)
	(at package13 s2)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(path s0 p0-3)
	(path p0-3 s0)
	(path s3 p0-3)
	(path p0-3 s3)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(path s3 p3-1)
	(path p3-1 s3)
	(path s1 p3-1)
	(path p3-1 s1)
	(path s3 p3-2)
	(path p3-2 s3)
	(path s2 p3-2)
	(path p3-2 s2)
	(link s0 s1)
	(link s1 s0)
	(link s0 s2)
	(link s2 s0)
	(link s2 s3)
	(link s3 s2)
)
	(:goal (and
	(at driver1 s0)
	(at driver3 s0)
	(at truck2 s0)
	(at truck3 s1)
	(at truck5 s3)
	(at truck6 s0)
	(at truck7 s1)
	(at package2 s2)
	(at package3 s0)
	(at package4 s2)
	(at package5 s0)
	(at package6 s3)
	(at package7 s0)
	(at package8 s0)
	(at package9 s2)
	(at package10 s3)
	(at package11 s3)
	(at package13 s3)
	))


)
