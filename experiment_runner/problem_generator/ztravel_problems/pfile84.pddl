(define (problem ZTRAVEL-6-3)
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
	(at plane1 city1)
	(fuel-level plane1 fl4)
	(at plane2 city5)
	(fuel-level plane2 fl6)
	(at plane3 city19)
	(fuel-level plane3 fl6)
	(at plane4 city21)
	(fuel-level plane4 fl5)
	(at plane5 city22)
	(fuel-level plane5 fl0)
	(at plane6 city13)
	(fuel-level plane6 fl5)
	(at person1 city8)
	(at person2 city8)
	(at person3 city4)
	(next fl0 fl1)
	(next fl1 fl2)
	(next fl2 fl3)
	(next fl3 fl4)
	(next fl4 fl5)
	(next fl5 fl6)
)
(:goal (and
	(at plane1 city12)
	(at plane2 city13)
	(at plane6 city3)
	(at person1 city2)
	(at person2 city5)
	(at person3 city14)
	))

)
