(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	satellite1 - satellite
	instrument2 - instrument
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
	infrared0 - mode
	image3 - mode
	infrared1 - mode
	image4 - mode
	image2 - mode
	Star0 - direction
	GroundStation2 - direction
	GroundStation1 - direction
	Phenomenon3 - direction
	Planet4 - direction
	Planet5 - direction
	Phenomenon6 - direction
	Phenomenon7 - direction
	Planet8 - direction
	Star9 - direction
	Planet10 - direction
	Phenomenon11 - direction
	Phenomenon12 - direction
	Planet13 - direction
	Phenomenon14 - direction
	Planet15 - direction
	Phenomenon16 - direction
	Phenomenon17 - direction
	Phenomenon18 - direction
	Phenomenon19 - direction
	Planet20 - direction
	Planet21 - direction
)
(:init
	(supports instrument0 image2)
	(supports instrument0 image3)
	(calibration_target instrument0 GroundStation1)
	(supports instrument1 image2)
	(supports instrument1 image3)
	(calibration_target instrument1 GroundStation2)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Planet4)
	(supports instrument2 infrared1)
	(supports instrument2 image3)
	(calibration_target instrument2 Star0)
	(supports instrument3 image3)
	(calibration_target instrument3 Star0)
	(supports instrument4 infrared0)
	(supports instrument4 image4)
	(calibration_target instrument4 GroundStation2)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Phenomenon3)
	(supports instrument5 image2)
	(supports instrument5 infrared1)
	(supports instrument5 image4)
	(calibration_target instrument5 Star0)
	(supports instrument6 image4)
	(calibration_target instrument6 GroundStation1)
	(supports instrument7 infrared0)
	(supports instrument7 image3)
	(calibration_target instrument7 GroundStation2)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(on_board instrument7 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Planet20)
	(supports instrument8 image4)
	(supports instrument8 image2)
	(supports instrument8 image3)
	(calibration_target instrument8 Star0)
	(supports instrument9 image3)
	(supports instrument9 image4)
	(supports instrument9 infrared1)
	(calibration_target instrument9 GroundStation1)
	(supports instrument10 image2)
	(supports instrument10 image4)
	(calibration_target instrument10 GroundStation1)
	(on_board instrument8 satellite3)
	(on_board instrument9 satellite3)
	(on_board instrument10 satellite3)
	(power_avail satellite3)
	(pointing satellite3 GroundStation1)
	(supports instrument11 infrared1)
	(supports instrument11 image3)
	(calibration_target instrument11 GroundStation2)
	(supports instrument12 image2)
	(supports instrument12 image4)
	(calibration_target instrument12 GroundStation1)
	(on_board instrument11 satellite4)
	(on_board instrument12 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Star0)
)
(:goal (and
	(have_image Planet4 image3)
	(have_image Planet5 image4)
	(have_image Phenomenon6 image3)
	(have_image Phenomenon7 infrared1)
	(have_image Planet8 image4)
	(have_image Star9 image4)
	(have_image Planet10 image3)
	(have_image Phenomenon11 infrared0)
	(have_image Phenomenon12 image4)
	(have_image Planet13 image2)
	(have_image Phenomenon14 image3)
	(have_image Planet15 infrared1)
	(have_image Phenomenon16 image4)
	(have_image Phenomenon17 image3)
	(have_image Phenomenon18 image3)
	(have_image Phenomenon19 image4)
	(have_image Planet20 infrared0)
	(have_image Planet21 infrared0)
))

)
