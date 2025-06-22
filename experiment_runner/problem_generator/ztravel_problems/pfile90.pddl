(define (problem ZTRAVEL-6-8)
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
	(at plane1 city11)
	(fuel-level plane1 fl1)
	(at plane2 city4)
	(fuel-level plane2 fl4)
	(at plane3 city0)
	(fuel-level plane3 fl3)
	(at plane4 city8)
	(fuel-level plane4 fl6)
	(at plane5 city14)
	(fuel-level plane5 fl1)
	(at plane6 city9)
	(fuel-level plane6 fl0)
	(at person1 city7)
	(at person2 city2)
	(at person3 city2)
	(at person4 city2)
	(at person5 city1)
	(at person6 city10)
	(at person7 city5)
	(at person8 city10)
	(next fl0 fl1)
	(next fl1 fl2)
	(next fl2 fl3)
	(next fl3 fl4)
	(next fl4 fl5)
	(next fl5 fl6)
)
(:goal (and
	(at plane4 city8)
	(at person1 city0)
	(at person2 city13)
	(at person3 city0)
	(at person4 city11)
	(at person5 city12)
	(at person6 city7)
	(at person7 city2)
	(at person8 city2)
	))

)
