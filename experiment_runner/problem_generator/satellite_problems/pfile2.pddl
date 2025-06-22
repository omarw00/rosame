(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	satellite1 - satellite
	instrument1 - instrument
	satellite2 - satellite
	instrument2 - instrument
	satellite3 - satellite
	instrument3 - instrument
	instrument4 - instrument
	instrument5 - instrument
	satellite4 - satellite
	instrument6 - instrument
	instrument7 - instrument
	instrument8 - instrument
	thermograph1 - mode
	thermograph0 - mode
	infrared2 - mode
	GroundStation2 - direction
	GroundStation0 - direction
	GroundStation1 - direction
	Planet3 - direction
	Star4 - direction
	Star5 - direction
	Star6 - direction
	Phenomenon7 - direction
	Star8 - direction
	Star9 - direction
	Star10 - direction
	Planet11 - direction
	Planet12 - direction
	Planet13 - direction
	Planet14 - direction
	Planet15 - direction
	Phenomenon16 - direction
	Planet17 - direction
	Phenomenon18 - direction
	Star19 - direction
	Star20 - direction
	Planet21 - direction
	Planet22 - direction
	Phenomenon23 - direction
	Planet24 - direction
	Phenomenon25 - direction
	Star26 - direction
	Star27 - direction
)
(:init
	(supports instrument0 thermograph0)
	(supports instrument0 infrared2)
	(supports instrument0 thermograph1)
	(calibration_target instrument0 GroundStation1)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Planet14)
	(supports instrument1 thermograph0)
	(calibration_target instrument1 GroundStation0)
	(on_board instrument1 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Star5)
	(supports instrument2 thermograph0)
	(calibration_target instrument2 GroundStation2)
	(on_board instrument2 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Planet13)
	(supports instrument3 infrared2)
	(supports instrument3 thermograph0)
	(calibration_target instrument3 GroundStation1)
	(supports instrument4 thermograph1)
	(calibration_target instrument4 GroundStation2)
	(supports instrument5 thermograph0)
	(supports instrument5 thermograph1)
	(supports instrument5 infrared2)
	(calibration_target instrument5 GroundStation1)
	(on_board instrument3 satellite3)
	(on_board instrument4 satellite3)
	(on_board instrument5 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Planet15)
	(supports instrument6 infrared2)
	(supports instrument6 thermograph0)
	(calibration_target instrument6 GroundStation2)
	(supports instrument7 thermograph1)
	(supports instrument7 infrared2)
	(calibration_target instrument7 GroundStation0)
	(supports instrument8 infrared2)
	(supports instrument8 thermograph0)
	(supports instrument8 thermograph1)
	(calibration_target instrument8 GroundStation1)
	(on_board instrument6 satellite4)
	(on_board instrument7 satellite4)
	(on_board instrument8 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Star19)
)
(:goal (and
	(have_image Planet3 thermograph1)
	(have_image Star4 thermograph0)
	(have_image Star5 infrared2)
	(have_image Star6 thermograph1)
	(have_image Phenomenon7 thermograph1)
	(have_image Star8 thermograph1)
	(have_image Star9 thermograph0)
	(have_image Planet11 thermograph0)
	(have_image Planet13 infrared2)
	(have_image Planet14 infrared2)
	(have_image Phenomenon16 thermograph0)
	(have_image Planet17 infrared2)
	(have_image Phenomenon18 infrared2)
	(have_image Star19 thermograph0)
	(have_image Star20 thermograph1)
	(have_image Planet21 infrared2)
	(have_image Planet22 thermograph0)
	(have_image Phenomenon23 infrared2)
	(have_image Planet24 infrared2)
	(have_image Phenomenon25 thermograph0)
	(have_image Star26 infrared2)
))

)
