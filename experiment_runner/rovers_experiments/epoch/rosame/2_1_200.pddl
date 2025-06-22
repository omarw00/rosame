(define (domain rover)
(:requirements :strips :typing)
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
	:precondition (and (at ?a ?b) (can_traverse ?a ?b ?c) (can_traverse ?a ?c ?b) (equipped_for_imaging ?a) (available ?a) (visible ?b ?c) (visible ?c ?b))
	:effect (and (at ?a ?c) (not (at ?a ?b))))

(:action sample_soil
	:parameters (?a - rover ?b - store ?c - waypoint)
	:precondition (and (at ?a ?c) (equipped_for_soil_analysis ?a) (equipped_for_imaging ?a) (empty ?b) (available ?a) (at_soil_sample ?c) (at_rock_sample ?c) (store_of ?b ?a))
	:effect (and (have_soil_analysis ?a ?c) (full ?b) (not (empty ?b))  (not (at_soil_sample ?c))))

(:action sample_rock
	:parameters (?a - rover ?b - store ?c - waypoint)
	:precondition (and (at ?a ?c) (equipped_for_rock_analysis ?a) (equipped_for_imaging ?a) (empty ?b) (available ?a) (at_rock_sample ?c) (store_of ?b ?a))
	:effect (and (have_rock_analysis ?a ?c) (full ?b) (not (empty ?b))  (not (at_rock_sample ?c))))

(:action drop
	:parameters (?a - rover ?b - store)
	:precondition (and (equipped_for_imaging ?a) (full ?b) (available ?a) (store_of ?b ?a))
	:effect (and (empty ?b) (not (full ?b))))

(:action calibrate
	:parameters (?a - rover ?b - camera ?c - objective ?d - waypoint)
	:precondition (and (at ?a ?d) (equipped_for_soil_analysis ?a) (equipped_for_imaging ?a) (available ?a) (visible_from ?c ?d) (calibration_target ?b ?c) (on_board ?b ?a))
	:effect (and (calibrated ?b ?a)))

(:action take_image
	:parameters (?a - rover ?b - waypoint ?c - objective ?d - camera ?e - mode)
	:precondition (and (at ?a ?b) (equipped_for_soil_analysis ?a) (equipped_for_imaging ?a) (calibrated ?d ?a) (supports ?d ?e) (available ?a) (visible_from ?c ?b) (on_board ?d ?a))
	:effect (and (have_image ?a ?c ?e) (not (calibrated ?d ?a))))

(:action communicate_soil_data
	:parameters (?a - rover ?b - lander ?c - waypoint ?d - waypoint ?e - waypoint)
	:precondition (and (at ?a ?d) (at_lander ?b ?e) (equipped_for_soil_analysis ?a) (equipped_for_imaging ?a) (have_soil_analysis ?a ?c) (have_soil_analysis ?a ?e) (available ?a) (visible ?d ?e) (visible ?e ?d) (communicated_soil_data ?e) (at_soil_sample ?d) (at_rock_sample ?c) (at_rock_sample ?e) (channel_free ?b))
	:effect (and (communicated_soil_data ?c)))

(:action communicate_rock_data
	:parameters (?a - rover ?b - lander ?c - waypoint ?d - waypoint ?e - waypoint)
	:precondition (and (at ?a ?d) (at_lander ?b ?e) (equipped_for_rock_analysis ?a) (equipped_for_imaging ?a) (have_rock_analysis ?a ?c) (available ?a) (visible ?d ?e) (visible ?e ?d) (at_soil_sample ?e) (at_rock_sample ?e) (channel_free ?b))
	:effect (and (communicated_rock_data ?c)))

(:action communicate_image_data
	:parameters (?a - rover ?b - lander ?c - objective ?d - mode ?e - waypoint ?f - waypoint)
	:precondition (and (at ?a ?e) (at_lander ?b ?f) (equipped_for_soil_analysis ?a) (equipped_for_imaging ?a) (available ?a) (visible ?e ?f) (visible ?f ?e) (have_image ?a ?c ?d) (at_soil_sample ?f) (at_rock_sample ?f) (visible_from ?c ?e) (visible_from ?c ?f) (channel_free ?b))
	:effect (and (communicated_image_data ?c ?d)))

)