(define (problem ZTRAVEL-4-11)
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
	(at plane1 city7)
	(fuel-level plane1 fl5)
	(at plane2 city5)
	(fuel-level plane2 fl4)
	(at plane3 city3)
	(fuel-level plane3 fl3)
	(at plane4 city5)
	(fuel-level plane4 fl4)
	(at person1 city12)
	(at person2 city1)
	(at person3 city12)
	(at person4 city0)
	(at person5 city4)
	(at person6 city9)
	(at person7 city7)
	(at person8 city8)
	(at person9 city8)
	(at person10 city13)
	(at person11 city3)
	(next fl0 fl1)
	(next fl1 fl2)
	(next fl2 fl3)
	(next fl3 fl4)
	(next fl4 fl5)
	(next fl5 fl6)
)
(:goal (and
	(at plane1 city9)
	(at plane2 city0)
	(at plane3 city1)
	(at person1 city6)
	(at person2 city8)
	(at person3 city6)
	(at person4 city7)
	(at person5 city6)
	(at person6 city8)
	(at person7 city5)
	(at person8 city3)
	(at person9 city13)
	(at person10 city7)
	(at person11 city4)
	))

)
