(define (domain satellite)
(:requirements :typing)
(:types 	satellite direction instrument mode - object
)

(:predicates (pointing ?s - satellite ?d - direction)
	(have_image ?d - direction ?m - mode)
	(calibrated ?i - instrument)
	(supports ?i - instrument ?m - mode)
	(on_board ?i - instrument ?agent - satellite)
	(calibration_target ?i - instrument ?d - direction)
	(power_avail ?agent - satellite)
	(power_on ?i - instrument)
	(dummy-additional-predicate )
)

(:action turn_to
	:parameters (?a - satellite ?b - direction ?c - direction)
	:precondition (and (pointing ?a ?c))
	:effect (and (pointing ?a ?b) (not (pointing ?a ?c))))

(:action switch_on
	:parameters (?a - satellite ?b - instrument)
	:precondition (and (on_board ?b ?a) (power_avail ?a))
	:effect (and (power_on ?b) (not (power_avail ?a))))

(:action switch_off
	:parameters (?a - satellite ?b - instrument)
	:precondition (and (calibrated ?b) (power_avail ?a) (power_on ?b) (dummy-additional-predicate))
	:effect (and (on_board ?b ?a)))

(:action calibrate
	:parameters (?a - satellite ?b - instrument ?c - direction)
	:precondition (and (pointing ?a ?c) (on_board ?b ?a) (calibration_target ?b ?c) (power_on ?b))
	:effect (and (calibrated ?b)))

(:action take_image
	:parameters (?a - satellite ?b - instrument ?c - direction ?d - mode)
	:precondition (and (pointing ?a ?c) (calibrated ?b) (supports ?b ?d) (on_board ?b ?a) (power_on ?b))
	:effect (and (have_image ?c ?d)))

(:action dummy-add-predicate-action
	:parameters (?a - object)
	:precondition (and )
	:effect (and ))

(:action dummy-del-predicate-action
	:parameters (?a - object)
	:precondition (and )
	:effect (and ))

)