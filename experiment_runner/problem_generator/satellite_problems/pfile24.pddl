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
	instrument7 - instrument
	satellite4 - satellite
	instrument8 - instrument
	instrument9 - instrument
	infrared4 - mode
	thermograph2 - mode
	infrared3 - mode
	spectrograph0 - mode
	spectrograph1 - mode
	Star3 - direction
	Star0 - direction
	Star1 - direction
	GroundStation2 - direction
	Star4 - direction
	Star5 - direction
	Planet6 - direction
	Star7 - direction
	Star8 - direction
	Planet9 - direction
	Star10 - direction
	Star11 - direction
	Phenomenon12 - direction
	Phenomenon13 - direction
	Star14 - direction
	Phenomenon15 - direction
	Star16 - direction
	Phenomenon17 - direction
	Star18 - direction
	Phenomenon19 - direction
	Planet20 - direction
	Planet21 - direction
	Star22 - direction
	Planet23 - direction
	Phenomenon24 - direction
)
(:init
	(supports instrument0 infrared4)
	(calibration_target instrument0 Star0)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star10)
	(supports instrument1 infrared4)
	(supports instrument1 spectrograph1)
	(calibration_target instrument1 Star3)
	(on_board instrument1 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Phenomenon19)
	(supports instrument2 infrared3)
	(calibration_target instrument2 GroundStation2)
	(supports instrument3 spectrograph1)
	(supports instrument3 infrared3)
	(calibration_target instrument3 GroundStation2)
	(supports instrument4 infrared4)
	(supports instrument4 spectrograph1)
	(supports instrument4 infrared3)
	(calibration_target instrument4 Star0)
	(on_board instrument2 satellite2)
	(on_board instrument3 satellite2)
	(on_board instrument4 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Planet21)
	(supports instrument5 thermograph2)
	(supports instrument5 spectrograph1)
	(supports instrument5 infrared3)
	(calibration_target instrument5 GroundStation2)
	(supports instrument6 spectrograph0)
	(supports instrument6 thermograph2)
	(calibration_target instrument6 Star0)
	(supports instrument7 thermograph2)
	(supports instrument7 infrared3)
	(calibration_target instrument7 GroundStation2)
	(on_board instrument5 satellite3)
	(on_board instrument6 satellite3)
	(on_board instrument7 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star8)
	(supports instrument8 spectrograph0)
	(supports instrument8 spectrograph1)
	(supports instrument8 infrared3)
	(calibration_target instrument8 Star1)
	(supports instrument9 spectrograph1)
	(calibration_target instrument9 GroundStation2)
	(on_board instrument8 satellite4)
	(on_board instrument9 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Phenomenon13)
)
(:goal (and
	(pointing satellite0 Star14)
	(pointing satellite1 Star5)
	(pointing satellite4 Planet9)
	(have_image Star5 spectrograph1)
	(have_image Planet6 thermograph2)
	(have_image Star7 infrared4)
	(have_image Star8 spectrograph0)
	(have_image Planet9 infrared4)
	(have_image Star10 spectrograph0)
	(have_image Star11 spectrograph0)
	(have_image Phenomenon12 spectrograph1)
	(have_image Phenomenon13 spectrograph1)
	(have_image Star14 infrared4)
	(have_image Phenomenon15 spectrograph1)
	(have_image Star16 thermograph2)
	(have_image Phenomenon17 infrared4)
	(have_image Phenomenon19 infrared4)
	(have_image Planet20 infrared4)
	(have_image Planet21 spectrograph1)
	(have_image Star22 infrared4)
	(have_image Planet23 thermograph2)
	(have_image Phenomenon24 spectrograph0)
))

)
