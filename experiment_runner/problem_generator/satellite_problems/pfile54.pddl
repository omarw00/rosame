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
	satellite4 - satellite
	instrument9 - instrument
	thermograph2 - mode
	spectrograph1 - mode
	spectrograph0 - mode
	infrared4 - mode
	infrared3 - mode
	GroundStation2 - direction
	Star3 - direction
	Star1 - direction
	Star0 - direction
	Star4 - direction
	Planet5 - direction
	Phenomenon6 - direction
	Phenomenon7 - direction
	Star8 - direction
	Star9 - direction
	Planet10 - direction
	Star11 - direction
	Planet12 - direction
	Planet13 - direction
	Planet14 - direction
	Phenomenon15 - direction
	Star16 - direction
	Planet17 - direction
)
(:init
	(supports instrument0 spectrograph1)
	(supports instrument0 infrared3)
	(supports instrument0 thermograph2)
	(calibration_target instrument0 Star0)
	(supports instrument1 spectrograph0)
	(supports instrument1 thermograph2)
	(supports instrument1 infrared4)
	(calibration_target instrument1 Star4)
	(supports instrument2 infrared4)
	(calibration_target instrument2 Star0)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 GroundStation2)
	(supports instrument3 spectrograph0)
	(calibration_target instrument3 Star1)
	(supports instrument4 thermograph2)
	(calibration_target instrument4 Star0)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Planet17)
	(supports instrument5 spectrograph0)
	(calibration_target instrument5 Star1)
	(supports instrument6 spectrograph1)
	(supports instrument6 infrared4)
	(calibration_target instrument6 Star4)
	(supports instrument7 spectrograph1)
	(supports instrument7 infrared3)
	(supports instrument7 thermograph2)
	(calibration_target instrument7 Star0)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(on_board instrument7 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Star3)
	(supports instrument8 infrared3)
	(supports instrument8 spectrograph0)
	(supports instrument8 infrared4)
	(calibration_target instrument8 Star0)
	(on_board instrument8 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star0)
	(supports instrument9 infrared3)
	(supports instrument9 infrared4)
	(calibration_target instrument9 Star4)
	(on_board instrument9 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Planet14)
)
(:goal (and
	(pointing satellite4 Star1)
	(have_image Planet5 infrared4)
	(have_image Phenomenon6 spectrograph1)
	(have_image Phenomenon7 infrared3)
	(have_image Star8 infrared4)
	(have_image Star9 spectrograph0)
	(have_image Planet10 thermograph2)
	(have_image Star11 infrared3)
	(have_image Planet12 infrared3)
	(have_image Planet13 infrared3)
	(have_image Planet14 spectrograph1)
	(have_image Star16 infrared3)
	(have_image Planet17 infrared4)
))

)
