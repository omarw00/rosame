(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	satellite1 - satellite
	instrument2 - instrument
	satellite2 - satellite
	instrument3 - instrument
	instrument4 - instrument
	instrument5 - instrument
	satellite3 - satellite
	instrument6 - instrument
	satellite4 - satellite
	instrument7 - instrument
	instrument8 - instrument
	infrared4 - mode
	infrared0 - mode
	image2 - mode
	thermograph1 - mode
	image3 - mode
	Star3 - direction
	GroundStation1 - direction
	GroundStation2 - direction
	GroundStation4 - direction
	GroundStation0 - direction
	Phenomenon5 - direction
	Star6 - direction
	Phenomenon7 - direction
	Star8 - direction
	Star9 - direction
	Planet10 - direction
	Phenomenon11 - direction
	Star12 - direction
	Star13 - direction
	Planet14 - direction
	Planet15 - direction
	Planet16 - direction
	Planet17 - direction
	Star18 - direction
	Phenomenon19 - direction
	Phenomenon20 - direction
	Planet21 - direction
	Star22 - direction
	Star23 - direction
	Phenomenon24 - direction
	Star25 - direction
	Planet26 - direction
	Phenomenon27 - direction
	Phenomenon28 - direction
	Phenomenon29 - direction
)
(:init
	(supports instrument0 infrared4)
	(supports instrument0 image3)
	(calibration_target instrument0 GroundStation1)
	(supports instrument1 image2)
	(supports instrument1 infrared0)
	(calibration_target instrument1 GroundStation1)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Planet16)
	(supports instrument2 thermograph1)
	(supports instrument2 infrared0)
	(supports instrument2 image2)
	(calibration_target instrument2 GroundStation4)
	(on_board instrument2 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Phenomenon20)
	(supports instrument3 image2)
	(supports instrument3 image3)
	(calibration_target instrument3 GroundStation4)
	(supports instrument4 thermograph1)
	(calibration_target instrument4 GroundStation0)
	(supports instrument5 image2)
	(supports instrument5 image3)
	(supports instrument5 infrared0)
	(calibration_target instrument5 GroundStation0)
	(on_board instrument3 satellite2)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Phenomenon19)
	(supports instrument6 image2)
	(supports instrument6 thermograph1)
	(supports instrument6 image3)
	(calibration_target instrument6 GroundStation2)
	(on_board instrument6 satellite3)
	(power_avail satellite3)
	(pointing satellite3 GroundStation1)
	(supports instrument7 thermograph1)
	(supports instrument7 image2)
	(supports instrument7 image3)
	(calibration_target instrument7 GroundStation4)
	(supports instrument8 image3)
	(calibration_target instrument8 GroundStation0)
	(on_board instrument7 satellite4)
	(on_board instrument8 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Star8)
)
(:goal (and
	(pointing satellite0 Star25)
	(pointing satellite2 Star8)
	(pointing satellite3 Planet15)
	(have_image Phenomenon5 image3)
	(have_image Phenomenon7 infrared4)
	(have_image Star8 infrared4)
	(have_image Star9 infrared0)
	(have_image Planet10 infrared0)
	(have_image Phenomenon11 image2)
	(have_image Star12 thermograph1)
	(have_image Star13 infrared4)
	(have_image Planet14 thermograph1)
	(have_image Planet15 thermograph1)
	(have_image Planet16 infrared0)
	(have_image Planet17 thermograph1)
	(have_image Star18 infrared4)
	(have_image Phenomenon19 image3)
	(have_image Phenomenon20 thermograph1)
	(have_image Planet21 image3)
	(have_image Star22 image3)
	(have_image Phenomenon24 image3)
	(have_image Star25 thermograph1)
	(have_image Planet26 infrared4)
	(have_image Phenomenon27 infrared4)
	(have_image Phenomenon28 image2)
	(have_image Phenomenon29 image2)
))

)
