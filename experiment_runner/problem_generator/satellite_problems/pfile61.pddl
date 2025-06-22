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
	instrument7 - instrument
	satellite3 - satellite
	instrument8 - instrument
	satellite4 - satellite
	instrument9 - instrument
	instrument10 - instrument
	thermograph0 - mode
	image1 - mode
	thermograph2 - mode
	GroundStation0 - direction
	Star3 - direction
	GroundStation2 - direction
	Star1 - direction
	Star4 - direction
	Star5 - direction
	Planet6 - direction
	Planet7 - direction
	Phenomenon8 - direction
	Phenomenon9 - direction
	Planet10 - direction
	Star11 - direction
	Phenomenon12 - direction
	Phenomenon13 - direction
	Planet14 - direction
	Phenomenon15 - direction
	Phenomenon16 - direction
	Phenomenon17 - direction
	Phenomenon18 - direction
	Planet19 - direction
	Phenomenon20 - direction
	Star21 - direction
)
(:init
	(supports instrument0 image1)
	(calibration_target instrument0 GroundStation2)
	(supports instrument1 thermograph2)
	(calibration_target instrument1 Star3)
	(supports instrument2 image1)
	(calibration_target instrument2 GroundStation0)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Phenomenon18)
	(supports instrument3 thermograph0)
	(supports instrument3 thermograph2)
	(calibration_target instrument3 Star1)
	(supports instrument4 thermograph0)
	(supports instrument4 thermograph2)
	(calibration_target instrument4 GroundStation2)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Phenomenon15)
	(supports instrument5 thermograph0)
	(supports instrument5 thermograph2)
	(calibration_target instrument5 GroundStation0)
	(supports instrument6 thermograph0)
	(calibration_target instrument6 GroundStation2)
	(supports instrument7 image1)
	(calibration_target instrument7 Star3)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(on_board instrument7 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Phenomenon18)
	(supports instrument8 thermograph0)
	(supports instrument8 image1)
	(calibration_target instrument8 GroundStation2)
	(on_board instrument8 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star1)
	(supports instrument9 thermograph2)
	(calibration_target instrument9 GroundStation2)
	(supports instrument10 thermograph2)
	(supports instrument10 image1)
	(calibration_target instrument10 Star1)
	(on_board instrument9 satellite4)
	(on_board instrument10 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Phenomenon12)
)
(:goal (and
	(pointing satellite0 Phenomenon20)
	(pointing satellite2 Star21)
	(pointing satellite3 Star21)
	(pointing satellite4 Phenomenon9)
	(have_image Star5 image1)
	(have_image Planet6 thermograph2)
	(have_image Planet7 thermograph2)
	(have_image Phenomenon8 thermograph2)
	(have_image Phenomenon9 thermograph2)
	(have_image Planet10 thermograph0)
	(have_image Phenomenon12 thermograph2)
	(have_image Phenomenon13 thermograph0)
	(have_image Planet14 image1)
	(have_image Phenomenon15 thermograph0)
	(have_image Phenomenon16 thermograph0)
	(have_image Phenomenon17 thermograph0)
	(have_image Phenomenon18 image1)
	(have_image Planet19 thermograph2)
	(have_image Phenomenon20 image1)
	(have_image Star21 thermograph2)
))

)
