(define (problem ZTRAVEL-5-12)
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
	city15 - city
	city16 - city
	city17 - city
	city18 - city
	city19 - city
	city20 - city
	city21 - city
	city22 - city
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
	(fuel-level plane1 fl0)
	(at plane2 city5)
	(fuel-level plane2 fl6)
	(at plane3 city2)
	(fuel-level plane3 fl1)
	(at plane4 city19)
	(fuel-level plane4 fl5)
	(at plane5 city6)
	(fuel-level plane5 fl2)
	(at person1 city0)
	(at person2 city15)
	(at person3 city16)
	(at person4 city12)
	(at person5 city15)
	(at person6 city16)
	(at person7 city1)
	(at person8 city0)
	(at person9 city6)
	(at person10 city10)
	(at person11 city2)
	(at person12 city13)
	(next fl0 fl1)
	(next fl1 fl2)
	(next fl2 fl3)
	(next fl3 fl4)
	(next fl4 fl5)
	(next fl5 fl6)
)
(:goal (and
	(at plane2 city12)
	(at plane4 city4)
	(at person1 city19)
	(at person3 city16)
	(at person4 city21)
	(at person5 city14)
	(at person6 city21)
	(at person7 city17)
	(at person8 city2)
	(at person9 city13)
	(at person10 city21)
	(at person12 city14)
	))

)
