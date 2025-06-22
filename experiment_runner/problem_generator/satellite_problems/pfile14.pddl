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
	instrument8 - instrument
	satellite3 - satellite
	instrument9 - instrument
	instrument10 - instrument
	satellite4 - satellite
	instrument11 - instrument
	instrument12 - instrument
	image2 - mode
	spectrograph0 - mode
	thermograph1 - mode
	GroundStation0 - direction
	GroundStation1 - direction
	Star3 - direction
	GroundStation2 - direction
	Star4 - direction
	Phenomenon5 - direction
	Star6 - direction
	Star7 - direction
	Phenomenon8 - direction
	Phenomenon9 - direction
	Planet10 - direction
	Star11 - direction
	Phenomenon12 - direction
	Phenomenon13 - direction
	Star14 - direction
	Star15 - direction
	Planet16 - direction
	Phenomenon17 - direction
	Star18 - direction
	Phenomenon19 - direction
	Star20 - direction
	Phenomenon21 - direction
	Planet22 - direction
	Star23 - direction
	Star24 - direction
	Planet25 - direction
	Star26 - direction
	Planet27 - direction
	Star28 - direction
)
(:init
	(supports instrument0 thermograph1)
	(supports instrument0 image2)
	(calibration_target instrument0 Star3)
	(supports instrument1 image2)
	(supports instrument1 thermograph1)
	(supports instrument1 spectrograph0)
	(calibration_target instrument1 GroundStation1)
	(supports instrument2 thermograph1)
	(calibration_target instrument2 Star3)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star15)
	(supports instrument3 spectrograph0)
	(supports instrument3 image2)
	(supports instrument3 thermograph1)
	(calibration_target instrument3 GroundStation2)
	(supports instrument4 thermograph1)
	(calibration_target instrument4 Star3)
	(supports instrument5 image2)
	(supports instrument5 spectrograph0)
	(calibration_target instrument5 GroundStation1)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(on_board instrument5 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Planet27)
	(supports instrument6 image2)
	(calibration_target instrument6 Star3)
	(supports instrument7 image2)
	(supports instrument7 thermograph1)
	(supports instrument7 spectrograph0)
	(calibration_target instrument7 GroundStation1)
	(supports instrument8 image2)
	(calibration_target instrument8 GroundStation1)
	(on_board instrument6 satellite2)
	(on_board instrument7 satellite2)
	(on_board instrument8 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Phenomenon19)
	(supports instrument9 spectrograph0)
	(calibration_target instrument9 Star3)
	(supports instrument10 image2)
	(supports instrument10 spectrograph0)
	(calibration_target instrument10 GroundStation2)
	(on_board instrument9 satellite3)
	(on_board instrument10 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star14)
	(supports instrument11 image2)
	(calibration_target instrument11 GroundStation2)
	(supports instrument12 thermograph1)
	(supports instrument12 spectrograph0)
	(supports instrument12 image2)
	(calibration_target instrument12 Star4)
	(on_board instrument11 satellite4)
	(on_board instrument12 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Phenomenon13)
)
(:goal (and
	(pointing satellite0 Phenomenon21)
	(pointing satellite2 Phenomenon17)
	(have_image Phenomenon5 spectrograph0)
	(have_image Star6 spectrograph0)
	(have_image Star7 spectrograph0)
	(have_image Phenomenon8 image2)
	(have_image Phenomenon9 spectrograph0)
	(have_image Planet10 thermograph1)
	(have_image Phenomenon12 image2)
	(have_image Phenomenon13 spectrograph0)
	(have_image Star14 thermograph1)
	(have_image Star15 image2)
	(have_image Planet16 image2)
	(have_image Phenomenon17 thermograph1)
	(have_image Star18 thermograph1)
	(have_image Phenomenon19 spectrograph0)
	(have_image Star20 thermograph1)
	(have_image Phenomenon21 image2)
	(have_image Planet22 thermograph1)
	(have_image Star23 image2)
	(have_image Star24 image2)
	(have_image Planet25 image2)
	(have_image Star26 image2)
	(have_image Planet27 image2)
))

)
