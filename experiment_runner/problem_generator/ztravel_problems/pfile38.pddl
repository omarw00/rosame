(define (problem ZTRAVEL-7-12)
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
	fl0 - flevel
	fl1 - flevel
	fl2 - flevel
	fl3 - flevel
	fl4 - flevel
	fl5 - flevel
	fl6 - flevel
	)
(:init
	(at plane1 city8)
	(fuel-level plane1 fl3)
	(at plane2 city12)
	(fuel-level plane2 fl3)
	(at plane3 city1)
	(fuel-level plane3 fl5)
	(at plane4 city3)
	(fuel-level plane4 fl6)
	(at plane5 city11)
	(fuel-level plane5 fl0)
	(at plane6 city5)
	(fuel-level plane6 fl5)
	(at plane7 city2)
	(fuel-level plane7 fl1)
	(at person1 city9)
	(at person2 city11)
	(at person3 city1)
	(at person4 city7)
	(at person5 city10)
	(at person6 city12)
	(at person7 city4)
	(at person8 city4)
	(at person9 city2)
	(at person10 city12)
	(at person11 city5)
	(at person12 city6)
	(next fl0 fl1)
	(next fl1 fl2)
	(next fl2 fl3)
	(next fl3 fl4)
	(next fl4 fl5)
	(next fl5 fl6)
)
(:goal (and
	(at plane1 city11)
	(at plane3 city6)
	(at plane6 city7)
	(at person1 city8)
	(at person2 city9)
	(at person3 city11)
	(at person4 city5)
	(at person5 city0)
	(at person6 city3)
	(at person7 city1)
	(at person8 city7)
	(at person9 city1)
	(at person10 city3)
	(at person11 city0)
	(at person12 city12)
	))

)
