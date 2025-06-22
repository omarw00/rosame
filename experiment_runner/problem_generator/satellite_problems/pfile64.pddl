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
	satellite3 - satellite
	instrument7 - instrument
	instrument8 - instrument
	instrument9 - instrument
	satellite4 - satellite
	instrument10 - instrument
	instrument11 - instrument
	spectrograph3 - mode
	infrared0 - mode
	infrared1 - mode
	spectrograph2 - mode
	thermograph4 - mode
	GroundStation1 - direction
	GroundStation3 - direction
	Star0 - direction
	Star2 - direction
	Planet4 - direction
	Planet5 - direction
	Star6 - direction
	Star7 - direction
	Planet8 - direction
	Planet9 - direction
	Star10 - direction
	Planet11 - direction
	Planet12 - direction
	Star13 - direction
	Planet14 - direction
	Star15 - direction
	Phenomenon16 - direction
	Planet17 - direction
	Star18 - direction
	Phenomenon19 - direction
)
(:init
	(supports instrument0 infrared0)
	(supports instrument0 spectrograph2)
	(supports instrument0 spectrograph3)
	(calibration_target instrument0 GroundStation3)
	(supports instrument1 thermograph4)
	(supports instrument1 spectrograph2)
	(supports instrument1 spectrograph3)
	(calibration_target instrument1 Star0)
	(supports instrument2 spectrograph3)
	(supports instrument2 spectrograph2)
	(calibration_target instrument2 GroundStation3)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star6)
	(supports instrument3 infrared0)
	(supports instrument3 thermograph4)
	(calibration_target instrument3 Star2)
	(supports instrument4 spectrograph3)
	(supports instrument4 spectrograph2)
	(calibration_target instrument4 GroundStation3)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Planet17)
	(supports instrument5 spectrograph3)
	(supports instrument5 thermograph4)
	(supports instrument5 infrared1)
	(calibration_target instrument5 GroundStation3)
	(supports instrument6 infrared1)
	(supports instrument6 spectrograph2)
	(calibration_target instrument6 GroundStation1)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Star7)
	(supports instrument7 infrared0)
	(calibration_target instrument7 Star2)
	(supports instrument8 spectrograph3)
	(supports instrument8 infrared1)
	(calibration_target instrument8 GroundStation3)
	(supports instrument9 spectrograph2)
	(supports instrument9 infrared0)
	(calibration_target instrument9 Star0)
	(on_board instrument7 satellite3)
	(on_board instrument8 satellite3)
	(on_board instrument9 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Planet12)
	(supports instrument10 infrared1)
	(supports instrument10 infrared0)
	(calibration_target instrument10 Star0)
	(supports instrument11 thermograph4)
	(supports instrument11 spectrograph2)
	(calibration_target instrument11 Star2)
	(on_board instrument10 satellite4)
	(on_board instrument11 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Star0)
)
(:goal (and
	(pointing satellite1 Planet14)
	(pointing satellite2 Phenomenon16)
	(have_image Planet4 thermograph4)
	(have_image Planet5 spectrograph2)
	(have_image Star6 spectrograph3)
	(have_image Star7 infrared1)
	(have_image Planet9 spectrograph2)
	(have_image Star10 spectrograph3)
	(have_image Planet11 thermograph4)
	(have_image Star13 spectrograph2)
	(have_image Planet14 infrared1)
	(have_image Star15 spectrograph3)
	(have_image Phenomenon16 spectrograph2)
	(have_image Planet17 infrared1)
	(have_image Star18 infrared0)
	(have_image Phenomenon19 thermograph4)
))

)
