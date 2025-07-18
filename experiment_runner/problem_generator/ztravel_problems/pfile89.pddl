(define (problem ZTRAVEL-5-5)
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
	fl0 - flevel
	fl1 - flevel
	fl2 - flevel
	fl3 - flevel
	fl4 - flevel
	fl5 - flevel
	fl6 - flevel
	)
(:init
	(at plane1 city16)
	(fuel-level plane1 fl1)
	(at plane2 city4)
	(fuel-level plane2 fl6)
	(at plane3 city7)
	(fuel-level plane3 fl6)
	(at plane4 city3)
	(fuel-level plane4 fl4)
	(at plane5 city15)
	(fuel-level plane5 fl4)
	(at person1 city3)
	(at person2 city14)
	(at person3 city2)
	(at person4 city5)
	(at person5 city0)
	(next fl0 fl1)
	(next fl1 fl2)
	(next fl2 fl3)
	(next fl3 fl4)
	(next fl4 fl5)
	(next fl5 fl6)
)
(:goal (and
	(at plane4 city11)
	(at person1 city20)
	(at person2 city4)
	(at person3 city5)
	(at person5 city16)
	))

)
