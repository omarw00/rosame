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
	thermograph0 - mode
	infrared1 - mode
	thermograph2 - mode
	Star2 - direction
	GroundStation0 - direction
	GroundStation3 - direction
	GroundStation1 - direction
	Planet4 - direction
	Planet5 - direction
	Planet6 - direction
	Phenomenon7 - direction
	Star8 - direction
	Phenomenon9 - direction
	Star10 - direction
	Planet11 - direction
	Planet12 - direction
	Star13 - direction
	Star14 - direction
	Star15 - direction
	Phenomenon16 - direction
	Star17 - direction
	Star18 - direction
	Planet19 - direction
	Phenomenon20 - direction
	Phenomenon21 - direction
	Planet22 - direction
	Planet23 - direction
	Phenomenon24 - direction
	Phenomenon25 - direction
)
(:init
	(supports instrument0 thermograph2)
	(calibration_target instrument0 Star2)
	(supports instrument1 infrared1)
	(supports instrument1 thermograph0)
	(supports instrument1 thermograph2)
	(calibration_target instrument1 Star2)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Planet11)
	(supports instrument2 thermograph2)
	(calibration_target instrument2 GroundStation3)
	(supports instrument3 thermograph2)
	(supports instrument3 thermograph0)
	(calibration_target instrument3 GroundStation3)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Planet11)
	(supports instrument4 thermograph2)
	(calibration_target instrument4 GroundStation0)
	(on_board instrument4 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Phenomenon7)
	(supports instrument5 thermograph0)
	(supports instrument5 infrared1)
	(supports instrument5 thermograph2)
	(calibration_target instrument5 GroundStation3)
	(on_board instrument5 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Phenomenon24)
	(supports instrument6 thermograph2)
	(supports instrument6 thermograph0)
	(supports instrument6 infrared1)
	(calibration_target instrument6 GroundStation0)
	(supports instrument7 thermograph2)
	(calibration_target instrument7 GroundStation3)
	(supports instrument8 thermograph2)
	(supports instrument8 infrared1)
	(supports instrument8 thermograph0)
	(calibration_target instrument8 GroundStation1)
	(on_board instrument6 satellite4)
	(on_board instrument7 satellite4)
	(on_board instrument8 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Phenomenon21)
)
(:goal (and
	(pointing satellite0 Star18)
	(pointing satellite1 Star13)
	(pointing satellite3 GroundStation1)
	(have_image Planet4 thermograph2)
	(have_image Planet5 thermograph2)
	(have_image Phenomenon7 thermograph2)
	(have_image Star8 thermograph2)
	(have_image Phenomenon9 thermograph2)
	(have_image Star10 thermograph0)
	(have_image Planet11 thermograph0)
	(have_image Star13 thermograph0)
	(have_image Star14 thermograph2)
	(have_image Star15 thermograph0)
	(have_image Phenomenon16 infrared1)
	(have_image Star17 thermograph0)
	(have_image Star18 thermograph2)
	(have_image Planet19 thermograph0)
	(have_image Phenomenon20 thermograph0)
	(have_image Planet23 thermograph2)
	(have_image Phenomenon24 infrared1)
	(have_image Phenomenon25 thermograph0)
))

)
