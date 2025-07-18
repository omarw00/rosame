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
	:parameters (?a - rover ?b - waypoint ?c - waypoint)
	:precondition (and (at ?a ?b)
	(available ?a)
	(can_traverse ?a ?b ?c)
	(can_traverse ?a ?c ?b)
	(equipped_for_imaging ?a)
	(equipped_for_soil_analysis ?a)
	(visible ?b ?c)
	(visible ?c ?b)(not (= ?b ?c)))
	:effect (and (at ?a ?c)
		(not (at ?a ?b)) 
		))

(:action sample_soil
	:parameters (?a - rover ?b - store ?c - waypoint)
	:precondition (and (at ?a ?c)
	(at_soil_sample ?c)
	(available ?a)
	(empty ?b)
	(equipped_for_imaging ?a)
	(equipped_for_soil_analysis ?a)
	(store_of ?b ?a))
	:effect (and (full ?b)
		(have_soil_analysis ?a ?c)
		(not (at_soil_sample ?c))
		(not (empty ?b)) 
		))

(:action sample_rock
	:parameters (?a - rover ?b - store ?c - waypoint)
	:precondition (and (at ?a ?c)
	(at_rock_sample ?c)
	(available ?a)
	(empty ?b)
	(equipped_for_imaging ?a)
	(equipped_for_rock_analysis ?a)
	(equipped_for_soil_analysis ?a)
	(store_of ?b ?a))
	:effect (and (full ?b)
		(have_rock_analysis ?a ?c)
		(not (at_rock_sample ?c))
		(not (empty ?b)) 
		))

(:action drop
	:parameters (?a - rover ?b - store)
	:precondition (and (available ?a)
	(equipped_for_imaging ?a)
	(equipped_for_rock_analysis ?a)
	(equipped_for_soil_analysis ?a)
	(full ?b)
	(store_of ?b ?a))
	:effect (and (empty ?b)
		(not (full ?b)) 
		))

(:action calibrate
	:parameters (?a - rover ?b - camera ?c - objective ?d - waypoint)
	:precondition (and (at ?a ?d)
	(at_rock_sample ?d)
	(available ?a)
	(calibration_target ?b ?c)
	(equipped_for_imaging ?a)
	(equipped_for_soil_analysis ?a)
	(on_board ?b ?a)
	(visible_from ?c ?d))
	:effect (and (calibrated ?b ?a) 
		))

(:action take_image
	:parameters (?a - rover ?b - waypoint ?c - objective ?d - camera ?e - mode)
	:precondition (and (at ?a ?b)
	(available ?a)
	(calibrated ?d ?a)
	(calibration_target ?d ?c)
	(equipped_for_imaging ?a)
	(equipped_for_soil_analysis ?a)
	(on_board ?d ?a)
	(supports ?d ?e)
	(visible_from ?c ?b))
	:effect (and (have_image ?a ?c ?e)
		(not (calibrated ?d ?a)) 
		))

(:action communicate_soil_data
	:parameters (?a - rover ?b - lander ?c - waypoint ?d - waypoint ?e - waypoint)
	:precondition (and (at ?a ?d)
	(at_lander ?b ?e)
	(at_rock_sample ?e)
	(available ?a)
	(channel_free ?b)
	(equipped_for_imaging ?a)
	(equipped_for_soil_analysis ?a)
	(have_soil_analysis ?a ?c)
	(visible ?c ?d)
	(visible ?d ?c)
	(visible ?d ?e)
	(visible ?e ?d)(not (= ?c ?e))
	(not (= ?d ?e)))
	:effect (and (communicated_soil_data ?c) 
		))

(:action communicate_rock_data
	:parameters (?a - rover ?b - lander ?c - waypoint ?d - waypoint ?e - waypoint)
	:precondition (and (at ?a ?d)
	(at_lander ?b ?e)
	(at_rock_sample ?e)
	(available ?a)
	(can_traverse ?a ?c ?d)
	(can_traverse ?a ?d ?c)
	(can_traverse ?a ?d ?e)
	(can_traverse ?a ?e ?d)
	(channel_free ?b)
	(communicated_rock_data ?d)
	(equipped_for_imaging ?a)
	(equipped_for_rock_analysis ?a)
	(equipped_for_soil_analysis ?a)
	(have_rock_analysis ?a ?c)
	(have_rock_analysis ?a ?d)
	(visible ?c ?d)
	(visible ?d ?c)
	(visible ?d ?e)
	(visible ?e ?d)(not (= ?c ?e))
	(not (= ?d ?e)))
	:effect (and (communicated_rock_data ?c) 
		))

(:action communicate_image_data
	:parameters (?a - rover ?b - lander ?c - objective ?d - mode ?e - waypoint ?f - waypoint)
	:precondition (and (at ?a ?e)
	(at_lander ?b ?f)
	(at_rock_sample ?f)
	(available ?a)
	(channel_free ?b)
	(equipped_for_imaging ?a)
	(equipped_for_soil_analysis ?a)
	(have_image ?a ?c ?d)
	(visible ?e ?f)
	(visible ?f ?e)(not (= ?e ?f)))
	:effect (and (communicated_image_data ?c ?d) 
		))

)