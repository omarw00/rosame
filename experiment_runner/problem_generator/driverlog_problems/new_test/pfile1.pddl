(define (problem DLOG-5-2-49)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	driver4 - driver
	driver5 - driver
	truck1 - truck
	truck2 - truck
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
	package17 - package
	package18 - package
	package19 - package
	package20 - package
	package21 - package
	package22 - package
	package23 - package
	package24 - package
	package25 - package
	package26 - package
	package27 - package
	package28 - package
	package29 - package
	package30 - package
	package31 - package
	package32 - package
	package33 - package
	package34 - package
	package35 - package
	package36 - package
	package37 - package
	package38 - package
	package39 - package
	package40 - package
	package41 - package
	package42 - package
	package43 - package
	package44 - package
	package45 - package
	package46 - package
	package47 - package
	package48 - package
	package49 - package
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	s5 - location
	s6 - location
	s7 - location
	s8 - location
	s9 - location
	p0-3 - location
	p0-7 - location
	p2-0 - location
	p2-1 - location
	p2-9 - location
	p3-4 - location
	p3-5 - location
	p3-6 - location
	p3-7 - location
	p3-8 - location
	p4-1 - location
	p4-5 - location
	p4-7 - location
	p5-2 - location
	p6-1 - location
	p7-2 - location
	p8-0 - location
	p8-1 - location
	p9-7 - location
	)
	(:init
	(at driver1 s4)
	(at driver2 s5)
	(at driver3 s4)
	(at driver4 s5)
	(at driver5 s6)
	(at truck1 s3)
	(empty truck1)
	(at truck2 s6)
	(empty truck2)
	(at package1 s4)
	(at package2 s5)
	(at package3 s3)
	(at package4 s8)
	(at package5 s5)
	(at package6 s4)
	(at package7 s8)
	(at package8 s3)
	(at package9 s2)
	(at package10 s6)
	(at package11 s7)
	(at package12 s4)
	(at package13 s0)
	(at package14 s4)
	(at package15 s8)
	(at package16 s6)
	(at package17 s2)
	(at package18 s3)
	(at package19 s7)
	(at package20 s2)
	(at package21 s6)
	(at package22 s3)
	(at package23 s8)
	(at package24 s6)
	(at package25 s2)
	(at package26 s1)
	(at package27 s7)
	(at package28 s7)
	(at package29 s6)
	(at package30 s8)
	(at package31 s0)
	(at package32 s7)
	(at package33 s4)
	(at package34 s5)
	(at package35 s8)
	(at package36 s9)
	(at package37 s2)
	(at package38 s7)
	(at package39 s6)
	(at package40 s3)
	(at package41 s5)
	(at package42 s9)
	(at package43 s9)
	(at package44 s6)
	(at package45 s5)
	(at package46 s5)
	(at package47 s2)
	(at package48 s9)
	(at package49 s0)
	(path s0 p0-3)
	(path p0-3 s0)
	(path s3 p0-3)
	(path p0-3 s3)
	(path s0 p0-7)
	(path p0-7 s0)
	(path s7 p0-7)
	(path p0-7 s7)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(path s2 p2-1)
	(path p2-1 s2)
	(path s1 p2-1)
	(path p2-1 s1)
	(path s2 p2-9)
	(path p2-9 s2)
	(path s9 p2-9)
	(path p2-9 s9)
	(path s3 p3-4)
	(path p3-4 s3)
	(path s4 p3-4)
	(path p3-4 s4)
	(path s3 p3-5)
	(path p3-5 s3)
	(path s5 p3-5)
	(path p3-5 s5)
	(path s3 p3-6)
	(path p3-6 s3)
	(path s6 p3-6)
	(path p3-6 s6)
	(path s3 p3-7)
	(path p3-7 s3)
	(path s7 p3-7)
	(path p3-7 s7)
	(path s3 p3-8)
	(path p3-8 s3)
	(path s8 p3-8)
	(path p3-8 s8)
	(path s4 p4-1)
	(path p4-1 s4)
	(path s1 p4-1)
	(path p4-1 s1)
	(path s4 p4-5)
	(path p4-5 s4)
	(path s5 p4-5)
	(path p4-5 s5)
	(path s4 p4-7)
	(path p4-7 s4)
	(path s7 p4-7)
	(path p4-7 s7)
	(path s5 p5-2)
	(path p5-2 s5)
	(path s2 p5-2)
	(path p5-2 s2)
	(path s6 p6-1)
	(path p6-1 s6)
	(path s1 p6-1)
	(path p6-1 s1)
	(path s7 p7-2)
	(path p7-2 s7)
	(path s2 p7-2)
	(path p7-2 s2)
	(path s8 p8-0)
	(path p8-0 s8)
	(path s0 p8-0)
	(path p8-0 s0)
	(path s8 p8-1)
	(path p8-1 s8)
	(path s1 p8-1)
	(path p8-1 s1)
	(path s9 p9-7)
	(path p9-7 s9)
	(path s7 p9-7)
	(path p9-7 s7)
	(link s0 s2)
	(link s2 s0)
	(link s1 s2)
	(link s2 s1)
	(link s1 s7)
	(link s7 s1)
	(link s1 s8)
	(link s8 s1)
	(link s2 s5)
	(link s5 s2)
	(link s3 s1)
	(link s1 s3)
	(link s3 s2)
	(link s2 s3)
	(link s3 s4)
	(link s4 s3)
	(link s3 s6)
	(link s6 s3)
	(link s3 s8)
	(link s8 s3)
	(link s3 s9)
	(link s9 s3)
	(link s4 s0)
	(link s0 s4)
	(link s4 s6)
	(link s6 s4)
	(link s4 s7)
	(link s7 s4)
	(link s4 s9)
	(link s9 s4)
	(link s5 s1)
	(link s1 s5)
	(link s5 s3)
	(link s3 s5)
	(link s5 s6)
	(link s6 s5)
	(link s6 s1)
	(link s1 s6)
	(link s6 s9)
	(link s9 s6)
	(link s7 s6)
	(link s6 s7)
	(link s8 s5)
	(link s5 s8)
	(link s8 s6)
	(link s6 s8)
	(link s8 s7)
	(link s7 s8)
	(link s9 s1)
	(link s1 s9)
)
	(:goal (and
	(at driver1 s9)
	(at driver2 s4)
	(at driver3 s7)
	(at driver4 s4)
	(at driver5 s3)
	(at truck1 s9)
	(at package1 s3)
	(at package2 s7)
	(at package3 s3)
	(at package4 s7)
	(at package5 s3)
	(at package6 s7)
	(at package7 s3)
	(at package8 s9)
	(at package9 s3)
	(at package10 s9)
	(at package11 s4)
	(at package12 s0)
	(at package13 s4)
	(at package14 s2)
	(at package15 s7)
	(at package16 s2)
	(at package17 s1)
	(at package18 s5)
	(at package19 s7)
	(at package20 s4)
	(at package21 s2)
	(at package22 s6)
	(at package23 s6)
	(at package24 s1)
	(at package25 s0)
	(at package26 s7)
	(at package27 s0)
	(at package28 s3)
	(at package29 s1)
	(at package30 s3)
	(at package31 s9)
	(at package33 s0)
	(at package34 s7)
	(at package35 s9)
	(at package36 s0)
	(at package37 s8)
	(at package38 s5)
	(at package39 s1)
	(at package40 s0)
	(at package41 s0)
	(at package42 s8)
	(at package43 s2)
	(at package44 s7)
	(at package45 s6)
	(at package46 s5)
	(at package47 s8)
	(at package48 s5)
	(at package49 s2)
	))


)
