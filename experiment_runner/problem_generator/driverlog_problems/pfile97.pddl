(define (problem DLOG-6-3-13)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	driver4 - driver
	driver5 - driver
	driver6 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
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
	p0-1 - location
	p1-0 - location
	p1-2 - location
	p2-0 - location
	p2-3 - location
	p3-0 - location
	p3-1 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s3)
	(at driver3 s2)
	(at driver4 s0)
	(at driver5 s3)
	(at driver6 s1)
	(at truck1 s2)
	(empty truck1)
	(at truck2 s1)
	(empty truck2)
	(at truck3 s1)
	(empty truck3)
	(at package1 s1)
	(at package2 s3)
	(at package3 s3)
	(at package4 s0)
	(at package5 s2)
	(at package6 s1)
	(at package7 s3)
	(at package8 s3)
	(at package9 s3)
	(at package10 s0)
	(at package11 s1)
	(at package12 s1)
	(at package13 s3)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(path s2 p2-3)
	(path p2-3 s2)
	(path s3 p2-3)
	(path p2-3 s3)
	(path s3 p3-0)
	(path p3-0 s3)
	(path s0 p3-0)
	(path p3-0 s0)
	(path s3 p3-1)
	(path p3-1 s3)
	(path s1 p3-1)
	(path p3-1 s1)
	(link s0 s1)
	(link s1 s0)
	(link s1 s2)
	(link s2 s1)
	(link s1 s3)
	(link s3 s1)
	(link s2 s0)
	(link s0 s2)
	(link s3 s2)
	(link s2 s3)
)
	(:goal (and
	(at driver3 s2)
	(at driver4 s2)
	(at driver5 s2)
	(at driver6 s2)
	(at truck2 s3)
	(at package1 s0)
	(at package2 s1)
	(at package4 s0)
	(at package5 s1)
	(at package6 s0)
	(at package7 s2)
	(at package8 s0)
	(at package9 s1)
	(at package10 s2)
	(at package11 s0)
	(at package12 s0)
	(at package13 s0)
	))


)
