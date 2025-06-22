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
	thermograph4 - mode
	spectrograph3 - mode
	thermograph1 - mode
	thermograph2 - mode
	Star2 - direction
	Star3 - direction
	Star1 - direction
	GroundStation0 - direction
	Star4 - direction
	Star5 - direction
	Planet6 - direction
	Phenomenon7 - direction
	Planet8 - direction
	Phenomenon9 - direction
	Phenomenon10 - direction
	Planet11 - direction
	Phenomenon12 - direction
	Star13 - direction
	Planet14 - direction
	Phenomenon15 - direction
	Planet16 - direction
	Planet17 - direction
	Planet18 - direction
	Planet19 - direction
	Star20 - direction
	Planet21 - direction
	Phenomenon22 - direction
	Planet23 - direction
	Planet24 - direction
	Planet25 - direction
)
(:init
	(supports instrument0 thermograph2)
	(supports instrument0 spectrograph3)
	(calibration_target instrument0 Star1)
	(supports instrument1 spectrograph3)
	(calibration_target instrument1 Star2)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star2)
	(supports instrument2 thermograph2)
	(supports instrument2 spectrograph0)
	(calibration_target instrument2 Star2)
	(supports instrument3 spectrograph3)
	(calibration_target instrument3 GroundStation0)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Planet17)
	(supports instrument4 thermograph4)
	(supports instrument4 spectrograph3)
	(supports instrument4 thermograph2)
	(calibration_target instrument4 Star1)
	(supports instrument5 thermograph4)
	(calibration_target instrument5 Star2)
	(supports instrument6 thermograph4)
	(calibration_target instrument6 Star2)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Phenomenon15)
	(supports instrument7 thermograph2)
	(calibration_target instrument7 Star1)
	(supports instrument8 thermograph4)
	(supports instrument8 thermograph2)
	(calibration_target instrument8 GroundStation0)
	(supports instrument9 thermograph4)
	(calibration_target instrument9 Star3)
	(on_board instrument7 satellite3)
	(on_board instrument8 satellite3)
	(on_board instrument9 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star5)
	(supports instrument10 thermograph1)
	(supports instrument10 thermograph4)
	(calibration_target instrument10 Star3)
	(supports instrument11 thermograph1)
	(supports instrument11 thermograph2)
	(calibration_target instrument11 Star1)
	(supports instrument12 thermograph2)
	(supports instrument12 thermograph1)
	(supports instrument12 spectrograph3)
	(calibration_target instrument12 GroundStation0)
	(on_board instrument10 satellite4)
	(on_board instrument11 satellite4)
	(on_board instrument12 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Planet19)
)
(:goal (and
	(pointing satellite1 Star20)
	(pointing satellite2 Planet16)
	(have_image Star5 thermograph4)
	(have_image Planet6 thermograph4)
	(have_image Planet8 spectrograph0)
	(have_image Phenomenon9 thermograph1)
	(have_image Phenomenon10 thermograph1)
	(have_image Planet11 spectrograph0)
	(have_image Phenomenon12 spectrograph3)
	(have_image Star13 thermograph1)
	(have_image Planet14 thermograph4)
	(have_image Phenomenon15 thermograph4)
	(have_image Planet16 thermograph4)
	(have_image Planet17 thermograph4)
	(have_image Planet18 thermograph4)
	(have_image Planet19 spectrograph3)
	(have_image Star20 thermograph1)
	(have_image Planet21 thermograph2)
	(have_image Phenomenon22 thermograph4)
	(have_image Planet23 thermograph1)
	(have_image Planet25 spectrograph3)
))

)
