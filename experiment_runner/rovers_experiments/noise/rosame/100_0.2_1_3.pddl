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
	:precondition (and (at ?a ?c) (available ?a))
	:effect (and (at ?a ?b) (not (at ?a ?c))))

(:action sample_soil
	:parameters (?a - rover ?b - store ?c - waypoint)
	:precondition (and )
	:effect (and ))

(:action sample_rock
	:parameters (?a - rover ?b - store ?c - waypoint)
	:precondition (and (equipped_for_soil_analysis ?a) (have_rock_analysis ?a ?c))
	:effect (and (at ?a ?c) (equipped_for_rock_analysis ?a) (empty ?b) (full ?b) (available ?a) (communicated_soil_data ?c) (communicated_rock_data ?c) (at_soil_sample ?c) (at_rock_sample ?c) (store_of ?a ?b) (not (equipped_for_soil_analysis ?a))  (not (have_rock_analysis ?a ?c))))

(:action drop
	:parameters (?a - rover ?b - store)
	:precondition (and (equipped_for_soil_analysis ?a) (equipped_for_rock_analysis ?a) (equipped_for_imaging ?a) (empty ?b) (full ?b) (available ?a) (store_of ?a ?b))
	:effect (and ))

(:action calibrate
	:parameters (?a - camera ?b - objective ?c - rover ?d - waypoint)
	:precondition (and (equipped_for_rock_analysis ?c) (have_rock_analysis ?c ?d) (available ?c) (at_rock_sample ?d) (on_board ?a ?c))
	:effect (and (calibrated ?a ?c)))

(:action take_image
	:parameters (?a - camera ?b - mode ?c - objective ?d - rover ?e - waypoint)
	:precondition (and (equipped_for_rock_analysis ?d) (have_soil_analysis ?d ?e) (calibrated ?a ?d) (supports ?a ?b) (available ?d) (have_image ?b ?c ?d) (communicated_image_data ?b ?c) (calibration_target ?a ?c) (on_board ?a ?d))
	:effect (and  (not (calibrated ?a ?d))))

(:action communicate_soil_data
	:parameters (?a - lander ?b - rover ?c - waypoint ?d - waypoint ?e - waypoint)
	:precondition (and (at ?b ?c) (at ?b ?d) (at_lander ?a ?d) (at_lander ?a ?e) (can_traverse ?b ?c ?d) (can_traverse ?b ?c ?e) (can_traverse ?b ?d ?c) (can_traverse ?b ?e ?c) (can_traverse ?b ?e ?d) (equipped_for_soil_analysis ?b) (equipped_for_imaging ?b) (have_rock_analysis ?b ?d) (have_soil_analysis ?b ?d) (available ?b) (visible ?e ?c) (communicated_rock_data ?c) (at_soil_sample ?e) (at_rock_sample ?d) (at_rock_sample ?e) (channel_free ?a))
	:effect (and ))

(:action communicate_rock_data
	:parameters (?a - lander ?b - rover ?c - waypoint ?d - waypoint ?e - waypoint)
	:precondition (and (at ?b ?c) (at ?b ?e) (at_lander ?a ?e) (can_traverse ?b ?c ?d) (can_traverse ?b ?d ?c) (equipped_for_rock_analysis ?b) (have_rock_analysis ?b ?c) (have_rock_analysis ?b ?d) (have_soil_analysis ?b ?c) (have_soil_analysis ?b ?d) (have_soil_analysis ?b ?e) (available ?b) (at_soil_sample ?e) (at_rock_sample ?e) (channel_free ?a))
	:effect (and ))

(:action communicate_image_data
	:parameters (?a - lander ?b - mode ?c - objective ?d - rover ?e - waypoint ?f - waypoint)
	:precondition (and (at ?d ?f) (at_lander ?a ?e) (at_lander ?a ?f) (can_traverse ?d ?f ?e) (equipped_for_soil_analysis ?d) (available ?d) (communicated_image_data ?b ?c) (at_soil_sample ?f) (at_rock_sample ?f) (visible_from ?c ?e) (channel_free ?a))
	:effect (and ))

)