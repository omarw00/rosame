(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	satellite1 - satellite
	instrument2 - instrument
	instrument3 - instrument
	satellite2 - satellite
	instrument4 - instrument
	satellite3 - satellite
	instrument5 - instrument
	instrument6 - instrument
	instrument7 - instrument
	satellite4 - satellite
	instrument8 - instrument
	instrument9 - instrument
	thermograph1 - mode
	spectrograph0 - mode
	image4 - mode
	thermograph3 - mode
	infrared2 - mode
	GroundStation2 - direction
	Star1 - direction
	GroundStation0 - direction
	Star3 - direction
	Phenomenon4 - direction
	Phenomenon5 - direction
	Planet6 - direction
	Planet7 - direction
	Star8 - direction
	Star9 - direction
	Star10 - direction
	Star11 - direction
	Planet12 - direction
	Phenomenon13 - direction
	Star14 - direction
	Phenomenon15 - direction
	Planet16 - direction
	Star17 - direction
	Planet18 - direction
	Planet19 - direction
	Planet20 - direction
	Star21 - direction
)
(:init
	(supports instrument0 infrared2)
	(calibration_target instrument0 GroundStation0)
	(supports instrument1 spectrograph0)
	(supports instrument1 infrared2)
	(supports instrument1 image4)
	(calibration_target instrument1 GroundStation0)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Phenomenon5)
	(supports instrument2 thermograph1)
	(calibration_target instrument2 GroundStation0)
	(supports instrument3 spectrograph0)
	(supports instrument3 infrared2)
	(calibration_target instrument3 GroundStation0)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 GroundStation2)
	(supports instrument4 image4)
	(supports instrument4 thermograph1)
	(supports instrument4 thermograph3)
	(calibration_target instrument4 GroundStation0)
	(on_board instrument4 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Phenomenon4)
	(supports instrument5 spectrograph0)
	(supports instrument5 thermograph3)
	(supports instrument5 infrared2)
	(calibration_target instrument5 Star1)
	(supports instrument6 thermograph1)
	(supports instrument6 thermograph3)
	(calibration_target instrument6 GroundStation2)
	(supports instrument7 spectrograph0)
	(calibration_target instrument7 Star1)
	(on_board instrument5 satellite3)
	(on_board instrument6 satellite3)
	(on_board instrument7 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Phenomenon5)
	(supports instrument8 thermograph3)
	(supports instrument8 image4)
	(calibration_target instrument8 Star1)
	(supports instrument9 infrared2)
	(calibration_target instrument9 GroundStation0)
	(on_board instrument8 satellite4)
	(on_board instrument9 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Planet16)
)
(:goal (and
	(pointing satellite0 Star10)
	(pointing satellite2 Star1)
	(have_image Star3 image4)
	(have_image Phenomenon4 infrared2)
	(have_image Phenomenon5 thermograph3)
	(have_image Planet6 thermograph1)
	(have_image Planet7 spectrograph0)
	(have_image Star9 spectrograph0)
	(have_image Star10 thermograph1)
	(have_image Star11 image4)
	(have_image Planet12 infrared2)
	(have_image Phenomenon13 thermograph1)
	(have_image Star14 infrared2)
	(have_image Phenomenon15 thermograph3)
	(have_image Planet18 thermograph1)
	(have_image Planet19 thermograph1)
	(have_image Star21 thermograph3)
))

)
