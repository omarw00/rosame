(define (problem ZTRAVEL-6-4)
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
	fl0 - flevel
	fl1 - flevel
	fl2 - flevel
	fl3 - flevel
	fl4 - flevel
	fl5 - flevel
	fl6 - flevel
	)
(:init
	(at plane1 city5)
	(fuel-level plane1 fl6)
	(at plane2 city8)
	(fuel-level plane2 fl4)
	(at plane3 city1)
	(fuel-level plane3 fl5)
	(at plane4 city6)
	(fuel-level plane4 fl4)
	(at plane5 city8)
	(fuel-level plane5 fl4)
	(at plane6 city1)
	(fuel-level plane6 fl5)
	(at person1 city4)
	(at person2 city8)
	(at person3 city2)
	(at person4 city0)
	(next fl0 fl1)
	(next fl1 fl2)
	(next fl2 fl3)
	(next fl3 fl4)
	(next fl4 fl5)
	(next fl5 fl6)
)
(:goal (and
	(at plane1 city1)
	(at plane3 city0)
	(at person1 city4)
	(at person2 city9)
	(at person3 city3)
	(at person4 city6)
	))

)
