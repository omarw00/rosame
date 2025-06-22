(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	satellite1 - satellite
	instrument1 - instrument
	instrument2 - instrument
	instrument3 - instrument
	satellite2 - satellite
	instrument4 - instrument
	instrument5 - instrument
	satellite3 - satellite
	instrument6 - instrument
	instrument7 - instrument
	instrument8 - instrument
	satellite4 - satellite
	instrument9 - instrument
	instrument10 - instrument
	image0 - mode
	infrared4 - mode
	infrared3 - mode
	thermograph1 - mode
	spectrograph2 - mode
	GroundStation2 - direction
	GroundStation0 - direction
	GroundStation1 - direction
	Phenomenon3 - direction
	Planet4 - direction
	Star5 - direction
	Star6 - direction
	Phenomenon7 - direction
	Phenomenon8 - direction
	Star9 - direction
	Star10 - direction
	Phenomenon11 - direction
	Planet12 - direction
	Phenomenon13 - direction
	Phenomenon14 - direction
	Star15 - direction
	Star16 - direction
	Planet17 - direction
)
(:init
	(supports instrument0 image0)
	(calibration_target instrument0 GroundStation1)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star5)
	(supports instrument1 infrared4)
	(supports instrument1 spectrograph2)
	(supports instrument1 thermograph1)
	(calibration_target instrument1 GroundStation2)
	(supports instrument2 infrared3)
	(supports instrument2 infrared4)
	(supports instrument2 image0)
	(calibration_target instrument2 GroundStation0)
	(supports instrument3 infrared3)
	(calibration_target instrument3 GroundStation2)
	(on_board instrument1 satellite1)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Star15)
	(supports instrument4 infrared4)
	(calibration_target instrument4 GroundStation1)
	(supports instrument5 image0)
	(supports instrument5 thermograph1)
	(supports instrument5 infrared3)
	(calibration_target instrument5 GroundStation2)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(power_avail satellite2)
	(pointing satellite2 GroundStation0)
	(supports instrument6 thermograph1)
	(supports instrument6 spectrograph2)
	(supports instrument6 infrared4)
	(calibration_target instrument6 GroundStation0)
	(supports instrument7 thermograph1)
	(supports instrument7 infrared4)
	(calibration_target instrument7 GroundStation2)
	(supports instrument8 infrared4)
	(supports instrument8 thermograph1)
	(supports instrument8 image0)
	(calibration_target instrument8 GroundStation0)
	(on_board instrument6 satellite3)
	(on_board instrument7 satellite3)
	(on_board instrument8 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Phenomenon11)
	(supports instrument9 infrared3)
	(supports instrument9 spectrograph2)
	(calibration_target instrument9 GroundStation0)
	(supports instrument10 spectrograph2)
	(supports instrument10 thermograph1)
	(calibration_target instrument10 GroundStation1)
	(on_board instrument9 satellite4)
	(on_board instrument10 satellite4)
	(power_avail satellite4)
	(pointing satellite4 GroundStation0)
)
(:goal (and
	(pointing satellite2 Phenomenon14)
	(have_image Phenomenon3 spectrograph2)
	(have_image Star6 thermograph1)
	(have_image Phenomenon7 thermograph1)
	(have_image Star9 infrared3)
	(have_image Star10 infrared3)
	(have_image Phenomenon11 thermograph1)
	(have_image Planet12 infrared4)
	(have_image Phenomenon13 thermograph1)
	(have_image Phenomenon14 image0)
	(have_image Star15 spectrograph2)
	(have_image Star16 image0)
	(have_image Planet17 image0)
))

)
