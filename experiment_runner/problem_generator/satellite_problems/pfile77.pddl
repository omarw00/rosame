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
	satellite3 - satellite
	instrument4 - instrument
	instrument5 - instrument
	instrument6 - instrument
	satellite4 - satellite
	instrument7 - instrument
	instrument8 - instrument
	thermograph1 - mode
	infrared0 - mode
	spectrograph3 - mode
	infrared2 - mode
	Star2 - direction
	Star3 - direction
	Star1 - direction
	GroundStation0 - direction
	Phenomenon4 - direction
	Star5 - direction
	Star6 - direction
	Planet7 - direction
	Star8 - direction
	Planet9 - direction
	Planet10 - direction
	Planet11 - direction
	Phenomenon12 - direction
	Planet13 - direction
	Phenomenon14 - direction
	Phenomenon15 - direction
	Planet16 - direction
	Phenomenon17 - direction
	Planet18 - direction
	Star19 - direction
	Phenomenon20 - direction
	Planet21 - direction
	Planet22 - direction
)
(:init
	(supports instrument0 infrared0)
	(calibration_target instrument0 Star1)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Planet21)
	(supports instrument1 infrared0)
	(calibration_target instrument1 GroundStation0)
	(on_board instrument1 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Star8)
	(supports instrument2 spectrograph3)
	(calibration_target instrument2 Star2)
	(supports instrument3 thermograph1)
	(calibration_target instrument3 GroundStation0)
	(on_board instrument2 satellite2)
	(on_board instrument3 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Planet18)
	(supports instrument4 infrared0)
	(calibration_target instrument4 Star3)
	(supports instrument5 infrared0)
	(calibration_target instrument5 Star3)
	(supports instrument6 infrared2)
	(supports instrument6 thermograph1)
	(supports instrument6 spectrograph3)
	(calibration_target instrument6 GroundStation0)
	(on_board instrument4 satellite3)
	(on_board instrument5 satellite3)
	(on_board instrument6 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Phenomenon17)
	(supports instrument7 spectrograph3)
	(supports instrument7 infrared0)
	(calibration_target instrument7 Star1)
	(supports instrument8 infrared2)
	(supports instrument8 spectrograph3)
	(calibration_target instrument8 GroundStation0)
	(on_board instrument7 satellite4)
	(on_board instrument8 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Planet22)
)
(:goal (and
	(pointing satellite0 Planet22)
	(pointing satellite2 Planet9)
	(have_image Phenomenon4 infrared2)
	(have_image Star5 thermograph1)
	(have_image Star6 spectrograph3)
	(have_image Planet7 infrared2)
	(have_image Star8 thermograph1)
	(have_image Planet9 infrared0)
	(have_image Planet10 thermograph1)
	(have_image Planet11 spectrograph3)
	(have_image Phenomenon12 infrared2)
	(have_image Planet13 infrared0)
	(have_image Phenomenon14 thermograph1)
	(have_image Phenomenon15 spectrograph3)
	(have_image Planet16 thermograph1)
	(have_image Phenomenon17 infrared2)
	(have_image Planet18 infrared0)
	(have_image Star19 infrared0)
	(have_image Planet21 thermograph1)
	(have_image Planet22 infrared2)
))

)
