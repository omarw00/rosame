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
	instrument8 - instrument
	instrument9 - instrument
	satellite4 - satellite
	instrument10 - instrument
	instrument11 - instrument
	instrument12 - instrument
	image1 - mode
	spectrograph0 - mode
	thermograph2 - mode
	infrared3 - mode
	GroundStation1 - direction
	Star2 - direction
	GroundStation0 - direction
	Star3 - direction
	Phenomenon4 - direction
	Star5 - direction
	Star6 - direction
	Star7 - direction
	Star8 - direction
	Planet9 - direction
	Star10 - direction
	Planet11 - direction
	Planet12 - direction
	Phenomenon13 - direction
	Planet14 - direction
	Planet15 - direction
	Planet16 - direction
	Planet17 - direction
	Planet18 - direction
	Planet19 - direction
	Planet20 - direction
	Planet21 - direction
	Planet22 - direction
	Planet23 - direction
	Planet24 - direction
	Phenomenon25 - direction
)
(:init
	(supports instrument0 infrared3)
	(supports instrument0 thermograph2)
	(calibration_target instrument0 GroundStation1)
	(supports instrument1 image1)
	(supports instrument1 spectrograph0)
	(calibration_target instrument1 Star2)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star6)
	(supports instrument2 image1)
	(calibration_target instrument2 GroundStation1)
	(supports instrument3 spectrograph0)
	(supports instrument3 thermograph2)
	(calibration_target instrument3 GroundStation1)
	(supports instrument4 infrared3)
	(supports instrument4 spectrograph0)
	(supports instrument4 image1)
	(calibration_target instrument4 GroundStation0)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Star2)
	(supports instrument5 image1)
	(supports instrument5 spectrograph0)
	(supports instrument5 thermograph2)
	(calibration_target instrument5 Star2)
	(supports instrument6 thermograph2)
	(supports instrument6 infrared3)
	(supports instrument6 spectrograph0)
	(calibration_target instrument6 Star2)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Planet16)
	(supports instrument7 infrared3)
	(supports instrument7 image1)
	(supports instrument7 thermograph2)
	(calibration_target instrument7 GroundStation0)
	(supports instrument8 infrared3)
	(calibration_target instrument8 GroundStation1)
	(supports instrument9 thermograph2)
	(supports instrument9 spectrograph0)
	(calibration_target instrument9 GroundStation1)
	(on_board instrument7 satellite3)
	(on_board instrument8 satellite3)
	(on_board instrument9 satellite3)
	(power_avail satellite3)
	(pointing satellite3 GroundStation0)
	(supports instrument10 infrared3)
	(calibration_target instrument10 GroundStation0)
	(supports instrument11 spectrograph0)
	(supports instrument11 image1)
	(supports instrument11 infrared3)
	(calibration_target instrument11 Star2)
	(supports instrument12 infrared3)
	(supports instrument12 thermograph2)
	(supports instrument12 spectrograph0)
	(calibration_target instrument12 GroundStation0)
	(on_board instrument10 satellite4)
	(on_board instrument11 satellite4)
	(on_board instrument12 satellite4)
	(power_avail satellite4)
	(pointing satellite4 GroundStation1)
)
(:goal (and
	(pointing satellite1 Planet23)
	(pointing satellite2 Planet15)
	(have_image Star3 spectrograph0)
	(have_image Phenomenon4 image1)
	(have_image Star5 infrared3)
	(have_image Star6 infrared3)
	(have_image Star7 thermograph2)
	(have_image Star10 image1)
	(have_image Planet11 infrared3)
	(have_image Planet12 infrared3)
	(have_image Phenomenon13 spectrograph0)
	(have_image Planet14 infrared3)
	(have_image Planet15 thermograph2)
	(have_image Planet16 spectrograph0)
	(have_image Planet17 infrared3)
	(have_image Planet18 thermograph2)
	(have_image Planet19 spectrograph0)
	(have_image Planet20 infrared3)
	(have_image Planet21 spectrograph0)
	(have_image Planet22 thermograph2)
	(have_image Planet23 thermograph2)
	(have_image Planet24 infrared3)
	(have_image Phenomenon25 image1)
))

)
