(define (problem DLOG-4-3-6)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	driver4 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	package1 - package
	package2 - package
	package3 - package
	package4 - package
	package5 - package
	package6 - package
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	p1-2 - location
	p1-4 - location
	p2-3 - location
	p3-0 - location
	p4-1 - location
	p4-2 - location
	p4-3 - location
	)
	(:init
	(at driver1 s4)
	(at driver2 s1)
	(at driver3 s1)
	(at driver4 s3)
	(at truck1 s3)
	(empty truck1)
	(at truck2 s1)
	(empty truck2)
	(at truck3 s4)
	(empty truck3)
	(at package1 s0)
	(at package2 s2)
	(at package3 s2)
	(at package4 s4)
	(at package5 s4)
	(at package6 s4)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(path s1 p1-4)
	(path p1-4 s1)
	(path s4 p1-4)
	(path p1-4 s4)
	(path s2 p2-3)
	(path p2-3 s2)
	(path s3 p2-3)
	(path p2-3 s3)
	(path s3 p3-0)
	(path p3-0 s3)
	(path s0 p3-0)
	(path p3-0 s0)
	(path s4 p4-2)
	(path p4-2 s4)
	(path s2 p4-2)
	(path p4-2 s2)
	(path s4 p4-3)
	(path p4-3 s4)
	(path s3 p4-3)
	(path p4-3 s3)
	(link s0 s3)
	(link s3 s0)
	(link s0 s4)
	(link s4 s0)
	(link s1 s0)
	(link s0 s1)
	(link s1 s2)
	(link s2 s1)
	(link s1 s3)
	(link s3 s1)
	(link s2 s0)
	(link s0 s2)
	(link s2 s4)
	(link s4 s2)
)
	(:goal (and
	(at driver2 s1)
	(at driver4 s2)
	(at truck1 s4)
	(at truck2 s2)
	(at truck3 s3)
	(at package1 s0)
	(at package2 s1)
	(at package3 s0)
	(at package4 s4)
	(at package5 s1)
	(at package6 s2)
	))


)
