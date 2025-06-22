(define (problem ZTRAVEL-5-2)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	plane2 - aircraft
	plane3 - aircraft
	plane4 - aircraft
	plane5 - aircraft
	person1 - person
	person2 - person
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
	fl0 - flevel
	fl1 - flevel
	fl2 - flevel
	fl3 - flevel
	fl4 - flevel
	fl5 - flevel
	fl6 - flevel
	)
(:init
	(at plane1 city17)
	(fuel-level plane1 fl4)
	(at plane2 city17)
	(fuel-level plane2 fl2)
	(at plane3 city19)
	(fuel-level plane3 fl6)
	(at plane4 city4)
	(fuel-level plane4 fl1)
	(at plane5 city3)
	(fuel-level plane5 fl4)
	(at person1 city6)
	(at person2 city13)
	(next fl0 fl1)
	(next fl1 fl2)
	(next fl2 fl3)
	(next fl3 fl4)
	(next fl4 fl5)
	(next fl5 fl6)
)
(:goal (and
	(at plane1 city17)
	(at plane4 city16)
	(at person1 city19)
	(at person2 city5)
	))

)
