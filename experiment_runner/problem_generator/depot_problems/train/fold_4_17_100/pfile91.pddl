(define (problem depotprob84) (:domain Depot)
(:objects
	depot0 depot1 depot2 - Depot
	distributor0 distributor1 distributor2 - Distributor
	truck0 truck1 - Truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 pallet7 pallet8 pallet9 pallet10 pallet11 pallet12 - Pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 crate12 - Crate
	hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 hoist6 hoist7 hoist8 - Hoist)
(:init
	(at pallet0 depot0)
	(clear crate12)
	(at pallet1 depot1)
	(clear crate3)
	(at pallet2 depot2)
	(clear crate6)
	(at pallet3 distributor0)
	(clear pallet3)
	(at pallet4 distributor1)
	(clear pallet4)
	(at pallet5 distributor2)
	(clear crate8)
	(at pallet6 depot2)
	(clear pallet6)
	(at pallet7 distributor2)
	(clear pallet7)
	(at pallet8 distributor0)
	(clear crate2)
	(at pallet9 depot0)
	(clear crate11)
	(at pallet10 distributor0)
	(clear crate4)
	(at pallet11 depot1)
	(clear crate1)
	(at pallet12 depot2)
	(clear crate9)
	(at truck0 distributor0)
	(at truck1 distributor1)
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
	(at hoist7 distributor0)
	(available hoist7)
	(at hoist8 distributor0)
	(available hoist8)
	(at crate0 depot1)
	(on crate0 pallet11)
	(at crate1 depot1)
	(on crate1 crate0)
	(at crate2 distributor0)
	(on crate2 pallet8)
	(at crate3 depot1)
	(on crate3 pallet1)
	(at crate4 distributor0)
	(on crate4 pallet10)
	(at crate5 depot0)
	(on crate5 pallet0)
	(at crate6 depot2)
	(on crate6 pallet2)
	(at crate7 depot0)
	(on crate7 crate5)
	(at crate8 distributor2)
	(on crate8 pallet5)
	(at crate9 depot2)
	(on crate9 pallet12)
	(at crate10 depot0)
	(on crate10 pallet9)
	(at crate11 depot0)
	(on crate11 crate10)
	(at crate12 depot0)
	(on crate12 crate7)
)

(:goal (and
		(on crate0 crate2)
		(on crate1 crate5)
		(on crate2 pallet10)
		(on crate3 crate9)
		(on crate4 crate8)
		(on crate5 pallet4)
		(on crate6 pallet0)
		(on crate8 pallet7)
		(on crate9 pallet9)
		(on crate10 pallet6)
		(on crate12 crate6)
	)
))
