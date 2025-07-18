(define (problem depotprob61) (:domain Depot)
(:objects
	depot0 depot1 depot2 - Depot
	distributor0 distributor1 distributor2 - Distributor
	truck0 truck1 - Truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 pallet7 pallet8 pallet9 pallet10 pallet11 pallet12 pallet13 - Pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 crate12 crate13 crate14 crate15 crate16 crate17 crate18 crate19 crate20 crate21 crate22 crate23 crate24 crate25 crate26 - Crate
	hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 hoist6 hoist7 hoist8 hoist9 - Hoist)
(:init
	(at pallet0 depot0)
	(clear crate26)
	(at pallet1 depot1)
	(clear crate25)
	(at pallet2 depot2)
	(clear pallet2)
	(at pallet3 distributor0)
	(clear pallet3)
	(at pallet4 distributor1)
	(clear pallet4)
	(at pallet5 distributor2)
	(clear crate21)
	(at pallet6 distributor2)
	(clear crate13)
	(at pallet7 depot0)
	(clear crate10)
	(at pallet8 depot1)
	(clear crate16)
	(at pallet9 depot2)
	(clear crate20)
	(at pallet10 distributor1)
	(clear crate23)
	(at pallet11 distributor0)
	(clear crate24)
	(at pallet12 distributor2)
	(clear pallet12)
	(at pallet13 distributor0)
	(clear crate9)
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
	(at hoist7 depot0)
	(available hoist7)
	(at hoist8 depot0)
	(available hoist8)
	(at hoist9 distributor0)
	(available hoist9)
	(at crate0 distributor2)
	(on crate0 pallet5)
	(at crate1 distributor1)
	(on crate1 pallet10)
	(at crate2 depot1)
	(on crate2 pallet8)
	(at crate3 distributor0)
	(on crate3 pallet11)
	(at crate4 distributor1)
	(on crate4 crate1)
	(at crate5 distributor1)
	(on crate5 crate4)
	(at crate6 depot0)
	(on crate6 pallet0)
	(at crate7 distributor0)
	(on crate7 crate3)
	(at crate8 depot0)
	(on crate8 pallet7)
	(at crate9 distributor0)
	(on crate9 pallet13)
	(at crate10 depot0)
	(on crate10 crate8)
	(at crate11 distributor2)
	(on crate11 pallet6)
	(at crate12 depot1)
	(on crate12 crate2)
	(at crate13 distributor2)
	(on crate13 crate11)
	(at crate14 distributor0)
	(on crate14 crate7)
	(at crate15 depot1)
	(on crate15 pallet1)
	(at crate16 depot1)
	(on crate16 crate12)
	(at crate17 distributor0)
	(on crate17 crate14)
	(at crate18 distributor2)
	(on crate18 crate0)
	(at crate19 distributor0)
	(on crate19 crate17)
	(at crate20 depot2)
	(on crate20 pallet9)
	(at crate21 distributor2)
	(on crate21 crate18)
	(at crate22 depot0)
	(on crate22 crate6)
	(at crate23 distributor1)
	(on crate23 crate5)
	(at crate24 distributor0)
	(on crate24 crate19)
	(at crate25 depot1)
	(on crate25 crate15)
	(at crate26 depot0)
	(on crate26 crate22)
)

(:goal (and
		(on crate0 crate22)
		(on crate1 pallet8)
		(on crate2 crate11)
		(on crate3 crate1)
		(on crate4 pallet10)
		(on crate5 pallet1)
		(on crate6 crate18)
		(on crate7 pallet9)
		(on crate9 crate17)
		(on crate10 pallet11)
		(on crate11 crate15)
		(on crate12 crate10)
		(on crate13 pallet7)
		(on crate14 crate16)
		(on crate15 pallet3)
		(on crate16 pallet0)
		(on crate17 pallet13)
		(on crate18 crate12)
		(on crate20 pallet6)
		(on crate21 crate13)
		(on crate22 pallet4)
		(on crate23 pallet5)
		(on crate24 crate20)
		(on crate26 pallet12)
	)
))
