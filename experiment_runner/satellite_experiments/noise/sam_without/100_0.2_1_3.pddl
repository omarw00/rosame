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
	:precondition (and (pointing ?a ?c)
	(pointing ?b ?c)(not (= ?a ?b)))
	:effect (and (not (pointing ?a ?c))
		(not (pointing ?b ?c))
		(pointing ?a ?c)
		(pointing ?b ?c) 
		))

(:action switch_on
	:parameters (?a - instrument ?b - satellite)
	:precondition (and (calibrated ?a)
	(power_avail ?b)
	(power_on ?a))
	:effect (and (not (power_on ?a))
		(power_on ?a) 
		))

(:action switch_off
	:parameters (?a - instrument ?b - satellite)
	:precondition (and (on_board ?a ?b)
	(power_on ?a))
	:effect (and (power_avail ?b) 
		))

(:action calibrate
	:parameters (?a - direction ?b - instrument ?c - satellite)
	:precondition (and )
	:effect (and  
		))

(:action take_image
	:parameters (?a - direction ?b - instrument ?c - mode ?d - satellite)
	:precondition (and )
	:effect (and  
		))

)