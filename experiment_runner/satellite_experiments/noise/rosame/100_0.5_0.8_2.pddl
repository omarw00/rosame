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
	:precondition (and (power_avail ?b) (power_on ?a))
	:effect (and  (not (power_avail ?b))  (not (power_on ?a))))

(:action switch_off
	:parameters (?a - instrument ?b - satellite)
	:precondition (and (power_avail ?b) (calibrated ?a))
	:effect (and (power_on ?a) (not (power_avail ?b))))

(:action calibrate
	:parameters (?a - direction ?b - instrument ?c - satellite)
	:precondition (and (on_board ?b ?c) (pointing ?a ?c) (power_avail ?c) (power_on ?b) (calibrated ?b) (calibration_target ?a ?b))
	:effect (and ))

(:action take_image
	:parameters (?a - direction ?b - instrument ?c - mode ?d - satellite)
	:precondition (and )
	:effect (and ))

)