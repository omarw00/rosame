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
	:parameters (?a - satellite ?b - direction ?c - direction)
	:precondition (and (pointing ?a ?c)(not (= ?b ?c)))
	:effect (and (not (pointing ?a ?c))
		(pointing ?a ?b) 
		))

(:action switch_on
	:parameters (?a - instrument ?b - satellite)
	:precondition (and (on_board ?a ?b)
	(power_avail ?b))
	:effect (and (not (calibrated ?a))
		(not (power_avail ?b))
		(power_on ?a) 
		))

(:action switch_off
	:parameters (?a - instrument ?b - satellite)
	:precondition (and (calibrated ?a)
	(on_board ?a ?b)
	(power_on ?a))
	:effect (and (not (power_on ?a))
		(power_avail ?b) 
		))

(:action calibrate
	:parameters (?a - satellite ?b - instrument ?c - direction)
	:precondition (and (calibration_target ?b ?c)
	(on_board ?b ?a)
	(pointing ?a ?c)
	(power_on ?b))
	:effect (and (calibrated ?b) 
		))

(:action take_image
	:parameters (?a - satellite ?b - direction ?c - instrument ?d - mode)
	:precondition (and (calibrated ?c)
	(on_board ?c ?a)
	(pointing ?a ?b)
	(power_on ?c)
	(supports ?c ?d))
	:effect (and (have_image ?b ?d) 
		))

)