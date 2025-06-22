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
	:precondition (and (at ?a ?b) (can_traverse ?a ?b ?c) (can_traverse ?a ?c ?b) (available ?a) (visible ?b ?c) (visible ?c ?b) (at_rock_sample ?c))
	:effect (and (at ?a ?c) (not (at ?a ?b))))

(:action sample_soil
	:parameters (?a - rover ?b - store ?c - waypoint)
	:precondition (and )
	:effect (and (at ?a ?c) (equipped_for_soil_analysis ?a) (equipped_for_rock_analysis ?a) (equipped_for_imaging ?a) (empty ?b) (have_rock_analysis ?a ?c) (have_soil_analysis ?a ?c) (full ?b) (available ?a) (communicated_soil_data ?c) (communicated_rock_data ?c) (at_soil_sample ?c) (at_rock_sample ?c) (store_of ?a ?b)))

(:action sample_rock
	:parameters (?a - rover ?b - store ?c - waypoint)
	:precondition (and (at ?a ?c) (equipped_for_soil_analysis ?a) (equipped_for_rock_analysis ?a) (equipped_for_imaging ?a) (empty ?b) (have_rock_analysis ?a ?c) (have_soil_analysis ?a ?c) (full ?b) (available ?a) (communicated_soil_data ?c) (communicated_rock_data ?c) (at_soil_sample ?c) (at_rock_sample ?c) (store_of ?a ?b))
	:effect (and ))

(:action drop
	:parameters (?a - rover ?b - store)
	:precondition (and (equipped_for_soil_analysis ?a) (equipped_for_rock_analysis ?a) (equipped_for_imaging ?a) (empty ?b) (full ?b) (available ?a))
	:effect (and ))

(:action calibrate
	:parameters (?a - camera ?b - objective ?c - rover ?d - waypoint)
	:precondition (and (at ?c ?d) (available ?c) (visible_from ?b ?d) (calibration_target ?a ?b) (on_board ?a ?c))
	:effect (and (calibrated ?a ?c)))

(:action take_image
	:parameters (?a - camera ?b - mode ?c - objective ?d - rover ?e - waypoint)
	:precondition (and (at ?d ?e) (equipped_for_rock_analysis ?d) (calibrated ?a ?d) (supports ?a ?b) (available ?d) (have_image ?b ?c ?d) (communicated_image_data ?b ?c) (visible_from ?c ?e) (on_board ?a ?d))
	:effect (and  (not (calibrated ?a ?d))))

(:action communicate_soil_data
	:parameters (?a - lander ?b - rover ?c - waypoint ?d - waypoint ?e - waypoint)
	:precondition (and (at ?b ?d) (at_lander ?a ?e) (can_traverse ?b ?c ?d) (can_traverse ?b ?d ?c) (can_traverse ?b ?e ?c) (equipped_for_soil_analysis ?b) (equipped_for_imaging ?b) (have_soil_analysis ?b ?c) (available ?b) (visible ?c ?e) (visible ?d ?e) (visible ?e ?c) (visible ?e ?d) (communicated_soil_data ?e) (at_soil_sample ?e) (at_rock_sample ?e) (channel_free ?a))
	:effect (and ))

(:action communicate_rock_data
	:parameters (?a - lander ?b - rover ?c - waypoint ?d - waypoint ?e - waypoint)
	:precondition (and )
	:effect (and ))

(:action communicate_image_data
	:parameters (?a - lander ?b - mode ?c - objective ?d - rover ?e - waypoint ?f - waypoint)
	:precondition (and (at ?d ?e) (at_lander ?a ?f) (can_traverse ?d ?f ?e) (equipped_for_soil_analysis ?d) (equipped_for_imaging ?d) (available ?d) (visible ?e ?f) (visible ?f ?e) (have_image ?b ?c ?d) (communicated_soil_data ?f) (communicated_image_data ?b ?c) (at_soil_sample ?f) (at_rock_sample ?f) (visible_from ?c ?e) (channel_free ?a))
	:effect (and ))

)