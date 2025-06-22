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
	:precondition (and (at ?a ?c)
	(at_soil_sample ?c)
	(available ?a)
	(communicated_rock_data ?c)
	(communicated_soil_data ?c)
	(empty ?b)
	(equipped_for_rock_analysis ?a)
	(equipped_for_soil_analysis ?a)
	(full ?b)
	(have_rock_analysis ?a ?c)
	(have_soil_analysis ?a ?c))
	:effect (and (at_rock_sample ?c)
		(not (empty ?b)) 
		))

(:action drop
	:parameters (?a - rover ?b - store)
	:precondition (and (available ?a)
	(equipped_for_rock_analysis ?a)
	(equipped_for_soil_analysis ?a)
	(full ?b))
	:effect (and (empty ?b) 
		))

(:action calibrate
	:parameters (?a - camera ?b - objective ?c - rover ?d - waypoint)
	:precondition (and )
	:effect (and  
		))

(:action take_image
	:parameters (?a - camera ?b - mode ?c - objective ?d - rover ?e - waypoint)
	:precondition (and (at ?d ?e)
	(at_rock_sample ?e)
	(at_soil_sample ?e)
	(available ?d)
	(calibrated ?a ?d)
	(calibration_target ?a ?c)
	(communicated_image_data ?b ?c)
	(communicated_rock_data ?e)
	(communicated_soil_data ?e)
	(equipped_for_rock_analysis ?d)
	(equipped_for_soil_analysis ?d)
	(have_image ?b ?c ?d)
	(have_rock_analysis ?d ?e)
	(have_soil_analysis ?d ?e)
	(on_board ?a ?d)
	(supports ?a ?b))
	:effect (and (not (calibrated ?a ?d)) 
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