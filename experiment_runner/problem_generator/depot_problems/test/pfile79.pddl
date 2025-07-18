(define (problem depotprob89) (:domain depot)
(:objects
	depot0 depot1 depot2 - depot
	distributor0 distributor1 distributor2 - distributor
	truck0 truck1 - truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 pallet7 pallet8 pallet9 - pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 crate12 crate13 crate14 crate15 crate16 crate17 crate18 crate19 crate20 crate21 crate22 crate23 crate24 crate25 crate26 crate27 crate28 crate29 - crate
	hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 hoist6 hoist7 hoist8 hoist9 hoist10 hoist11 hoist12 hoist13 hoist14 - hoist)
(:init
	(at pallet0 depot0)
	(clear crate13)
	(at pallet1 depot1)
	(clear crate26)
	(at pallet2 depot2)
	(clear crate23)
	(at pallet3 distributor0)
	(clear crate29)
	(at pallet4 distributor1)
	(clear crate24)
	(at pallet5 distributor2)
	(clear crate21)
	(at pallet6 depot0)
	(clear crate22)
	(at pallet7 distributor0)
	(clear pallet7)
	(at pallet8 depot0)
	(clear crate27)
	(at pallet9 distributor1)
	(clear crate28)
	(at truck0 distributor1)
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
	(at hoist6 distributor2)
	(available hoist6)
	(at hoist7 depot2)
	(available hoist7)
	(at hoist8 distributor0)
	(available hoist8)
	(at hoist9 distributor1)
	(available hoist9)
	(at hoist10 distributor0)
	(available hoist10)
	(at hoist11 distributor2)
	(available hoist11)
	(at hoist12 depot0)
	(available hoist12)
	(at hoist13 depot1)
	(available hoist13)
	(at hoist14 distributor1)
	(available hoist14)
	(at crate0 depot0)
	(on crate0 pallet0)
	(at crate1 distributor1)
	(on crate1 pallet4)
	(at crate2 distributor1)
	(on crate2 crate1)
	(at crate3 distributor0)
	(on crate3 pallet3)
	(at crate4 depot0)
	(on crate4 pallet6)
	(at crate5 depot0)
	(on crate5 crate0)
	(at crate6 depot1)
	(on crate6 pallet1)
	(at crate7 depot0)
	(on crate7 crate4)
	(at crate8 distributor1)
	(on crate8 pallet9)
	(at crate9 depot0)
	(on crate9 crate7)
	(at crate10 distributor1)
	(on crate10 crate2)
	(at crate11 depot0)
	(on crate11 pallet8)
	(at crate12 depot0)
	(on crate12 crate11)
	(at crate13 depot0)
	(on crate13 crate5)
	(at crate14 depot0)
	(on crate14 crate12)
	(at crate15 distributor1)
	(on crate15 crate8)
	(at crate16 depot0)
	(on crate16 crate14)
	(at crate17 depot0)
	(on crate17 crate9)
	(at crate18 depot2)
	(on crate18 pallet2)
	(at crate19 depot0)
	(on crate19 crate16)
	(at crate20 depot1)
	(on crate20 crate6)
	(at crate21 distributor2)
	(on crate21 pallet5)
	(at crate22 depot0)
	(on crate22 crate17)
	(at crate23 depot2)
	(on crate23 crate18)
	(at crate24 distributor1)
	(on crate24 crate10)
	(at crate25 distributor0)
	(on crate25 crate3)
	(at crate26 depot1)
	(on crate26 crate20)
	(at crate27 depot0)
	(on crate27 crate19)
	(at crate28 distributor1)
	(on crate28 crate15)
	(at crate29 distributor0)
	(on crate29 crate25)
)

(:goal (and
		(on crate0 pallet2)
		(on crate1 crate16)
		(on crate2 pallet3)
		(on crate3 crate24)
		(on crate4 crate11)
		(on crate5 crate9)
		(on crate6 pallet5)
		(on crate7 crate29)
		(on crate8 pallet4)
		(on crate9 crate3)
		(on crate10 pallet9)
		(on crate11 pallet6)
		(on crate12 crate13)
		(on crate13 crate17)
		(on crate15 crate18)
		(on crate16 crate0)
		(on crate17 pallet8)
		(on crate18 crate23)
		(on crate20 crate27)
		(on crate21 crate12)
		(on crate22 crate8)
		(on crate23 pallet7)
		(on crate24 pallet0)
		(on crate25 crate5)
		(on crate26 crate1)
		(on crate27 pallet1)
		(on crate28 crate2)
		(on crate29 crate10)
	)
))
