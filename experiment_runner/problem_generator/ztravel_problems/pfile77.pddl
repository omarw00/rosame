(define (problem ZTRAVEL-4-16)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	plane2 - aircraft
	plane3 - aircraft
	plane4 - aircraft
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
	(at plane1 city1)
	(fuel-level plane1 fl0)
	(at plane2 city2)
	(fuel-level plane2 fl2)
	(at plane3 city10)
	(fuel-level plane3 fl6)
	(at plane4 city7)
	(fuel-level plane4 fl6)
	(at person1 city3)
	(at person2 city8)
	(at person3 city0)
	(at person4 city0)
	(at person5 city0)
	(at person6 city0)
	(at person7 city1)
	(at person8 city9)
	(at person9 city3)
	(at person10 city9)
	(at person11 city5)
	(at person12 city2)
	(at person13 city3)
	(at person14 city5)
	(at person15 city6)
	(at person16 city8)
	(next fl0 fl1)
	(next fl1 fl2)
	(next fl2 fl3)
	(next fl3 fl4)
	(next fl4 fl5)
	(next fl5 fl6)
)
(:goal (and
	(at person1 city8)
	(at person2 city7)
	(at person3 city8)
	(at person4 city7)
	(at person5 city2)
	(at person6 city6)
	(at person7 city8)
	(at person8 city8)
	(at person9 city5)
	(at person10 city8)
	(at person11 city1)
	(at person12 city10)
	(at person13 city10)
	(at person14 city0)
	(at person15 city1)
	(at person16 city2)
	))

)
