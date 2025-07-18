(define (problem depotprob46) (:domain Depot)
(:objects
	depot0 depot1 depot2 - Depot
	distributor0 distributor1 distributor2 - Distributor
	truck0 truck1 - Truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 pallet7 pallet8 pallet9 pallet10 pallet11 pallet12 pallet13 - Pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 crate12 crate13 crate14 crate15 crate16 crate17 crate18 crate19 crate20 crate21 - Crate
	hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 hoist6 hoist7 hoist8 - Hoist)
(:init
	(at pallet0 depot0)
	(clear crate8)
	(at pallet1 depot1)
	(clear crate18)
	(at pallet2 depot2)
	(clear crate3)
	(at pallet3 distributor0)
	(clear crate15)
	(at pallet4 distributor1)
	(clear crate14)
	(at pallet5 distributor2)
	(clear crate4)
	(at pallet6 distributor1)
	(clear crate12)
	(at pallet7 depot1)
	(clear pallet7)
	(at pallet8 depot1)
	(clear crate21)
	(at pallet9 depot0)
	(clear crate20)
	(at pallet10 distributor0)
	(clear crate16)
	(at pallet11 distributor0)
	(clear crate11)
	(at pallet12 depot2)
	(clear crate10)
	(at pallet13 distributor2)
	(clear pallet13)
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
	(at hoist6 distributor1)
	(available hoist6)
	(at hoist7 distributor0)
	(available hoist7)
	(at hoist8 depot0)
	(available hoist8)
	(at crate0 distributor1)
	(on crate0 pallet6)
	(at crate1 depot1)
	(on crate1 pallet1)
	(at crate2 depot1)
	(on crate2 pallet8)
	(at crate3 depot2)
	(on crate3 pallet2)
	(at crate4 distributor2)
	(on crate4 pallet5)
	(at crate5 depot0)
	(on crate5 pallet0)
	(at crate6 distributor1)
	(on crate6 pallet4)
	(at crate7 depot1)
	(on crate7 crate1)
	(at crate8 depot0)
	(on crate8 crate5)
	(at crate9 distributor1)
	(on crate9 crate0)
	(at crate10 depot2)
	(on crate10 pallet12)
	(at crate11 distributor0)
	(on crate11 pallet11)
	(at crate12 distributor1)
	(on crate12 crate9)
	(at crate13 distributor0)
	(on crate13 pallet10)
	(at crate14 distributor1)
	(on crate14 crate6)
	(at crate15 distributor0)
	(on crate15 pallet3)
	(at crate16 distributor0)
	(on crate16 crate13)
	(at crate17 depot0)
	(on crate17 pallet9)
	(at crate18 depot1)
	(on crate18 crate7)
	(at crate19 depot0)
	(on crate19 crate17)
	(at crate20 depot0)
	(on crate20 crate19)
	(at crate21 depot1)
	(on crate21 crate2)
)

(:goal (and
		(on crate0 pallet8)
		(on crate1 crate10)
		(on crate2 pallet0)
		(on crate3 crate11)
		(on crate4 pallet2)
		(on crate5 crate14)
		(on crate6 crate12)
		(on crate7 crate8)
		(on crate8 pallet10)
		(on crate9 crate16)
		(on crate10 pallet13)
		(on crate11 pallet7)
		(on crate12 pallet12)
		(on crate13 pallet9)
		(on crate14 crate0)
		(on crate15 pallet1)
		(on crate16 pallet4)
		(on crate18 crate5)
		(on crate19 crate20)
		(on crate20 pallet11)
		(on crate21 crate9)
	)
))
