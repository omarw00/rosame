(define (problem ZTRAVEL-7-13)
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
	person11 - person
	person12 - person
	person13 - person
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
	fl0 - flevel
	fl1 - flevel
	fl2 - flevel
	fl3 - flevel
	fl4 - flevel
	fl5 - flevel
	fl6 - flevel
	)
(:init
	(at plane1 city4)
	(fuel-level plane1 fl5)
	(at plane2 city14)
	(fuel-level plane2 fl0)
	(at plane3 city17)
	(fuel-level plane3 fl4)
	(at plane4 city20)
	(fuel-level plane4 fl1)
	(at plane5 city8)
	(fuel-level plane5 fl3)
	(at plane6 city7)
	(fuel-level plane6 fl0)
	(at plane7 city7)
	(fuel-level plane7 fl1)
	(at person1 city5)
	(at person2 city5)
	(at person3 city14)
	(at person4 city0)
	(at person5 city6)
	(at person6 city7)
	(at person7 city8)
	(at person8 city16)
	(at person9 city14)
	(at person10 city17)
	(at person11 city16)
	(at person12 city19)
	(at person13 city4)
	(next fl0 fl1)
	(next fl1 fl2)
	(next fl2 fl3)
	(next fl3 fl4)
	(next fl4 fl5)
	(next fl5 fl6)
)
(:goal (and
	(at plane3 city7)
	(at plane4 city20)
	(at plane7 city8)
	(at person1 city18)
	(at person2 city6)
	(at person3 city11)
	(at person4 city11)
	(at person5 city2)
	(at person6 city9)
	(at person7 city15)
	(at person8 city10)
	(at person9 city14)
	(at person10 city14)
	(at person11 city20)
	(at person12 city4)
	(at person13 city19)
	))

)
