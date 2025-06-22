(define (problem ZTRAVEL-7-10)
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
	(at plane1 city10)
	(fuel-level plane1 fl3)
	(at plane2 city19)
	(fuel-level plane2 fl0)
	(at plane3 city6)
	(fuel-level plane3 fl3)
	(at plane4 city18)
	(fuel-level plane4 fl4)
	(at plane5 city16)
	(fuel-level plane5 fl5)
	(at plane6 city2)
	(fuel-level plane6 fl5)
	(at plane7 city8)
	(fuel-level plane7 fl3)
	(at person1 city4)
	(at person2 city14)
	(at person3 city12)
	(at person4 city14)
	(at person5 city4)
	(at person6 city12)
	(at person7 city16)
	(at person8 city4)
	(at person9 city1)
	(at person10 city4)
	(next fl0 fl1)
	(next fl1 fl2)
	(next fl2 fl3)
	(next fl3 fl4)
	(next fl4 fl5)
	(next fl5 fl6)
)
(:goal (and
	(at plane3 city15)
	(at person1 city17)
	(at person2 city5)
	(at person4 city22)
	(at person5 city6)
	(at person6 city6)
	(at person7 city8)
	(at person9 city3)
	(at person10 city2)
	))

)
