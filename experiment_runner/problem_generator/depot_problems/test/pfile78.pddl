(define (problem depotprob86) (:domain depot)
(:objects
	depot0 depot1 depot2 - depot
	distributor0 distributor1 distributor2 - distributor
	truck0 truck1 - truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 pallet7 pallet8 pallet9 pallet10 pallet11 pallet12 pallet13 - pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 - crate
	hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 hoist6 hoist7 hoist8 hoist9 hoist10 hoist11 hoist12 hoist13 - hoist)
(:init
	(at pallet0 depot0)
	(clear pallet0)
	(at pallet1 depot1)
	(clear pallet1)
	(at pallet2 depot2)
	(clear crate6)
	(at pallet3 distributor0)
	(clear pallet3)
	(at pallet4 distributor1)
	(clear pallet4)
	(at pallet5 distributor2)
	(clear crate5)
	(at pallet6 depot0)
	(clear pallet6)
	(at pallet7 depot0)
	(clear crate3)
	(at pallet8 depot2)
	(clear crate1)
	(at pallet9 depot2)
	(clear crate4)
	(at pallet10 depot0)
	(clear pallet10)
	(at pallet11 depot0)
	(clear pallet11)
	(at pallet12 distributor2)
	(clear crate7)
	(at pallet13 depot0)
	(clear pallet13)
	(at truck0 distributor1)
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
	(at hoist6 distributor1)
	(available hoist6)
	(at hoist7 distributor0)
	(available hoist7)
	(at hoist8 distributor2)
	(available hoist8)
	(at hoist9 depot0)
	(available hoist9)
	(at hoist10 depot0)
	(available hoist10)
	(at hoist11 depot0)
	(available hoist11)
	(at hoist12 depot0)
	(available hoist12)
	(at hoist13 distributor2)
	(available hoist13)
	(at crate0 depot2)
	(on crate0 pallet9)
	(at crate1 depot2)
	(on crate1 pallet8)
	(at crate2 depot0)
	(on crate2 pallet7)
	(at crate3 depot0)
	(on crate3 crate2)
	(at crate4 depot2)
	(on crate4 crate0)
	(at crate5 distributor2)
	(on crate5 pallet5)
	(at crate6 depot2)
	(on crate6 pallet2)
	(at crate7 distributor2)
	(on crate7 pallet12)
)

(:goal (and
		(on crate0 pallet11)
		(on crate2 pallet3)
		(on crate3 pallet10)
		(on crate5 pallet1)
		(on crate6 pallet4)
		(on crate7 pallet6)
	)
))
