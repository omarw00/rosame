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
	instrument7 - instrument
	satellite3 - satellite
	instrument8 - instrument
	instrument9 - instrument
	satellite4 - satellite
	instrument10 - instrument
	infrared2 - mode
	spectrograph1 - mode
	thermograph3 - mode
	thermograph0 - mode
	Star1 - direction
	Star2 - direction
	GroundStation0 - direction
	Phenomenon3 - direction
	Planet4 - direction
	Phenomenon5 - direction
	Star6 - direction
	Planet7 - direction
	Star8 - direction
	Phenomenon9 - direction
	Star10 - direction
	Planet11 - direction
	Phenomenon12 - direction
	Planet13 - direction
	Planet14 - direction
	Phenomenon15 - direction
	Planet16 - direction
	Star17 - direction
	Star18 - direction
	Star19 - direction
	Planet20 - direction
	Planet21 - direction
	Planet22 - direction
	Star23 - direction
	Planet24 - direction
	Star25 - direction
	Phenomenon26 - direction
	Star27 - direction
)
(:init
	(supports instrument0 thermograph3)
	(supports instrument0 spectrograph1)
	(calibration_target instrument0 GroundStation0)
	(supports instrument1 infrared2)
	(calibration_target instrument1 Star2)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Phenomenon5)
	(supports instrument2 thermograph3)
	(supports instrument2 infrared2)
	(calibration_target instrument2 GroundStation0)
	(supports instrument3 infrared2)
	(calibration_target instrument3 Star2)
	(supports instrument4 infrared2)
	(calibration_target instrument4 GroundStation0)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Star19)
	(supports instrument5 infrared2)
	(supports instrument5 spectrograph1)
	(supports instrument5 thermograph0)
	(calibration_target instrument5 Star1)
	(supports instrument6 spectrograph1)
	(calibration_target instrument6 Star1)
	(supports instrument7 spectrograph1)
	(calibration_target instrument7 Star1)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(on_board instrument7 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Star19)
	(supports instrument8 thermograph3)
	(calibration_target instrument8 Star2)
	(supports instrument9 thermograph3)
	(calibration_target instrument9 Star2)
	(on_board instrument8 satellite3)
	(on_board instrument9 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star23)
	(supports instrument10 thermograph0)
	(calibration_target instrument10 GroundStation0)
	(on_board instrument10 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Star10)
)
(:goal (and
	(pointing satellite0 Planet13)
	(pointing satellite2 Planet4)
	(pointing satellite3 Star17)
	(have_image Phenomenon3 thermograph0)
	(have_image Planet4 spectrograph1)
	(have_image Phenomenon5 thermograph0)
	(have_image Star6 infrared2)
	(have_image Planet7 spectrograph1)
	(have_image Phenomenon9 infrared2)
	(have_image Star10 infrared2)
	(have_image Planet11 thermograph3)
	(have_image Phenomenon12 spectrograph1)
	(have_image Planet13 infrared2)
	(have_image Planet14 spectrograph1)
	(have_image Phenomenon15 spectrograph1)
	(have_image Planet16 thermograph3)
	(have_image Star17 spectrograph1)
	(have_image Star18 infrared2)
	(have_image Star19 thermograph0)
	(have_image Planet20 infrared2)
	(have_image Planet21 infrared2)
	(have_image Planet22 thermograph0)
	(have_image Star23 infrared2)
	(have_image Planet24 thermograph3)
	(have_image Star25 thermograph0)
	(have_image Star27 infrared2)
))

)
