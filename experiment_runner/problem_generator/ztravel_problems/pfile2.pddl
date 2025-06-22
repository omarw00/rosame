(define (problem ZTRAVEL-5-11)
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
	city11 - city
	city12 - city
	city13 - city
	city14 - city
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
	(fuel-level plane1 fl1)
	(at plane2 city11)
	(fuel-level plane2 fl4)
	(at plane3 city0)
	(fuel-level plane3 fl0)
	(at plane4 city12)
	(fuel-level plane4 fl0)
	(at plane5 city5)
	(fuel-level plane5 fl1)
	(at person1 city8)
	(at person2 city6)
	(at person3 city3)
	(at person4 city0)
	(at person5 city4)
	(at person6 city5)
	(at person7 city1)
	(at person8 city5)
	(at person9 city7)
	(at person10 city9)
	(at person11 city13)
	(next fl0 fl1)
	(next fl1 fl2)
	(next fl2 fl3)
	(next fl3 fl4)
	(next fl4 fl5)
	(next fl5 fl6)
)
(:goal (and
	(at plane1 city2)
	(at plane3 city1)
	(at person1 city1)
	(at person2 city1)
	(at person3 city5)
	(at person4 city11)
	(at person5 city10)
	(at person6 city13)
	(at person7 city14)
	(at person8 city12)
	(at person9 city10)
	(at person10 city0)
	(at person11 city8)
	))

)
