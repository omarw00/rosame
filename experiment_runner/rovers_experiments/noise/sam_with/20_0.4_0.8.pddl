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
	:precondition (and (available ?x)
	(communicated_soil_data ?y)
	(communicated_soil_data ?z)(not (= ?y ?z)))
	:effect (and (at ?x ?z) 
		))

(:action sample_soil
	:parameters (?x - rover ?s - store ?p - waypoint)
	:precondition (and (at ?x ?p)
	(at_soil_sample ?p)
	(available ?x)
	(communicated_soil_data ?p)
	(empty ?s)
	(full ?s))
	:effect (and (have_soil_analysis ?x ?p)
		(not (at_soil_sample ?p)) 
		))

(:action sample_rock
	:parameters (?x - rover ?s - store ?p - waypoint)
	:precondition (and (at_rock_sample ?p)
	(at_soil_sample ?p)
	(available ?x)
	(communicated_soil_data ?p)
	(empty ?s)
	(equipped_for_imaging ?x)
	(full ?s)
	(have_rock_analysis ?x ?p)
	(have_soil_analysis ?x ?p))
	:effect (and (not (at_rock_sample ?p))
		(not (empty ?s)) 
		))

(:action drop
	:parameters (?x - rover ?y - store)
	:precondition (and (available ?x)
	(full ?y))
	:effect (and (empty ?y) 
		))

(:action calibrate
	:parameters (?i - camera ?t - objective ?r - rover ?w - waypoint)
	:precondition (and (at_soil_sample ?w)
	(available ?r)
	(communicated_soil_data ?w))
	:effect (and  
		))

(:action take_image
	:parameters (?i - camera ?m - mode ?o - objective ?r - rover ?p - waypoint)
	:precondition (and (available ?r)
	(communicated_soil_data ?p))
	:effect (and  
		))

(:action communicate_soil_data
	:parameters (?l - lander ?r - rover ?p - waypoint ?x - waypoint ?y - waypoint)
	:precondition (and (not (= ?p ?y))
	(not (= ?x ?y))
	(not (= ?p ?x)))
	:effect (and  
		))

(:action communicate_rock_data
	:parameters (?l - lander ?r - rover ?p - waypoint ?x - waypoint ?y - waypoint)
	:precondition (and (not (= ?p ?y))
	(not (= ?x ?y))
	(not (= ?p ?x)))
	:effect (and  
		))

(:action communicate_image_data
	:parameters (?l - lander ?m - mode ?o - objective ?r - rover ?x - waypoint ?y - waypoint)
	:precondition (and (not (= ?x ?y)))
	:effect (and  
		))

)