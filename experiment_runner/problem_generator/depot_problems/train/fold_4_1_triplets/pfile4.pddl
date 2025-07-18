(define (problem depotprob55) (:domain Depot)
(:objects
	depot0 depot1 depot2 - Depot
	distributor0 distributor1 distributor2 - Distributor
	truck0 truck1 - Truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 - Pallet
	crate0 crate1 - Crate
	hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 hoist6 hoist7 - Hoist)
(:init
	(at pallet0 depot0)
	(clear pallet0)
	(at pallet1 depot1)
	(clear crate0)
	(at pallet2 depot2)
	(clear pallet2)
	(at pallet3 distributor0)
	(clear crate1)
	(at pallet4 distributor1)
	(clear pallet4)
	(at pallet5 distributor2)
	(clear pallet5)
	(at pallet6 depot1)
	(clear pallet6)
	(at truck0 distributor0)
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
	(at hoist6 depot2)
	(available hoist6)
	(at hoist7 depot2)
	(available hoist7)
	(at crate0 depot1)
	(on crate0 pallet1)
	(at crate1 distributor0)
	(on crate1 pallet3)
)

(:goal (and
		(on crate0 pallet0)
		(on crate1 crate0)
	)
))
