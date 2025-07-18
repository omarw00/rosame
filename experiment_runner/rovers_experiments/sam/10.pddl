(define (domain rover)
(:requirements :strips :typing :negative-preconditions :equality)
(:types 	rover waypoint store camera mode lander objective - object
)

(:predicates (at ?x - rover ?y - waypoint)
	(at_lander ?x - lander ?y - waypoint)
	(can_traverse ?r - rover ?x - waypoint ?y - waypoint)
	(equipped_for_soil_analysis ?r - rover)
	(equipped_for_rock_analysis ?r - rover)
	(equipped_for_imaging ?r - rover)
	(empty ?s - store)
	(have_rock_analysis ?r - rover ?w - waypoint)
	(have_soil_analysis ?r - rover ?w - waypoint)
	(full ?s - store)
	(calibrated ?c - camera ?r - rover)
	(supports ?c - camera ?m - mode)
	(available ?r - rover)
	(visible ?w - waypoint ?p - waypoint)
	(have_image ?r - rover ?o - objective ?m - mode)
	(communicated_soil_data ?w - waypoint)
	(communicated_rock_data ?w - waypoint)
	(communicated_image_data ?o - objective ?m - mode)
	(at_soil_sample ?w - waypoint)
	(at_rock_sample ?w - waypoint)
	(visible_from ?o - objective ?w - waypoint)
	(store_of ?s - store ?r - rover)
	(calibration_target ?i - camera ?o - objective)
	(on_board ?i - camera ?r - rover)
	(channel_free ?l - lander)
)

(:action navigate
	:parameters (?x - rover ?y - waypoint ?z - waypoint)
	:precondition (and (at ?x ?y)
	(available ?x)(not (= ?y ?z)))
	:effect (and (at ?x ?z)
		(not (at ?x ?y)) 
		))

(:action sample_soil
	:parameters (?x - rover ?s - store ?p - waypoint)
	:precondition (and (at ?x ?p)
	(at_soil_sample ?p)
	(available ?x)
	(empty ?s))
	:effect (and (full ?s)
		(have_soil_analysis ?x ?p)
		(not (at_soil_sample ?p))
		(not (empty ?s)) 
		))

(:action sample_rock
	:parameters (?x - rover ?s - store ?p - waypoint)
	:precondition (and (at ?x ?p)
	(at_rock_sample ?p)
	(available ?x)
	(empty ?s))
	:effect (and (full ?s)
		(have_rock_analysis ?x ?p)
		(not (at_rock_sample ?p))
		(not (empty ?s)) 
		))

(:action drop
	:parameters (?x - rover ?y - store)
	:precondition (and (available ?x)
	(full ?y))
	:effect (and (empty ?y)
		(not (full ?y)) 
		))

(:action calibrate
	:parameters (?i - camera ?t - objective ?r - rover ?w - waypoint)
	:precondition (and (at ?r ?w)
	(available ?r))
	:effect (and (calibrated ?i ?r) 
		))

(:action take_image
	:parameters (?i - camera ?m - mode ?o - objective ?r - rover ?p - waypoint)
	:precondition (and (at ?r ?p)
	(available ?r)
	(calibrated ?i ?r))
	:effect (and (have_image ?r ?o ?m)
		(not (calibrated ?i ?r)) 
		))

(:action communicate_soil_data
	:parameters (?l - lander ?r - rover ?p - waypoint ?x - waypoint ?y - waypoint)
	:precondition (and (not (= ?p ?y))
	(not (= ?p ?x))
	(not (= ?x ?y)))
	:effect (and  
		))

(:action communicate_rock_data
	:parameters (?l - lander ?r - rover ?p - waypoint ?x - waypoint ?y - waypoint)
	:precondition (and (can_traverse ?r ?y ?p)
(communicated_rock_data ?x)
(visible ?x ?y)
(visible ?x ?p)
(equipped_for_imaging ?r)
(at_rock_sample ?y)
(visible ?y ?x)
(at_lander ?l ?p)
(at_soil_sample ?x)
(visible ?p ?y)
(have_rock_analysis ?r ?y)
(can_traverse ?r ?x ?p)
(communicated_soil_data ?x)
(available ?r)
(have_rock_analysis ?r ?p)
(at_rock_sample ?x)
(have_soil_analysis ?r ?p)
(communicated_soil_data ?p)
(communicated_rock_data ?y)
(can_traverse ?r ?y ?x)
(have_rock_analysis ?r ?x)
(can_traverse ?r ?p ?y)
(equipped_for_rock_analysis ?r)
(have_soil_analysis ?r ?y)
(at ?r ?p)
(channel_free ?l)
(at_soil_sample ?y)
(communicated_soil_data ?y)
(equipped_for_soil_analysis ?r)
(at_rock_sample ?p)
(can_traverse ?r ?x ?y)
(at_lander ?l ?y)
(have_soil_analysis ?r ?x)
(visible ?p ?x)
(at ?r ?x)
(communicated_rock_data ?p)
(at ?r ?y)
(visible ?y ?p)
(can_traverse ?r ?p ?x)
(at_lander ?l ?x)
(at_soil_sample ?p) (not (= ?p ?y))
	(not (= ?p ?x))
	(not (= ?x ?y)))
	:effect (and  
		))

(:action communicate_image_data
	:parameters (?l - lander ?m - mode ?o - objective ?r - rover ?x - waypoint ?y - waypoint)
	:precondition (and (communicated_soil_data ?y)
(have_image ?r ?o ?m)
(equipped_for_soil_analysis ?r)
(communicated_rock_data ?x)
(visible ?x ?y)
(equipped_for_imaging ?r)
(visible_from ?o ?y)
(at_rock_sample ?y)
(can_traverse ?r ?x ?y)
(visible ?y ?x)
(at_lander ?l ?y)
(have_soil_analysis ?r ?x)
(at_soil_sample ?x)
(at ?r ?x)
(at_soil_sample ?y)
(at ?r ?y)
(have_rock_analysis ?r ?y)
(communicated_soil_data ?x)
(visible_from ?o ?x)
(available ?r)
(at_rock_sample ?x)
(communicated_rock_data ?y)
(can_traverse ?r ?y ?x)
(communicated_image_data ?o ?m)
(equipped_for_rock_analysis ?r)
(have_soil_analysis ?r ?y)
(channel_free ?l)
(at_lander ?l ?x)
(have_rock_analysis ?r ?x) (not (= ?x ?y)))
	:effect (and  
		))

)