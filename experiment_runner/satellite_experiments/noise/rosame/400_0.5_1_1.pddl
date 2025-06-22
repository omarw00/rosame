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
	:precondition (and )
	:effect (and (pointing ?a ?c) (pointing ?b ?c)))

(:action switch_on
	:parameters (?a - instrument ?b - satellite)
	:precondition (and (power_on ?a))
	:effect (and (power_avail ?b) (not (power_on ?a))))

(:action switch_off
	:parameters (?a - instrument ?b - satellite)
	:precondition (and (power_avail ?b))
	:effect (and (power_on ?a) (not (power_avail ?b))))

(:action calibrate
	:parameters (?a - direction ?b - instrument ?c - satellite)
	:precondition (and )
	:effect (and ))

(:action take_image
	:parameters (?a - direction ?b - instrument ?c - mode ?d - satellite)
	:precondition (and (supports ?b ?c) (power_on ?b))
	:effect (and (on_board ?b ?d) (pointing ?a ?d) (power_avail ?d) (have_image ?a ?c) (calibration_target ?a ?b) (not (supports ?b ?c))  (not (power_on ?b))))

)