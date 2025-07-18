(define (problem depotprob95) (:domain Depot)
(:objects
	depot0 depot1 depot2 - Depot
	distributor0 distributor1 distributor2 - Distributor
	truck0 truck1 - Truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 pallet7 pallet8 pallet9 pallet10 - Pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 - Crate
	hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 - Hoist)
(:init
	(at pallet0 depot0)
	(clear pallet0)
	(at pallet1 depot1)
	(clear pallet1)
	(at pallet2 depot2)
	(clear crate6)
	(at pallet3 distributor0)
	(clear crate3)
	(at pallet4 distributor1)
	(clear crate1)
	(at pallet5 distributor2)
	(clear pallet5)
	(at pallet6 depot0)
	(clear pallet6)
	(at pallet7 distributor2)
	(clear crate7)
	(at pallet8 distributor2)
	(clear crate8)
	(at pallet9 distributor0)
	(clear pallet9)
	(at pallet10 depot0)
	(clear pallet10)
	(at truck0 depot0)
	(at truck1 depot0)
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
	(at crate0 depot2)
	(on crate0 pallet2)
	(at crate1 distributor1)
	(on crate1 pallet4)
	(at crate2 depot2)
	(on crate2 crate0)
	(at crate3 distributor0)
	(on crate3 pallet3)
	(at crate4 depot2)
	(on crate4 crate2)
	(at crate5 depot2)
	(on crate5 crate4)
	(at crate6 depot2)
	(on crate6 crate5)
	(at crate7 distributor2)
	(on crate7 pallet7)
	(at crate8 distributor2)
	(on crate8 pallet8)
)

(:goal (and
		(on crate0 pallet2)
		(on crate1 pallet5)
		(on crate2 pallet0)
		(on crate3 crate8)
		(on crate4 pallet9)
		(on crate5 crate0)
		(on crate6 pallet4)
		(on crate7 pallet3)
		(on crate8 pallet8)
	)
))
