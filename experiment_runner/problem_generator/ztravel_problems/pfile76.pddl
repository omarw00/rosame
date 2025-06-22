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
	fl0 - flevel
	fl1 - flevel
	fl2 - flevel
	fl3 - flevel
	fl4 - flevel
	fl5 - flevel
	fl6 - flevel
	)
(:init
	(at plane1 city0)
	(fuel-level plane1 fl3)
	(at plane2 city6)
	(fuel-level plane2 fl4)
	(at plane3 city5)
	(fuel-level plane3 fl2)
	(at person1 city5)
	(at person2 city1)
	(at person3 city9)
	(at person4 city6)
	(at person5 city0)
	(at person6 city7)
	(at person7 city1)
	(at person8 city7)
	(at person9 city8)
	(at person10 city5)
	(at person11 city3)
	(at person12 city9)
	(at person13 city8)
	(at person14 city5)
	(at person15 city1)
	(at person16 city1)
	(at person17 city4)
	(next fl0 fl1)
	(next fl1 fl2)
	(next fl2 fl3)
	(next fl3 fl4)
	(next fl4 fl5)
	(next fl5 fl6)
)
(:goal (and
	(at plane1 city0)
	(at plane2 city0)
	(at plane3 city5)
	(at person1 city3)
	(at person2 city5)
	(at person3 city9)
	(at person4 city0)
	(at person5 city0)
	(at person6 city4)
	(at person7 city1)
	(at person8 city9)
	(at person9 city3)
	(at person10 city7)
	(at person11 city3)
	(at person12 city4)
	(at person13 city4)
	(at person14 city0)
	(at person15 city1)
	(at person16 city9)
	(at person17 city0)
	))

)
