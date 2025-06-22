(define (domain satellite)
(:requirements :strips :typing :negative-preconditions :equality)
(:types 	satellite direction instrument mode - object
)

(:predicates (on_board ?i - instrument ?s - satellite)
	(supports ?i - instrument ?m - mode)
	(pointing ?d - direction ?s - satellite)
	(power_avail ?s - satellite)
	(power_on ?i - instrument)
	(calibrated ?i - instrument)
	(have_image ?d - direction ?m - mode)
	(calibration_target ?d - direction ?i - instrument)
)

(:action turn_to
	:parameters (?a - direction ?b - direction ?c - satellite)
	:precondition (and (pointing ?b ?c))
	:effect (and (pointing ?a ?c) (not (pointing ?b ?c))))

(:action switch_on
	:parameters (?a - instrument ?b - satellite)
	:precondition (and (on_board ?a ?b) (power_avail ?b))
	:effect (and (power_on ?a) (not (power_avail ?b))))

(:action switch_off
	:parameters (?a - instrument ?b - satellite)
	:precondition (and (on_board ?a ?b) (power_on ?a))
	:effect (and (power_avail ?b) (not (power_on ?a))))

(:action calibrate
	:parameters (?a - direction ?b - instrument ?c - satellite)
	:precondition (and (pointing ?a ?c) (power_on ?b) (calibrated ?b))
	:effect (and (on_board ?b ?c) (power_avail ?c) (calibration_target ?a ?b) (not (pointing ?a ?c))))

(:action take_image
	:parameters (?a - direction ?b - instrument ?c - mode ?d - satellite)
	:precondition (and (pointing ?a ?d) (power_avail ?d) (power_on ?b) (calibrated ?b) (have_image ?a ?c) (calibration_target ?a ?b))
	:effect (and  (not (pointing ?a ?d))  (not (power_avail ?d))  (not (power_on ?b))  (not (calibrated ?b))  (not (have_image ?a ?c))  (not (calibration_target ?a ?b))))

)