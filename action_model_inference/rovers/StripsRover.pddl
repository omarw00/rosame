(define (domain rover)
       (:requirements :strips :typing)
       (:types
              rover waypoint store camera mode lander objective
       )

       (:predicates
              (at ?x - rover ?y - waypoint)
              (at_lander ?x - lander ?y - waypoint)
              (can_traverse ?r - rover ?x - waypoint ?y - waypoint)
              (equipped_for_soil_analysis ?r - rover)
              (equipped_for_rock_analysis ?r - rover)
              (equipped_for_imaging ?r - rover)
              (empty ?s - store)
              (have_rock_analysis ?r - rover ?w - waypoint)
              (have_soil_analysis ?r - rover ?w - waypoint)
              (full ?s - store)
              (calibrated ?c - camera ?r - rover)
              (supports ?c - camera ?m - mode)
              (available ?r - rover)
              (visible ?w - waypoint ?p - waypoint)
              (have_image ?r - rover ?o - objective ?m - mode)
              (communicated_soil_data ?w - waypoint)
              (communicated_rock_data ?w - waypoint)
              (communicated_image_data ?o - objective ?m - mode)
              (at_soil_sample ?w - waypoint)
              (at_rock_sample ?w - waypoint)
              (visible_from ?o - objective ?w - waypoint)
              (store_of ?s - store ?r - rover)
              (calibration_target ?i - camera ?o - objective)
              (on_board ?i - camera ?r - rover)
              (channel_free ?l - lander)
       )

       (:action navigate
              :parameters (?a - rover ?b - waypoint ?c - waypoint)
              :precondition (and (can_traverse ?a ?b ?c) (available ?a) (at ?a ?b)
                     (visible ?b ?c))
              :effect (and (not (at ?a ?b)) (at ?a ?c))
       )

       (:action sample_soil
              :parameters (?a - rover ?b - store ?c - waypoint)
              :precondition (and (at ?a ?c) (at_soil_sample ?c)
                     (equipped_for_soil_analysis ?a) (store_of ?b ?a) (empty ?b))
              :effect (and (not (empty ?b)) (full ?b) (have_soil_analysis ?a ?c)
                     (not (at_soil_sample ?c)))
       )

       (:action sample_rock
              :parameters (?a - rover ?b - store ?c - waypoint)
              :precondition (and (at ?a ?c) (at_rock_sample ?c)
                     (equipped_for_rock_analysis ?a) (store_of ?b ?a)(empty ?b))
              :effect (and (not (empty ?b)) (full ?b) (have_rock_analysis ?a ?c)
                     (not (at_rock_sample ?c)))
       )

       (:action drop
              :parameters (?a - rover ?b - store)
              :precondition (and (store_of ?b ?a) (full ?b))
              :effect (and (not (full ?b)) (empty ?b))
       )

       (:action calibrate
              :parameters (?a - rover ?b - camera ?c - objective ?d - waypoint)
              :precondition (and (equipped_for_imaging ?a) (calibration_target ?b ?c)
                     (at ?a ?d) (visible_from ?c ?d)(on_board ?b ?a))
              :effect (and (calibrated ?b ?a))
       )

       (:action take_image
              :parameters (?a - rover ?b - waypoint ?c - objective ?d - camera ?e - mode)
              :precondition (and (calibrated ?d ?a) (on_board ?d ?a) (equipped_for_imaging ?a)
                     (supports ?d ?e) (visible_from ?c ?b) (at ?a ?b))
              :effect (and (have_image ?a ?c ?e)
                     (not (calibrated ?d ?a)))
       )

       (:action communicate_soil_data
              :parameters (?a - rover ?b - lander ?c - waypoint ?d - waypoint ?e - waypoint)
              :precondition (and (at ?a ?d)
                     (at_lander ?b ?e)(have_soil_analysis ?a ?c)
                     (visible ?d ?e)(available ?a)(channel_free ?b))
              :effect (and (not (available ?a))
                     (not (channel_free ?b))(channel_free ?b)
                     (communicated_soil_data ?c)(available ?a))
       )

       (:action communicate_rock_data
              :parameters (?a - rover ?b - lander ?c - waypoint ?d - waypoint ?e - waypoint)
              :precondition (and (at ?a ?d)
                     (at_lander ?b ?e)(have_rock_analysis ?a ?c)
                     (visible ?d ?e)(available ?a)(channel_free ?b))
              :effect (and (not (available ?a))
                     (not (channel_free ?b))
                     (channel_free ?b)(communicated_rock_data ?c)(available ?a))
       )

       (:action communicate_image_data
              :parameters (?a - rover ?b - lander ?c - objective ?d - mode ?e - waypoint ?f - waypoint)
              :precondition (and (at ?a ?e)
                     (at_lander ?b ?f)(have_image ?a ?c ?d)
                     (visible ?e ?f)(available ?a)(channel_free ?b))
              :effect (and (not (available ?a))
                     (not (channel_free ?b))(channel_free ?b)
                     (communicated_image_data ?c ?d)(available ?a))
       )
)