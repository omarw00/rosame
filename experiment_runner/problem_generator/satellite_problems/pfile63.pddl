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
	satellite3 - satellite
	instrument8 - instrument
	instrument9 - instrument
	instrument10 - instrument
	satellite4 - satellite
	instrument11 - instrument
	instrument12 - instrument
	instrument13 - instrument
	image3 - mode
	thermograph0 - mode
	image1 - mode
	thermograph2 - mode
	GroundStation4 - direction
	GroundStation3 - direction
	GroundStation2 - direction
	GroundStation0 - direction
	GroundStation1 - direction
	Star5 - direction
	Phenomenon6 - direction
	Star7 - direction
	Planet8 - direction
	Phenomenon9 - direction
	Phenomenon10 - direction
	Phenomenon11 - direction
	Planet12 - direction
	Star13 - direction
	Phenomenon14 - direction
	Planet15 - direction
	Star16 - direction
	Star17 - direction
	Star18 - direction
	Star19 - direction
	Planet20 - direction
	Phenomenon21 - direction
	Planet22 - direction
	Phenomenon23 - direction
	Planet24 - direction
	Star25 - direction
)
(:init
	(supports instrument0 image1)
	(calibration_target instrument0 GroundStation3)
	(supports instrument1 image1)
	(supports instrument1 thermograph2)
	(supports instrument1 image3)
	(calibration_target instrument1 GroundStation0)
	(supports instrument2 image1)
	(supports instrument2 thermograph0)
	(calibration_target instrument2 GroundStation1)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star13)
	(supports instrument3 thermograph2)
	(supports instrument3 thermograph0)
	(supports instrument3 image3)
	(calibration_target instrument3 GroundStation2)
	(supports instrument4 thermograph0)
	(calibration_target instrument4 GroundStation1)
	(supports instrument5 thermograph2)
	(supports instrument5 image3)
	(calibration_target instrument5 GroundStation2)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(on_board instrument5 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Star16)
	(supports instrument6 image1)
	(calibration_target instrument6 GroundStation1)
	(supports instrument7 thermograph2)
	(calibration_target instrument7 GroundStation0)
	(on_board instrument6 satellite2)
	(on_board instrument7 satellite2)
	(power_avail satellite2)
	(pointing satellite2 GroundStation1)
	(supports instrument8 image3)
	(supports instrument8 image1)
	(calibration_target instrument8 GroundStation1)
	(supports instrument9 image3)
	(supports instrument9 thermograph2)
	(calibration_target instrument9 GroundStation3)
	(supports instrument10 image3)
	(calibration_target instrument10 GroundStation2)
	(on_board instrument8 satellite3)
	(on_board instrument9 satellite3)
	(on_board instrument10 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star18)
	(supports instrument11 thermograph0)
	(calibration_target instrument11 GroundStation0)
	(supports instrument12 thermograph0)
	(supports instrument12 image3)
	(calibration_target instrument12 GroundStation1)
	(supports instrument13 thermograph2)
	(supports instrument13 image1)
	(calibration_target instrument13 GroundStation1)
	(on_board instrument11 satellite4)
	(on_board instrument12 satellite4)
	(on_board instrument13 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Star18)
)
(:goal (and
	(pointing satellite0 GroundStation2)
	(pointing satellite3 Star25)
	(pointing satellite4 Planet8)
	(have_image Star5 thermograph0)
	(have_image Phenomenon6 thermograph2)
	(have_image Star7 thermograph0)
	(have_image Phenomenon9 image3)
	(have_image Phenomenon10 image3)
	(have_image Phenomenon11 image1)
	(have_image Planet12 thermograph2)
	(have_image Star13 thermograph2)
	(have_image Phenomenon14 image3)
	(have_image Star16 thermograph0)
	(have_image Star17 image1)
	(have_image Star18 image1)
	(have_image Star19 thermograph2)
	(have_image Planet20 image1)
	(have_image Phenomenon21 thermograph2)
	(have_image Planet22 thermograph0)
	(have_image Phenomenon23 thermograph0)
	(have_image Planet24 image1)
	(have_image Star25 thermograph2)
))

)
