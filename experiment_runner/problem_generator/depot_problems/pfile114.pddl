(define (problem depotprob82) (:domain Depot)
(:objects
	depot0 depot1 depot2 - Depot
	distributor0 distributor1 distributor2 - Distributor
	truck0 truck1 - Truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 - Pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 crate12 crate13 crate14 crate15 crate16 crate17 crate18 crate19 crate20 crate21 crate22 crate23 - Crate
	hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 hoist6 hoist7 hoist8 hoist9 hoist10 hoist11 - Hoist)
(:init
	(at pallet0 depot0)
	(clear crate20)
	(at pallet1 depot1)
	(clear crate22)
	(at pallet2 depot2)
	(clear crate19)
	(at pallet3 distributor0)
	(clear crate17)
	(at pallet4 distributor1)
	(clear crate23)
	(at pallet5 distributor2)
	(clear crate21)
	(at truck0 depot1)
	(at truck1 depot1)
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
	(at hoist6 depot0)
	(available hoist6)
	(at hoist7 distributor2)
	(available hoist7)
	(at hoist8 distributor2)
	(available hoist8)
	(at hoist9 distributor1)
	(available hoist9)
	(at hoist10 distributor1)
	(available hoist10)
	(at hoist11 depot2)
	(available hoist11)
	(at crate0 depot0)
	(on crate0 pallet0)
	(at crate1 depot0)
	(on crate1 crate0)
	(at crate2 distributor2)
	(on crate2 pallet5)
	(at crate3 depot0)
	(on crate3 crate1)
	(at crate4 depot0)
	(on crate4 crate3)
	(at crate5 distributor2)
	(on crate5 crate2)
	(at crate6 depot2)
	(on crate6 pallet2)
	(at crate7 depot1)
	(on crate7 pallet1)
	(at crate8 distributor1)
	(on crate8 pallet4)
	(at crate9 distributor2)
	(on crate9 crate5)
	(at crate10 depot2)
	(on crate10 crate6)
	(at crate11 distributor0)
	(on crate11 pallet3)
	(at crate12 depot0)
	(on crate12 crate4)
	(at crate13 distributor1)
	(on crate13 crate8)
	(at crate14 depot1)
	(on crate14 crate7)
	(at crate15 depot2)
	(on crate15 crate10)
	(at crate16 distributor1)
	(on crate16 crate13)
	(at crate17 distributor0)
	(on crate17 crate11)
	(at crate18 depot2)
	(on crate18 crate15)
	(at crate19 depot2)
	(on crate19 crate18)
	(at crate20 depot0)
	(on crate20 crate12)
	(at crate21 distributor2)
	(on crate21 crate9)
	(at crate22 depot1)
	(on crate22 crate14)
	(at crate23 distributor1)
	(on crate23 crate16)
)

(:goal (and
		(on crate0 crate12)
		(on crate1 crate9)
		(on crate2 pallet0)
		(on crate3 crate13)
		(on crate5 crate19)
		(on crate6 crate11)
		(on crate8 crate14)
		(on crate9 pallet2)
		(on crate10 crate6)
		(on crate11 crate0)
		(on crate12 pallet5)
		(on crate13 crate8)
		(on crate14 pallet3)
		(on crate15 pallet4)
		(on crate16 crate5)
		(on crate17 crate2)
		(on crate18 crate20)
		(on crate19 crate3)
		(on crate20 crate21)
		(on crate21 crate17)
	)
))
