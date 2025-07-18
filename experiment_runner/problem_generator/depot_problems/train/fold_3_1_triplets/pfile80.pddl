(define (problem depotprob55) (:domain Depot)
(:objects
	depot0 depot1 depot2 - Depot
	distributor0 distributor1 distributor2 - Distributor
	truck0 truck1 - Truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 pallet7 pallet8 pallet9 pallet10 pallet11 - Pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 crate12 crate13 crate14 crate15 crate16 crate17 crate18 crate19 crate20 crate21 crate22 crate23 - Crate
	hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 hoist6 hoist7 hoist8 hoist9 hoist10 hoist11 hoist12 hoist13 hoist14 - Hoist)
(:init
	(at pallet0 depot0)
	(clear crate23)
	(at pallet1 depot1)
	(clear crate3)
	(at pallet2 depot2)
	(clear crate13)
	(at pallet3 distributor0)
	(clear crate19)
	(at pallet4 distributor1)
	(clear crate1)
	(at pallet5 distributor2)
	(clear pallet5)
	(at pallet6 distributor2)
	(clear crate10)
	(at pallet7 distributor0)
	(clear crate20)
	(at pallet8 depot0)
	(clear crate22)
	(at pallet9 depot2)
	(clear pallet9)
	(at pallet10 depot1)
	(clear crate21)
	(at pallet11 depot2)
	(clear crate17)
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
	(at hoist8 depot0)
	(available hoist8)
	(at hoist9 distributor0)
	(available hoist9)
	(at hoist10 distributor0)
	(available hoist10)
	(at hoist11 depot1)
	(available hoist11)
	(at hoist12 depot0)
	(available hoist12)
	(at hoist13 distributor0)
	(available hoist13)
	(at hoist14 depot0)
	(available hoist14)
	(at crate0 distributor0)
	(on crate0 pallet7)
	(at crate1 distributor1)
	(on crate1 pallet4)
	(at crate2 distributor0)
	(on crate2 pallet3)
	(at crate3 depot1)
	(on crate3 pallet1)
	(at crate4 depot1)
	(on crate4 pallet10)
	(at crate5 distributor0)
	(on crate5 crate2)
	(at crate6 depot0)
	(on crate6 pallet8)
	(at crate7 distributor0)
	(on crate7 crate5)
	(at crate8 depot2)
	(on crate8 pallet2)
	(at crate9 depot2)
	(on crate9 crate8)
	(at crate10 distributor2)
	(on crate10 pallet6)
	(at crate11 depot1)
	(on crate11 crate4)
	(at crate12 distributor0)
	(on crate12 crate7)
	(at crate13 depot2)
	(on crate13 crate9)
	(at crate14 depot0)
	(on crate14 crate6)
	(at crate15 distributor0)
	(on crate15 crate0)
	(at crate16 depot1)
	(on crate16 crate11)
	(at crate17 depot2)
	(on crate17 pallet11)
	(at crate18 distributor0)
	(on crate18 crate12)
	(at crate19 distributor0)
	(on crate19 crate18)
	(at crate20 distributor0)
	(on crate20 crate15)
	(at crate21 depot1)
	(on crate21 crate16)
	(at crate22 depot0)
	(on crate22 crate14)
	(at crate23 depot0)
	(on crate23 pallet0)
)

(:goal (and
		(on crate0 pallet6)
		(on crate1 crate16)
		(on crate2 crate17)
		(on crate3 crate7)
		(on crate4 pallet1)
		(on crate5 crate20)
		(on crate6 pallet11)
		(on crate7 pallet9)
		(on crate9 pallet5)
		(on crate10 pallet8)
		(on crate11 crate1)
		(on crate12 crate2)
		(on crate13 pallet3)
		(on crate14 crate11)
		(on crate16 pallet2)
		(on crate17 crate10)
		(on crate18 pallet10)
		(on crate20 pallet7)
		(on crate21 pallet0)
		(on crate22 crate3)
	)
))
