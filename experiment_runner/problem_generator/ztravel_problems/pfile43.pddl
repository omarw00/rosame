(define (problem ZTRAVEL-4-5)
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
	(at plane1 city6)
	(fuel-level plane1 fl1)
	(at plane2 city5)
	(fuel-level plane2 fl0)
	(at plane3 city1)
	(fuel-level plane3 fl1)
	(at plane4 city0)
	(fuel-level plane4 fl6)
	(at person1 city8)
	(at person2 city3)
	(at person3 city7)
	(at person4 city8)
	(at person5 city4)
	(next fl0 fl1)
	(next fl1 fl2)
	(next fl2 fl3)
	(next fl3 fl4)
	(next fl4 fl5)
	(next fl5 fl6)
)
(:goal (and
	(at plane3 city1)
	(at person1 city3)
	(at person2 city6)
	(at person3 city3)
	(at person4 city4)
	(at person5 city5)
	))

)
