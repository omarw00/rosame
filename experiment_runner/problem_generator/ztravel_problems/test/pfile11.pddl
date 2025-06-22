(define (problem ZTRAVEL-4-3)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	plane2 - aircraft
	plane3 - aircraft
	plane4 - aircraft
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
	fl0 - flevel
	fl1 - flevel
	fl2 - flevel
	fl3 - flevel
	fl4 - flevel
	fl5 - flevel
	fl6 - flevel
	)
(:init
	(at plane1 city6)
	(fuel-level plane1 fl4)
	(at plane2 city10)
	(fuel-level plane2 fl3)
	(at plane3 city1)
	(fuel-level plane3 fl3)
	(at plane4 city0)
	(fuel-level plane4 fl4)
	(at person1 city11)
	(at person2 city9)
	(at person3 city5)
	(next fl0 fl1)
	(next fl1 fl2)
	(next fl2 fl3)
	(next fl3 fl4)
	(next fl4 fl5)
	(next fl5 fl6)
)
(:goal (and
	(at plane2 city11)
	(at person1 city3)
	(at person2 city10)
	(at person3 city2)
	))

)
