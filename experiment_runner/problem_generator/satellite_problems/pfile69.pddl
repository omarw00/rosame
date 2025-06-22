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
	instrument5 - instrument
	satellite2 - satellite
	instrument6 - instrument
	instrument7 - instrument
	instrument8 - instrument
	satellite3 - satellite
	instrument9 - instrument
	satellite4 - satellite
	instrument10 - instrument
	instrument11 - instrument
	instrument12 - instrument
	image1 - mode
	spectrograph4 - mode
	thermograph3 - mode
	spectrograph2 - mode
	infrared0 - mode
	Star1 - direction
	GroundStation0 - direction
	Star2 - direction
	GroundStation3 - direction
	Phenomenon4 - direction
	Star5 - direction
	Planet6 - direction
	Phenomenon7 - direction
	Phenomenon8 - direction
	Star9 - direction
	Star10 - direction
	Planet11 - direction
	Planet12 - direction
	Star13 - direction
	Planet14 - direction
	Planet15 - direction
	Phenomenon16 - direction
	Phenomenon17 - direction
	Planet18 - direction
	Planet19 - direction
)
(:init
	(supports instrument0 spectrograph2)
	(supports instrument0 image1)
	(calibration_target instrument0 Star1)
	(supports instrument1 spectrograph4)
	(supports instrument1 thermograph3)
	(calibration_target instrument1 Star1)
	(supports instrument2 spectrograph4)
	(supports instrument2 infrared0)
	(calibration_target instrument2 Star2)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Phenomenon4)
	(supports instrument3 spectrograph2)
	(calibration_target instrument3 GroundStation3)
	(supports instrument4 spectrograph4)
	(supports instrument4 thermograph3)
	(supports instrument4 image1)
	(calibration_target instrument4 GroundStation3)
	(supports instrument5 spectrograph2)
	(calibration_target instrument5 Star1)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(on_board instrument5 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Phenomenon4)
	(supports instrument6 thermograph3)
	(supports instrument6 image1)
	(supports instrument6 infrared0)
	(calibration_target instrument6 GroundStation0)
	(supports instrument7 infrared0)
	(supports instrument7 spectrograph4)
	(supports instrument7 spectrograph2)
	(calibration_target instrument7 Star1)
	(supports instrument8 image1)
	(supports instrument8 spectrograph4)
	(supports instrument8 infrared0)
	(calibration_target instrument8 Star2)
	(on_board instrument6 satellite2)
	(on_board instrument7 satellite2)
	(on_board instrument8 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Planet18)
	(supports instrument9 spectrograph4)
	(supports instrument9 image1)
	(calibration_target instrument9 GroundStation3)
	(on_board instrument9 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star10)
	(supports instrument10 spectrograph2)
	(supports instrument10 infrared0)
	(calibration_target instrument10 GroundStation0)
	(supports instrument11 spectrograph2)
	(supports instrument11 thermograph3)
	(supports instrument11 infrared0)
	(calibration_target instrument11 Star2)
	(supports instrument12 infrared0)
	(calibration_target instrument12 GroundStation3)
	(on_board instrument10 satellite4)
	(on_board instrument11 satellite4)
	(on_board instrument12 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Planet15)
)
(:goal (and
	(pointing satellite0 Planet6)
	(pointing satellite1 Star9)
	(pointing satellite2 Star1)
	(pointing satellite3 Star5)
	(have_image Phenomenon4 infrared0)
	(have_image Star5 spectrograph4)
	(have_image Planet6 infrared0)
	(have_image Phenomenon7 spectrograph4)
	(have_image Phenomenon8 thermograph3)
	(have_image Star9 spectrograph2)
	(have_image Star10 thermograph3)
	(have_image Planet11 spectrograph4)
	(have_image Planet12 image1)
	(have_image Star13 image1)
	(have_image Planet14 image1)
	(have_image Planet15 spectrograph2)
	(have_image Phenomenon16 infrared0)
	(have_image Phenomenon17 spectrograph4)
	(have_image Planet19 spectrograph4)
))

)
