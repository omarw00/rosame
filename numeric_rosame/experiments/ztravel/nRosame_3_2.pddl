(define (domain zeno-travel)
(:requirements :typing :fluents :negative-preconditions :equality)
(:types 	aircraft person - movable
	movable city - object
)

(:predicates (at ?x - movable ?c - city)
	(in ?p - person ?a - aircraft)
)

(:functions (fuel ?a - aircraft)
	(distance ?c1 - city ?c2 - city)
	(slow-burn ?a - aircraft)
	(fast-burn ?a - aircraft)
	(capacity ?a - aircraft)
	(total-fuel-used )
	(onboard ?a - aircraft)
	(zoom-limit ?a - aircraft)
)

(:action board
	:parameters (?a - person ?b - aircraft ?c - city)
	:precondition (and (at ?a ?c)
	(at ?b ?c)
	(<= (+ (* (capacity ?b) 0.0003) (+ (* (fuel ?b) 0.0002) (+ (* (total-fuel-used ) 0.0002) (+ (* (zoom-limit ?b) -0.9878) (* (fast-burn ?b) -0.1558))))) -6.1250)
	(<= (+ (* (capacity ?b) 0.0003) (+ (* (zoom-limit ?b) 0.9023) (+ (* (onboard ?b) -0.3298) (+ (* (fuel ?b) -0.0009) (+ (* (fast-burn ?b) -0.2778) (* (total-fuel-used ) -0.0004)))))) 4.0797)
	(<= (+ (* (capacity ?b) 0.0005) (+ (* (zoom-limit ?b) 0.1083) (+ (* (onboard ?b) -0.9319) (+ (* (fuel ?b) -0.0003) (* (fast-burn ?b) -0.3461))))) 0.2423)
	(<= (+ (* (capacity ?b) 0.0006) (+ (* (zoom-limit ?b) 0.6843) (+ (* (fuel ?b) -0.0010) (+ (* (fast-burn ?b) -0.5371) (+ (* (total-fuel-used ) -0.0004) (* (onboard ?b) -0.4932)))))) 2.1888)
	(<= (+ (* (capacity ?b) 0.0009) (+ (* (zoom-limit ?b) -0.2247) (* (fast-burn ?b) -0.9744))) -2.1885)
	(<= (+ (* (fast-burn ?b) 0.0380) (+ (* (zoom-limit ?b) 0.9906) (+ (* (onboard ?b) -0.1316) (+ (* (total-fuel-used ) -0.0003) (* (fuel ?b) -0.0008))))) 5.3272)
	(<= (+ (* (fast-burn ?b) 0.3204) (+ (* (zoom-limit ?b) 0.9473) (+ (* (fuel ?b) -0.0005) (* (capacity ?b) -0.0004)))) 5.9380)
	(<= (+ (* (fast-burn ?b) 0.5812) (+ (* (onboard ?b) 0.1808) (+ (* (zoom-limit ?b) 0.7934) (* (capacity ?b) -0.0007)))) 6.3840)
	(<= (+ (* (fast-burn ?b) 0.9274) (+ (* (onboard ?b) 0.2990) (+ (* (fuel ?b) 0.0006) (+ (* (zoom-limit ?b) 0.2246) (* (capacity ?b) -0.0012))))) 2.8911)
	(<= (+ (* (fast-burn ?b) 0.9337) (+ (* (zoom-limit ?b) 0.3580) (* (capacity ?b) -0.0014))) 1.6301)
	(<= (+ (* (fuel ?b) 0.0006) (+ (* (fast-burn ?b) 0.7506) (+ (* (total-fuel-used ) 0.0002) (+ (* (capacity ?b) -0.0010) (+ (* (zoom-limit ?b) -0.2350) (* (onboard ?b) -0.6175)))))) -0.5256)
	(<= (+ (* (onboard ?b) 0.3005) (+ (* (fast-burn ?b) 0.9493) (+ (* (fuel ?b) 0.0007) (+ (* (zoom-limit ?b) 0.0921) (* (capacity ?b) -0.0013))))) 1.9459)
	(<= (+ (* (zoom-limit ?b) 0.1465) (+ (* (fuel ?b) 0.0008) (+ (* (fast-burn ?b) 0.9892) (* (capacity ?b) -0.0013)))) 2.4884)
	(<= (+ (* (zoom-limit ?b) 0.2846) (+ (* (fuel ?b) 0.0006) (+ (* (onboard ?b) 0.2154) (+ (* (fast-burn ?b) 0.9341) (* (capacity ?b) -0.0013))))) 3.1086)
	(<= (+ (* (zoom-limit ?b) 0.5865) (+ (* (fast-burn ?b) 0.7800) (+ (* (onboard ?b) 0.2182) (+ (* (fuel ?b) 0.0002) (* (capacity ?b) -0.0010))))) 5.2249)
	(<= (+ (* (zoom-limit ?b) 0.7196) (+ (* (capacity ?b) 0.0009) (+ (* (fuel ?b) -0.0005) (+ (* (total-fuel-used ) -0.0005) (* (fast-burn ?b) -0.6944))))) 3.9881)
	(<= (+ (* (zoom-limit ?b) 0.7280) (+ (* (capacity ?b) 0.0006) (+ (* (fuel ?b) -0.0010) (+ (* (fast-burn ?b) -0.5046) (+ (* (total-fuel-used ) -0.0004) (* (onboard ?b) -0.4641)))))) 2.5038)
	(<= (+ (* (zoom-limit ?b) 0.8288) (+ (* (fast-burn ?b) 0.5595) (* (capacity ?b) -0.0007))) 6.2923)
	(= (+ (* (slow-burn ?b) 1) (+ (* (fast-burn ?b) 0.0374) (+ (* (zoom-limit ?b) 0.1239) (* (capacity ?b) -0.0005)))) 0.7070))
	:effect (and (in ?a ?b)
		(not (at ?a ?c))
(increase (onboard ?b) 1)))

(:action debark
	:parameters (?a - person ?b - aircraft ?c - city)
	:precondition (and (at ?b ?c)
	(in ?a ?b)
	(<= (+ (* (capacity ?b) 0.0003) (+ (* (fuel ?b) 0.0003) (+ (* (fast-burn ?b) -0.1985) (+ (* (zoom-limit ?b) -0.6096) (* (onboard ?b) -0.7675))))) -4.7137)
	(<= (+ (* (capacity ?b) 0.0003) (+ (* (fuel ?b) 0.0003) (+ (* (zoom-limit ?b) -0.5987) (+ (* (fast-burn ?b) -0.2268) (* (onboard ?b) -0.7682))))) -4.6680)
	(<= (+ (* (capacity ?b) 0.0005) (+ (* (zoom-limit ?b) 0.1427) (+ (* (fast-burn ?b) -0.3477) (* (onboard ?b) -0.9267)))) -0.3021)
	(<= (+ (* (capacity ?b) 0.0006) (+ (* (fuel ?b) 0.0004) (+ (* (fast-burn ?b) -0.5851) (+ (* (onboard ?b) -0.3638) (+ (* (zoom-limit ?b) -0.7248) (* (total-fuel-used ) -0.0004)))))) -7.0915)
	(<= (+ (* (capacity ?b) 0.0008) (+ (* (zoom-limit ?b) -0.8632) (* (fast-burn ?b) -0.5049))) -5.5687)
	(<= (+ (* (capacity ?b) 0.0009) (+ (* (fast-burn ?b) -0.7518) (+ (* (total-fuel-used ) -0.0003) (+ (* (zoom-limit ?b) -0.6198) (* (onboard ?b) -0.2251))))) -6.0308)
	(<= (+ (* (capacity ?b) 0.0009) (+ (* (onboard ?b) 0.4790) (+ (* (total-fuel-used ) 0.0003) (+ (* (zoom-limit ?b) -0.7821) (+ (* (fuel ?b) -0.0024) (* (fast-burn ?b) -0.3986)))))) -2.6741)
	(<= (+ (* (capacity ?b) 0.0009) (+ (* (zoom-limit ?b) -0.2247) (* (fast-burn ?b) -0.9744))) -2.1885)
	(<= (+ (* (capacity ?b) 0.0011) (+ (* (zoom-limit ?b) -0.3826) (+ (* (total-fuel-used ) -0.0004) (+ (* (fast-burn ?b) -0.8945) (* (onboard ?b) -0.2312))))) -4.5456)
	(<= (+ (* (capacity ?b) 0.0012) (+ (* (onboard ?b) -0.1773) (+ (* (fuel ?b) -0.0003) (+ (* (total-fuel-used ) -0.0003) (+ (* (fast-burn ?b) -0.9528) (* (zoom-limit ?b) -0.2463)))))) -3.1715)
	(<= (+ (* (fast-burn ?b) 0.0408) (+ (* (fuel ?b) 0.0006) (+ (* (onboard ?b) -0.1970) (* (zoom-limit ?b) -0.9795)))) -6.6068)
	(<= (+ (* (fast-burn ?b) 0.1023) (+ (* (fuel ?b) 0.0006) (+ (* (zoom-limit ?b) -0.9762) (* (onboard ?b) -0.1912)))) -6.5234)
	(<= (+ (* (fast-burn ?b) 0.2278) (+ (* (zoom-limit ?b) 0.8370) (+ (* (capacity ?b) -0.0004) (+ (* (fuel ?b) -0.0004) (* (onboard ?b) -0.4976))))) 4.8866)
	(<= (+ (* (fast-burn ?b) 0.2727) (+ (* (zoom-limit ?b) 0.8375) (+ (* (onboard ?b) -0.4736) (+ (* (capacity ?b) -0.0004) (* (fuel ?b) -0.0004))))) 4.9478)
	(<= (+ (* (fast-burn ?b) 0.2802) (+ (* (fuel ?b) 0.0002) (+ (* (total-fuel-used ) 0.0002) (+ (* (zoom-limit ?b) -0.9599) (* (capacity ?b) -0.0003))))) -5.6155)
	(<= (+ (* (fast-burn ?b) 0.4286) (+ (* (zoom-limit ?b) 0.8413) (+ (* (fuel ?b) -0.0005) (+ (* (capacity ?b) -0.0006) (* (onboard ?b) -0.3293))))) 5.2733)
	(<= (+ (* (fast-burn ?b) 0.5440) (+ (* (total-fuel-used ) 0.0003) (+ (* (onboard ?b) 0.3158) (+ (* (capacity ?b) -0.0005) (+ (* (fuel ?b) -0.0005) (* (zoom-limit ?b) -0.7774)))))) -3.2181)
	(<= (+ (* (fast-burn ?b) 0.5477) (+ (* (zoom-limit ?b) 0.8071) (+ (* (onboard ?b) 0.2204) (* (capacity ?b) -0.0006)))) 6.7302)
	(<= (+ (* (fast-burn ?b) 0.7767) (+ (* (onboard ?b) 0.1648) (+ (* (total-fuel-used ) 0.0003) (+ (* (capacity ?b) -0.0009) (* (zoom-limit ?b) -0.6079))))) -2.5647)
	(<= (+ (* (fast-burn ?b) 0.7822) (+ (* (zoom-limit ?b) 0.6122) (+ (* (fuel ?b) 0.0003) (+ (* (onboard ?b) 0.1158) (* (capacity ?b) -0.0010))))) 5.3032)
	(<= (+ (* (fast-burn ?b) 0.8488) (+ (* (zoom-limit ?b) 0.5196) (+ (* (onboard ?b) 0.0982) (+ (* (fuel ?b) 0.0004) (* (capacity ?b) -0.0010))))) 4.7595)
	(<= (+ (* (fast-burn ?b) 0.9337) (+ (* (zoom-limit ?b) 0.3580) (* (capacity ?b) -0.0014))) 1.6301)
	(<= (+ (* (fast-burn ?b) 0.9460) (+ (* (zoom-limit ?b) 0.3243) (+ (* (fuel ?b) 0.0008) (* (capacity ?b) -0.0012)))) 2.9937)
	(<= (+ (* (fast-burn ?b) 0.9983) (+ (* (fuel ?b) 0.0008) (+ (* (zoom-limit ?b) 0.0580) (* (capacity ?b) -0.0012)))) 1.6984)
	(<= (+ (* (fuel ?b) 0.0002) (+ (* (capacity ?b) 0.0008) (+ (* (total-fuel-used ) -0.0005) (+ (* (onboard ?b) -0.5604) (+ (* (zoom-limit ?b) -0.3118) (* (fast-burn ?b) -0.7673)))))) -5.1140)
	(<= (+ (* (fuel ?b) 0.0003) (+ (* (capacity ?b) 0.0008) (+ (* (zoom-limit ?b) -0.7058) (+ (* (fast-burn ?b) -0.6782) (+ (* (total-fuel-used ) -0.0004) (* (onboard ?b) -0.2049)))))) -6.5306)
	(<= (+ (* (fuel ?b) 0.0005) (+ (* (capacity ?b) 0.0002) (+ (* (onboard ?b) -0.2299) (+ (* (fast-burn ?b) -0.1184) (* (zoom-limit ?b) -0.9660))))) -6.7399)
	(<= (+ (* (fuel ?b) 0.0005) (+ (* (onboard ?b) -0.2264) (+ (* (zoom-limit ?b) -0.9717) (* (fast-burn ?b) -0.0669)))) -6.7270)
	(<= (+ (* (fuel ?b) 0.0007) (+ (* (capacity ?b) 0.0004) (+ (* (fast-burn ?b) -0.3667) (+ (* (onboard ?b) -0.3519) (+ (* (zoom-limit ?b) -0.8612) (* (total-fuel-used ) -0.0004)))))) -7.8505)
	(<= (+ (* (fuel ?b) 0.0010) (+ (* (capacity ?b) 0.0011) (+ (* (total-fuel-used ) -0.0013) (+ (* (zoom-limit ?b) -0.5920) (* (fast-burn ?b) -0.8059))))) -5.9839)
	(<= (+ (* (onboard ?b) 0.1330) (+ (* (zoom-limit ?b) 0.6490) (+ (* (fast-burn ?b) 0.7490) (+ (* (fuel ?b) 0.0002) (* (capacity ?b) -0.0009))))) 5.5871)
	(<= (+ (* (onboard ?b) 0.1556) (+ (* (zoom-limit ?b) 0.6964) (+ (* (fast-burn ?b) 0.7006) (* (capacity ?b) -0.0008)))) 5.9171)
	(<= (+ (* (onboard ?b) 0.2359) (+ (* (zoom-limit ?b) 0.8303) (+ (* (fast-burn ?b) 0.5050) (+ (* (capacity ?b) -0.0006) (* (fuel ?b) -0.0002))))) 6.8164)
	(<= (+ (* (onboard ?b) 0.2470) (+ (* (zoom-limit ?b) 0.8440) (+ (* (fast-burn ?b) 0.4761) (* (capacity ?b) -0.0005)))) 6.9617)
	(<= (+ (* (onboard ?b) 0.4547) (+ (* (zoom-limit ?b) 0.5819) (+ (* (fast-burn ?b) 0.6743) (+ (* (capacity ?b) -0.0006) (* (fuel ?b) -0.0004))))) 6.6614)
	(<= (+ (* (total-fuel-used ) 0.0003) (+ (* (fast-burn ?b) 0.9098) (+ (* (capacity ?b) -0.0011) (+ (* (fuel ?b) -0.0002) (* (zoom-limit ?b) -0.4149))))) -1.6306)
	(<= (+ (* (total-fuel-used ) 0.0007) (+ (* (capacity ?b) 0.0019) (+ (* (fast-burn ?b) -0.9540) (+ (* (fuel ?b) -0.0088) (* (zoom-limit ?b) -0.2998))))) 1.7729)
	(<= (+ (* (zoom-limit ?b) 0.0218) (+ (* (fast-burn ?b) 0.9998) (+ (* (fuel ?b) 0.0008) (* (capacity ?b) -0.0012)))) 1.4297)
	(<= (+ (* (zoom-limit ?b) 0.4737) (+ (* (fast-burn ?b) 0.8564) (+ (* (onboard ?b) 0.2054) (* (capacity ?b) -0.0010)))) 4.9476)
	(<= (+ (* (zoom-limit ?b) 0.5025) (+ (* (capacity ?b) 0.0005) (+ (* (onboard ?b) -0.7279) (+ (* (fast-burn ?b) -0.4665) (+ (* (fuel ?b) -0.0003) (* (total-fuel-used ) -0.0003)))))) 1.4986)
	(<= (+ (* (zoom-limit ?b) 0.7175) (+ (* (fast-burn ?b) 0.6520) (+ (* (onboard ?b) 0.2453) (* (capacity ?b) -0.0007)))) 6.5721)
	(<= (+ (* (zoom-limit ?b) 0.7175) (+ (* (onboard ?b) 0.1671) (+ (* (fast-burn ?b) 0.6762) (* (capacity ?b) -0.0008)))) 6.1031)
	(<= (+ (* (zoom-limit ?b) 0.7196) (+ (* (capacity ?b) 0.0009) (+ (* (fuel ?b) -0.0005) (+ (* (total-fuel-used ) -0.0005) (* (fast-burn ?b) -0.6944))))) 3.9881)
	(<= (+ (* (zoom-limit ?b) 0.7321) (+ (* (fast-burn ?b) 0.6400) (+ (* (onboard ?b) 0.2332) (* (capacity ?b) -0.0007)))) 6.5797)
	(<= (+ (* (zoom-limit ?b) 0.8025) (+ (* (capacity ?b) 0.0007) (+ (* (fuel ?b) -0.0020) (+ (* (fast-burn ?b) -0.5967) (* (total-fuel-used ) -0.0003))))) 4.1292)
	(<= (+ (* (zoom-limit ?b) 0.8288) (+ (* (fast-burn ?b) 0.5595) (* (capacity ?b) -0.0007))) 6.2923)
	(<= (+ (* (zoom-limit ?b) 0.8362) (+ (* (capacity ?b) 0.0006) (+ (* (onboard ?b) -0.0179) (+ (* (fast-burn ?b) -0.5481) (+ (* (fuel ?b) -0.0018) (* (total-fuel-used ) -0.0003)))))) 4.2954)
	(<= (+ (* (zoom-limit ?b) 0.8891) (+ (* (fast-burn ?b) 0.3143) (+ (* (capacity ?b) -0.0005) (+ (* (onboard ?b) -0.3326) (* (fuel ?b) -0.0006))))) 5.5399)
	(<= (+ (* (zoom-limit ?b) 0.9138) (+ (* (onboard ?b) 0.1776) (+ (* (fast-burn ?b) 0.3654) (+ (* (fuel ?b) -0.0003) (* (capacity ?b) -0.0004))))) 6.8513)
	(= (+ (* (slow-burn ?b) 1) (+ (* (fast-burn ?b) 0.0374) (+ (* (zoom-limit ?b) 0.1239) (* (capacity ?b) -0.0005)))) 0.7070))
	:effect (and (at ?a ?c)
		(not (in ?a ?b))
(decrease (onboard ?b) 1)))

(:action zoom
	:parameters (?a - aircraft ?b - city ?c - city)
	:precondition (and (at ?a ?b)
	(<= (* (onboard ?a) -1) 0)
	(<= (onboard ?a) 2)
	(= (+ (* (distance ?c ?b) 0.0027) (+ (* (total-fuel-used ) 0.0522) (* (distance ?b ?c) -1))) -29.2487)
	(= (+ (* (distance ?c ?b) 1) (* (total-fuel-used ) -0.0524)) 29.3289)
	(= (+ (* (total-fuel-used ) 1) (* (onboard ?a) 3953.5000)) 18176)
	(= (capacity ?a) 10020)
	(= (fast-burn ?a) 9)
	(= (fuel ?a) 10020)
	(= (slow-burn ?a) 4)
	(= (zoom-limit ?a) 10))
	:effect (and (at ?a ?c)
		(not (at ?a ?b))
(assign (fuel ?a) (+ (* (distance ?b ?c) -0.0246) (+ (* (total-fuel-used ) -0.4699) 9756.7617)))		
(increase (total-fuel-used ) (+ (* (distance ?b ?c) 0.0768) (+ (* (total-fuel-used ) 0.4672) (+ (* (onboard ?a) -0.0004) 261.7080))))))

(:action refuel
	:parameters (?a - aircraft ?b - city)
	:precondition (and (at ?a ?b)
	(<= (+ (* (capacity ?a) 0.0003) (+ (* (onboard ?a) -0.0595) (+ (* (zoom-limit ?a) -0.9982) (* (fuel ?a) -0.0011)))) -6.7488)
	(<= (+ (* (capacity ?a) 0.0003) (+ (* (onboard ?a) -0.0834) (+ (* (fuel ?a) -0.0009) (* (zoom-limit ?a) -0.9965)))) -6.8687)
	(<= (+ (* (capacity ?a) 0.0003) (+ (* (onboard ?a) -0.0842) (+ (* (fuel ?a) -0.0008) (* (zoom-limit ?a) -0.9965)))) -6.9140)
	(<= (+ (* (capacity ?a) 0.0009) (+ (* (fuel ?a) 0.0059) (+ (* (onboard ?a) -0.6418) (+ (* (total-fuel-used ) -0.0007) (* (zoom-limit ?a) -0.7669))))) 2.0054)
	(<= (+ (* (fuel ?a) 0.0058) (+ (* (onboard ?a) 0.6554) (+ (* (capacity ?a) 0.0009) (+ (* (total-fuel-used ) -0.0009) (* (zoom-limit ?a) -0.7553))))) 1.9751)
	(<= (+ (* (fuel ?a) 0.0079) (+ (* (onboard ?a) 0.6409) (+ (* (capacity ?a) 0.0002) (+ (* (total-fuel-used ) -0.0005) (* (zoom-limit ?a) -0.7676))))) 1.8329)
	(<= (+ (* (onboard ?a) 0.1747) (+ (* (zoom-limit ?a) 0.9846) (* (capacity ?a) -0.0003))) 7.1896)
	(<= (+ (* (onboard ?a) 0.1965) (+ (* (fuel ?a) 0.0006) (+ (* (zoom-limit ?a) 0.9805) (* (capacity ?a) -0.0004)))) 7.3852)
	(<= (+ (* (onboard ?a) 0.4042) (+ (* (capacity ?a) 0.0006) (+ (* (total-fuel-used ) 0.0004) (+ (* (fuel ?a) -0.0037) (* (zoom-limit ?a) -0.9147))))) -3.3355)
	(<= (+ (* (total-fuel-used ) 0.0003) (+ (* (fuel ?a) 0.0006) (+ (* (zoom-limit ?a) 0.2059) (+ (* (capacity ?a) -0.0010) (* (onboard ?a) -0.9786))))) -0.7234)
	(<= (+ (* (total-fuel-used ) 0.0023) (+ (* (fuel ?a) 0.0310) (+ (* (onboard ?a) 0.9993) (+ (* (zoom-limit ?a) -0.0196) (* (capacity ?a) -0.0110))))) -2.5938)
	(<= (+ (* (zoom-limit ?a) -1) (* (capacity ?a) 0.0004)) -5.9384)
	(<= (+ (* (zoom-limit ?a) 0.1027) (+ (* (fuel ?a) -0.0008) (* (onboard ?a) -0.9947))) -0.2686)
	(<= (+ (* (zoom-limit ?a) 0.9863) (+ (* (onboard ?a) 0.1651) (* (capacity ?a) -0.0003))) 6.9707)
	(<= (+ (* (zoom-limit ?a) 0.9981) (+ (* (onboard ?a) 0.0603) (+ (* (capacity ?a) -0.0012) (+ (* (total-fuel-used ) -0.0014) (* (fuel ?a) -0.0076))))) -2.6102)
	(<= (+ (zoom-limit ?a) (* (capacity ?a) -0.0003)) 7.1956)
	(<= (+ (zoom-limit ?a) (* (capacity ?a) -0.0039)) -3.2706)
	(= (+ (* (fast-burn ?a) 0.0252) (+ (* (capacity ?a) 0.0004) (+ (* (slow-burn ?a) -1) (* (zoom-limit ?a) -0.1095)))) -0.5663)
	(= (+ (* (fast-burn ?a) 1) (+ (* (zoom-limit ?a) 0.2306) (* (capacity ?a) -0.0009))) 2.2459))
	:effect (and 
(assign (fuel ?a) (+ (* (slow-burn ?a) 0.0004) (+ (* (fast-burn ?a) 0.0008) (+ (capacity ?a) (+ (* (zoom-limit ?a) 0.0002) -0.0022)))))))

)