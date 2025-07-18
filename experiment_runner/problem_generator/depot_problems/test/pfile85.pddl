(define (problem depotprob28) (:domain Depot)
(:objects
	depot0 depot1 depot2 - Depot
	distributor0 distributor1 distributor2 - Distributor
	truck0 truck1 - Truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 pallet7 pallet8 pallet9 pallet10 pallet11 - Pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 - Crate
	hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 hoist6 hoist7 hoist8 - Hoist)
(:init
	(at pallet0 depot0)
	(clear crate0)
	(at pallet1 depot1)
	(clear crate2)
	(at pallet2 depot2)
	(clear pallet2)
	(at pallet3 distributor0)
	(clear crate9)
	(at pallet4 distributor1)
	(clear pallet4)
	(at pallet5 distributor2)
	(clear pallet5)
	(at pallet6 depot0)
	(clear pallet6)
	(at pallet7 distributor2)
	(clear crate5)
	(at pallet8 distributor1)
	(clear crate8)
	(at pallet9 depot1)
	(clear crate7)
	(at pallet10 depot1)
	(clear crate3)
	(at pallet11 depot0)
	(clear pallet11)
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
	(at hoist7 depot1)
	(available hoist7)
	(at hoist8 distributor2)
	(available hoist8)
	(at crate0 depot0)
	(on crate0 pallet0)
	(at crate1 distributor0)
	(on crate1 pallet3)
	(at crate2 depot1)
	(on crate2 pallet1)
	(at crate3 depot1)
	(on crate3 pallet10)
	(at crate4 distributor0)
	(on crate4 crate1)
	(at crate5 distributor2)
	(on crate5 pallet7)
	(at crate6 distributor0)
	(on crate6 crate4)
	(at crate7 depot1)
	(on crate7 pallet9)
	(at crate8 distributor1)
	(on crate8 pallet8)
	(at crate9 distributor0)
	(on crate9 crate6)
)

(:goal (and
		(on crate0 pallet0)
		(on crate1 crate0)
		(on crate2 pallet8)
		(on crate3 pallet2)
		(on crate4 pallet3)
		(on crate5 pallet11)
		(on crate7 crate3)
		(on crate8 pallet4)
		(on crate9 crate5)
	)
))
