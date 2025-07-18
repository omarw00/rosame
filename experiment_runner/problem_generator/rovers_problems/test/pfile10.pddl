(define (problem roverprob3) (:domain Rover)
(:objects
	general - Lander
	colour high_res low_res - Mode
	rover0 rover1 rover2 rover3 rover4 rover5 - Rover
	rover0store rover1store rover2store rover3store rover4store rover5store - Store
	waypoint0 waypoint1 waypoint2 waypoint3 waypoint4 waypoint5 waypoint6 waypoint7 waypoint8 waypoint9 - Waypoint
	camera0 camera1 camera2 camera3 - Camera
	objective0 objective1 objective2 objective3 - Objective
	)
(:init
	(visible waypoint0 waypoint1)
	(visible waypoint1 waypoint0)
	(visible waypoint0 waypoint2)
	(visible waypoint2 waypoint0)
	(visible waypoint0 waypoint4)
	(visible waypoint4 waypoint0)
	(visible waypoint0 waypoint5)
	(visible waypoint5 waypoint0)
	(visible waypoint0 waypoint8)
	(visible waypoint8 waypoint0)
	(visible waypoint1 waypoint3)
	(visible waypoint3 waypoint1)
	(visible waypoint1 waypoint6)
	(visible waypoint6 waypoint1)
	(visible waypoint1 waypoint8)
	(visible waypoint8 waypoint1)
	(visible waypoint2 waypoint1)
	(visible waypoint1 waypoint2)
	(visible waypoint2 waypoint3)
	(visible waypoint3 waypoint2)
	(visible waypoint2 waypoint7)
	(visible waypoint7 waypoint2)
	(visible waypoint3 waypoint0)
	(visible waypoint0 waypoint3)
	(visible waypoint3 waypoint4)
	(visible waypoint4 waypoint3)
	(visible waypoint3 waypoint7)
	(visible waypoint7 waypoint3)
	(visible waypoint4 waypoint6)
	(visible waypoint6 waypoint4)
	(visible waypoint4 waypoint8)
	(visible waypoint8 waypoint4)
	(visible waypoint5 waypoint2)
	(visible waypoint2 waypoint5)
	(visible waypoint5 waypoint3)
	(visible waypoint3 waypoint5)
	(visible waypoint5 waypoint7)
	(visible waypoint7 waypoint5)
	(visible waypoint5 waypoint8)
	(visible waypoint8 waypoint5)
	(visible waypoint6 waypoint5)
	(visible waypoint5 waypoint6)
	(visible waypoint7 waypoint6)
	(visible waypoint6 waypoint7)
	(visible waypoint7 waypoint9)
	(visible waypoint9 waypoint7)
	(visible waypoint8 waypoint2)
	(visible waypoint2 waypoint8)
	(visible waypoint8 waypoint6)
	(visible waypoint6 waypoint8)
	(visible waypoint9 waypoint1)
	(visible waypoint1 waypoint9)
	(visible waypoint9 waypoint8)
	(visible waypoint8 waypoint9)
	(at_soil_sample waypoint0)
	(at_rock_sample waypoint0)
	(at_rock_sample waypoint3)
	(at_soil_sample waypoint4)
	(at_rock_sample waypoint4)
	(at_soil_sample waypoint5)
	(at_rock_sample waypoint5)
	(at_soil_sample waypoint8)
	(at_rock_sample waypoint8)
	(at_rock_sample waypoint9)
	(at_lander general waypoint3)
	(channel_free general)
	(at rover0 waypoint3)
	(available rover0)
	(store_of rover0store rover0)
	(empty rover0store)
	(equipped_for_soil_analysis rover0)
	(equipped_for_rock_analysis rover0)
	(can_traverse rover0 waypoint3 waypoint0)
	(can_traverse rover0 waypoint0 waypoint3)
	(can_traverse rover0 waypoint3 waypoint1)
	(can_traverse rover0 waypoint1 waypoint3)
	(can_traverse rover0 waypoint3 waypoint4)
	(can_traverse rover0 waypoint4 waypoint3)
	(can_traverse rover0 waypoint3 waypoint7)
	(can_traverse rover0 waypoint7 waypoint3)
	(can_traverse rover0 waypoint0 waypoint2)
	(can_traverse rover0 waypoint2 waypoint0)
	(can_traverse rover0 waypoint0 waypoint5)
	(can_traverse rover0 waypoint5 waypoint0)
	(can_traverse rover0 waypoint0 waypoint8)
	(can_traverse rover0 waypoint8 waypoint0)
	(can_traverse rover0 waypoint7 waypoint6)
	(can_traverse rover0 waypoint6 waypoint7)
	(can_traverse rover0 waypoint7 waypoint9)
	(can_traverse rover0 waypoint9 waypoint7)
	(at rover1 waypoint8)
	(available rover1)
	(store_of rover1store rover1)
	(empty rover1store)
	(equipped_for_soil_analysis rover1)
	(equipped_for_rock_analysis rover1)
	(equipped_for_imaging rover1)
	(can_traverse rover1 waypoint8 waypoint0)
	(can_traverse rover1 waypoint0 waypoint8)
	(can_traverse rover1 waypoint8 waypoint1)
	(can_traverse rover1 waypoint1 waypoint8)
	(can_traverse rover1 waypoint8 waypoint2)
	(can_traverse rover1 waypoint2 waypoint8)
	(can_traverse rover1 waypoint8 waypoint4)
	(can_traverse rover1 waypoint4 waypoint8)
	(can_traverse rover1 waypoint8 waypoint5)
	(can_traverse rover1 waypoint5 waypoint8)
	(can_traverse rover1 waypoint8 waypoint6)
	(can_traverse rover1 waypoint6 waypoint8)
	(can_traverse rover1 waypoint8 waypoint9)
	(can_traverse rover1 waypoint9 waypoint8)
	(can_traverse rover1 waypoint0 waypoint3)
	(can_traverse rover1 waypoint3 waypoint0)
	(can_traverse rover1 waypoint5 waypoint7)
	(can_traverse rover1 waypoint7 waypoint5)
	(at rover2 waypoint8)
	(available rover2)
	(store_of rover2store rover2)
	(empty rover2store)
	(equipped_for_rock_analysis rover2)
	(equipped_for_imaging rover2)
	(can_traverse rover2 waypoint8 waypoint0)
	(can_traverse rover2 waypoint0 waypoint8)
	(can_traverse rover2 waypoint8 waypoint1)
	(can_traverse rover2 waypoint1 waypoint8)
	(can_traverse rover2 waypoint8 waypoint5)
	(can_traverse rover2 waypoint5 waypoint8)
	(can_traverse rover2 waypoint8 waypoint6)
	(can_traverse rover2 waypoint6 waypoint8)
	(can_traverse rover2 waypoint8 waypoint9)
	(can_traverse rover2 waypoint9 waypoint8)
	(can_traverse rover2 waypoint0 waypoint2)
	(can_traverse rover2 waypoint2 waypoint0)
	(can_traverse rover2 waypoint0 waypoint4)
	(can_traverse rover2 waypoint4 waypoint0)
	(can_traverse rover2 waypoint1 waypoint3)
	(can_traverse rover2 waypoint3 waypoint1)
	(can_traverse rover2 waypoint5 waypoint7)
	(can_traverse rover2 waypoint7 waypoint5)
	(at rover3 waypoint5)
	(available rover3)
	(store_of rover3store rover3)
	(empty rover3store)
	(equipped_for_soil_analysis rover3)
	(equipped_for_rock_analysis rover3)
	(equipped_for_imaging rover3)
	(can_traverse rover3 waypoint5 waypoint0)
	(can_traverse rover3 waypoint0 waypoint5)
	(can_traverse rover3 waypoint5 waypoint2)
	(can_traverse rover3 waypoint2 waypoint5)
	(can_traverse rover3 waypoint5 waypoint3)
	(can_traverse rover3 waypoint3 waypoint5)
	(can_traverse rover3 waypoint5 waypoint6)
	(can_traverse rover3 waypoint6 waypoint5)
	(can_traverse rover3 waypoint5 waypoint8)
	(can_traverse rover3 waypoint8 waypoint5)
	(can_traverse rover3 waypoint0 waypoint4)
	(can_traverse rover3 waypoint4 waypoint0)
	(can_traverse rover3 waypoint2 waypoint1)
	(can_traverse rover3 waypoint1 waypoint2)
	(can_traverse rover3 waypoint3 waypoint7)
	(can_traverse rover3 waypoint7 waypoint3)
	(can_traverse rover3 waypoint1 waypoint9)
	(can_traverse rover3 waypoint9 waypoint1)
	(at rover4 waypoint3)
	(available rover4)
	(store_of rover4store rover4)
	(empty rover4store)
	(equipped_for_soil_analysis rover4)
	(can_traverse rover4 waypoint3 waypoint0)
	(can_traverse rover4 waypoint0 waypoint3)
	(can_traverse rover4 waypoint3 waypoint1)
	(can_traverse rover4 waypoint1 waypoint3)
	(can_traverse rover4 waypoint3 waypoint5)
	(can_traverse rover4 waypoint5 waypoint3)
	(can_traverse rover4 waypoint3 waypoint7)
	(can_traverse rover4 waypoint7 waypoint3)
	(can_traverse rover4 waypoint0 waypoint4)
	(can_traverse rover4 waypoint4 waypoint0)
	(can_traverse rover4 waypoint1 waypoint8)
	(can_traverse rover4 waypoint8 waypoint1)
	(can_traverse rover4 waypoint5 waypoint2)
	(can_traverse rover4 waypoint2 waypoint5)
	(can_traverse rover4 waypoint5 waypoint6)
	(can_traverse rover4 waypoint6 waypoint5)
	(can_traverse rover4 waypoint7 waypoint9)
	(can_traverse rover4 waypoint9 waypoint7)
	(at rover5 waypoint3)
	(available rover5)
	(store_of rover5store rover5)
	(empty rover5store)
	(equipped_for_rock_analysis rover5)
	(can_traverse rover5 waypoint3 waypoint0)
	(can_traverse rover5 waypoint0 waypoint3)
	(can_traverse rover5 waypoint3 waypoint1)
	(can_traverse rover5 waypoint1 waypoint3)
	(can_traverse rover5 waypoint3 waypoint4)
	(can_traverse rover5 waypoint4 waypoint3)
	(can_traverse rover5 waypoint3 waypoint5)
	(can_traverse rover5 waypoint5 waypoint3)
	(can_traverse rover5 waypoint0 waypoint2)
	(can_traverse rover5 waypoint2 waypoint0)
	(can_traverse rover5 waypoint1 waypoint9)
	(can_traverse rover5 waypoint9 waypoint1)
	(can_traverse rover5 waypoint5 waypoint6)
	(can_traverse rover5 waypoint6 waypoint5)
	(can_traverse rover5 waypoint5 waypoint7)
	(can_traverse rover5 waypoint7 waypoint5)
	(can_traverse rover5 waypoint5 waypoint8)
	(can_traverse rover5 waypoint8 waypoint5)
	(on_board camera0 rover2)
	(calibration_target camera0 objective0)
	(supports camera0 colour)
	(supports camera0 high_res)
	(on_board camera1 rover2)
	(calibration_target camera1 objective0)
	(supports camera1 colour)
	(on_board camera2 rover3)
	(calibration_target camera2 objective2)
	(supports camera2 high_res)
	(on_board camera3 rover1)
	(calibration_target camera3 objective0)
	(supports camera3 colour)
	(supports camera3 high_res)
	(supports camera3 low_res)
	(visible_from objective0 waypoint0)
	(visible_from objective1 waypoint0)
	(visible_from objective1 waypoint1)
	(visible_from objective1 waypoint2)
	(visible_from objective1 waypoint3)
	(visible_from objective1 waypoint4)
	(visible_from objective1 waypoint5)
	(visible_from objective1 waypoint6)
	(visible_from objective1 waypoint7)
	(visible_from objective2 waypoint0)
	(visible_from objective2 waypoint1)
	(visible_from objective2 waypoint2)
	(visible_from objective2 waypoint3)
	(visible_from objective3 waypoint0)
	(visible_from objective3 waypoint1)
	(visible_from objective3 waypoint2)
	(visible_from objective3 waypoint3)
	(visible_from objective3 waypoint4)
	(visible_from objective3 waypoint5)
	(visible_from objective3 waypoint6)
)

(:goal (and
(communicated_soil_data waypoint5)
(communicated_rock_data waypoint9)
(communicated_image_data objective1 colour)
	)
)
)
