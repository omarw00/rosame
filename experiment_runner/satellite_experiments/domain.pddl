(define (domain satellite)
  (:requirements :strips :typing)
  (:types satellite direction instrument mode)
  (:predicates 
	(on_board ?i - instrument ?s - satellite)
	(supports ?i - instrument ?m - mode)
	(pointing ?s - satellite ?d - direction)
	(power_avail ?s - satellite)
	(power_on ?i - instrument)
	(calibrated ?i - instrument)
	(have_image ?d - direction ?m - mode)
	(calibration_target ?i - instrument ?d - direction))

  (:action turn_to
   :parameters (?a - satellite ?b - direction ?c - direction)
   :precondition (and (pointing ?a ?c))
   :effect (and  (pointing ?a ?b)
                 (not (pointing ?a ?c))))

  (:action switch_on
   :parameters (?a - instrument ?b - satellite)
   :precondition (and (on_board ?a ?b)
                      (power_avail ?b))
   :effect (and (power_on ?a)
                (not (calibrated ?a))
                (not (power_avail ?b))))

  (:action switch_off
   :parameters (?a - instrument ?b - satellite)
   :precondition (and (on_board ?a ?b)
                      (power_on ?a))
   :effect (and (not (power_on ?a))
                (power_avail ?b)))

  (:action calibrate
   :parameters (?a - satellite ?b - instrument ?c - direction)
   :precondition (and (on_board ?b ?a)
		      (calibration_target ?b ?c)
                      (pointing ?a ?c)
                      (power_on ?b))
   :effect (and (calibrated ?b)))

  (:action take_image
   :parameters (?a - satellite ?b - direction ?c - instrument ?d - mode)
   :precondition (and (calibrated ?c)
                      (on_board ?c ?a)
                      (supports ?c ?d)
                      (power_on ?c)
                      (pointing ?a ?b))
   :effect (and (have_image ?b ?d))))
