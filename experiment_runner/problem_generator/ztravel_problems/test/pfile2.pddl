(define (problem ZTRAVEL-4-9)
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
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	city4 - city
	city5 - city
	city6 - city
	city7 - city
	city8 - city
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
	(at plane2 city3)
	(fuel-level plane2 fl6)
	(at plane3 city4)
	(fuel-level plane3 fl3)
	(at plane4 city3)
	(fuel-level plane4 fl3)
	(at person1 city8)
	(at person2 city8)
	(at person3 city8)
	(at person4 city3)
	(at person5 city8)
	(at person6 city2)
	(at person7 city7)
	(at person8 city0)
	(at person9 city2)
	(next fl0 fl1)
	(next fl1 fl2)
	(next fl2 fl3)
	(next fl3 fl4)
	(next fl4 fl5)
	(next fl5 fl6)
)
(:goal (and
	(at person1 city1)
	(at person2 city7)
	(at person3 city1)
	(at person4 city7)
	(at person5 city3)
	(at person6 city1)
	(at person7 city3)
	(at person8 city5)
	(at person9 city3)
	))

)
