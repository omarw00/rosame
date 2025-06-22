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
	satellite3 - satellite
	instrument5 - instrument
	satellite4 - satellite
	instrument6 - instrument
	instrument7 - instrument
	instrument8 - instrument
	infrared2 - mode
	thermograph0 - mode
	thermograph3 - mode
	image1 - mode
	Star2 - direction
	GroundStation0 - direction
	GroundStation3 - direction
	GroundStation1 - direction
	Star4 - direction
	Star5 - direction
	Planet6 - direction
	Star7 - direction
	Phenomenon8 - direction
	Phenomenon9 - direction
	Planet10 - direction
	Phenomenon11 - direction
	Phenomenon12 - direction
	Planet13 - direction
	Phenomenon14 - direction
	Planet15 - direction
	Planet16 - direction
	Phenomenon17 - direction
	Star18 - direction
	Phenomenon19 - direction
	Star20 - direction
	Phenomenon21 - direction
	Planet22 - direction
	Star23 - direction
	Planet24 - direction
)
(:init
	(supports instrument0 infrared2)
	(supports instrument0 image1)
	(calibration_target instrument0 GroundStation3)
	(supports instrument1 infrared2)
	(supports instrument1 thermograph0)
	(calibration_target instrument1 GroundStation1)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Planet15)
	(supports instrument2 thermograph0)
	(calibration_target instrument2 GroundStation3)
	(supports instrument3 image1)
	(supports instrument3 thermograph3)
	(supports instrument3 thermograph0)
	(calibration_target instrument3 Star2)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Phenomenon9)
	(supports instrument4 thermograph0)
	(calibration_target instrument4 GroundStation3)
	(on_board instrument4 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Phenomenon14)
	(supports instrument5 infrared2)
	(calibration_target instrument5 GroundStation3)
	(on_board instrument5 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Phenomenon21)
	(supports instrument6 thermograph0)
	(supports instrument6 thermograph3)
	(supports instrument6 image1)
	(calibration_target instrument6 GroundStation0)
	(supports instrument7 thermograph3)
	(calibration_target instrument7 GroundStation3)
	(supports instrument8 image1)
	(calibration_target instrument8 GroundStation1)
	(on_board instrument6 satellite4)
	(on_board instrument7 satellite4)
	(on_board instrument8 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Planet6)
)
(:goal (and
	(pointing satellite0 Planet6)
	(pointing satellite1 GroundStation0)
	(pointing satellite2 Star18)
	(pointing satellite3 Planet22)
	(have_image Star4 thermograph3)
	(have_image Star5 thermograph3)
	(have_image Planet6 thermograph0)
	(have_image Star7 image1)
	(have_image Phenomenon8 thermograph3)
	(have_image Phenomenon9 thermograph3)
	(have_image Planet10 infrared2)
	(have_image Phenomenon11 image1)
	(have_image Phenomenon12 thermograph3)
	(have_image Planet13 infrared2)
	(have_image Phenomenon14 thermograph0)
	(have_image Planet15 thermograph0)
	(have_image Planet16 infrared2)
	(have_image Phenomenon19 thermograph0)
	(have_image Star20 infrared2)
	(have_image Phenomenon21 image1)
	(have_image Planet22 thermograph3)
	(have_image Star23 thermograph0)
	(have_image Planet24 thermograph0)
))

)
