(define (domain satellite)
(:requirements :strips :typing :negative-preconditions :equality)
(:types 	satellite direction instrument mode - object
)

(:predicates (on_board ?i - instrument ?s - satellite)
	(supports ?i - instrument ?m - mode)
	(pointing ?s - satellite ?d - direction)
	(power_avail ?s - satellite)
	(power_on ?i - instrument)
	(calibrated ?i - instrument)
	(have_image ?d - direction ?m - mode)
	(calibration_target ?i - instrument ?d - direction)
)

(:action turn_to
	:parameters (?a - direction ?b - direction ?c - satellite)
	:precondition (and (power_avail ?c))
	:effect (and ))

(:action switch_on
	:parameters (?a - instrument ?b - satellite)
	:precondition (and (power_avail ?b))
	:effect (and (power_on ?a) (not (power_avail ?b))))

(:action switch_off
	:parameters (?a - instrument ?b - satellite)
	:precondition (and (on_board ?a ?b) (power_avail ?b) (power_on ?a) (calibrated ?a))
	:effect (and  (not (on_board ?a ?b))  (not (power_avail ?b))  (not (power_on ?a))  (not (calibrated ?a))))

(:action calibrate
	:parameters (?a - direction ?b - instrument ?c - satellite)
	:precondition (and )
	:effect (and ))

(:action take_image
	:parameters (?a - direction ?b - instrument ?c - mode ?d - satellite)
	:precondition (and )
	:effect (and (calibrated ?b) (have_image ?a ?c)))

)