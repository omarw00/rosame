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
	(have_image ?m - mode ?o - objective ?r - rover)
	(communicated_soil_data ?w - waypoint)
	(communicated_rock_data ?w - waypoint)
	(communicated_image_data ?m - mode ?o - objective)
	(at_soil_sample ?w - waypoint)
	(at_rock_sample ?w - waypoint)
	(visible_from ?o - objective ?w - waypoint)
	(store_of ?s - store ?r - rover)
	(calibration_target ?i - camera ?o - objective)
	(on_board ?i - camera ?r - rover)
	(channel_free ?l - lander)
)

(:action navigate
	:parameters (?a - rover ?b - waypoint ?c - waypoint)
	:precondition (and (not (= ?b ?c)))
	:effect (and  
		))

(:action sample_soil
	:parameters (?a - rover ?b - store ?c - waypoint)
	:precondition (and )
	:effect (and  
		))

(:action sample_rock
	:parameters (?a - rover ?b - store ?c - waypoint)
	:precondition (and )
	:effect (and  
		))

(:action drop
	:parameters (?a - rover ?b - store)
	:precondition (and )
	:effect (and  
		))

(:action calibrate
	:parameters (?a - camera ?b - objective ?c - rover ?d - waypoint)
	:precondition (and (at ?c ?d)
	(at_rock_sample ?d)
	(at_soil_sample ?d)
	(available ?c)
	(calibration_target ?a ?b)
	(communicated_rock_data ?d)
	(communicated_soil_data ?d)
	(equipped_for_rock_analysis ?c)
	(equipped_for_soil_analysis ?c)
	(have_rock_analysis ?c ?d)
	(have_soil_analysis ?c ?d)
	(on_board ?a ?c)
	(visible_from ?b ?d))
	:effect (and (calibrated ?a ?c) 
		))

(:action take_image
	:parameters (?a - camera ?b - mode ?c - objective ?d - rover ?e - waypoint)
	:precondition (and (at ?d ?e)
	(at_rock_sample ?e)
	(at_soil_sample ?e)
	(available ?d)
	(calibrated ?a ?d)
	(calibration_target ?a ?c)
	(communicated_rock_data ?e)
	(communicated_soil_data ?e)
	(equipped_for_rock_analysis ?d)
	(equipped_for_soil_analysis ?d)
	(have_rock_analysis ?d ?e)
	(have_soil_analysis ?d ?e)
	(on_board ?a ?d)
	(visible_from ?c ?e))
	:effect (and (have_image ?b ?c ?d) 
		))

(:action communicate_soil_data
	:parameters (?a - lander ?b - rover ?c - waypoint ?d - waypoint ?e - waypoint)
	:precondition (and (not (= ?c ?e))
	(not (= ?c ?d))
	(not (= ?d ?e)))
	:effect (and  
		))

(:action communicate_rock_data
	:parameters (?a - lander ?b - rover ?c - waypoint ?d - waypoint ?e - waypoint)
	:precondition (and (not (= ?c ?e))
	(not (= ?c ?d))
	(not (= ?d ?e)))
	:effect (and  
		))

(:action communicate_image_data
	:parameters (?a - lander ?b - mode ?c - objective ?d - rover ?e - waypoint ?f - waypoint)
	:precondition (and (not (= ?e ?f)))
	:effect (and  
		))

)