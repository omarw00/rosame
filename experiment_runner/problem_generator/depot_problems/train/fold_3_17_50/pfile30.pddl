(define (problem depotprob26) (:domain Depot)
(:objects
	depot0 depot1 depot2 - Depot
	distributor0 distributor1 distributor2 - Distributor
	truck0 truck1 - Truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 pallet7 pallet8 pallet9 pallet10 pallet11 pallet12 pallet13 pallet14 - Pallet
	crate0 crate1 crate2 - Crate
	hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 hoist6 hoist7 hoist8 hoist9 hoist10 hoist11 - Hoist)
(:init
	(at pallet0 depot0)
	(clear crate1)
	(at pallet1 depot1)
	(clear pallet1)
	(at pallet2 depot2)
	(clear pallet2)
	(at pallet3 distributor0)
	(clear pallet3)
	(at pallet4 distributor1)
	(clear pallet4)
	(at pallet5 distributor2)
	(clear crate2)
	(at pallet6 distributor0)
	(clear crate0)
	(at pallet7 distributor1)
	(clear pallet7)
	(at pallet8 distributor1)
	(clear pallet8)
	(at pallet9 distributor0)
	(clear pallet9)
	(at pallet10 depot0)
	(clear pallet10)
	(at pallet11 distributor2)
	(clear pallet11)
	(at pallet12 depot2)
	(clear pallet12)
	(at pallet13 distributor0)
	(clear pallet13)
	(at pallet14 distributor0)
	(clear pallet14)
	(at truck0 distributor2)
	(at truck1 depot2)
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
	(at hoist7 depot0)
	(available hoist7)
	(at hoist8 distributor2)
	(available hoist8)
	(at hoist9 distributor1)
	(available hoist9)
	(at hoist10 depot2)
	(available hoist10)
	(at hoist11 distributor2)
	(available hoist11)
	(at crate0 distributor0)
	(on crate0 pallet6)
	(at crate1 depot0)
	(on crate1 pallet0)
	(at crate2 distributor2)
	(on crate2 pallet5)
)

(:goal (and
		(on crate0 pallet8)
		(on crate1 pallet5)
		(on crate2 pallet10)
	)
))
