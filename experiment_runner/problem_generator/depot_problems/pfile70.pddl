(define (problem depotprob76) (:domain Depot)
(:objects
	depot0 depot1 depot2 - Depot
	distributor0 distributor1 distributor2 - Distributor
	truck0 truck1 - Truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 pallet7 pallet8 pallet9 pallet10 pallet11 - Pallet
	crate0 crate1 crate2 crate3 crate4 - Crate
	hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 hoist6 hoist7 hoist8 hoist9 hoist10 hoist11 hoist12 hoist13 hoist14 - Hoist)
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
	(clear crate0)
	(at pallet6 distributor1)
	(clear pallet6)
	(at pallet7 distributor2)
	(clear crate4)
	(at pallet8 depot1)
	(clear pallet8)
	(at pallet9 distributor1)
	(clear crate2)
	(at pallet10 distributor0)
	(clear pallet10)
	(at pallet11 distributor0)
	(clear pallet11)
	(at truck0 distributor2)
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
	(at hoist6 distributor2)
	(available hoist6)
	(at hoist7 depot1)
	(available hoist7)
	(at hoist8 distributor0)
	(available hoist8)
	(at hoist9 distributor2)
	(available hoist9)
	(at hoist10 depot2)
	(available hoist10)
	(at hoist11 depot2)
	(available hoist11)
	(at hoist12 distributor1)
	(available hoist12)
	(at hoist13 distributor1)
	(available hoist13)
	(at hoist14 distributor0)
	(available hoist14)
	(at crate0 distributor2)
	(on crate0 pallet5)
	(at crate1 depot0)
	(on crate1 pallet0)
	(at crate2 distributor1)
	(on crate2 pallet9)
	(at crate3 distributor2)
	(on crate3 pallet7)
	(at crate4 distributor2)
	(on crate4 crate3)
)

(:goal (and
		(on crate0 pallet4)
		(on crate1 pallet10)
		(on crate3 pallet5)
		(on crate4 pallet9)
	)
))
