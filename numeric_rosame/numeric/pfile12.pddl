(define (problem DLOG-3-3-5-12)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	package4 - obj
	package5 - obj
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	p2-0 - location
	p1-2 - location
	p0-1 - location
	p0-3 - location
	)
	(:init
	(at driver1 s1)
	(at driver2 s2)
	(at driver3 s1)
	(at truck1 s2)
	(empty truck1)
	(at truck2 s1)
	(empty truck2)
	(at truck3 s1)
	(empty truck3)
	(at package1 s0)
	(at package2 s2)
	(at package3 s1)
	(at package4 s1)
	(at package5 s1)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(= (time-to-walk s2 p2-0) 4)
	(= (time-to-walk p2-0 s2) 4)
	(= (time-to-walk s0 p2-0) 1)
	(= (time-to-walk p2-0 s0) 1)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 4)
	(= (time-to-walk p1-2 s1) 4)
	(= (time-to-walk s2 p1-2) 2)
	(= (time-to-walk p1-2 s2) 2)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(= (time-to-walk s0 p0-1) 1)
	(= (time-to-walk p0-1 s0) 1)
	(= (time-to-walk s1 p0-1) 3)
	(= (time-to-walk p0-1 s1) 3)
	(path s0 p0-3)
	(path p0-3 s0)
	(path s3 p0-3)
	(path p0-3 s3)
	(= (time-to-walk s0 p0-3) 4)
	(= (time-to-walk p0-3 s0) 4)
	(= (time-to-walk s3 p0-3) 1)
	(= (time-to-walk p0-3 s3) 1)
	(link s1 s3)
	(link s3 s1)
	(= (time-to-drive s1 s3) 2)
	(= (time-to-drive s3 s1) 2)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 4)
	(= (time-to-drive s1 s0) 4)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 2)
	(= (time-to-drive s2 s0) 2)
	(link s0 s3)
	(link s3 s0)
	(= (time-to-drive s0 s3) 1)
	(= (time-to-drive s3 s0) 1)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 1)
	(= (time-to-drive s1 s2) 1)
	(link s2 s3)
	(link s3 s2)
	(= (time-to-drive s2 s3) 1)
	(= (time-to-drive s3 s2) 1)
	(= (driven) 0)
	(= (walked) 0)
)
	(:goal (and
	(at driver1 s1)
	(at driver3 s2)
	(at truck1 s0)
	(at truck3 s1)
	(at package1 s2)
	(at package2 s0)
	(at package3 s2)
	(at package4 s0)
	(at package5 s3)
	))

(:metric minimize (+ (+ (* 3  (total-time)) (* 4  (driven))) (* 4  (walked))))

)
