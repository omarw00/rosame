(define (problem ZTRAVEL-6-17)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	plane2 - aircraft
	plane3 - aircraft
	plane4 - aircraft
	plane5 - aircraft
	plane6 - aircraft
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	person5 - person
	person6 - person
	person7 - person
	person8 - person
	person9 - person
	person10 - person
	person11 - person
	person12 - person
	person13 - person
	person14 - person
	person15 - person
	person16 - person
	person17 - person
	city0 - city
	city1 - city
	city2 - city
	fl0 - flevel
	fl1 - flevel
	fl2 - flevel
	fl3 - flevel
	fl4 - flevel
	fl5 - flevel
	fl6 - flevel
	)
(:init
	(at plane1 city2)
	(fuel-level plane1 fl2)
	(at plane2 city2)
	(fuel-level plane2 fl4)
	(at plane3 city1)
	(fuel-level plane3 fl4)
	(at plane4 city0)
	(fuel-level plane4 fl0)
	(at plane5 city2)
	(fuel-level plane5 fl1)
	(at plane6 city1)
	(fuel-level plane6 fl4)
	(at person1 city2)
	(at person2 city0)
	(at person3 city1)
	(at person4 city0)
	(at person5 city0)
	(at person6 city0)
	(at person7 city1)
	(at person8 city0)
	(at person9 city0)
	(at person10 city0)
	(at person11 city2)
	(at person12 city0)
	(at person13 city2)
	(at person14 city1)
	(at person15 city1)
	(at person16 city1)
	(at person17 city1)
	(next fl0 fl1)
	(next fl1 fl2)
	(next fl2 fl3)
	(next fl3 fl4)
	(next fl4 fl5)
	(next fl5 fl6)
)
(:goal (and
	(at plane2 city0)
	(at plane3 city2)
	(at plane6 city1)
	(at person1 city2)
	(at person2 city0)
	(at person3 city1)
	(at person4 city1)
	(at person5 city1)
	(at person6 city0)
	(at person7 city2)
	(at person8 city0)
	(at person9 city0)
	(at person10 city0)
	(at person11 city2)
	(at person12 city0)
	(at person13 city1)
	(at person14 city2)
	(at person15 city2)
	(at person16 city0)
	))

)
