(define (domain depot)
(:requirements :typing :fluents :negative-preconditions :equality)
(:types 	place locatable - object
	depot distributor - place
	truck hoist surface - locatable
	pallet crate - surface
)

(:predicates (at ?x - locatable ?y - place)
	(on ?x - crate ?y - surface)
	(in ?x - crate ?y - truck)
	(lifting ?x - hoist ?y - crate)
	(available ?x - hoist)
	(clear ?x - surface)
)

(:functions (load_limit ?t - truck)
	(current_load ?t - truck)
	(weight ?c - crate)
	(fuel-cost )
)

(:action drive
	:parameters (?x - truck ?y - place ?z - place)
	:precondition (and (at ?x ?y)
	(not (at ?x ?z))
	(<= (* (current_load ?x) -1) 0)
	(<= (+ (* (current_load ?x) 0.0062) (+ (* (load_limit ?x) -0.0382) (* (fuel-cost ) -0.9993))) -14.4754)
	(<= (+ (* (current_load ?x) 0.0077) (+ (* (load_limit ?x) 0.0454) (* (fuel-cost ) -0.9989))) 17.2090)
	(<= (+ (* (current_load ?x) 0.2046) (+ (* (load_limit ?x) 0.1819) (* (fuel-cost ) 0.9618))) 116.2991)
	(<= (+ (* (current_load ?x) 0.6160) (+ (* (load_limit ?x) -0.7857) (* (fuel-cost ) -0.0560))) -234.8252)
	(<= (+ (* (current_load ?x) 0.9815) (+ (* (fuel-cost ) -0.0892) (* (load_limit ?x) -0.1695))) 23.0826)
	(<= (+ (* (fuel-cost ) 0.0288) (+ (* (current_load ?x) 0.6043) (* (load_limit ?x) -0.7962))) -238.6783)
	(<= (+ (* (fuel-cost ) 0.0334) (+ (* (current_load ?x) 0.9896) (* (load_limit ?x) -0.1401))) 36.0673)
	(<= (+ (* (fuel-cost ) 0.0471) (+ (* (current_load ?x) 0.9886) (* (load_limit ?x) -0.1433))) 34.9614)
	(<= (+ (* (fuel-cost ) 0.4707) (+ (* (load_limit ?x) -0.6133) (* (current_load ?x) -0.6342))) -232.4520)
	(<= (+ (* (fuel-cost ) 0.8224) (+ (* (load_limit ?x) -0.5384) (* (current_load ?x) -0.1840))) -186.4585)
	(<= (+ (* (load_limit ?x) 0.0224) (+ (* (current_load ?x) 0.0146) (* (fuel-cost ) -0.9996))) 8.5042)
	(<= (+ (* (load_limit ?x) 0.9380) (+ (* (current_load ?x) -0.0562) (* (fuel-cost ) -0.3421))) 375.7906)
	(<= (+ (* (load_limit ?x) 0.9605) (+ (* (current_load ?x) -0.1187) (* (fuel-cost ) -0.2516))) 384.9219)
	(<= (+ (* (load_limit ?x) 0.9721) (+ (* (current_load ?x) -0.0380) (* (fuel-cost ) -0.2315))) 391.6061)
	(<= (+ (* (load_limit ?x) 0.9790) (+ (* (fuel-cost ) -0.1995) (* (current_load ?x) -0.0425))) 394.7565))
	:effect (and (at ?x ?z)
		(not (at ?x ?y))
(increase (fuel-cost ) 10)))

(:action lift
	:parameters (?x - hoist ?y - crate ?z - surface ?p - place)
	:precondition (and (at ?x ?p)
	(at ?y ?p)
	(at ?z ?p)
	(available ?x)
	(clear ?y)
	(not (clear ?z))
	(not (lifting ?x ?y))
	(on ?y ?z)
	(<= (* (fuel-cost ) -1) 0)
	(<= (+ (* (fuel-cost ) -0.6247) (* (weight ?y) -0.7809)) -7.6525)
	(<= (+ (* (fuel-cost ) -0.9996) (* (weight ?y) -0.0278)) -1.2495)
	(<= (+ (* (fuel-cost ) 0.3162) (* (weight ?y) -0.9487)) 2.5298)
	(<= (+ (* (fuel-cost ) 0.9988) (* (weight ?y) -0.0487)) 52.2062)
	(<= (+ (* (weight ?y) 0.6557) (* (fuel-cost ) 0.7550)) 78.2453)
	(<= (weight ?y) 94))
	:effect (and (clear ?z)
		(lifting ?x ?y)
		(not (at ?y ?p))
		(not (available ?x))
		(not (clear ?y))
		(not (on ?y ?z))
(increase (fuel-cost ) 1)))

(:action drop
	:parameters (?x - hoist ?y - crate ?z - surface ?p - place)
	:precondition (and (at ?x ?p)
	(at ?z ?p)
	(clear ?z)
	(lifting ?x ?y)
	(not (at ?y ?p))
	(not (available ?x))
	(not (clear ?y))
	(not (on ?y ?z))
	(<= (+ (* (fuel-cost ) -0.1829) (* (weight ?y) -0.9831)) -11.2260)
	(<= (+ (* (weight ?y) -0.1465) (* (fuel-cost ) -0.9892)) -14.1786)
	(<= (+ (* (weight ?y) 0.3237) (* (fuel-cost ) 0.9462)) 71.1117)
	(<= (+ (* (weight ?y) 0.9852) (* (fuel-cost ) -0.1713)) 88.4977)
	(<= (fuel-cost ) 56)
	(<= (weight ?y) 94))
	:effect (and (at ?y ?p)
		(available ?x)
		(clear ?y)
		(not (clear ?z))
		(not (lifting ?x ?y))
		(on ?y ?z) 
		))

(:action load
	:parameters (?x - hoist ?y - crate ?z - truck ?p - place)
	:precondition (and (at ?x ?p)
	(at ?z ?p)
	(lifting ?x ?y)
	(not (at ?y ?p))
	(not (available ?x))
	(not (clear ?y))
	(not (in ?y ?z))
	(<= (* (current_load ?z) -1) 0)
	(<= (+ (* (current_load ?z) -0.0998) (+ (* (fuel-cost ) -0.1261) (+ (* (weight ?y) -0.9839) (* (load_limit ?z) -0.0780)))) -39.7962)
	(<= (+ (* (current_load ?z) 0.0253) (+ (* (load_limit ?z) 0.9965) (+ (* (fuel-cost ) -0.0755) (* (weight ?y) -0.0244)))) 406.5439)
	(<= (+ (* (current_load ?z) 0.0640) (+ (* (load_limit ?z) 0.9936) (+ (* (weight ?y) 0.0277) (* (fuel-cost ) -0.0884)))) 409.9519)
	(<= (+ (* (current_load ?z) 0.0736) (+ (* (fuel-cost ) 0.7979) (+ (* (weight ?y) -0.1265) (* (load_limit ?z) -0.5847)))) -198.7352)
	(<= (+ (* (current_load ?z) 0.1122) (+ (* (fuel-cost ) -0.9935) (+ (* (load_limit ?z) -0.0129) (* (weight ?y) -0.0135)))) -6.8942)
	(<= (+ (* (current_load ?z) 0.3043) (+ (* (weight ?y) 0.2537) (+ (* (fuel-cost ) -0.9171) (* (load_limit ?z) -0.0444)))) 4.8600)
	(<= (+ (* (current_load ?z) 0.3580) (+ (* (weight ?y) 0.2496) (+ (* (load_limit ?z) -0.1875) (* (fuel-cost ) -0.8800)))) -47.9618)
	(<= (+ (* (current_load ?z) 0.4312) (+ (* (fuel-cost ) 0.7098) (+ (* (load_limit ?z) 0.1869) (* (weight ?y) -0.5248)))) 114.1069)
	(<= (+ (* (current_load ?z) 0.7645) (+ (* (fuel-cost ) 0.6325) (+ (* (load_limit ?z) -0.0923) (* (weight ?y) -0.0830)))) 40.1549)
	(<= (+ (* (fuel-cost ) 0.0383) (+ (* (current_load ?z) 0.2061) (+ (* (weight ?y) 0.9631) (* (load_limit ?z) -0.1685)))) 21.9739)
	(<= (+ (* (fuel-cost ) 0.0446) (+ (* (current_load ?z) 0.4908) (+ (* (weight ?y) 0.4016) (* (load_limit ?z) -0.7719)))) -239.6648)
	(<= (+ (* (fuel-cost ) 0.1778) (+ (* (weight ?y) 0.0574) (+ (* (load_limit ?z) -0.0523) (* (current_load ?z) -0.9810)))) -12.0672)
	(<= (+ (* (fuel-cost ) 0.3556) (+ (* (current_load ?z) -0.1523) (+ (* (load_limit ?z) -0.6184) (* (weight ?y) -0.6841)))) -236.6135)
	(<= (+ (* (fuel-cost ) 0.5804) (+ (* (current_load ?z) 0.1307) (+ (* (weight ?y) 0.6882) (* (load_limit ?z) -0.4153)))) -91.9628)
	(<= (+ (* (fuel-cost ) 0.5809) (+ (* (weight ?y) 0.2578) (+ (* (current_load ?z) 0.3696) (* (load_limit ?z) -0.6778)))) -209.3721)
	(<= (+ (* (fuel-cost ) 0.6012) (+ (* (weight ?y) 0.6843) (+ (* (current_load ?z) 0.0994) (* (load_limit ?z) -0.4004)))) -86.8061)
	(<= (+ (* (fuel-cost ) 0.7857) (+ (* (current_load ?z) 0.0613) (+ (* (weight ?y) -0.1483) (* (load_limit ?z) -0.5974)))) -204.6312)
	(<= (+ (* (fuel-cost ) 0.7943) (+ (* (weight ?y) 0.4884) (+ (* (load_limit ?z) -0.3395) (* (current_load ?z) -0.1234)))) -75.6823)
	(<= (+ (* (fuel-cost ) 0.8351) (+ (* (current_load ?z) 0.0134) (+ (* (load_limit ?z) -0.5465) (* (weight ?y) -0.0606)))) -180.9643)
	(<= (+ (* (fuel-cost ) 0.8497) (+ (* (load_limit ?z) -0.5267) (+ (* (weight ?y) -0.0206) (* (current_load ?z) -0.0140)))) -171.4333)
	(<= (+ (* (load_limit ?z) 0.0048) (+ (* (current_load ?z) 0.0951) (+ (* (weight ?y) -0.0275) (* (fuel-cost ) -0.9951)))) -1.6207)
	(<= (+ (* (load_limit ?z) 0.0750) (+ (* (current_load ?z) 0.0076) (+ (* (weight ?y) -0.1526) (* (fuel-cost ) -0.9854)))) 16.2037)
	(<= (+ (* (load_limit ?z) 0.0756) (+ (* (current_load ?z) 0.0076) (+ (* (weight ?y) -0.1538) (* (fuel-cost ) -0.9852)))) 16.4228)
	(<= (+ (* (load_limit ?z) 0.0758) (+ (* (current_load ?z) 0.0073) (+ (* (fuel-cost ) -0.9855) (* (weight ?y) -0.1516)))) 16.5261)
	(<= (+ (* (load_limit ?z) 0.0816) (+ (* (current_load ?z) 0.0054) (+ (* (weight ?y) -0.1417) (* (fuel-cost ) -0.9865)))) 18.9047)
	(<= (+ (* (load_limit ?z) 0.4172) (+ (* (current_load ?z) 0.1002) (+ (* (weight ?y) -0.8694) (* (fuel-cost ) -0.2451)))) 158.0061)
	(<= (+ (* (load_limit ?z) 0.9537) (+ (* (weight ?y) -0.1041) (+ (* (fuel-cost ) -0.2779) (* (current_load ?z) -0.0483)))) 378.1048)
	(<= (+ (* (load_limit ?z) 0.9722) (+ (* (current_load ?z) -0.0295) (+ (* (weight ?y) -0.0713) (* (fuel-cost ) -0.2210)))) 388.7754)
	(<= (+ (* (weight ?y) 0.0610) (+ (* (current_load ?z) 0.0732) (+ (* (load_limit ?z) 0.9707) (* (fuel-cost ) -0.2206)))) 400.5879)
	(<= (+ (* (weight ?y) 0.2712) (+ (* (fuel-cost ) 0.7106) (+ (* (current_load ?z) -0.6078) (* (load_limit ?z) -0.2281)))) -52.1538)
	(<= (+ (* (weight ?y) 0.3731) (+ (* (current_load ?z) 0.4501) (+ (* (fuel-cost ) -0.6433) (* (load_limit ?z) -0.4943)))) -149.6072)
	(<= (+ (* (weight ?y) 0.5273) (+ (* (current_load ?z) 0.4483) (+ (* (fuel-cost ) -0.2460) (* (load_limit ?z) -0.6786)))) -203.4041)
	(<= (+ (* (weight ?y) 0.7038) (+ (* (fuel-cost ) 0.5792) (+ (* (current_load ?z) 0.1231) (* (load_limit ?z) -0.3926)))) -82.2842)
	(<= (load_limit ?z) 412))
	:effect (and (available ?x)
		(in ?y ?z)
		(not (lifting ?x ?y))
(increase (current_load ?z) (weight ?y))))

(:action unload
	:parameters (?x - hoist ?y - crate ?z - truck ?p - place)
	:precondition (and (at ?x ?p)
	(at ?z ?p)
	(available ?x)
	(in ?y ?z)
	(not (at ?y ?p))
	(not (clear ?y))
	(not (lifting ?x ?y))
	(<= (+ (* (current_load ?z) 0.0232) (+ (* (load_limit ?z) 0.0763) (+ (* (fuel-cost ) -0.9859) (* (weight ?y) -0.1468)))) 7.1167)
	(<= (+ (* (current_load ?z) 0.0749) (+ (* (fuel-cost ) 0.8791) (+ (* (load_limit ?z) 0.1126) (* (weight ?y) 0.4571)))) 125.4064)
	(<= (+ (* (current_load ?z) 0.0767) (+ (* (weight ?y) -0.4186) (+ (* (fuel-cost ) -0.8977) (* (load_limit ?z) -0.1140)))) -65.1246)
	(<= (+ (* (current_load ?z) 0.1339) (+ (* (weight ?y) 0.0598) (+ (* (load_limit ?z) 0.9891) (* (fuel-cost ) -0.0090)))) 425.4431)
	(<= (+ (* (current_load ?z) 0.1456) (+ (* (weight ?y) 0.0754) (+ (* (fuel-cost ) 0.0118) (* (load_limit ?z) 0.9864)))) 427.5573)
	(<= (+ (* (current_load ?z) 0.1582) (+ (* (weight ?y) 0.0707) (+ (* (fuel-cost ) 0.0190) (* (load_limit ?z) 0.9847)))) 428.5190)
	(<= (+ (* (current_load ?z) 0.3473) (+ (* (fuel-cost ) 0.3895) (+ (* (weight ?y) 0.8473) (* (load_limit ?z) -0.0993)))) 84.2404)
	(<= (+ (* (current_load ?z) 0.4485) (+ (* (weight ?y) 0.0100) (+ (* (fuel-cost ) 0.7386) (* (load_limit ?z) -0.5033)))) -113.0551)
	(<= (+ (* (current_load ?z) 0.5444) (+ (* (weight ?y) 0.2432) (+ (* (fuel-cost ) -0.2718) (* (load_limit ?z) -0.7553)))) -220.3759)
	(<= (+ (* (fuel-cost ) 0.1101) (+ (* (load_limit ?z) 0.8435) (+ (* (current_load ?z) -0.4937) (* (weight ?y) -0.1806)))) 315.9414)
	(<= (+ (* (fuel-cost ) 0.2795) (+ (* (current_load ?z) 0.4802) (+ (* (load_limit ?z) -0.8310) (* (weight ?y) -0.0269)))) -253.5230)
	(<= (+ (* (fuel-cost ) 0.4536) (+ (* (load_limit ?z) 0.1439) (+ (* (current_load ?z) -0.2511) (* (weight ?y) -0.8429)))) 54.2020)
	(<= (+ (* (fuel-cost ) 0.6616) (+ (* (current_load ?z) 0.4192) (+ (* (weight ?y) -0.0721) (* (load_limit ?z) -0.6176)))) -168.0076)
	(<= (+ (* (fuel-cost ) 0.6724) (+ (* (current_load ?z) -0.2027) (+ (* (weight ?y) -0.6806) (* (load_limit ?z) -0.2085)))) -72.8605)
	(<= (+ (* (fuel-cost ) 0.8444) (+ (* (load_limit ?z) -0.4596) (+ (* (weight ?y) -0.1714) (* (current_load ?z) -0.2154)))) -159.9432)
	(<= (+ (* (fuel-cost ) 0.8635) (+ (* (current_load ?z) -0.2509) (+ (* (weight ?y) -0.0918) (* (load_limit ?z) -0.4277)))) -147.0522)
	(<= (+ (* (fuel-cost ) 0.8656) (+ (* (current_load ?z) -0.1491) (+ (* (load_limit ?z) -0.4669) (* (weight ?y) -0.1024)))) -156.0046)
	(<= (+ (* (fuel-cost ) 0.8712) (+ (* (current_load ?z) -0.2017) (+ (* (load_limit ?z) -0.4414) (* (weight ?y) -0.0738)))) -148.5104)
	(<= (+ (* (fuel-cost ) 0.8934) (+ (* (weight ?y) -0.1042) (+ (* (load_limit ?z) -0.4359) (* (current_load ?z) -0.0311)))) -133.3376)
	(<= (+ (* (fuel-cost ) 0.9607) (* (load_limit ?z) -0.2775)) -60.5463)
	(<= (+ (* (load_limit ?z) 0.0852) (+ (* (current_load ?z) 0.1748) (+ (* (weight ?y) 0.4907) (* (fuel-cost ) 0.8493)))) 125.6957)
	(<= (+ (* (load_limit ?z) 0.0934) (+ (* (current_load ?z) -0.0726) (+ (* (fuel-cost ) -0.0881) (* (weight ?y) -0.9891)))) 23.9975)
	(<= (+ (* (load_limit ?z) 0.1333) (+ (* (weight ?y) 0.5736) (+ (* (current_load ?z) -0.5405) (* (fuel-cost ) -0.6009)))) 38.1953)
	(<= (+ (* (load_limit ?z) 0.1834) (+ (* (current_load ?z) 0.0425) (+ (* (weight ?y) -0.7700) (* (fuel-cost ) -0.6097)))) 50.1461)
	(<= (+ (* (load_limit ?z) 0.2133) (+ (* (current_load ?z) 0.0580) (+ (* (fuel-cost ) -0.4931) (* (weight ?y) -0.8414)))) 66.2851)
	(<= (+ (* (load_limit ?z) 0.5491) (+ (* (fuel-cost ) -0.8143) (+ (* (current_load ?z) -0.0649) (* (weight ?y) -0.1766)))) 188.8436)
	(<= (+ (* (load_limit ?z) 0.8391) (+ (* (weight ?y) 0.0556) (+ (* (current_load ?z) -0.3198) (* (fuel-cost ) -0.4364)))) 306.4877)
	(<= (+ (* (load_limit ?z) 0.9247) (+ (* (current_load ?z) -0.0514) (+ (* (fuel-cost ) -0.3352) (* (weight ?y) -0.1727)))) 355.9783)
	(<= (+ (* (load_limit ?z) 0.9283) (+ (* (weight ?y) -0.0988) (+ (* (current_load ?z) -0.0620) (* (fuel-cost ) -0.3530)))) 356.8192)
	(<= (+ (* (load_limit ?z) 0.9347) (+ (* (fuel-cost ) -0.3349) (+ (* (weight ?y) -0.0694) (* (current_load ?z) -0.0964)))) 358.4733)
	(<= (+ (* (load_limit ?z) 0.9403) (+ (* (weight ?y) -0.0499) (+ (* (current_load ?z) -0.1364) (* (fuel-cost ) -0.3078)))) 359.7319)
	(<= (+ (* (load_limit ?z) 0.9572) (+ (* (fuel-cost ) -0.2783) (+ (* (current_load ?z) -0.0372) (* (weight ?y) -0.0702)))) 375.0805)
	(<= (+ (* (load_limit ?z) 0.9734) (+ (* (fuel-cost ) -0.2207) (+ (* (weight ?y) -0.0591) (* (current_load ?z) -0.0176)))) 386.5372)
	(<= (+ (* (load_limit ?z) 0.9958) (+ (* (weight ?y) 0.0015) (+ (* (current_load ?z) 0.0664) (* (fuel-cost ) -0.0633)))) 414.5522)
	(<= (+ (* (weight ?y) 0.0422) (+ (* (load_limit ?z) 0.8134) (+ (* (fuel-cost ) -0.5044) (* (current_load ?z) -0.2867)))) 295.4700)
	(<= (+ (* (weight ?y) 0.0471) (+ (* (load_limit ?z) 0.9841) (+ (* (current_load ?z) 0.1055) (* (fuel-cost ) -0.1352)))) 415.3143)
	(<= (+ (* (weight ?y) 0.0769) (+ (* (fuel-cost ) 0.7349) (+ (* (current_load ?z) 0.4863) (* (load_limit ?z) -0.4665)))) -90.5943)
	(<= (+ (* (weight ?y) 0.1910) (+ (* (current_load ?z) 0.1982) (+ (* (load_limit ?z) 0.9608) (* (fuel-cost ) -0.0321)))) 431.3893)
	(<= (+ (* (weight ?y) 0.2123) (+ (* (current_load ?z) 0.4752) (+ (* (fuel-cost ) -0.6092) (* (load_limit ?z) -0.5982)))) -176.7927)
	(<= (+ (* (weight ?y) 0.2858) (+ (* (fuel-cost ) 0.0767) (+ (* (current_load ?z) 0.6397) (* (load_limit ?z) -0.7093)))) -176.5024)
	(<= (+ (* (weight ?y) 0.3338) (+ (* (current_load ?z) 0.4957) (+ (* (load_limit ?z) -0.6994) (* (fuel-cost ) -0.3920)))) -201.3695)
	(<= (+ (* (weight ?y) 0.5625) (+ (* (current_load ?z) 0.5837) (+ (* (load_limit ?z) -0.5779) (* (fuel-cost ) -0.0946)))) -116.4500)
	(<= (+ (* (weight ?y) 0.7071) (* (current_load ?z) -0.7071)) 0)
	(<= (+ (* (weight ?y) 0.8089) (+ (* (current_load ?z) -0.4104) (+ (* (load_limit ?z) -0.1494) (* (fuel-cost ) -0.3936)))) -37.0984)
	(<= (load_limit ?z) 412))
	:effect (and (lifting ?x ?y)
		(not (available ?x))
		(not (in ?y ?z))
(decrease (current_load ?z) (weight ?y))))

)