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
	:precondition (and (at ?a ?c) (equipped_for_imaging ?a) (available ?a) (visible ?b ?c) (visible ?c ?b) (communicated_soil_data ?b) (communicated_soil_data ?c) (at_soil_sample ?c))
	:effect (and (at ?a ?b) (not (at ?a ?c))))

(:action sample_soil
	:parameters (?a - rover ?b - store ?c - waypoint)
	:precondition (and (equipped_for_imaging ?a) (have_soil_analysis ?a ?c) (full ?b) (available ?a) (communicated_soil_data ?c) (at_soil_sample ?c))
	:effect (and (empty ?b) (not (have_soil_analysis ?a ?c))  (not (full ?b))  (not (at_soil_sample ?c))))

(:action sample_rock
	:parameters (?a - rover ?b - store ?c - waypoint)
	:precondition (and (equipped_for_imaging ?a) (empty ?b) (have_soil_analysis ?a ?c) (full ?b) (available ?a) (at_soil_sample ?c) (at_rock_sample ?c) (store_of ?a ?b))
	:effect (and  (not (empty ?b))  (not (full ?b))  (not (at_rock_sample ?c))))

(:action drop
	:parameters (?a - rover ?b - store)
	:precondition (and (equipped_for_imaging ?a) (available ?a))
	:effect (and (empty ?b) (full ?b)))

(:action calibrate
	:parameters (?a - camera ?b - objective ?c - rover ?d - waypoint)
	:precondition (and (equipped_for_imaging ?c) (have_soil_analysis ?c ?d) (available ?c) (communicated_soil_data ?d) (at_soil_sample ?d))
	:effect (and (calibrated ?a ?c)))

(:action take_image
	:parameters (?a - camera ?b - mode ?c - objective ?d - rover ?e - waypoint)
	:precondition (and (equipped_for_imaging ?d) (available ?d) (communicated_soil_data ?e) (at_soil_sample ?e))
	:effect (and (calibrated ?a ?d)))

(:action communicate_soil_data
	:parameters (?a - lander ?b - rover ?c - waypoint ?d - waypoint ?e - waypoint)
	:precondition (and )
	:effect (and ))

(:action communicate_rock_data
	:parameters (?a - lander ?b - rover ?c - waypoint ?d - waypoint ?e - waypoint)
	:precondition (and )
	:effect (and ))

(:action communicate_image_data
	:parameters (?a - lander ?b - mode ?c - objective ?d - rover ?e - waypoint ?f - waypoint)
	:precondition (and (at ?d ?e) (at ?d ?f) (at_lander ?a ?e) (at_lander ?a ?f) (can_traverse ?d ?e ?f) (can_traverse ?d ?f ?e) (equipped_for_soil_analysis ?d) (equipped_for_rock_analysis ?d) (equipped_for_imaging ?d) (have_rock_analysis ?d ?e) (have_rock_analysis ?d ?f) (have_soil_analysis ?d ?e) (have_soil_analysis ?d ?f) (available ?d) (visible ?e ?f) (visible ?f ?e) (have_image ?b ?c ?d) (communicated_soil_data ?e) (communicated_soil_data ?f) (communicated_rock_data ?e) (communicated_rock_data ?f) (communicated_image_data ?b ?c) (at_soil_sample ?e) (at_soil_sample ?f) (at_rock_sample ?e) (at_rock_sample ?f) (visible_from ?c ?e) (visible_from ?c ?f) (channel_free ?a))
	:effect (and ))

)