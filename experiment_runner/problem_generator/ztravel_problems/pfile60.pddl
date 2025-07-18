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
	fl0 - flevel
	fl1 - flevel
	fl2 - flevel
	fl3 - flevel
	fl4 - flevel
	fl5 - flevel
	fl6 - flevel
	)
(:init
	(at plane1 city2)
	(fuel-level plane1 fl4)
	(at plane2 city2)
	(fuel-level plane2 fl3)
	(at plane3 city7)
	(fuel-level plane3 fl3)
	(at plane4 city5)
	(fuel-level plane4 fl6)
	(at plane5 city4)
	(fuel-level plane5 fl0)
	(at person1 city4)
	(at person2 city2)
	(next fl0 fl1)
	(next fl1 fl2)
	(next fl2 fl3)
	(next fl3 fl4)
	(next fl4 fl5)
	(next fl5 fl6)
)
(:goal (and
	(at plane3 city6)
	(at plane4 city3)
	(at person1 city0)
	(at person2 city0)
	))

)
