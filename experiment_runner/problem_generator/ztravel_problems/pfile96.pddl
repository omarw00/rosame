(define (problem ZTRAVEL-7-18)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	plane2 - aircraft
	plane3 - aircraft
	plane4 - aircraft
	plane5 - aircraft
	plane6 - aircraft
	plane7 - aircraft
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
	person18 - person
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	city4 - city
	city5 - city
	city6 - city
	city7 - city
	city8 - city
	city9 - city
	city10 - city
	fl0 - flevel
	fl1 - flevel
	fl2 - flevel
	fl3 - flevel
	fl4 - flevel
	fl5 - flevel
	fl6 - flevel
	)
(:init
	(at plane1 city3)
	(fuel-level plane1 fl2)
	(at plane2 city1)
	(fuel-level plane2 fl3)
	(at plane3 city5)
	(fuel-level plane3 fl2)
	(at plane4 city3)
	(fuel-level plane4 fl2)
	(at plane5 city1)
	(fuel-level plane5 fl2)
	(at plane6 city4)
	(fuel-level plane6 fl1)
	(at plane7 city4)
	(fuel-level plane7 fl5)
	(at person1 city8)
	(at person2 city0)
	(at person3 city7)
	(at person4 city1)
	(at person5 city10)
	(at person6 city10)
	(at person7 city3)
	(at person8 city4)
	(at person9 city4)
	(at person10 city6)
	(at person11 city4)
	(at person12 city10)
	(at person13 city8)
	(at person14 city7)
	(at person15 city2)
	(at person16 city5)
	(at person17 city5)
	(at person18 city8)
	(next fl0 fl1)
	(next fl1 fl2)
	(next fl2 fl3)
	(next fl3 fl4)
	(next fl4 fl5)
	(next fl5 fl6)
)
(:goal (and
	(at plane1 city10)
	(at plane7 city0)
	(at person1 city8)
	(at person2 city2)
	(at person3 city0)
	(at person4 city10)
	(at person5 city2)
	(at person6 city1)
	(at person7 city7)
	(at person8 city7)
	(at person9 city1)
	(at person10 city8)
	(at person11 city6)
	(at person12 city6)
	(at person13 city3)
	(at person14 city4)
	(at person15 city4)
	(at person16 city4)
	(at person17 city7)
	(at person18 city1)
	))

)
