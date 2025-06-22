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
	(calibration_target ?d - direction ?i - instrument)
)

(:action turn_to
	:parameters (?d_new - direction ?d_prev - direction ?s - satellite)
	:precondition (and (pointing ?s ?d_prev)(not (= ?d_new ?d_prev)))
	:effect (and (not (pointing ?s ?d_prev))
		(pointing ?s ?d_new) 
		))

(:action switch_on
	:parameters (?i - instrument ?s - satellite)
	:precondition (and (power_avail ?s))
	:effect (and (not (power_avail ?s))
		(power_on ?i) 
		))

(:action switch_off
	:parameters (?i - instrument ?s - satellite)
	:precondition (and )
	:effect (and  
		))

(:action calibrate
	:parameters (?d - direction ?i - instrument ?s - satellite)
	:precondition (and )
	:effect (and  
		))

(:action take_image
	:parameters (?d - direction ?i - instrument ?m - mode ?s - satellite)
	:precondition (and )
	:effect (and  
		))

)