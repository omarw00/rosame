(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	instrument2 - instrument
	satellite1 - satellite
	instrument3 - instrument
	satellite2 - satellite
	instrument4 - instrument
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
	spectrograph0 - mode
	thermograph2 - mode
	image1 - mode
	infrared3 - mode
	GroundStation1 - direction
	GroundStation0 - direction
	GroundStation4 - direction
	Star2 - direction
	Star3 - direction
	Star5 - direction
	Planet6 - direction
	Star7 - direction
	Star8 - direction
	Phenomenon9 - direction
	Phenomenon10 - direction
	Phenomenon11 - direction
	Star12 - direction
	Planet13 - direction
	Planet14 - direction
	Star15 - direction
	Star16 - direction
	Phenomenon17 - direction
	Star18 - direction
	Star19 - direction
	Planet20 - direction
	Planet21 - direction
	Planet22 - direction
)
(:init
	(supports instrument0 thermograph2)
	(supports instrument0 image1)
	(calibration_target instrument0 Star3)
	(supports instrument1 infrared3)
	(supports instrument1 image1)
	(supports instrument1 spectrograph0)
	(calibration_target instrument1 GroundStation1)
	(supports instrument2 infrared3)
	(calibration_target instrument2 GroundStation0)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star16)
	(supports instrument3 thermograph2)
	(supports instrument3 image1)
	(supports instrument3 infrared3)
	(calibration_target instrument3 GroundStation4)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Planet6)
	(supports instrument4 thermograph2)
	(supports instrument4 infrared3)
	(supports instrument4 spectrograph0)
	(calibration_target instrument4 GroundStation1)
	(supports instrument5 spectrograph0)
	(supports instrument5 image1)
	(calibration_target instrument5 GroundStation0)
	(supports instrument6 spectrograph0)
	(calibration_target instrument6 Star3)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Planet13)
	(supports instrument7 spectrograph0)
	(supports instrument7 infrared3)
	(calibration_target instrument7 GroundStation0)
	(supports instrument8 infrared3)
	(supports instrument8 thermograph2)
	(supports instrument8 spectrograph0)
	(calibration_target instrument8 Star3)
	(supports instrument9 image1)
	(supports instrument9 spectrograph0)
	(calibration_target instrument9 GroundStation0)
	(on_board instrument7 satellite3)
	(on_board instrument8 satellite3)
	(on_board instrument9 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star18)
	(supports instrument10 thermograph2)
	(calibration_target instrument10 GroundStation4)
	(supports instrument11 infrared3)
	(calibration_target instrument11 Star2)
	(supports instrument12 infrared3)
	(supports instrument12 image1)
	(supports instrument12 thermograph2)
	(calibration_target instrument12 Star3)
	(on_board instrument10 satellite4)
	(on_board instrument11 satellite4)
	(on_board instrument12 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Planet14)
)
(:goal (and
	(pointing satellite0 Planet6)
	(pointing satellite1 GroundStation0)
	(pointing satellite4 Star2)
	(have_image Star5 spectrograph0)
	(have_image Planet6 image1)
	(have_image Star7 infrared3)
	(have_image Star8 image1)
	(have_image Phenomenon9 infrared3)
	(have_image Phenomenon10 infrared3)
	(have_image Phenomenon11 infrared3)
	(have_image Star12 thermograph2)
	(have_image Planet13 infrared3)
	(have_image Planet14 image1)
	(have_image Star15 image1)
	(have_image Star16 image1)
	(have_image Phenomenon17 thermograph2)
	(have_image Star18 thermograph2)
	(have_image Star19 spectrograph0)
	(have_image Planet20 spectrograph0)
	(have_image Planet21 thermograph2)
	(have_image Planet22 infrared3)
))

)
