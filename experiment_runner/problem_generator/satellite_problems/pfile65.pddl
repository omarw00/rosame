(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	instrument2 - instrument
	satellite1 - satellite
	instrument3 - instrument
	instrument4 - instrument
	satellite2 - satellite
	instrument5 - instrument
	instrument6 - instrument
	instrument7 - instrument
	satellite3 - satellite
	instrument8 - instrument
	instrument9 - instrument
	instrument10 - instrument
	satellite4 - satellite
	instrument11 - instrument
	instrument12 - instrument
	instrument13 - instrument
	image1 - mode
	infrared2 - mode
	infrared4 - mode
	infrared3 - mode
	image0 - mode
	Star1 - direction
	GroundStation0 - direction
	Star3 - direction
	GroundStation2 - direction
	Planet4 - direction
	Star5 - direction
	Star6 - direction
	Star7 - direction
	Star8 - direction
	Planet9 - direction
	Star10 - direction
	Phenomenon11 - direction
	Phenomenon12 - direction
	Phenomenon13 - direction
	Star14 - direction
	Phenomenon15 - direction
	Phenomenon16 - direction
	Star17 - direction
)
(:init
	(supports instrument0 image0)
	(calibration_target instrument0 GroundStation0)
	(supports instrument1 image0)
	(supports instrument1 infrared3)
	(supports instrument1 infrared4)
	(calibration_target instrument1 Star3)
	(supports instrument2 image1)
	(supports instrument2 infrared4)
	(supports instrument2 image0)
	(calibration_target instrument2 GroundStation2)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Phenomenon12)
	(supports instrument3 infrared3)
	(calibration_target instrument3 GroundStation0)
	(supports instrument4 infrared2)
	(supports instrument4 image1)
	(supports instrument4 infrared3)
	(calibration_target instrument4 Star3)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Phenomenon12)
	(supports instrument5 image1)
	(supports instrument5 image0)
	(calibration_target instrument5 GroundStation0)
	(supports instrument6 infrared3)
	(supports instrument6 image0)
	(calibration_target instrument6 GroundStation2)
	(supports instrument7 image0)
	(supports instrument7 image1)
	(calibration_target instrument7 GroundStation2)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(on_board instrument7 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Phenomenon13)
	(supports instrument8 infrared3)
	(supports instrument8 infrared2)
	(calibration_target instrument8 Star3)
	(supports instrument9 image1)
	(calibration_target instrument9 Star3)
	(supports instrument10 image0)
	(supports instrument10 infrared4)
	(supports instrument10 infrared3)
	(calibration_target instrument10 GroundStation2)
	(on_board instrument8 satellite3)
	(on_board instrument9 satellite3)
	(on_board instrument10 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star3)
	(supports instrument11 image0)
	(supports instrument11 infrared2)
	(calibration_target instrument11 GroundStation2)
	(supports instrument12 infrared3)
	(supports instrument12 infrared4)
	(supports instrument12 infrared2)
	(calibration_target instrument12 GroundStation2)
	(supports instrument13 image0)
	(calibration_target instrument13 GroundStation2)
	(on_board instrument11 satellite4)
	(on_board instrument12 satellite4)
	(on_board instrument13 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Star6)
)
(:goal (and
	(pointing satellite2 Star14)
	(pointing satellite4 Star3)
	(have_image Planet4 image0)
	(have_image Star5 infrared2)
	(have_image Star6 infrared2)
	(have_image Star7 infrared3)
	(have_image Star8 image1)
	(have_image Planet9 image1)
	(have_image Star10 infrared4)
	(have_image Phenomenon11 image1)
	(have_image Phenomenon12 infrared4)
	(have_image Phenomenon13 infrared4)
	(have_image Star14 image0)
	(have_image Phenomenon15 infrared2)
	(have_image Phenomenon16 image0)
))

)
