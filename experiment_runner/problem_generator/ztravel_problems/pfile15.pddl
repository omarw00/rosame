(define (problem ZTRAVEL-5-15)
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
	person15 - person
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
	(at plane1 city0)
	(fuel-level plane1 fl2)
	(at plane2 city4)
	(fuel-level plane2 fl0)
	(at plane3 city4)
	(fuel-level plane3 fl6)
	(at plane4 city9)
	(fuel-level plane4 fl5)
	(at plane5 city4)
	(fuel-level plane5 fl0)
	(at person1 city0)
	(at person2 city2)
	(at person3 city0)
	(at person4 city9)
	(at person5 city9)
	(at person6 city10)
	(at person7 city5)
	(at person8 city4)
	(at person9 city10)
	(at person10 city5)
	(at person11 city4)
	(at person12 city4)
	(at person13 city3)
	(at person14 city3)
	(at person15 city2)
	(next fl0 fl1)
	(next fl1 fl2)
	(next fl2 fl3)
	(next fl3 fl4)
	(next fl4 fl5)
	(next fl5 fl6)
)
(:goal (and
	(at plane1 city4)
	(at plane4 city4)
	(at plane5 city10)
	(at person1 city7)
	(at person2 city6)
	(at person3 city6)
	(at person4 city0)
	(at person5 city10)
	(at person6 city2)
	(at person7 city0)
	(at person8 city1)
	(at person9 city4)
	(at person10 city9)
	(at person11 city9)
	(at person12 city1)
	(at person13 city1)
	(at person14 city0)
	(at person15 city10)
	))

)
