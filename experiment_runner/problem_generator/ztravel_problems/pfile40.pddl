(define (problem ZTRAVEL-3-17)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	plane2 - aircraft
	plane3 - aircraft
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
	person15 - person
	person16 - person
	person17 - person
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
	(at plane1 city1)
	(fuel-level plane1 fl0)
	(at plane2 city9)
	(fuel-level plane2 fl4)
	(at plane3 city7)
	(fuel-level plane3 fl6)
	(at person1 city9)
	(at person2 city7)
	(at person3 city11)
	(at person4 city8)
	(at person5 city1)
	(at person6 city10)
	(at person7 city0)
	(at person8 city9)
	(at person9 city4)
	(at person10 city9)
	(at person11 city0)
	(at person12 city4)
	(at person13 city8)
	(at person14 city7)
	(at person15 city9)
	(at person16 city10)
	(at person17 city1)
	(next fl0 fl1)
	(next fl1 fl2)
	(next fl2 fl3)
	(next fl3 fl4)
	(next fl4 fl5)
	(next fl5 fl6)
)
(:goal (and
	(at plane2 city1)
	(at person1 city3)
	(at person2 city2)
	(at person3 city8)
	(at person4 city10)
	(at person5 city11)
	(at person6 city11)
	(at person7 city7)
	(at person8 city5)
	(at person9 city1)
	(at person10 city7)
	(at person11 city3)
	(at person13 city10)
	(at person14 city5)
	(at person15 city7)
	(at person16 city4)
	(at person17 city4)
	))

)
