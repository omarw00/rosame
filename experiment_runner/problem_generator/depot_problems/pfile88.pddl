(define (problem depotprob79) (:domain Depot)
(:objects
	depot0 depot1 depot2 - Depot
	distributor0 distributor1 distributor2 - Distributor
	truck0 truck1 - Truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 - Pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 crate12 crate13 crate14 crate15 - Crate
	hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 hoist6 hoist7 hoist8 hoist9 hoist10 hoist11 hoist12 hoist13 - Hoist)
(:init
	(at pallet0 depot0)
	(clear crate13)
	(at pallet1 depot1)
	(clear crate9)
	(at pallet2 depot2)
	(clear pallet2)
	(at pallet3 distributor0)
	(clear crate11)
	(at pallet4 distributor1)
	(clear crate6)
	(at pallet5 distributor2)
	(clear crate15)
	(at pallet6 depot1)
	(clear crate10)
	(at truck0 depot2)
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
	(at hoist6 depot1)
	(available hoist6)
	(at hoist7 distributor2)
	(available hoist7)
	(at hoist8 depot0)
	(available hoist8)
	(at hoist9 depot2)
	(available hoist9)
	(at hoist10 distributor0)
	(available hoist10)
	(at hoist11 distributor0)
	(available hoist11)
	(at hoist12 distributor2)
	(available hoist12)
	(at hoist13 distributor1)
	(available hoist13)
	(at crate0 distributor2)
	(on crate0 pallet5)
	(at crate1 distributor1)
	(on crate1 pallet4)
	(at crate2 distributor1)
	(on crate2 crate1)
	(at crate3 depot0)
	(on crate3 pallet0)
	(at crate4 depot1)
	(on crate4 pallet6)
	(at crate5 depot1)
	(on crate5 pallet1)
	(at crate6 distributor1)
	(on crate6 crate2)
	(at crate7 distributor0)
	(on crate7 pallet3)
	(at crate8 distributor0)
	(on crate8 crate7)
	(at crate9 depot1)
	(on crate9 crate5)
	(at crate10 depot1)
	(on crate10 crate4)
	(at crate11 distributor0)
	(on crate11 crate8)
	(at crate12 depot0)
	(on crate12 crate3)
	(at crate13 depot0)
	(on crate13 crate12)
	(at crate14 distributor2)
	(on crate14 crate0)
	(at crate15 distributor2)
	(on crate15 crate14)
)

(:goal (and
		(on crate0 crate9)
		(on crate1 crate8)
		(on crate2 crate0)
		(on crate3 crate4)
		(on crate4 crate12)
		(on crate5 crate10)
		(on crate6 crate11)
		(on crate7 pallet0)
		(on crate8 pallet4)
		(on crate9 pallet2)
		(on crate10 pallet6)
		(on crate11 crate1)
		(on crate12 pallet3)
		(on crate13 crate5)
		(on crate14 crate6)
		(on crate15 pallet1)
	)
))
