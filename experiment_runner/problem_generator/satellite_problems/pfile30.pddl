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
	satellite3 - satellite
	instrument7 - instrument
	satellite4 - satellite
	instrument8 - instrument
	instrument9 - instrument
	thermograph3 - mode
	thermograph1 - mode
	infrared0 - mode
	image2 - mode
	GroundStation4 - direction
	GroundStation2 - direction
	Star1 - direction
	Star0 - direction
	Star3 - direction
	Phenomenon5 - direction
	Planet6 - direction
	Phenomenon7 - direction
	Star8 - direction
	Star9 - direction
	Phenomenon10 - direction
	Star11 - direction
	Phenomenon12 - direction
	Phenomenon13 - direction
	Planet14 - direction
	Planet15 - direction
)
(:init
	(supports instrument0 thermograph1)
	(supports instrument0 image2)
	(supports instrument0 thermograph3)
	(calibration_target instrument0 GroundStation2)
	(supports instrument1 thermograph3)
	(supports instrument1 thermograph1)
	(supports instrument1 infrared0)
	(calibration_target instrument1 Star3)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Planet15)
	(supports instrument2 infrared0)
	(supports instrument2 image2)
	(calibration_target instrument2 GroundStation4)
	(supports instrument3 image2)
	(supports instrument3 thermograph1)
	(calibration_target instrument3 Star1)
	(supports instrument4 infrared0)
	(supports instrument4 image2)
	(supports instrument4 thermograph3)
	(calibration_target instrument4 Star1)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Phenomenon10)
	(supports instrument5 image2)
	(supports instrument5 thermograph1)
	(calibration_target instrument5 GroundStation2)
	(supports instrument6 infrared0)
	(supports instrument6 thermograph3)
	(calibration_target instrument6 Star1)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Planet6)
	(supports instrument7 thermograph1)
	(supports instrument7 infrared0)
	(supports instrument7 thermograph3)
	(calibration_target instrument7 Star3)
	(on_board instrument7 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Planet15)
	(supports instrument8 infrared0)
	(calibration_target instrument8 Star0)
	(supports instrument9 image2)
	(calibration_target instrument9 Star3)
	(on_board instrument8 satellite4)
	(on_board instrument9 satellite4)
	(power_avail satellite4)
	(pointing satellite4 GroundStation2)
)
(:goal (and
	(pointing satellite0 Phenomenon7)
	(have_image Phenomenon5 image2)
	(have_image Planet6 image2)
	(have_image Phenomenon7 thermograph1)
	(have_image Star8 thermograph3)
	(have_image Star9 thermograph3)
	(have_image Phenomenon10 thermograph1)
	(have_image Star11 thermograph1)
	(have_image Phenomenon12 thermograph1)
	(have_image Phenomenon13 image2)
	(have_image Planet14 thermograph3)
	(have_image Planet15 image2)
))

)
