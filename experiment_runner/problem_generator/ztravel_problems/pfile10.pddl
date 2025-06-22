(define (problem ZTRAVEL-4-14)
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
	person10 - person
	person11 - person
	person12 - person
	person13 - person
	person14 - person
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
	(fuel-level plane1 fl4)
	(at plane2 city0)
	(fuel-level plane2 fl2)
	(at plane3 city8)
	(fuel-level plane3 fl2)
	(at plane4 city15)
	(fuel-level plane4 fl6)
	(at person1 city3)
	(at person2 city12)
	(at person3 city8)
	(at person4 city17)
	(at person5 city15)
	(at person6 city3)
	(at person7 city6)
	(at person8 city3)
	(at person9 city12)
	(at person10 city10)
	(at person11 city6)
	(at person12 city17)
	(at person13 city6)
	(at person14 city13)
	(next fl0 fl1)
	(next fl1 fl2)
	(next fl2 fl3)
	(next fl3 fl4)
	(next fl4 fl5)
	(next fl5 fl6)
)
(:goal (and
	(at plane1 city4)
	(at plane2 city15)
	(at plane4 city14)
	(at person1 city0)
	(at person2 city14)
	(at person3 city17)
	(at person4 city13)
	(at person5 city3)
	(at person6 city4)
	(at person7 city9)
	(at person8 city17)
	(at person10 city8)
	(at person12 city7)
	(at person13 city16)
	(at person14 city16)
	))

)
