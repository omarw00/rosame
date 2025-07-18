(define (problem ZTRAVEL-4-22)
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
	person15 - person
	person16 - person
	person17 - person
	person18 - person
	person19 - person
	person20 - person
	person21 - person
	person22 - person
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
	city22 - city
	city23 - city
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
	(fuel-level plane1 fl0)
	(at plane2 city18)
	(fuel-level plane2 fl5)
	(at plane3 city19)
	(fuel-level plane3 fl5)
	(at plane4 city23)
	(fuel-level plane4 fl0)
	(at person1 city12)
	(at person2 city14)
	(at person3 city14)
	(at person4 city9)
	(at person5 city13)
	(at person6 city17)
	(at person7 city4)
	(at person8 city5)
	(at person9 city19)
	(at person10 city4)
	(at person11 city8)
	(at person12 city13)
	(at person13 city21)
	(at person14 city14)
	(at person15 city4)
	(at person16 city11)
	(at person17 city7)
	(at person18 city2)
	(at person19 city13)
	(at person20 city14)
	(at person21 city1)
	(at person22 city14)
	(next fl0 fl1)
	(next fl1 fl2)
	(next fl2 fl3)
	(next fl3 fl4)
	(next fl4 fl5)
	(next fl5 fl6)
)
(:goal (and
	(at person1 city3)
	(at person2 city12)
	(at person3 city15)
	(at person4 city7)
	(at person5 city6)
	(at person6 city6)
	(at person7 city8)
	(at person8 city3)
	(at person9 city1)
	(at person10 city10)
	(at person11 city22)
	(at person12 city13)
	(at person13 city4)
	(at person14 city14)
	(at person15 city3)
	(at person16 city21)
	(at person17 city1)
	(at person18 city7)
	(at person19 city2)
	(at person20 city7)
	(at person21 city15)
	(at person22 city5)
	))

)
