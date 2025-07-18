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
	(<= (* (fuel-cost ) -1) -1)
	(<= (+ (* (current_load ?x) -0.0230) (+ (* (load_limit ?x) -0.0415) (* (fuel-cost ) -0.9989))) -14.9455)
	(<= (+ (* (current_load ?x) 0.0048) (+ (* (load_limit ?x) -0.0103) (* (fuel-cost ) -0.9999))) -4.4530)
	(<= (+ (* (current_load ?x) 0.0232) (+ (* (load_limit ?x) 0.0507) (* (fuel-cost ) -0.9984))) 19.7646)
	(<= (+ (* (current_load ?x) 0.0236) (+ (* (fuel-cost ) -0.9997) (* (load_limit ?x) -0.0118))) -3.5012)
	(<= (+ (* (current_load ?x) 0.0706) (+ (* (load_limit ?x) -0.0939) (* (fuel-cost ) -0.9931))) -22.4577)
	(<= (+ (* (current_load ?x) 0.1495) (+ (* (load_limit ?x) 0.4752) (* (fuel-cost ) -0.8671))) 210.7643)
	(<= (+ (* (current_load ?x) 0.1657) (+ (* (fuel-cost ) -0.9612) (* (load_limit ?x) -0.2206))) -45.8835)
	(<= (+ (* (current_load ?x) 0.3941) (+ (* (load_limit ?x) 0.8835) (* (fuel-cost ) 0.2533))) 455.5944)
	(<= (+ (* (current_load ?x) 0.4558) (+ (* (fuel-cost ) 0.4980) (* (load_limit ?x) 0.7377))) 423.7585)
	(<= (+ (* (current_load ?x) 0.5072) (+ (* (fuel-cost ) -0.0982) (* (load_limit ?x) -0.8562))) -165.5021)
	(<= (+ (* (current_load ?x) 0.5360) (+ (* (fuel-cost ) 0.4235) (* (load_limit ?x) -0.7303))) -101.6968)
	(<= (+ (* (current_load ?x) 0.5431) (+ (* (fuel-cost ) 0.5934) (* (load_limit ?x) -0.5940))) -45.9639)
	(<= (+ (* (fuel-cost ) -0.2809) (+ (* (load_limit ?x) -0.3211) (* (current_load ?x) -0.9044))) -108.1555)
	(<= (+ (* (fuel-cost ) 0.1220) (+ (* (load_limit ?x) -0.7666) (* (current_load ?x) -0.6304))) -191.5863)
	(<= (+ (* (fuel-cost ) 0.7630) (+ (* (load_limit ?x) -0.1167) (* (current_load ?x) -0.6358))) 46.0074)
	(<= (+ (* (fuel-cost ) 0.7697) (+ (* (current_load ?x) -0.0905) (* (load_limit ?x) -0.6320))) -90.3742)
	(<= (+ (* (fuel-cost ) 0.9741) (+ (* (load_limit ?x) -0.1948) (* (current_load ?x) -0.1146))) 46.5802)
	(<= (+ (* (fuel-cost ) 0.9898) (+ (* (current_load ?x) 0.0302) (* (load_limit ?x) -0.1394))) 75.3615)
	(<= (+ (* (load_limit ?x) -0.6417) (* (current_load ?x) -0.7669)) -170.6982)
	(<= (+ (* (load_limit ?x) 0.0189) (+ (* (fuel-cost ) -0.9998) (* (current_load ?x) -0.0071))) 5.4706)
	(<= (+ (* (load_limit ?x) 0.4729) (+ (* (current_load ?x) 0.2745) (* (fuel-cost ) 0.8373))) 332.0038)
	(<= (+ (* (load_limit ?x) 0.6469) (+ (* (current_load ?x) 0.1863) (* (fuel-cost ) -0.7395))) 288.2254)
	(<= (load_limit ?x) 449))
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
	(<= (+ (* (fuel-cost ) -0.9899) (* (weight ?y) -0.1414)) -2.1213)
	(<= (+ (* (fuel-cost ) 0.0400) (* (weight ?y) -0.9992)) 0.1998)
	(<= (+ (* (fuel-cost ) 0.0976) (* (weight ?y) 0.9952)) 102.8988)
	(<= (+ (* (fuel-cost ) 0.6153) (* (weight ?y) -0.7883)) 46.8567)
	(<= (+ (* (fuel-cost ) 0.9994) (* (weight ?y) -0.0357)) 119.6737)
	(<= (+ (* (weight ?y) -0.9939) (* (fuel-cost ) -0.1104)) -8.0615)
	(<= (+ (* (weight ?y) 0.3714) (* (fuel-cost ) 0.9285)) 136.6718)
	(<= (+ (* (weight ?y) 0.5145) (* (fuel-cost ) 0.8575)) 138.7424)
	(<= (weight ?y) 98))
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
	(<= (+ (* (fuel-cost ) -0.6626) (* (weight ?y) -0.7490)) -38.6021)
	(<= (+ (* (fuel-cost ) 0.0200) (* (weight ?y) -0.9998)) -0.8798)
	(<= (+ (* (fuel-cost ) 0.2049) (* (weight ?y) -0.9788)) 18.7791)
	(<= (+ (* (fuel-cost ) 0.9536) (* (weight ?y) 0.3011)) 154.5306)
	(<= (+ (* (weight ?y) -0.0454) (* (fuel-cost ) -0.9990)) -6.1754)
	(<= (+ (* (weight ?y) 0.1618) (* (fuel-cost ) 0.9868)) 148.9786)
	(<= (+ (* (weight ?y) 0.8742) (* (fuel-cost ) -0.4856)) 59.7341)
	(<= (+ (* (weight ?y) 0.8838) (* (fuel-cost ) -0.4679)) 60.8774)
	(<= (+ (* (weight ?y) 0.9958) (* (fuel-cost ) 0.0919)) 103.8355)
	(<= (weight ?y) 98))
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
	(<= (+ (* (current_load ?z) 0.0187) (+ (* (fuel-cost ) 0.0865) (+ (* (weight ?y) 0.9934) (* (load_limit ?z) -0.0734)))) 76.7663)
	(<= (+ (* (current_load ?z) 0.0242) (* (fuel-cost ) -0.9997)) -0.9997)
	(<= (+ (* (current_load ?z) 0.0247) (+ (* (load_limit ?z) 0.1281) (+ (* (weight ?y) -0.0498) (* (fuel-cost ) -0.9902)))) 42.8227)
	(<= (+ (* (current_load ?z) 0.0274) (+ (* (load_limit ?z) 0.0828) (+ (* (fuel-cost ) -0.9878) (* (weight ?y) -0.1293)))) 19.5614)
	(<= (+ (* (current_load ?z) 0.0305) (+ (* (load_limit ?z) 0.0604) (+ (* (weight ?y) -0.1744) (* (fuel-cost ) -0.9824)))) 7.8920)
	(<= (+ (* (current_load ?z) 0.0321) (+ (* (weight ?y) 0.0722) (+ (* (fuel-cost ) 0.9893) (* (load_limit ?z) -0.1226)))) 83.3530)
	(<= (+ (* (current_load ?z) 0.0489) (+ (* (weight ?y) 0.3801) (+ (* (load_limit ?z) -0.0915) (* (fuel-cost ) -0.9191)))) 1.5585)
	(<= (+ (* (current_load ?z) 0.0516) (+ (* (load_limit ?z) 0.0019) (+ (* (weight ?y) -0.2000) (* (fuel-cost ) -0.9784)))) -12.6876)
	(<= (+ (* (current_load ?z) 0.0539) (+ (* (load_limit ?z) 0.0936) (+ (* (fuel-cost ) -0.2315) (* (weight ?y) -0.9668)))) 22.1622)
	(<= (+ (* (current_load ?z) 0.0557) (+ (* (weight ?y) 0.9728) (+ (* (load_limit ?z) -0.1815) (* (fuel-cost ) -0.1326)))) 26.2298)
	(<= (+ (* (current_load ?z) 0.0769) (+ (* (weight ?y) 0.3090) (+ (* (load_limit ?z) 0.1034) (* (fuel-cost ) 0.9423)))) 181.1131)
	(<= (+ (* (current_load ?z) 0.0772) (+ (* (weight ?y) 0.9652) (+ (* (fuel-cost ) -0.1734) (* (load_limit ?z) -0.1801)))) 26.5592)
	(<= (+ (* (current_load ?z) 0.1054) (+ (* (weight ?y) -0.8826) (+ (* (load_limit ?z) -0.1988) (* (fuel-cost ) -0.4128)))) -81.3798)
	(<= (+ (* (current_load ?z) 0.1106) (+ (* (fuel-cost ) 0.8764) (+ (* (load_limit ?z) -0.3819) (* (weight ?y) -0.2719)))) -27.4201)
	(<= (+ (* (current_load ?z) 0.1237) (+ (* (load_limit ?z) 0.2038) (+ (* (weight ?y) -0.6788) (* (fuel-cost ) -0.6945)))) 57.3605)
	(<= (+ (* (current_load ?z) 0.1251) (+ (* (fuel-cost ) 0.7999) (+ (* (weight ?y) -0.4796) (* (load_limit ?z) -0.3385)))) -25.6201)
	(<= (+ (* (current_load ?z) 0.1351) (+ (* (weight ?y) 0.3039) (+ (* (load_limit ?z) 0.1746) (* (fuel-cost ) 0.9268)))) 210.8561)
	(<= (+ (* (current_load ?z) 0.1466) (+ (* (load_limit ?z) -0.1749) (+ (* (fuel-cost ) -0.5352) (* (weight ?y) -0.8133)))) -73.9811)
	(<= (+ (* (current_load ?z) 0.1505) (+ (* (weight ?y) 0.7310) (+ (* (fuel-cost ) -0.0291) (* (load_limit ?z) -0.6649)))) -114.4664)
	(<= (+ (* (current_load ?z) 0.1654) (+ (* (weight ?y) -0.7155) (+ (* (load_limit ?z) -0.1437) (* (fuel-cost ) -0.6634)))) -63.8342)
	(<= (+ (* (current_load ?z) 0.1674) (+ (* (weight ?y) 0.5853) (+ (* (fuel-cost ) 0.7856) (* (load_limit ?z) -0.1107)))) 107.5110)
	(<= (+ (* (current_load ?z) 0.2457) (+ (* (load_limit ?z) -0.2761) (+ (* (fuel-cost ) -0.5989) (* (weight ?y) -0.7104)))) -92.0448)
	(<= (+ (* (current_load ?z) 0.2619) (+ (* (fuel-cost ) 0.7882) (+ (* (load_limit ?z) -0.5463) (* (weight ?y) -0.1084)))) -67.0429)
	(<= (+ (* (current_load ?z) 0.2803) (+ (* (weight ?y) 0.6308) (+ (* (fuel-cost ) 0.6987) (* (load_limit ?z) -0.1880)))) 81.1781)
	(<= (+ (* (current_load ?z) 0.2831) (+ (* (weight ?y) 0.8741) (+ (* (fuel-cost ) 0.1156) (* (load_limit ?z) -0.3774)))) -12.0686)
	(<= (+ (* (current_load ?z) 0.2925) (+ (* (fuel-cost ) 0.1358) (+ (* (weight ?y) 0.6788) (* (load_limit ?z) -0.6598)))) -102.7315)
	(<= (+ (* (current_load ?z) 0.3529) (+ (* (fuel-cost ) 0.3699) (+ (* (load_limit ?z) 0.8509) (* (weight ?y) 0.1213)))) 434.9048)
	(<= (+ (* (current_load ?z) 0.4254) (+ (* (load_limit ?z) 0.8706) (+ (* (weight ?y) -0.2076) (* (fuel-cost ) -0.1340)))) 417.9163)
	(<= (+ (* (current_load ?z) 0.4434) (+ (* (fuel-cost ) 0.2741) (+ (* (weight ?y) 0.5620) (* (load_limit ?z) -0.6422)))) -92.6304)
	(<= (+ (* (current_load ?z) 0.4466) (+ (* (weight ?y) 0.5537) (+ (* (fuel-cost ) 0.2840) (* (load_limit ?z) -0.6429)))) -92.4154)
	(<= (+ (* (current_load ?z) 0.4878) (+ (* (fuel-cost ) -0.0944) (+ (* (weight ?y) -0.2018) (* (load_limit ?z) -0.8440)))) -191.9030)
	(<= (+ (* (current_load ?z) 0.4888) (+ (* (weight ?y) 0.5133) (+ (* (fuel-cost ) 0.3989) (* (load_limit ?z) -0.5817)))) -59.6155)
	(<= (+ (* (current_load ?z) 0.5204) (+ (* (fuel-cost ) 0.7131) (+ (* (load_limit ?z) 0.3715) (* (weight ?y) -0.2876)))) 297.2421)
	(<= (+ (* (current_load ?z) 0.5301) (+ (* (weight ?y) 0.0329) (+ (* (load_limit ?z) -0.8411) (* (fuel-cost ) -0.1026)))) -181.6786)
	(<= (+ (* (current_load ?z) 0.8813) (+ (* (weight ?y) -0.4404) (+ (* (load_limit ?z) -0.1712) (* (fuel-cost ) -0.0067)))) 130.6624)
	(<= (+ (* (fuel-cost ) 0.0369) (+ (* (current_load ?z) 0.2947) (+ (* (weight ?y) 0.8905) (* (load_limit ?z) -0.3447)))) -3.0536)
	(<= (+ (* (fuel-cost ) 0.0397) (+ (* (current_load ?z) -0.0359) (+ (* (load_limit ?z) -0.0105) (* (weight ?y) -0.9985)))) -11.1785)
	(<= (+ (* (fuel-cost ) 0.0416) (+ (* (weight ?y) -0.9984) (+ (* (current_load ?z) -0.0366) (* (load_limit ?z) -0.0129)))) -11.9949)
	(<= (+ (* (fuel-cost ) 0.0444) (+ (* (current_load ?z) 0.2206) (+ (* (weight ?y) 0.9228) (* (load_limit ?z) -0.3127)))) 3.0021)
	(<= (+ (* (fuel-cost ) 0.0489) (+ (* (weight ?y) 0.9984) (+ (* (current_load ?z) -0.0206) (* (load_limit ?z) -0.0195)))) 90.4989)
	(<= (+ (* (fuel-cost ) 0.0537) (+ (* (weight ?y) 0.9973) (+ (* (load_limit ?z) -0.0426) (* (current_load ?z) -0.0261)))) 82.3106)
	(<= (+ (* (fuel-cost ) 0.0566) (+ (* (weight ?y) 0.9877) (+ (* (load_limit ?z) 0.1440) (* (current_load ?z) -0.0238)))) 151.5517)
	(<= (+ (* (fuel-cost ) 0.1321) (+ (* (current_load ?z) 0.0200) (+ (* (load_limit ?z) 0.0035) (* (weight ?y) 0.9910)))) 108.4749)
	(<= (+ (* (fuel-cost ) 0.1609) (+ (* (load_limit ?z) 0.3049) (+ (* (current_load ?z) 0.1535) (* (weight ?y) -0.9261)))) 148.1478)
	(<= (+ (* (fuel-cost ) 0.1633) (+ (* (weight ?y) 0.8164) (+ (* (current_load ?z) 0.3232) (* (load_limit ?z) -0.4499)))) -32.1681)
	(<= (+ (* (fuel-cost ) 0.1674) (+ (* (current_load ?z) 0.0281) (+ (* (weight ?y) 0.9542) (* (load_limit ?z) 0.2462)))) 200.1285)
	(<= (+ (* (fuel-cost ) 0.1734) (+ (* (weight ?y) 0.8669) (+ (* (current_load ?z) 0.2839) (* (load_limit ?z) -0.3714)))) -5.8619)
	(<= (+ (* (fuel-cost ) 0.1955) (+ (* (weight ?y) 0.9773) (+ (* (load_limit ?z) -0.0814) (* (current_load ?z) -0.0024)))) 83.1048)
	(<= (+ (* (fuel-cost ) 0.2022) (+ (* (current_load ?z) 0.0457) (+ (* (weight ?y) 0.9470) (* (load_limit ?z) 0.2453)))) 203.3323)
	(<= (+ (* (fuel-cost ) 0.2087) (+ (* (current_load ?z) 0.3435) (+ (* (weight ?y) 0.3743) (* (load_limit ?z) 0.8357)))) 427.3865)
	(<= (+ (* (fuel-cost ) 0.2579) (+ (* (load_limit ?z) 0.6375) (+ (* (weight ?y) 0.6430) (* (current_load ?z) 0.3371)))) 363.8783)
	(<= (+ (* (fuel-cost ) 0.2716) (+ (* (weight ?y) 0.5717) (+ (* (current_load ?z) 0.4410) (* (load_limit ?z) -0.6364)))) -90.5408)
	(<= (+ (* (fuel-cost ) 0.2782) (+ (* (load_limit ?z) 0.8708) (+ (* (weight ?y) 0.2086) (* (current_load ?z) 0.3477)))) 439.2987)
	(<= (+ (* (fuel-cost ) 0.2974) (+ (* (load_limit ?z) -0.0923) (+ (* (current_load ?z) -0.0050) (* (weight ?y) -0.9503)))) -11.5058)
	(<= (+ (* (fuel-cost ) 0.3378) (+ (* (current_load ?z) 0.4686) (+ (* (weight ?y) 0.4915) (* (load_limit ?z) -0.6517)))) -93.0066)
	(<= (+ (* (fuel-cost ) 0.3607) (+ (* (current_load ?z) 0.4633) (+ (* (weight ?y) 0.4863) (* (load_limit ?z) -0.6471)))) -90.7630)
	(<= (+ (* (fuel-cost ) 0.6092) (+ (* (weight ?y) 0.6338) (+ (* (current_load ?z) 0.4388) (* (load_limit ?z) -0.1861)))) 95.5419)
	(<= (+ (* (fuel-cost ) 0.6136) (+ (* (current_load ?z) 0.4641) (+ (* (weight ?y) 0.4905) (* (load_limit ?z) -0.4094)))) 11.4535)
	(<= (+ (* (fuel-cost ) 0.6206) (+ (* (current_load ?z) 0.3557) (+ (* (load_limit ?z) 0.4350) (* (weight ?y) -0.5468)))) 275.0287)
	(<= (+ (* (fuel-cost ) 0.6308) (+ (* (weight ?y) 0.4487) (+ (* (current_load ?z) 0.4237) (* (load_limit ?z) -0.4704)))) -16.9741)
	(<= (+ (* (fuel-cost ) 0.6753) (+ (* (weight ?y) 0.6193) (+ (* (current_load ?z) 0.2752) (* (load_limit ?z) 0.2911)))) 256.2586)
	(<= (+ (* (fuel-cost ) 0.6817) (+ (* (current_load ?z) 0.3037) (+ (* (weight ?y) 0.6278) (* (load_limit ?z) -0.2210)))) 70.2475)
	(<= (+ (* (fuel-cost ) 0.7418) (+ (* (current_load ?z) 0.0750) (+ (* (weight ?y) -0.6362) (* (load_limit ?z) -0.1983)))) 6.4416)
	(<= (+ (* (fuel-cost ) 0.8238) (+ (* (current_load ?z) 0.2261) (+ (* (weight ?y) -0.1658) (* (load_limit ?z) -0.4928)))) -53.7267)
	(<= (+ (* (fuel-cost ) 0.9395) (+ (* (current_load ?z) 0.0166) (+ (* (load_limit ?z) -0.2408) (* (weight ?y) -0.2433)))) 19.5540)
	(<= (+ (* (load_limit ?z) 0.0111) (+ (* (current_load ?z) 0.0282) (+ (* (fuel-cost ) -0.9897) (* (weight ?y) -0.1398)))) -8.0437)
	(<= (+ (* (load_limit ?z) 0.0111) (+ (* (current_load ?z) 0.0287) (+ (* (weight ?y) -0.1473) (* (fuel-cost ) -0.9886)))) -8.5666)
	(<= (+ (* (load_limit ?z) 0.0131) (+ (* (current_load ?z) 0.0294) (+ (* (weight ?y) -0.1569) (* (fuel-cost ) -0.9871)))) -8.5217)
	(<= (+ (* (load_limit ?z) 0.0364) (+ (* (current_load ?z) 0.2061) (+ (* (fuel-cost ) 0.6821) (* (weight ?y) 0.7007)))) 160.5954)
	(<= (+ (* (load_limit ?z) 0.0713) (+ (* (current_load ?z) 0.0470) (+ (* (fuel-cost ) -0.9734) (* (weight ?y) -0.2125)))) 11.5186)
	(<= (+ (* (load_limit ?z) 0.0765) (+ (* (weight ?y) -0.9963) (+ (* (current_load ?z) -0.0275) (* (fuel-cost ) -0.0289)))) 18.3866)
	(<= (+ (* (load_limit ?z) 0.0784) (+ (* (current_load ?z) -0.0043) (+ (* (fuel-cost ) -0.0045) (* (weight ?y) -0.9969)))) 22.6064)
	(<= (+ (* (load_limit ?z) 0.0859) (+ (* (current_load ?z) 0.0365) (+ (* (weight ?y) -0.9796) (* (fuel-cost ) -0.1782)))) 19.9908)
	(<= (+ (* (load_limit ?z) 0.1925) (+ (* (weight ?y) 0.6897) (+ (* (fuel-cost ) 0.6679) (* (current_load ?z) 0.2029)))) 216.2762)
	(<= (+ (* (load_limit ?z) 0.2017) (+ (* (current_load ?z) 0.0875) (+ (* (weight ?y) 0.9530) (* (fuel-cost ) -0.2083)))) 169.8164)
	(<= (+ (* (load_limit ?z) 0.2153) (+ (* (current_load ?z) 0.1143) (+ (* (weight ?y) -0.7200) (* (fuel-cost ) -0.6498)))) 61.5805)
	(<= (+ (* (load_limit ?z) 0.2699) (+ (* (current_load ?z) -0.1748) (+ (* (weight ?y) -0.9290) (* (fuel-cost ) -0.1833)))) 84.5669)
	(<= (+ (* (load_limit ?z) 0.2710) (+ (* (current_load ?z) -0.1755) (+ (* (fuel-cost ) -0.1846) (* (weight ?y) -0.9283)))) 84.9524)
	(<= (+ (* (load_limit ?z) 0.2710) (+ (* (current_load ?z) -0.1760) (+ (* (fuel-cost ) -0.1842) (* (weight ?y) -0.9282)))) 84.9540)
	(<= (+ (* (load_limit ?z) 0.2783) (+ (* (current_load ?z) 0.1447) (+ (* (weight ?y) -0.6640) (* (fuel-cost ) -0.6788)))) 91.5812)
	(<= (+ (* (load_limit ?z) 0.4756) (+ (* (current_load ?z) 0.1915) (+ (* (weight ?y) -0.5151) (* (fuel-cost ) -0.6869)))) 185.5612)
	(<= (+ (* (load_limit ?z) 0.4799) (+ (* (fuel-cost ) 0.5592) (+ (* (weight ?y) 0.5733) (* (current_load ?z) 0.3583)))) 323.8459)
	(<= (+ (* (load_limit ?z) 0.5139) (+ (* (weight ?y) 0.5449) (+ (* (fuel-cost ) -0.1850) (* (current_load ?z) -0.6363)))) 248.4794)
	(<= (+ (* (load_limit ?z) 0.5571) (+ (* (current_load ?z) 0.1566) (+ (* (weight ?y) 0.2003) (* (fuel-cost ) -0.7905)))) 247.2796)
	(<= (+ (* (load_limit ?z) 0.5615) (+ (* (fuel-cost ) 0.2916) (+ (* (weight ?y) 0.6860) (* (current_load ?z) 0.3594)))) 343.9980)
	(<= (+ (* (load_limit ?z) 0.6414) (+ (* (current_load ?z) 0.3345) (+ (* (weight ?y) 0.6441) (* (fuel-cost ) 0.2488)))) 364.5968)
	(<= (+ (* (load_limit ?z) 0.6515) (+ (* (fuel-cost ) 0.5957) (+ (* (current_load ?z) 0.4106) (* (weight ?y) -0.2282)))) 372.5957)
	(<= (+ (* (load_limit ?z) 0.8005) (+ (* (fuel-cost ) 0.4063) (+ (* (current_load ?z) 0.3876) (* (weight ?y) -0.2094)))) 413.3959)
	(<= (+ (* (load_limit ?z) 0.9057) (+ (* (current_load ?z) 0.4138) (+ (* (fuel-cost ) -0.0739) (* (weight ?y) -0.0554)))) 437.8482)
	(<= (+ (* (weight ?y) 0.1285) (+ (* (current_load ?z) 0.0191) (+ (* (fuel-cost ) 0.9865) (* (load_limit ?z) -0.0997)))) 93.9129)
	(<= (+ (* (weight ?y) 0.1613) (+ (* (load_limit ?z) 0.6293) (+ (* (current_load ?z) 0.1811) (* (fuel-cost ) -0.7383)))) 278.9229)
	(<= (+ (* (weight ?y) 0.1884) (+ (* (fuel-cost ) 0.5746) (+ (* (current_load ?z) 0.3721) (* (load_limit ?z) 0.7042)))) 398.3082)
	(<= (+ (* (weight ?y) 0.2992) (+ (* (load_limit ?z) 0.4137) (+ (* (current_load ?z) 0.0594) (* (fuel-cost ) -0.8578)))) 185.6530)
	(<= (+ (* (weight ?y) 0.3056) (+ (* (fuel-cost ) 0.1429) (+ (* (load_limit ?z) -0.5837) (* (current_load ?z) -0.7386)))) -113.4114)
	(<= (+ (* (weight ?y) 0.3070) (+ (* (current_load ?z) 0.4913) (+ (* (fuel-cost ) -0.0951) (* (load_limit ?z) -0.8095)))) -163.5563)
	(<= (+ (* (weight ?y) 0.3870) (+ (* (current_load ?z) 0.3589) (+ (* (load_limit ?z) 0.8408) (* (fuel-cost ) 0.1204)))) 428.4378)
	(<= (+ (* (weight ?y) 0.5078) (+ (* (fuel-cost ) 0.1016) (+ (* (load_limit ?z) -0.6757) (* (current_load ?z) -0.5247)))) -125.2920)
	(<= (+ (* (weight ?y) 0.5187) (+ (* (current_load ?z) 0.2483) (+ (* (fuel-cost ) -0.7101) (* (load_limit ?z) -0.4063)))) -70.4531)
	(<= (+ (* (weight ?y) 0.5583) (+ (* (current_load ?z) 0.2001) (+ (* (load_limit ?z) -0.3668) (* (fuel-cost ) -0.7167)))) -60.2897)
	(<= (+ (* (weight ?y) 0.6251) (+ (* (load_limit ?z) 0.6588) (+ (* (current_load ?z) 0.3380) (* (fuel-cost ) 0.2472)))) 370.8273)
	(<= (+ (* (weight ?y) 0.6407) (+ (* (current_load ?z) 0.2697) (+ (* (fuel-cost ) 0.6968) (* (load_limit ?z) -0.1766)))) 84.8209)
	(<= (+ (* (weight ?y) 0.6509) (+ (* (current_load ?z) 0.3406) (+ (* (load_limit ?z) 0.6087) (* (fuel-cost ) 0.2998)))) 356.4921)
	(<= (+ (* (weight ?y) 0.7323) (+ (* (current_load ?z) 0.4599) (+ (* (fuel-cost ) 0.4423) (* (load_limit ?z) -0.2379)))) 75.1109)
	(<= (+ (* (weight ?y) 0.8307) (+ (* (current_load ?z) 0.2739) (+ (* (load_limit ?z) 0.4771) (* (fuel-cost ) -0.0853)))) 293.8258)
	(<= (+ (* (weight ?y) 0.8487) (+ (* (current_load ?z) 0.0054) (+ (* (fuel-cost ) -0.1931) (* (load_limit ?z) -0.4924)))) -73.0176)
	(<= (+ (* (weight ?y) 0.8727) (+ (* (current_load ?z) 0.3095) (+ (* (fuel-cost ) 0.0747) (* (load_limit ?z) -0.3701)))) -9.3264)
	(<= (+ (* (weight ?y) 0.8813) (+ (* (current_load ?z) 0.0760) (+ (* (fuel-cost ) -0.4116) (* (load_limit ?z) -0.2191)))) 3.4394)
	(<= (+ (* (weight ?y) 0.8947) (+ (* (current_load ?z) 0.0664) (+ (* (fuel-cost ) -0.3856) (* (load_limit ?z) -0.2154)))) 5.4466)
	(<= (+ (* (weight ?y) 0.8994) (+ (* (current_load ?z) 0.2857) (* (load_limit ?z) -0.3310))) -0.2021)
	(<= (+ (* (weight ?y) 0.9436) (+ (* (fuel-cost ) 0.0592) (+ (* (load_limit ?z) 0.2406) (* (current_load ?z) -0.2194)))) 183.9758)
	(<= (+ (* (weight ?y) 0.9535) (+ (* (current_load ?z) -0.0011) (+ (* (fuel-cost ) -0.1954) (* (load_limit ?z) -0.2295)))) 6.0199)
	(<= (+ (* (weight ?y) 0.9675) (+ (* (current_load ?z) 0.0694) (+ (* (fuel-cost ) -0.1652) (* (load_limit ?z) -0.1786)))) 26.7826)
	(<= (+ (* (weight ?y) 0.9701) (+ (* (current_load ?z) 0.0759) (+ (* (fuel-cost ) 0.1940) (* (load_limit ?z) -0.1241)))) 70.9771)
	(<= (+ (* (weight ?y) 0.9756) (+ (* (current_load ?z) 0.0783) (+ (* (fuel-cost ) -0.1865) (* (load_limit ?z) -0.0853)))) 63.0098)
	(<= (+ (* (weight ?y) 0.9900) (+ (* (current_load ?z) 0.0351) (+ (* (fuel-cost ) 0.1060) (* (load_limit ?z) -0.0860)))) 74.8928)
	(<= (+ (* (weight ?y) 0.9976) (+ (* (fuel-cost ) 0.0478) (+ (* (current_load ?z) -0.0293) (* (load_limit ?z) -0.0410)))) 82.2324)
	(<= (+ (* (weight ?y) 0.9978) (+ (* (fuel-cost ) 0.0226) (+ (* (current_load ?z) -0.0095) (* (load_limit ?z) -0.0609)))) 74.6567)
	(<= (+ (* (weight ?y) 0.9978) (+ (* (fuel-cost ) 0.0603) (+ (* (load_limit ?z) -0.0234) (* (current_load ?z) -0.0147)))) 90.3423)
	(<= (load_limit ?z) 449))
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
	(<= (+ (* (current_load ?z) 0.0005) (+ (* (load_limit ?z) 0.0396) (+ (* (fuel-cost ) -0.1220) (* (weight ?y) -0.9917)))) -2.2627)
	(<= (+ (* (current_load ?z) 0.0005) (+ (* (weight ?y) 0.9960) (+ (* (fuel-cost ) 0.0722) (* (load_limit ?z) -0.0522)))) 82.1070)
	(<= (+ (* (current_load ?z) 0.0058) (+ (* (fuel-cost ) 0.0872) (+ (* (weight ?y) 0.9946) (* (load_limit ?z) -0.0554)))) 83.1040)
	(<= (+ (* (current_load ?z) 0.0083) (+ (* (weight ?y) 0.9786) (+ (* (fuel-cost ) -0.1446) (* (load_limit ?z) -0.1459)))) 34.4420)
	(<= (+ (* (current_load ?z) 0.0204) (+ (* (weight ?y) 0.0691) (+ (* (fuel-cost ) 0.9906) (* (load_limit ?z) -0.1159)))) 96.6538)
	(<= (+ (* (current_load ?z) 0.0277) (+ (* (fuel-cost ) 0.9325) (+ (* (load_limit ?z) -0.2390) (* (weight ?y) -0.2692)))) 28.7357)
	(<= (+ (* (current_load ?z) 0.0377) (+ (* (weight ?y) 0.3680) (+ (* (fuel-cost ) -0.9198) (* (load_limit ?z) -0.1309)))) -26.4893)
	(<= (+ (* (current_load ?z) 0.0392) (+ (* (load_limit ?z) 0.2597) (+ (* (fuel-cost ) 0.1952) (* (weight ?y) 0.9449)))) 213.6397)
	(<= (+ (* (current_load ?z) 0.0440) (+ (* (fuel-cost ) 0.9792) (+ (* (load_limit ?z) -0.1718) (* (weight ?y) -0.0990)))) 68.1116)
	(<= (+ (* (current_load ?z) 0.0539) (+ (* (weight ?y) -0.9802) (+ (* (load_limit ?z) -0.0577) (* (fuel-cost ) -0.1818)))) -35.4195)
	(<= (+ (* (current_load ?z) 0.0714) (+ (* (load_limit ?z) 0.0070) (+ (* (weight ?y) -0.2242) (* (fuel-cost ) -0.9719)))) -20.2856)
	(<= (+ (* (current_load ?z) 0.0718) (+ (* (weight ?y) 0.2425) (+ (* (load_limit ?z) 0.1307) (* (fuel-cost ) 0.9586)))) 205.3104)
	(<= (+ (* (current_load ?z) 0.0736) (+ (* (load_limit ?z) 0.1548) (+ (* (fuel-cost ) -0.4847) (* (weight ?y) -0.8577)))) 31.1555)
	(<= (+ (* (current_load ?z) 0.0743) (+ (* (load_limit ?z) 0.1564) (+ (* (weight ?y) -0.8550) (* (fuel-cost ) -0.4889)))) 31.6792)
	(<= (+ (* (current_load ?z) 0.0951) (+ (* (load_limit ?z) -0.1626) (+ (* (fuel-cost ) -0.4369) (* (weight ?y) -0.8796)))) -74.4295)
	(<= (+ (* (current_load ?z) 0.1157) (+ (* (fuel-cost ) 0.8695) (+ (* (weight ?y) -0.3660) (* (load_limit ?z) -0.3110)))) 1.1945)
	(<= (+ (* (current_load ?z) 0.1333) (+ (* (load_limit ?z) -0.0324) (+ (* (fuel-cost ) -0.8778) (* (weight ?y) -0.4590)))) -34.4180)
	(<= (+ (* (current_load ?z) 0.1339) (+ (* (load_limit ?z) -0.0305) (+ (* (weight ?y) -0.4515) (* (fuel-cost ) -0.8816)))) -33.7551)
	(<= (+ (* (current_load ?z) 0.1362) (+ (* (load_limit ?z) 0.1470) (+ (* (fuel-cost ) -0.4010) (* (weight ?y) -0.8939)))) 36.5761)
	(<= (+ (* (current_load ?z) 0.1852) (+ (* (fuel-cost ) 0.8296) (+ (* (load_limit ?z) -0.3221) (* (weight ?y) -0.4168)))) -1.2134)
	(<= (+ (* (current_load ?z) 0.1862) (+ (* (fuel-cost ) 0.1090) (+ (* (load_limit ?z) 0.2296) (* (weight ?y) -0.9491)))) 110.1654)
	(<= (+ (* (current_load ?z) 0.1886) (+ (* (fuel-cost ) -0.7942) (+ (* (weight ?y) -0.5706) (* (load_limit ?z) -0.0899)))) -47.8785)
	(<= (+ (* (current_load ?z) 0.2315) (+ (* (load_limit ?z) -0.1343) (+ (* (weight ?y) -0.9326) (* (fuel-cost ) -0.2421)))) -46.2661)
	(<= (+ (* (current_load ?z) 0.2318) (+ (* (load_limit ?z) -0.1378) (+ (* (weight ?y) -0.9320) (* (fuel-cost ) -0.2421)))) -47.4399)
	(<= (+ (* (current_load ?z) 0.2341) (+ (* (weight ?y) -0.8383) (+ (* (fuel-cost ) -0.4446) (* (load_limit ?z) -0.2115)))) -77.7763)
	(<= (+ (* (current_load ?z) 0.2393) (+ (* (weight ?y) 0.5660) (* (load_limit ?z) -0.7889))) -138.1697)
	(<= (+ (* (current_load ?z) 0.2628) (+ (* (load_limit ?z) 0.2758) (+ (* (fuel-cost ) 0.1821) (* (weight ?y) -0.9065)))) 143.2369)
	(<= (+ (* (current_load ?z) 0.3055) (+ (* (weight ?y) 0.2123) (+ (* (load_limit ?z) 0.9191) (* (fuel-cost ) -0.1295)))) 454.1597)
	(<= (+ (* (current_load ?z) 0.3345) (+ (* (weight ?y) -0.7826) (+ (* (load_limit ?z) -0.2896) (* (fuel-cost ) -0.4379)))) -88.2173)
	(<= (+ (* (current_load ?z) 0.3654) (+ (* (load_limit ?z) -0.1573) (+ (* (fuel-cost ) -0.1784) (* (weight ?y) -0.9000)))) -30.9836)
	(<= (+ (* (current_load ?z) 0.3758) (+ (* (fuel-cost ) -0.1738) (+ (* (weight ?y) -0.8810) (* (load_limit ?z) -0.2287)))) -53.6733)
	(<= (+ (* (current_load ?z) 0.3788) (+ (* (weight ?y) -0.8952) (+ (* (load_limit ?z) -0.1522) (* (fuel-cost ) -0.1787)))) -27.0980)
	(<= (+ (* (current_load ?z) 0.3843) (+ (* (fuel-cost ) -0.1733) (+ (* (load_limit ?z) -0.2354) (* (weight ?y) -0.8757)))) -54.5746)
	(<= (+ (* (current_load ?z) 0.4083) (+ (* (weight ?y) 0.1690) (* (load_limit ?z) -0.8971))) -170.9922)
	(<= (+ (* (current_load ?z) 0.4181) (+ (* (fuel-cost ) 0.2537) (+ (* (load_limit ?z) 0.4391) (* (weight ?y) -0.7537)))) 234.5042)
	(<= (+ (* (current_load ?z) 0.4196) (+ (* (fuel-cost ) 0.0920) (+ (* (load_limit ?z) 0.4421) (* (weight ?y) -0.7874)))) 224.4507)
	(<= (+ (* (current_load ?z) 0.4214) (+ (* (load_limit ?z) 0.7656) (+ (* (fuel-cost ) 0.3866) (* (weight ?y) -0.2946)))) 402.8955)
	(<= (+ (* (current_load ?z) 0.4295) (+ (* (fuel-cost ) 0.1771) (+ (* (weight ?y) 0.4562) (* (load_limit ?z) -0.7590)))) -105.1735)
	(<= (+ (* (current_load ?z) 0.4295) (+ (* (fuel-cost ) 0.4477) (+ (* (load_limit ?z) 0.7316) (* (weight ?y) -0.2827)))) 396.9422)
	(<= (+ (* (current_load ?z) 0.4478) (+ (* (load_limit ?z) 0.5745) (+ (* (fuel-cost ) 0.3118) (* (weight ?y) -0.6101)))) 304.4652)
	(<= (+ (* (current_load ?z) 0.4494) (+ (* (load_limit ?z) 0.5934) (+ (* (fuel-cost ) 0.3361) (* (weight ?y) -0.5770)))) 315.6644)
	(<= (+ (* (current_load ?z) 0.4494) (+ (* (load_limit ?z) 0.6002) (+ (* (fuel-cost ) 0.3384) (* (weight ?y) -0.5685)))) 319.0679)
	(<= (+ (* (current_load ?z) 0.5001) (+ (* (fuel-cost ) -0.2973) (+ (* (load_limit ?z) -0.6975) (* (weight ?y) -0.4184)))) -152.7623)
	(<= (+ (* (current_load ?z) 0.5085) (+ (* (fuel-cost ) 0.5938) (+ (* (load_limit ?z) -0.5970) (* (weight ?y) -0.1801)))) -59.0363)
	(<= (+ (* (current_load ?z) 0.5386) (+ (* (fuel-cost ) 0.4449) (+ (* (load_limit ?z) -0.7151) (* (weight ?y) -0.0243)))) -92.6633)
	(<= (+ (* (current_load ?z) 0.5542) (+ (* (fuel-cost ) 0.4831) (+ (* (load_limit ?z) -0.5166) (* (weight ?y) -0.4388)))) -50.7969)
	(<= (+ (* (current_load ?z) 0.5560) (+ (* (fuel-cost ) 0.4902) (+ (* (load_limit ?z) -0.5096) (* (weight ?y) -0.4369)))) -47.3024)
	(<= (+ (* (fuel-cost ) -0.0238) (+ (* (weight ?y) -0.9942) (+ (* (load_limit ?z) -0.0357) (* (current_load ?z) -0.0982)))) -26.7037)
	(<= (+ (* (fuel-cost ) 0.0031) (+ (* (weight ?y) -0.9900) (+ (* (current_load ?z) -0.1404) (* (load_limit ?z) -0.0135)))) -19.1679)
	(<= (+ (* (fuel-cost ) 0.0321) (+ (* (current_load ?z) -0.0867) (+ (* (load_limit ?z) -0.0310) (* (weight ?y) -0.9952)))) -20.7916)
	(<= (+ (* (fuel-cost ) 0.0381) (+ (* (weight ?y) 0.9974) (+ (* (current_load ?z) -0.0022) (* (load_limit ?z) -0.0607)))) 76.2847)
	(<= (+ (* (fuel-cost ) 0.0418) (+ (* (load_limit ?z) -0.0274) (+ (* (current_load ?z) -0.0914) (* (weight ?y) -0.9946)))) -19.1064)
	(<= (+ (* (fuel-cost ) 0.0670) (+ (* (current_load ?z) 0.3589) (+ (* (load_limit ?z) 0.4259) (* (weight ?y) -0.8278)))) 207.3397)
	(<= (+ (* (fuel-cost ) 0.0673) (+ (* (weight ?y) 0.9972) (+ (* (current_load ?z) -0.0039) (* (load_limit ?z) -0.0331)))) 87.9454)
	(<= (+ (* (fuel-cost ) 0.0675) (+ (* (load_limit ?z) -0.0369) (+ (* (current_load ?z) -0.0904) (* (weight ?y) -0.9929)))) -19.5202)
	(<= (+ (* (fuel-cost ) 0.0675) (+ (* (load_limit ?z) -0.0369) (+ (* (current_load ?z) -0.0904) (* (weight ?y) -0.9929)))) -19.5273)
	(<= (+ (* (fuel-cost ) 0.0717) (+ (* (weight ?y) 0.9966) (+ (* (load_limit ?z) -0.0405) (* (current_load ?z) -0.0019)))) 85.9197)
	(<= (+ (* (fuel-cost ) 0.0728) (+ (* (weight ?y) 0.9961) (+ (* (load_limit ?z) -0.0490) (* (current_load ?z) -0.0070)))) 82.3373)
	(<= (+ (* (fuel-cost ) 0.0751) (+ (* (current_load ?z) 0.3371) (+ (* (weight ?y) 0.1832) (* (load_limit ?z) 0.9204)))) 466.7858)
	(<= (+ (* (fuel-cost ) 0.0908) (+ (* (current_load ?z) 0.0061) (+ (* (weight ?y) 0.9946) (* (load_limit ?z) -0.0507)))) 85.1756)
	(<= (+ (* (fuel-cost ) 0.1051) (+ (* (current_load ?z) 0.2069) (+ (* (load_limit ?z) 0.2397) (* (weight ?y) -0.9427)))) 115.7803)
	(<= (+ (* (fuel-cost ) 0.1533) (+ (* (current_load ?z) 0.3850) (+ (* (weight ?y) 0.3817) (* (load_limit ?z) -0.8262)))) -136.0365)
	(<= (+ (* (fuel-cost ) 0.1876) (+ (* (load_limit ?z) 0.4628) (+ (* (current_load ?z) 0.4288) (* (weight ?y) -0.7529)))) 240.5644)
	(<= (+ (* (fuel-cost ) 0.1980) (+ (* (current_load ?z) 0.4262) (+ (* (load_limit ?z) 0.4647) (* (weight ?y) -0.7505)))) 241.6580)
	(<= (+ (* (fuel-cost ) 0.2054) (+ (* (current_load ?z) 0.0540) (+ (* (weight ?y) 0.9730) (* (load_limit ?z) -0.0903)))) 88.1383)
	(<= (+ (* (fuel-cost ) 0.2154) (+ (* (current_load ?z) 0.0575) (+ (* (weight ?y) 0.9706) (* (load_limit ?z) -0.0906)))) 89.3603)
	(<= (+ (* (fuel-cost ) 0.3148) (+ (* (current_load ?z) 0.4190) (+ (* (load_limit ?z) 0.4512) (* (weight ?y) -0.7223)))) 245.8433)
	(<= (+ (* (fuel-cost ) 0.3371) (+ (* (current_load ?z) 0.4229) (+ (* (load_limit ?z) 0.4473) (* (weight ?y) -0.7123)))) 247.6107)
	(<= (+ (* (fuel-cost ) 0.3507) (+ (* (current_load ?z) 0.4508) (+ (* (load_limit ?z) 0.6282) (* (weight ?y) -0.5283)))) 333.9578)
	(<= (+ (* (fuel-cost ) 0.3597) (+ (* (load_limit ?z) 0.6438) (+ (* (current_load ?z) 0.4483) (* (weight ?y) -0.5051)))) 341.9817)
	(<= (+ (* (fuel-cost ) 0.4403) (+ (* (weight ?y) -0.2720) (+ (* (current_load ?z) -0.6572) (* (load_limit ?z) -0.5479)))) -123.0964)
	(<= (+ (* (fuel-cost ) 0.4931) (+ (* (current_load ?z) 0.5511) (+ (* (weight ?y) -0.4317) (* (load_limit ?z) -0.5165)))) -50.0957)
	(<= (+ (* (fuel-cost ) 0.5178) (+ (* (current_load ?z) 0.5300) (+ (* (weight ?y) 0.1832) (* (load_limit ?z) -0.6460)))) -48.5622)
	(<= (+ (* (fuel-cost ) 0.6026) (+ (* (current_load ?z) 0.5881) (+ (* (load_limit ?z) -0.5185) (* (weight ?y) -0.1490)))) -11.4290)
	(<= (+ (* (fuel-cost ) 0.6090) (+ (* (weight ?y) 0.7502) (+ (* (current_load ?z) 0.2220) (* (load_limit ?z) -0.1307)))) 121.5625)
	(<= (+ (* (fuel-cost ) 0.6614) (+ (* (current_load ?z) 0.5014) (+ (* (weight ?y) 0.2029) (* (load_limit ?z) -0.5196)))) 1.6832)
	(<= (+ (* (fuel-cost ) 0.7808) (+ (* (current_load ?z) 0.2497) (+ (* (load_limit ?z) -0.3489) (* (weight ?y) -0.4541)))) -7.8022)
	(<= (+ (* (fuel-cost ) 0.7923) (+ (* (current_load ?z) 0.2370) (+ (* (load_limit ?z) -0.1778) (* (weight ?y) -0.5333)))) 50.3264)
	(<= (+ (* (fuel-cost ) 0.8327) (+ (* (current_load ?z) 0.0749) (+ (* (weight ?y) -0.5037) (* (load_limit ?z) -0.2173)))) 21.3378)
	(<= (+ (* (fuel-cost ) 0.8385) (+ (* (current_load ?z) 0.1208) (+ (* (weight ?y) -0.4446) (* (load_limit ?z) -0.2909)))) 2.5100)
	(<= (+ (* (fuel-cost ) 0.8418) (+ (* (current_load ?z) -0.2096) (+ (* (weight ?y) -0.0867) (* (load_limit ?z) -0.4898)))) -53.6254)
	(<= (+ (* (fuel-cost ) 0.8552) (+ (* (current_load ?z) 0.1629) (+ (* (load_limit ?z) -0.3281) (* (weight ?y) -0.3666)))) -1.1177)
	(<= (+ (* (load_limit ?z) -0.2737) (+ (* (fuel-cost ) -0.3040) (+ (* (weight ?y) -0.8118) (* (current_load ?z) -0.4167)))) -114.6346)
	(<= (+ (* (load_limit ?z) -0.5842) (+ (* (weight ?y) -0.3103) (* (current_load ?z) -0.7499))) -170.2451)
	(<= (+ (* (load_limit ?z) 0.0010) (+ (* (weight ?y) 0.9705) (+ (* (current_load ?z) -0.2298) (* (fuel-cost ) -0.0729)))) 58.8341)
	(<= (+ (* (load_limit ?z) 0.0071) (+ (* (current_load ?z) 0.2353) (+ (* (fuel-cost ) 0.7208) (* (weight ?y) -0.6519)))) 105.6096)
	(<= (+ (* (load_limit ?z) 0.0257) (+ (* (weight ?y) 0.9832) (+ (* (current_load ?z) -0.0708) (* (fuel-cost ) -0.1665)))) 80.7556)
	(<= (+ (* (load_limit ?z) 0.0438) (+ (* (current_load ?z) 0.0447) (+ (* (weight ?y) -0.9819) (* (fuel-cost ) -0.1786)))) -1.3875)
	(<= (+ (* (load_limit ?z) 0.0457) (+ (* (current_load ?z) -0.0487) (+ (* (fuel-cost ) -0.0285) (* (weight ?y) -0.9974)))) 3.7377)
	(<= (+ (* (load_limit ?z) 0.0474) (+ (* (current_load ?z) 0.0527) (+ (* (fuel-cost ) -0.1815) (* (weight ?y) -0.9808)))) 0.5024)
	(<= (+ (* (load_limit ?z) 0.0507) (+ (* (current_load ?z) -0.0917) (+ (* (fuel-cost ) -0.0537) (* (weight ?y) -0.9930)))) 1.7612)
	(<= (+ (* (load_limit ?z) 0.0625) (+ (* (current_load ?z) 0.1314) (+ (* (fuel-cost ) -0.8650) (* (weight ?y) -0.4802)))) -1.9678)
	(<= (+ (* (load_limit ?z) 0.0680) (+ (* (weight ?y) 0.9965) (+ (* (fuel-cost ) -0.0029) (* (current_load ?z) -0.0483)))) 112.2867)
	(<= (+ (* (load_limit ?z) 0.0747) (+ (* (current_load ?z) 0.1761) (+ (* (fuel-cost ) -0.7767) (* (weight ?y) -0.6001)))) 7.5468)
	(<= (+ (* (load_limit ?z) 0.0750) (+ (* (weight ?y) 0.8395) (+ (* (fuel-cost ) -0.0303) (* (current_load ?z) -0.5373)))) 51.8072)
	(<= (+ (* (load_limit ?z) 0.0804) (+ (* (current_load ?z) 0.5673) (+ (* (fuel-cost ) 0.4330) (* (weight ?y) -0.6958)))) 151.6284)
	(<= (+ (* (load_limit ?z) 0.0884) (+ (* (current_load ?z) 0.0722) (+ (* (weight ?y) -0.2605) (* (fuel-cost ) -0.9587)))) 7.3503)
	(<= (+ (* (load_limit ?z) 0.0938) (+ (* (current_load ?z) 0.2880) (+ (* (fuel-cost ) 0.6988) (* (weight ?y) -0.6480)))) 141.9229)
	(<= (+ (* (load_limit ?z) 0.0948) (+ (* (weight ?y) 0.9505) (+ (* (fuel-cost ) -0.2943) (* (current_load ?z) -0.0324)))) 105.5702)
	(<= (+ (* (load_limit ?z) 0.1195) (+ (* (current_load ?z) 0.2032) (+ (* (fuel-cost ) -0.4655) (* (weight ?y) -0.8531)))) 31.9484)
	(<= (+ (* (load_limit ?z) 0.1387) (+ (* (current_load ?z) 0.2848) (+ (* (weight ?y) -0.8303) (* (fuel-cost ) -0.4586)))) 51.7507)
	(<= (+ (* (load_limit ?z) 0.1422) (+ (* (weight ?y) 0.7482) (+ (* (current_load ?z) -0.6424) (* (fuel-cost ) -0.0853)))) 60.5670)
	(<= (+ (* (load_limit ?z) 0.2662) (+ (* (fuel-cost ) 0.1580) (+ (* (current_load ?z) 0.2431) (* (weight ?y) -0.9193)))) 134.9632)
	(<= (+ (* (load_limit ?z) 0.2671) (+ (* (fuel-cost ) 0.6112) (+ (* (weight ?y) 0.7144) (* (current_load ?z) 0.2114)))) 266.3730)
	(<= (+ (* (load_limit ?z) 0.3065) (+ (* (fuel-cost ) 0.1972) (+ (* (current_load ?z) 0.2880) (* (weight ?y) -0.8856)))) 159.8473)
	(<= (+ (* (load_limit ?z) 0.3159) (+ (* (weight ?y) -0.7541) (+ (* (current_load ?z) -0.4970) (* (fuel-cost ) -0.2909)))) 83.4722)
	(<= (+ (* (load_limit ?z) 0.3526) (+ (* (fuel-cost ) 0.1819) (+ (* (current_load ?z) 0.4468) (* (weight ?y) -0.8018)))) 200.2660)
	(<= (+ (* (load_limit ?z) 0.3798) (+ (* (weight ?y) 0.4504) (+ (* (current_load ?z) -0.6903) (* (fuel-cost ) -0.4200)))) 117.8414)
	(<= (+ (* (load_limit ?z) 0.4437) (+ (* (current_load ?z) 0.3840) (+ (* (fuel-cost ) 0.1047) (* (weight ?y) -0.8029)))) 220.5903)
	(<= (+ (* (load_limit ?z) 0.5061) (+ (* (weight ?y) 0.2494) (+ (* (fuel-cost ) -0.5335) (* (current_load ?z) -0.6301)))) 156.6725)
	(<= (+ (* (load_limit ?z) 0.5120) (+ (* (weight ?y) 0.1619) (+ (* (current_load ?z) -0.5024) (* (fuel-cost ) -0.6777)))) 156.2639)
	(<= (+ (* (load_limit ?z) 0.5256) (+ (* (weight ?y) 0.1178) (+ (* (fuel-cost ) -0.7241) (* (current_load ?z) -0.4307)))) 163.0466)
	(<= (+ (* (load_limit ?z) 0.5444) (+ (* (fuel-cost ) 0.3370) (+ (* (current_load ?z) 0.4401) (* (weight ?y) -0.6296)))) 292.3587)
	(<= (+ (* (load_limit ?z) 0.6151) (+ (* (current_load ?z) 0.4475) (+ (* (fuel-cost ) 0.3472) (* (weight ?y) -0.5485)))) 326.6887)
	(<= (+ (* (load_limit ?z) 0.9152) (+ (* (fuel-cost ) 0.1510) (+ (* (weight ?y) 0.1645) (* (current_load ?z) 0.3354)))) 466.9110)
	(<= (+ (* (weight ?y) -0.9959) (+ (* (load_limit ?z) -0.0371) (+ (* (fuel-cost ) -0.0767) (* (current_load ?z) -0.0299)))) -27.4953)
	(<= (+ (* (weight ?y) 0.0779) (+ (* (load_limit ?z) 0.5066) (+ (* (current_load ?z) -0.4264) (* (fuel-cost ) -0.7453)))) 152.8979)
	(<= (+ (* (weight ?y) 0.1259) (+ (* (load_limit ?z) 0.5040) (+ (* (current_load ?z) -0.7374) (* (fuel-cost ) -0.4317)))) 154.6204)
	(<= (+ (* (weight ?y) 0.1694) (+ (* (fuel-cost ) 0.2587) (+ (* (current_load ?z) 0.4983) (* (load_limit ?z) -0.8100)))) -127.4099)
	(<= (+ (* (weight ?y) 0.1976) (+ (* (current_load ?z) 0.4774) (+ (* (fuel-cost ) 0.2402) (* (load_limit ?z) -0.8218)))) -132.1598)
	(<= (+ (* (weight ?y) 0.3869) (+ (* (load_limit ?z) 0.4378) (+ (* (current_load ?z) 0.0275) (* (fuel-cost ) -0.8111)))) 187.5143)
	(<= (+ (* (weight ?y) 0.7071) (* (current_load ?z) -0.7071)) 0)
	(<= (+ (* (weight ?y) 0.7639) (+ (* (fuel-cost ) 0.2167) (+ (* (current_load ?z) 0.3197) (* (load_limit ?z) -0.5170)))) -19.2061)
	(<= (+ (* (weight ?y) 0.9142) (+ (* (fuel-cost ) -0.3237) (+ (* (current_load ?z) -0.1303) (* (load_limit ?z) -0.2063)))) -17.8154)
	(<= (+ (* (weight ?y) 0.9571) (+ (* (fuel-cost ) -0.2545) (+ (* (load_limit ?z) -0.1344) (* (current_load ?z) -0.0342)))) 20.8968)
	(<= (+ (* (weight ?y) 0.9576) (+ (* (current_load ?z) -0.0348) (+ (* (load_limit ?z) -0.1346) (* (fuel-cost ) -0.2523)))) 20.8276)
	(<= (+ (* (weight ?y) 0.9578) (+ (* (fuel-cost ) -0.2510) (+ (* (current_load ?z) -0.0329) (* (load_limit ?z) -0.1364)))) 20.6622)
	(<= (+ (* (weight ?y) 0.9638) (+ (* (current_load ?z) 0.0114) (+ (* (load_limit ?z) 0.1781) (* (fuel-cost ) -0.1982)))) 153.8307)
	(<= (+ (* (weight ?y) 0.9650) (+ (* (load_limit ?z) -0.1167) (+ (* (current_load ?z) -0.0429) (* (fuel-cost ) -0.2310)))) 27.6954)
	(<= (+ (* (weight ?y) 0.9718) (+ (* (load_limit ?z) 0.0101) (+ (* (current_load ?z) -0.2238) (* (fuel-cost ) -0.0737)))) 62.7792)
	(<= (+ (* (weight ?y) 0.9733) (+ (* (fuel-cost ) 0.2051) (+ (* (current_load ?z) 0.0523) (* (load_limit ?z) -0.0893)))) 88.2495)
	(<= (+ (* (weight ?y) 0.9859) (+ (* (load_limit ?z) 0.1474) (+ (* (fuel-cost ) 0.0792) (* (current_load ?z) -0.0046)))) 155.9447)
	(<= (+ (* (weight ?y) 0.9938) (+ (* (fuel-cost ) 0.0961) (+ (* (current_load ?z) 0.0064) (* (load_limit ?z) -0.0563)))) 83.7572)
	(<= (load_limit ?z) 449))
	:effect (and (lifting ?x ?y)
		(not (available ?x))
		(not (in ?y ?z))
(decrease (current_load ?z) (weight ?y))))

)