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
	instrument9 - instrument
	instrument10 - instrument
	satellite4 - satellite
	instrument11 - instrument
	instrument12 - instrument
	instrument13 - instrument
	thermograph3 - mode
	thermograph2 - mode
	thermograph1 - mode
	image0 - mode
	GroundStation1 - direction
	Star0 - direction
	GroundStation2 - direction
	GroundStation3 - direction
	Planet4 - direction
	Planet5 - direction
	Star6 - direction
	Star7 - direction
	Planet8 - direction
	Planet9 - direction
	Planet10 - direction
	Star11 - direction
	Star12 - direction
	Phenomenon13 - direction
	Phenomenon14 - direction
	Star15 - direction
	Planet16 - direction
	Phenomenon17 - direction
	Phenomenon18 - direction
	Star19 - direction
	Planet20 - direction
	Planet21 - direction
	Planet22 - direction
)
(:init
	(supports instrument0 image0)
	(calibration_target instrument0 Star0)
	(supports instrument1 thermograph2)
	(calibration_target instrument1 GroundStation2)
	(supports instrument2 thermograph1)
	(calibration_target instrument2 GroundStation2)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star11)
	(supports instrument3 thermograph3)
	(calibration_target instrument3 Star0)
	(supports instrument4 thermograph2)
	(calibration_target instrument4 GroundStation1)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Star19)
	(supports instrument5 thermograph3)
	(supports instrument5 thermograph2)
	(calibration_target instrument5 Star0)
	(supports instrument6 thermograph1)
	(supports instrument6 thermograph3)
	(calibration_target instrument6 Star0)
	(supports instrument7 thermograph2)
	(supports instrument7 thermograph1)
	(calibration_target instrument7 Star0)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(on_board instrument7 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Planet4)
	(supports instrument8 thermograph2)
	(calibration_target instrument8 GroundStation1)
	(supports instrument9 image0)
	(calibration_target instrument9 GroundStation3)
	(supports instrument10 thermograph3)
	(calibration_target instrument10 GroundStation1)
	(on_board instrument8 satellite3)
	(on_board instrument9 satellite3)
	(on_board instrument10 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Planet8)
	(supports instrument11 thermograph2)
	(supports instrument11 thermograph3)
	(supports instrument11 thermograph1)
	(calibration_target instrument11 Star0)
	(supports instrument12 thermograph1)
	(calibration_target instrument12 GroundStation2)
	(supports instrument13 image0)
	(calibration_target instrument13 GroundStation3)
	(on_board instrument11 satellite4)
	(on_board instrument12 satellite4)
	(on_board instrument13 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Planet10)
)
(:goal (and
	(pointing satellite2 Phenomenon13)
	(pointing satellite3 Phenomenon14)
	(have_image Planet4 image0)
	(have_image Planet5 thermograph3)
	(have_image Star6 image0)
	(have_image Star7 thermograph3)
	(have_image Planet8 image0)
	(have_image Planet10 thermograph3)
	(have_image Star11 thermograph1)
	(have_image Star12 image0)
	(have_image Phenomenon13 thermograph2)
	(have_image Phenomenon14 thermograph3)
	(have_image Star15 thermograph2)
	(have_image Planet16 image0)
	(have_image Phenomenon17 thermograph2)
	(have_image Phenomenon18 thermograph3)
	(have_image Star19 thermograph2)
	(have_image Planet20 thermograph2)
	(have_image Planet21 thermograph1)
))

)
