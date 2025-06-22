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
	satellite3 - satellite
	instrument6 - instrument
	instrument7 - instrument
	satellite4 - satellite
	instrument8 - instrument
	instrument9 - instrument
	instrument10 - instrument
	spectrograph3 - mode
	image1 - mode
	infrared0 - mode
	thermograph2 - mode
	Star2 - direction
	Star1 - direction
	Star0 - direction
	Star4 - direction
	Star3 - direction
	Star5 - direction
	Planet6 - direction
	Star7 - direction
	Planet8 - direction
	Planet9 - direction
	Star10 - direction
	Star11 - direction
	Planet12 - direction
	Phenomenon13 - direction
	Planet14 - direction
	Star15 - direction
	Phenomenon16 - direction
	Phenomenon17 - direction
	Planet18 - direction
	Phenomenon19 - direction
	Planet20 - direction
	Phenomenon21 - direction
	Phenomenon22 - direction
	Phenomenon23 - direction
	Phenomenon24 - direction
)
(:init
	(supports instrument0 image1)
	(supports instrument0 infrared0)
	(supports instrument0 spectrograph3)
	(calibration_target instrument0 Star4)
	(supports instrument1 spectrograph3)
	(calibration_target instrument1 Star4)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Planet8)
	(supports instrument2 spectrograph3)
	(supports instrument2 image1)
	(calibration_target instrument2 Star2)
	(supports instrument3 thermograph2)
	(supports instrument3 infrared0)
	(calibration_target instrument3 Star1)
	(supports instrument4 thermograph2)
	(supports instrument4 image1)
	(supports instrument4 spectrograph3)
	(calibration_target instrument4 Star0)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Star10)
	(supports instrument5 thermograph2)
	(supports instrument5 image1)
	(supports instrument5 infrared0)
	(calibration_target instrument5 Star3)
	(on_board instrument5 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Star15)
	(supports instrument6 thermograph2)
	(supports instrument6 spectrograph3)
	(calibration_target instrument6 Star3)
	(supports instrument7 image1)
	(supports instrument7 spectrograph3)
	(supports instrument7 infrared0)
	(calibration_target instrument7 Star4)
	(on_board instrument6 satellite3)
	(on_board instrument7 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star10)
	(supports instrument8 infrared0)
	(supports instrument8 image1)
	(calibration_target instrument8 Star3)
	(supports instrument9 thermograph2)
	(supports instrument9 infrared0)
	(calibration_target instrument9 Star3)
	(supports instrument10 thermograph2)
	(calibration_target instrument10 Star3)
	(on_board instrument8 satellite4)
	(on_board instrument9 satellite4)
	(on_board instrument10 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Star0)
)
(:goal (and
	(pointing satellite4 Planet6)
	(have_image Star5 spectrograph3)
	(have_image Planet6 infrared0)
	(have_image Star7 infrared0)
	(have_image Planet8 infrared0)
	(have_image Planet9 infrared0)
	(have_image Star10 infrared0)
	(have_image Star11 thermograph2)
	(have_image Planet12 thermograph2)
	(have_image Phenomenon13 infrared0)
	(have_image Planet14 image1)
	(have_image Star15 thermograph2)
	(have_image Phenomenon16 spectrograph3)
	(have_image Phenomenon17 spectrograph3)
	(have_image Phenomenon19 thermograph2)
	(have_image Planet20 infrared0)
	(have_image Phenomenon21 infrared0)
	(have_image Phenomenon22 image1)
	(have_image Phenomenon23 thermograph2)
	(have_image Phenomenon24 thermograph2)
))

)
