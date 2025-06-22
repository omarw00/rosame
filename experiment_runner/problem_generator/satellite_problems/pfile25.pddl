(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	satellite1 - satellite
	instrument1 - instrument
	satellite2 - satellite
	instrument2 - instrument
	instrument3 - instrument
	instrument4 - instrument
	satellite3 - satellite
	instrument5 - instrument
	instrument6 - instrument
	satellite4 - satellite
	instrument7 - instrument
	instrument8 - instrument
	instrument9 - instrument
	thermograph3 - mode
	infrared4 - mode
	spectrograph0 - mode
	thermograph1 - mode
	image2 - mode
	GroundStation0 - direction
	GroundStation2 - direction
	GroundStation1 - direction
	GroundStation3 - direction
	GroundStation4 - direction
	Planet5 - direction
	Planet6 - direction
	Phenomenon7 - direction
	Phenomenon8 - direction
	Star9 - direction
	Star10 - direction
	Phenomenon11 - direction
	Phenomenon12 - direction
	Planet13 - direction
	Star14 - direction
	Planet15 - direction
	Phenomenon16 - direction
	Star17 - direction
	Phenomenon18 - direction
	Phenomenon19 - direction
	Star20 - direction
	Star21 - direction
	Phenomenon22 - direction
	Planet23 - direction
	Phenomenon24 - direction
	Star25 - direction
	Planet26 - direction
	Planet27 - direction
	Phenomenon28 - direction
	Phenomenon29 - direction
)
(:init
	(supports instrument0 infrared4)
	(calibration_target instrument0 GroundStation0)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Planet5)
	(supports instrument1 thermograph1)
	(calibration_target instrument1 GroundStation0)
	(on_board instrument1 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Planet23)
	(supports instrument2 thermograph3)
	(calibration_target instrument2 GroundStation2)
	(supports instrument3 spectrograph0)
	(calibration_target instrument3 GroundStation0)
	(supports instrument4 thermograph3)
	(calibration_target instrument4 GroundStation2)
	(on_board instrument2 satellite2)
	(on_board instrument3 satellite2)
	(on_board instrument4 satellite2)
	(power_avail satellite2)
	(pointing satellite2 GroundStation2)
	(supports instrument5 thermograph3)
	(calibration_target instrument5 GroundStation4)
	(supports instrument6 thermograph1)
	(calibration_target instrument6 GroundStation1)
	(on_board instrument5 satellite3)
	(on_board instrument6 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Planet6)
	(supports instrument7 infrared4)
	(supports instrument7 thermograph1)
	(supports instrument7 thermograph3)
	(calibration_target instrument7 GroundStation4)
	(supports instrument8 thermograph1)
	(supports instrument8 spectrograph0)
	(calibration_target instrument8 GroundStation3)
	(supports instrument9 image2)
	(calibration_target instrument9 GroundStation4)
	(on_board instrument7 satellite4)
	(on_board instrument8 satellite4)
	(on_board instrument9 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Phenomenon8)
)
(:goal (and
	(pointing satellite1 Planet13)
	(pointing satellite2 Phenomenon18)
	(pointing satellite3 Phenomenon29)
	(pointing satellite4 Phenomenon8)
	(have_image Planet6 spectrograph0)
	(have_image Phenomenon7 image2)
	(have_image Star9 thermograph3)
	(have_image Phenomenon11 infrared4)
	(have_image Phenomenon12 image2)
	(have_image Planet13 infrared4)
	(have_image Planet15 image2)
	(have_image Phenomenon16 thermograph3)
	(have_image Star17 image2)
	(have_image Phenomenon18 spectrograph0)
	(have_image Phenomenon19 thermograph3)
	(have_image Star20 thermograph1)
	(have_image Star21 spectrograph0)
	(have_image Planet23 infrared4)
	(have_image Phenomenon24 thermograph3)
	(have_image Star25 thermograph1)
	(have_image Planet26 infrared4)
	(have_image Planet27 infrared4)
	(have_image Phenomenon28 spectrograph0)
	(have_image Phenomenon29 thermograph1)
))

)
