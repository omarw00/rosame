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
	:parameters (?d_new - direction ?d_prev - direction ?s - satellite)
	:precondition (and (not (= ?d_new ?d_prev)))
	:effect (and  
		))

(:action switch_on
	:parameters (?i - instrument ?s - satellite)
	:precondition (and (power_avail ?s)
	(power_on ?i))
	:effect (and (not (power_avail ?s))
		(not (power_on ?i))
		(power_avail ?s)
		(power_on ?i) 
		))

(:action switch_off
	:parameters (?i - instrument ?s - satellite)
	:precondition (and (calibrated ?i)
	(on_board ?i ?s)
	(power_avail ?s))
	:effect (and (power_on ?i) 
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