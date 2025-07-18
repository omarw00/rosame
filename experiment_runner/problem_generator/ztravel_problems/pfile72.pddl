(define (problem ZTRAVEL-5-14)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	plane2 - aircraft
	plane3 - aircraft
	plane4 - aircraft
	plane5 - aircraft
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
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	city4 - city
	fl0 - flevel
	fl1 - flevel
	fl2 - flevel
	fl3 - flevel
	fl4 - flevel
	fl5 - flevel
	fl6 - flevel
	)
(:init
	(at plane1 city0)
	(fuel-level plane1 fl3)
	(at plane2 city1)
	(fuel-level plane2 fl5)
	(at plane3 city0)
	(fuel-level plane3 fl4)
	(at plane4 city0)
	(fuel-level plane4 fl3)
	(at plane5 city4)
	(fuel-level plane5 fl2)
	(at person1 city1)
	(at person2 city1)
	(at person3 city0)
	(at person4 city1)
	(at person5 city3)
	(at person6 city1)
	(at person7 city0)
	(at person8 city4)
	(at person9 city4)
	(at person10 city3)
	(at person11 city1)
	(at person12 city1)
	(at person13 city2)
	(at person14 city4)
	(next fl0 fl1)
	(next fl1 fl2)
	(next fl2 fl3)
	(next fl3 fl4)
	(next fl4 fl5)
	(next fl5 fl6)
)
(:goal (and
	(at plane3 city0)
	(at plane5 city4)
	(at person1 city0)
	(at person2 city3)
	(at person3 city2)
	(at person4 city2)
	(at person5 city1)
	(at person6 city1)
	(at person7 city1)
	(at person8 city0)
	(at person9 city3)
	(at person10 city1)
	(at person11 city3)
	(at person12 city0)
	(at person13 city0)
	(at person14 city2)
	))

)
