(define (domain driverlog)
(:requirements :typing :fluents :negative-preconditions :equality)
(:types 	location locatable - object
	driver truck obj - locatable
)

(:predicates (at ?obj - locatable ?loc - location)
	(in ?obj1 - obj ?obj - truck)
	(driving ?d - driver ?v - truck)
	(link ?x - location ?y - location)
	(path ?x - location ?y - location)
	(empty ?v - truck)
)

(:functions (time-to-walk ?l1 - location ?l2 - location)
	(time-to-drive ?l1 - location ?l2 - location)
	(driven )
	(walked )
)

(:action load-truck
	:parameters (?a - obj ?b - truck ?c - location)
	:precondition (and (at ?a ?c)
	(at ?b ?c)
	(<= (* (driven ) -1) 0)
	(<= (* (walked ) -1) 0)
	(<= (+ (* (driven ) 0.4765) (* (walked ) -0.8792)) 52.8874)
	(<= (+ (* (walked ) 0.4895) (* (driven ) -0.8720)) 11.2579)
	(<= (+ (* (walked ) 0.9905) (* (driven ) -0.1373)) 551.6856))
	:effect (and (in ?a ?b)
		(not (at ?a ?c)) 
		))

(:action unload-truck
	:parameters (?a - obj ?b - truck ?c - location)
	:precondition (and (at ?b ?c)
	(in ?a ?b)
	(<= (* (walked ) -1) 0)
	(<= (+ (* (driven ) 0.4793) (* (walked ) -0.8777)) 52.7182)
	(<= (+ (* (driven ) 0.4889) (* (walked ) -0.8723)) 55.6934)
	(<= (+ (* (driven ) 0.4897) (* (walked ) -0.8719)) 56.8762)
	(<= (+ (* (walked ) 0.4163) (* (driven ) -0.9092)) -11.8202)
	(<= (+ (* (walked ) 0.9256) (* (driven ) -0.3785)) 351.6725)
	(<= (+ (* (walked ) 0.9726) (* (driven ) -0.2327)) 459.1265)
	(<= (+ (* (walked ) 0.9796) (* (driven ) -0.2010)) 503.8552))
	:effect (and (at ?a ?c)
		(not (in ?a ?b)) 
		))

(:action board-truck
	:parameters (?a - driver ?b - truck ?c - location)
	:precondition (and (at ?a ?c)
	(at ?b ?c)
	(empty ?b)
	(<= (+ (* (driven ) 0.4286) (* (walked ) -0.9035)) 0)
	(<= (+ (* (driven ) 0.4993) (* (walked ) -0.8664)) 143.1653)
	(<= (+ (* (driven ) 0.5116) (* (walked ) -0.8592)) 177.1510)
	(<= (+ (* (driven ) 0.6252) (* (walked ) -0.7804)) 526.2912)
	(<= (+ (* (driven ) 0.7713) (* (walked ) -0.6365)) 1117.3890)
	(<= (+ (* (walked ) 0.2280) (* (driven ) -0.9737)) 0)
	(<= (+ (* (walked ) 0.8420) (* (driven ) -0.5395)) 339.2346)
	(<= (+ (* (walked ) 0.9896) (* (driven ) -0.1437)) 2138.5536))
	:effect (and (driving ?a ?b)
		(not (at ?a ?c))
		(not (empty ?b)) 
		))

(:action disembark-truck
	:parameters (?a - driver ?b - truck ?c - location)
	:precondition (and (at ?b ?c)
	(driving ?a ?b)
	(<= (+ (* (driven ) 0.4434) (* (walked ) -0.8963)) 49.2175)
	(<= (+ (* (driven ) 0.7139) (* (walked ) -0.7002)) 875)
	(<= (+ (* (driven ) 0.7339) (* (walked ) -0.6793)) 957.5686)
	(<= (+ (* (driven ) 0.7954) (* (walked ) -0.6060)) 1336.6662)
	(<= (+ (* (walked ) 0.3835) (* (driven ) -0.9235)) -102.5118)
	(<= (+ (* (walked ) 0.8404) (* (driven ) -0.5420)) 310.2667)
	(<= (+ (* (walked ) 0.9934) (* (driven ) -0.1146)) 2248.3519))
	:effect (and (at ?a ?c)
		(empty ?b)
		(not (driving ?a ?b)) 
		))

(:action drive-truck
	:parameters (?a - truck ?b - location ?c - location ?d - driver)
	:precondition (and (at ?a ?b)
	(driving ?d ?a)
	(link ?b ?c)
	(link ?c ?b)
	(<= (* (driven ) -1) 0)
	(<= (* (time-to-drive ?c ?b) -1) -5)
	(<= (* (walked ) -1) 0)
	(<= (+ (* (driven ) 0.0302) (+ (* (time-to-drive ?c ?b) 0.9986) (* (walked ) -0.0441))) 103.1014)
	(<= (+ (* (driven ) 0.0497) (+ (* (walked ) -0.0531) (* (time-to-drive ?c ?b) -0.9974))) 30.7275)
	(<= (+ (* (driven ) 0.0996) (+ (* (walked ) -0.1121) (* (time-to-drive ?c ?b) -0.9887))) 61.9499)
	(<= (+ (* (driven ) 0.1115) (+ (* (time-to-drive ?c ?b) -0.9863) (* (walked ) -0.1216))) 77.3895)
	(<= (+ (* (driven ) 0.1181) (+ (* (walked ) -0.1235) (* (time-to-drive ?c ?b) -0.9853))) 91.7546)
	(<= (+ (* (driven ) 0.1204) (+ (* (time-to-drive ?c ?b) 0.9770) (* (walked ) -0.1761))) 137.7289)
	(<= (+ (* (driven ) 0.1230) (+ (* (walked ) -0.0507) (* (time-to-drive ?c ?b) -0.9911))) 272.0751)
	(<= (+ (* (driven ) 0.1336) (+ (* (time-to-drive ?c ?b) -0.9798) (* (walked ) -0.1490))) 95.6283)
	(<= (+ (* (driven ) 0.1381) (+ (* (time-to-drive ?c ?b) 0.8287) (* (walked ) -0.5425))) 73.1979)
	(<= (+ (* (driven ) 0.1391) (+ (* (walked ) -0.1392) (* (time-to-drive ?c ?b) -0.9804))) 124.0488)
	(<= (+ (* (driven ) 0.1760) (+ (* (walked ) -0.2960) (* (time-to-drive ?c ?b) -0.9388))) 30.5102)
	(<= (+ (* (driven ) 0.1794) (+ (* (walked ) -0.2278) (* (time-to-drive ?c ?b) -0.9570))) 110.3564)
	(<= (+ (* (driven ) 0.1920) (+ (* (time-to-drive ?c ?b) 0.9191) (* (walked ) -0.3441))) 112.7241)
	(<= (+ (* (driven ) 0.2055) (+ (* (walked ) -0.3739) (* (time-to-drive ?c ?b) -0.9044))) 12.5343)
	(<= (+ (* (driven ) 0.2628) (+ (* (walked ) -0.1053) (* (time-to-drive ?c ?b) -0.9591))) 622.8169)
	(<= (+ (* (driven ) 0.3687) (+ (* (time-to-drive ?c ?b) -0.6092) (* (walked ) -0.7021))) 27.5568)
	(<= (+ (* (driven ) 0.3725) (+ (* (time-to-drive ?c ?b) 0.8702) (* (walked ) -0.3225))) 552.2185)
	(<= (+ (* (driven ) 0.4327) (+ (* (walked ) -0.5492) (* (time-to-drive ?c ?b) -0.7149))) 326.6456)
	(<= (+ (* (driven ) 0.4450) (+ (* (time-to-drive ?c ?b) -0.1849) (* (walked ) -0.8762))) 36.0129)
	(<= (+ (* (driven ) 0.4476) (+ (* (time-to-drive ?c ?b) 0.1678) (* (walked ) -0.8783))) 60.9826)
	(<= (+ (* (driven ) 0.5329) (+ (* (walked ) -0.5943) (* (time-to-drive ?c ?b) -0.6024))) 506.9918)
	(<= (+ (* (time-to-drive ?c ?b) -1) (* (walked ) 0.0028)) -2.5960)
	(<= (+ (* (time-to-drive ?c ?b) -1) (+ (* (walked ) 0.0075) (* (driven ) -0.0041))) -5.3438)
	(<= (+ (* (time-to-drive ?c ?b) 0.0708) (+ (* (walked ) 0.9844) (* (driven ) -0.1612))) 2064.4321)
	(<= (+ (* (time-to-drive ?c ?b) 0.7818) (+ (* (driven ) 0.4553) (* (walked ) -0.4260))) 600.0711)
	(<= (+ (* (time-to-drive ?c ?b) 0.7843) (+ (* (driven ) 0.4568) (* (walked ) -0.4198))) 612.8408)
	(<= (+ (* (time-to-drive ?c ?b) 0.8729) (+ (* (driven ) 0.3676) (* (walked ) -0.3207))) 539.8212)
	(<= (+ (* (time-to-drive ?c ?b) 0.9841) (* (walked ) -0.1778)) 82.6610)
	(<= (+ (* (time-to-drive ?c ?b) 0.9862) (+ (* (driven ) -0.0379) (* (walked ) -0.1609))) 81.8584)
	(<= (+ (* (time-to-drive ?c ?b) 0.9998) (+ (* (driven ) 0.0115) (* (walked ) -0.0132))) 100.9079)
	(<= (+ (* (walked ) 0.0090) (+ (* (driven ) -0.0052) (* (time-to-drive ?c ?b) -0.9999))) -5.4302)
	(<= (+ (* (walked ) 0.0155) (+ (* (time-to-drive ?c ?b) 0.9998) (* (driven ) -0.0103))) 99.6116)
	(<= (+ (* (walked ) 0.0298) (+ (* (time-to-drive ?c ?b) 0.9989) (* (driven ) -0.0352))) 99.1120)
	(<= (+ (* (walked ) 0.0494) (+ (* (driven ) -0.0958) (* (time-to-drive ?c ?b) -0.9942))) -12.9242)
	(<= (+ (* (walked ) 0.0624) (+ (* (time-to-drive ?c ?b) 0.9462) (* (driven ) -0.3174))) 78.5371)
	(<= (+ (* (walked ) 0.0887) (+ (* (driven ) -0.0513) (* (time-to-drive ?c ?b) -0.9947))) 26.3776)
	(<= (+ (* (walked ) 0.1399) (+ (* (driven ) -0.2502) (* (time-to-drive ?c ?b) -0.9580))) -12.4544)
	(<= (+ (* (walked ) 0.1459) (+ (* (time-to-drive ?c ?b) 0.9848) (* (driven ) -0.0944))) 146.3225)
	(<= (+ (* (walked ) 0.1573) (+ (* (time-to-drive ?c ?b) 0.6874) (* (driven ) -0.7091))) 57.0508)
	(<= (+ (* (walked ) 0.2544) (+ (* (driven ) -0.5344) (* (time-to-drive ?c ?b) -0.8061))) -10.4789)
	(<= (+ (* (walked ) 0.2711) (+ (* (driven ) -0.8555) (* (time-to-drive ?c ?b) -0.4412))) -5.7351)
	(<= (+ (* (walked ) 0.3820) (+ (* (driven ) -0.4344) (* (time-to-drive ?c ?b) -0.8157))) 69.7081)
	(<= (+ (* (walked ) 0.4134) (+ (* (driven ) -0.5031) (* (time-to-drive ?c ?b) -0.7589))) 72.5503)
	(<= (+ (* (walked ) 0.5911) (+ (* (driven ) -0.3791) (* (time-to-drive ?c ?b) -0.7120))) 215.9672)
	(<= (+ (* (walked ) 0.7512) (+ (* (time-to-drive ?c ?b) 0.4553) (* (driven ) -0.4780))) 343.5100)
	(<= (+ (* (walked ) 0.8230) (+ (* (time-to-drive ?c ?b) 0.2285) (* (driven ) -0.5200))) 363.8612)
	(<= (+ (time-to-drive ?c ?b) (* (walked ) 0.0015)) 99.1279)
	(= (time-to-drive ?b ?c) (time-to-drive ?c ?b)))
	:effect (and (at ?a ?c)
		(not (at ?a ?b))
(increase (driven ) (time-to-drive ?b ?c))))

(:action walk
	:parameters (?a - driver ?b - location ?c - location)
	:precondition (and (at ?a ?b)
	(path ?b ?c)
	(path ?c ?b)
	(<= (+ (* (driven ) 0.0223) (+ (* (time-to-walk ?c ?b) 0.9986) (* (walked ) -0.0489))) 92.2638)
	(<= (+ (* (driven ) 0.0880) (+ (* (time-to-walk ?c ?b) -0.9796) (* (walked ) -0.1806))) -22.5311)
	(<= (+ (* (driven ) 0.0917) (+ (* (time-to-walk ?c ?b) 0.9929) (* (walked ) -0.0764))) 218.8201)
	(<= (+ (* (driven ) 0.0938) (+ (* (walked ) -0.1911) (* (time-to-walk ?c ?b) -0.9771))) -22.4729)
	(<= (+ (* (driven ) 0.0948) (+ (* (walked ) -0.1046) (* (time-to-walk ?c ?b) -0.9900))) 71.9239)
	(<= (+ (* (driven ) 0.2029) (+ (* (time-to-walk ?c ?b) 0.8841) (* (walked ) -0.4210))) 78.2213)
	(<= (+ (* (driven ) 0.2374) (+ (* (time-to-walk ?c ?b) 0.9470) (* (walked ) -0.2164))) 381.7058)
	(<= (+ (* (driven ) 0.2761) (+ (* (time-to-walk ?c ?b) -0.7662) (* (walked ) -0.5803))) -17.6220)
	(<= (+ (* (driven ) 0.3185) (+ (* (time-to-walk ?c ?b) 0.8174) (* (walked ) -0.4800))) 237.0466)
	(<= (+ (* (driven ) 0.3849) (+ (* (time-to-walk ?c ?b) 0.5194) (* (walked ) -0.7630))) 75.4414)
	(<= (+ (* (driven ) 0.4367) (+ (* (time-to-walk ?c ?b) 0.7425) (* (walked ) -0.5079))) 473.7797)
	(<= (+ (* (driven ) 0.6566) (+ (* (time-to-walk ?c ?b) -0.7540) (* (walked ) -0.0181))) 2349.1647)
	(<= (+ (* (driven ) 0.6897) (+ (* (time-to-walk ?c ?b) 0.3867) (* (walked ) -0.6123))) 964.7314)
	(<= (+ (* (driven ) 0.6928) (+ (* (walked ) -0.0406) (* (time-to-walk ?c ?b) -0.7200))) 2422.3057)
	(<= (+ (* (driven ) 0.7077) (+ (* (time-to-walk ?c ?b) -0.2237) (* (walked ) -0.6701))) 885.8893)
	(<= (+ (* (driven ) 0.7109) (+ (* (time-to-walk ?c ?b) -0.5436) (* (walked ) -0.4463))) 1406.4032)
	(<= (+ (* (driven ) 0.7390) (+ (* (time-to-walk ?c ?b) -0.6668) (* (walked ) -0.0964))) 2443.5285)
	(<= (+ (* (time-to-walk ?c ?b) 0.3801) (+ (* (driven ) 0.7024) (* (walked ) -0.6018))) 1032.1895)
	(<= (+ (* (time-to-walk ?c ?b) 0.5186) (+ (* (driven ) -0.1869) (* (walked ) -0.8343))) 11.9285)
	(<= (+ (* (time-to-walk ?c ?b) 0.7181) (+ (* (driven ) 0.5207) (* (walked ) -0.4618))) 759.3203)
	(<= (+ (* (time-to-walk ?c ?b) 0.7915) (+ (* (driven ) 0.3969) (* (walked ) -0.4648))) 434.1859)
	(<= (+ (* (time-to-walk ?c ?b) 0.8266) (+ (* (driven ) 0.2964) (* (walked ) -0.4785))) 188.5293)
	(<= (+ (* (time-to-walk ?c ?b) 0.8285) (+ (* (walked ) 0.4554) (* (driven ) -0.3259))) 208.7935)
	(<= (+ (* (time-to-walk ?c ?b) 0.8713) (+ (* (walked ) 0.1009) (* (driven ) -0.4803))) 54.5973)
	(<= (+ (* (time-to-walk ?c ?b) 0.8971) (+ (* (walked ) -0.4272) (* (driven ) -0.1128))) 44.0007)
	(<= (+ (* (time-to-walk ?c ?b) 0.9620) (+ (* (walked ) -0.0471) (* (driven ) -0.2690))) 56.6358)
	(<= (+ (* (time-to-walk ?c ?b) 0.9897) (+ (* (walked ) 0.1146) (* (driven ) -0.0857))) 113.0640)
	(<= (+ (* (time-to-walk ?c ?b) 0.9903) (+ (* (driven ) 0.0617) (* (walked ) -0.1244))) 91.1146)
	(<= (+ (* (walked ) 0.0169) (+ (* (driven ) -0.0058) (* (time-to-walk ?c ?b) -0.9998))) 5.6193)
	(<= (+ (* (walked ) 0.0235) (+ (* (driven ) -0.0121) (* (time-to-walk ?c ?b) -0.9997))) 0.6118)
	(<= (+ (* (walked ) 0.1486) (+ (* (driven ) -0.1003) (* (time-to-walk ?c ?b) -0.9838))) 11.8738)
	(<= (+ (* (walked ) 0.1507) (+ (* (driven ) -0.3992) (* (time-to-walk ?c ?b) -0.9044))) -20.8007)
	(<= (+ (* (walked ) 0.1634) (+ (* (time-to-walk ?c ?b) -0.9802) (* (driven ) -0.1119))) 13.0639)
	(<= (+ (* (walked ) 0.2885) (+ (* (time-to-walk ?c ?b) -0.1794) (* (driven ) -0.9405))) -4.1254)
	(<= (+ (* (walked ) 0.2973) (+ (* (driven ) -0.8104) (* (time-to-walk ?c ?b) -0.5048))) -11.6107)
	(<= (+ (* (walked ) 0.3240) (+ (* (time-to-walk ?c ?b) -0.9170) (* (driven ) -0.2327))) 50.3882)
	(<= (+ (* (walked ) 0.3369) (+ (* (time-to-walk ?c ?b) 0.9105) (* (driven ) -0.2398))) 177.8034)
	(<= (+ (* (walked ) 0.4530) (+ (* (driven ) -0.4505) (* (time-to-walk ?c ?b) -0.7693))) 69.3926)
	(<= (driven ) 3733)
	(<= (time-to-walk ?c ?b) 100)
	(= (time-to-walk ?b ?c) (time-to-walk ?c ?b)))
	:effect (and (at ?a ?c)
		(not (at ?a ?b))
(increase (walked ) (time-to-walk ?b ?c))))

)