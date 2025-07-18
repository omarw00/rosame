(define (problem depotprob7) (:domain Depot)
(:objects
	depot0 depot1 depot2 - Depot
	distributor0 distributor1 distributor2 - Distributor
	truck0 truck1 - Truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 pallet7 pallet8 pallet9 pallet10 pallet11 pallet12 pallet13 pallet14 - Pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 crate12 - Crate
	hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 hoist6 hoist7 hoist8 hoist9 hoist10 hoist11 hoist12 hoist13 - Hoist)
(:init
	(at pallet0 depot0)
	(clear pallet0)
	(at pallet1 depot1)
	(clear pallet1)
	(at pallet2 depot2)
	(clear pallet2)
	(at pallet3 distributor0)
	(clear pallet3)
	(at pallet4 distributor1)
	(clear crate2)
	(at pallet5 distributor2)
	(clear pallet5)
	(at pallet6 depot1)
	(clear pallet6)
	(at pallet7 depot1)
	(clear crate7)
	(at pallet8 depot1)
	(clear crate9)
	(at pallet9 distributor2)
	(clear crate10)
	(at pallet10 distributor1)
	(clear crate11)
	(at pallet11 distributor2)
	(clear crate3)
	(at pallet12 depot0)
	(clear crate8)
	(at pallet13 depot2)
	(clear crate12)
	(at pallet14 distributor2)
	(clear crate0)
	(at truck0 depot1)
	(at truck1 distributor2)
	(at hoist0 depot0)
	(available hoist0)
	(at hoist1 depot1)
	(available hoist1)
	(at hoist2 depot2)
	(available hoist2)
	(at hoist3 distributor0)
	(available hoist3)
	(at hoist4 distributor1)
	(available hoist4)
	(at hoist5 distributor2)
	(available hoist5)
	(at hoist6 distributor0)
	(available hoist6)
	(at hoist7 depot1)
	(available hoist7)
	(at hoist8 depot2)
	(available hoist8)
	(at hoist9 depot0)
	(available hoist9)
	(at hoist10 distributor1)
	(available hoist10)
	(at hoist11 depot1)
	(available hoist11)
	(at hoist12 distributor2)
	(available hoist12)
	(at hoist13 depot1)
	(available hoist13)
	(at crate0 distributor2)
	(on crate0 pallet14)
	(at crate1 distributor2)
	(on crate1 pallet9)
	(at crate2 distributor1)
	(on crate2 pallet4)
	(at crate3 distributor2)
	(on crate3 pallet11)
	(at crate4 distributor2)
	(on crate4 crate1)
	(at crate5 depot1)
	(on crate5 pallet8)
	(at crate6 distributor2)
	(on crate6 crate4)
	(at crate7 depot1)
	(on crate7 pallet7)
	(at crate8 depot0)
	(on crate8 pallet12)
	(at crate9 depot1)
	(on crate9 crate5)
	(at crate10 distributor2)
	(on crate10 crate6)
	(at crate11 distributor1)
	(on crate11 pallet10)
	(at crate12 depot2)
	(on crate12 pallet13)
)

(:goal (and
		(on crate0 pallet7)
		(on crate1 crate9)
		(on crate2 pallet1)
		(on crate4 crate8)
		(on crate5 pallet8)
		(on crate6 pallet12)
		(on crate7 crate2)
		(on crate8 pallet9)
		(on crate9 pallet3)
		(on crate10 pallet10)
		(on crate11 crate12)
		(on crate12 pallet13)
	)
))
