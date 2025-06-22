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
	:precondition (and (at ?a ?b) (available ?a) (at_soil_sample ?c) (at_rock_sample ?b) (at_rock_sample ?c))
	:effect (and (at ?a ?c) (not (at ?a ?b))))

(:action sample_soil
	:parameters (?a - rover ?b - store ?c - waypoint)
	:precondition (and (at ?a ?c) (empty ?b) (available ?a) (at_soil_sample ?c) (at_rock_sample ?c))
	:effect (and (have_soil_analysis ?a ?c) (full ?b) (not (empty ?b))  (not (at_soil_sample ?c))))

(:action sample_rock
	:parameters (?a - rover ?b - store ?c - waypoint)
	:precondition (and (at ?a ?c) (equipped_for_imaging ?a) (empty ?b) (available ?a) (communicated_soil_data ?c) (at_soil_sample ?c) (at_rock_sample ?c))
	:effect (and (have_rock_analysis ?a ?c) (full ?b) (not (empty ?b))  (not (at_rock_sample ?c))))

(:action drop
	:parameters (?a - rover ?b - store)
	:precondition (and (equipped_for_soil_analysis ?a) (equipped_for_rock_analysis ?a) (equipped_for_imaging ?a) (empty ?b) (full ?b) (available ?a) (store_of ?a ?b))
	:effect (and ))

(:action calibrate
	:parameters (?a - camera ?b - objective ?c - rover ?d - waypoint)
	:precondition (and (at ?c ?d) (available ?c) (at_soil_sample ?d) (at_rock_sample ?d))
	:effect (and (calibrated ?a ?c)))

(:action take_image
	:parameters (?a - camera ?b - mode ?c - objective ?d - rover ?e - waypoint)
	:precondition (and (at ?d ?e) (calibrated ?a ?d) (available ?d) (at_soil_sample ?e) (at_rock_sample ?e))
	:effect (and  (not (calibrated ?a ?d))))

(:action communicate_soil_data
	:parameters (?a - lander ?b - rover ?c - waypoint ?d - waypoint ?e - waypoint)
	:precondition (and (visible ?e ?c))
	:effect (and (at ?b ?c) (at ?b ?d) (at ?b ?e) (at_lander ?a ?c) (at_lander ?a ?d) (at_lander ?a ?e) (can_traverse ?b ?c ?d) (can_traverse ?b ?c ?e) (can_traverse ?b ?d ?c) (can_traverse ?b ?d ?e) (can_traverse ?b ?e ?c) (can_traverse ?b ?e ?d) (equipped_for_soil_analysis ?b) (equipped_for_rock_analysis ?b) (equipped_for_imaging ?b) (have_rock_analysis ?b ?c) (have_rock_analysis ?b ?d) (have_rock_analysis ?b ?e) (have_soil_analysis ?b ?c) (have_soil_analysis ?b ?d) (have_soil_analysis ?b ?e) (available ?b) (visible ?c ?d) (visible ?c ?e) (visible ?d ?c) (visible ?d ?e) (visible ?e ?d) (communicated_soil_data ?c) (communicated_soil_data ?d) (communicated_soil_data ?e) (communicated_rock_data ?c) (communicated_rock_data ?d) (communicated_rock_data ?e) (at_soil_sample ?c) (at_soil_sample ?d) (at_soil_sample ?e) (at_rock_sample ?c) (at_rock_sample ?d) (at_rock_sample ?e) (channel_free ?a) (not (visible ?e ?c))))

(:action communicate_rock_data
	:parameters (?a - lander ?b - rover ?c - waypoint ?d - waypoint ?e - waypoint)
	:precondition (and (at ?b ?c) (at ?b ?d) (at ?b ?e) (at_lander ?a ?c) (at_lander ?a ?d) (at_lander ?a ?e) (can_traverse ?b ?c ?d) (can_traverse ?b ?c ?e) (can_traverse ?b ?d ?c) (can_traverse ?b ?d ?e) (can_traverse ?b ?e ?c) (can_traverse ?b ?e ?d) (equipped_for_soil_analysis ?b) (equipped_for_rock_analysis ?b) (equipped_for_imaging ?b) (have_rock_analysis ?b ?c) (have_rock_analysis ?b ?d) (have_rock_analysis ?b ?e) (have_soil_analysis ?b ?c) (have_soil_analysis ?b ?d) (have_soil_analysis ?b ?e) (available ?b) (visible ?c ?d) (visible ?c ?e) (visible ?d ?c) (visible ?d ?e) (visible ?e ?c) (visible ?e ?d) (communicated_soil_data ?c) (communicated_soil_data ?d) (communicated_soil_data ?e) (communicated_rock_data ?c) (communicated_rock_data ?d) (communicated_rock_data ?e) (at_soil_sample ?c) (at_soil_sample ?d) (at_soil_sample ?e) (at_rock_sample ?c) (at_rock_sample ?d) (at_rock_sample ?e) (channel_free ?a))
	:effect (and ))

(:action communicate_image_data
	:parameters (?a - lander ?b - mode ?c - objective ?d - rover ?e - waypoint ?f - waypoint)
	:precondition (and (can_traverse ?d ?e ?f) (equipped_for_rock_analysis ?d) (equipped_for_imaging ?d) (have_rock_analysis ?d ?e) (have_rock_analysis ?d ?f) (have_soil_analysis ?d ?e) (have_soil_analysis ?d ?f) (available ?d) (visible ?f ?e) (have_image ?b ?c ?d) (communicated_soil_data ?f) (communicated_rock_data ?e) (at_soil_sample ?e) (at_rock_sample ?e) (at_rock_sample ?f) (visible_from ?c ?f) (channel_free ?a))
	:effect (and  (not (can_traverse ?d ?e ?f))  (not (equipped_for_rock_analysis ?d))  (not (equipped_for_imaging ?d))  (not (have_rock_analysis ?d ?e))  (not (have_rock_analysis ?d ?f))  (not (have_soil_analysis ?d ?e))  (not (have_soil_analysis ?d ?f))  (not (available ?d))  (not (visible ?f ?e))  (not (have_image ?b ?c ?d))  (not (communicated_soil_data ?f))  (not (communicated_rock_data ?e))  (not (at_soil_sample ?e))  (not (at_rock_sample ?e))  (not (at_rock_sample ?f))  (not (visible_from ?c ?f))  (not (channel_free ?a))))

)