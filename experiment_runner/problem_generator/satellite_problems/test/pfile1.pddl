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
	satellite3 - satellite
	instrument6 - instrument
	instrument7 - instrument
	satellite4 - satellite
	instrument8 - instrument
	instrument9 - instrument
	instrument10 - instrument
	thermograph1 - mode
	image0 - mode
	thermograph2 - mode
	GroundStation0 - direction
	Star3 - direction
	GroundStation2 - direction
	Star1 - direction
	Star4 - direction
	Planet5 - direction
	Planet6 - direction
	Phenomenon7 - direction
	Star8 - direction
	Star9 - direction
	Star10 - direction
	Star11 - direction
	Star12 - direction
	Star13 - direction
	Phenomenon14 - direction
	Star15 - direction
	Phenomenon16 - direction
	Planet17 - direction
	Planet18 - direction
	Planet19 - direction
	Planet20 - direction
)
(:init
	(supports instrument0 thermograph1)
	(supports instrument0 thermograph2)
	(calibration_target instrument0 Star1)
	(supports instrument1 image0)
	(supports instrument1 thermograph1)
	(supports instrument1 thermograph2)
	(calibration_target instrument1 Star3)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star4)
	(supports instrument2 thermograph1)
	(calibration_target instrument2 GroundStation2)
	(supports instrument3 image0)
	(supports instrument3 thermograph2)
	(calibration_target instrument3 Star1)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 GroundStation0)
	(supports instrument4 thermograph2)
	(supports instrument4 thermograph1)
	(calibration_target instrument4 GroundStation0)
	(supports instrument5 thermograph1)
	(supports instrument5 image0)
	(supports instrument5 thermograph2)
	(calibration_target instrument5 GroundStation0)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Planet5)
	(supports instrument6 thermograph1)
	(calibration_target instrument6 Star3)
	(supports instrument7 thermograph2)
	(supports instrument7 image0)
	(supports instrument7 thermograph1)
	(calibration_target instrument7 Star3)
	(on_board instrument6 satellite3)
	(on_board instrument7 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star12)
	(supports instrument8 thermograph2)
	(calibration_target instrument8 GroundStation2)
	(supports instrument9 image0)
	(calibration_target instrument9 GroundStation2)
	(supports instrument10 thermograph2)
	(supports instrument10 image0)
	(calibration_target instrument10 Star1)
	(on_board instrument8 satellite4)
	(on_board instrument9 satellite4)
	(on_board instrument10 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Planet5)
)
(:goal (and
	(pointing satellite1 Star9)
	(pointing satellite2 GroundStation2)
	(have_image Star4 thermograph1)
	(have_image Planet5 thermograph2)
	(have_image Planet6 image0)
	(have_image Star8 thermograph2)
	(have_image Star9 image0)
	(have_image Star10 thermograph2)
	(have_image Star12 thermograph2)
	(have_image Star13 thermograph1)
	(have_image Star15 thermograph1)
	(have_image Phenomenon16 thermograph1)
	(have_image Planet17 image0)
	(have_image Planet18 image0)
	(have_image Planet19 image0)
	(have_image Planet20 image0)
))

)
