(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	instrument2 - instrument
	satellite1 - satellite
	instrument3 - instrument
	satellite2 - satellite
	instrument4 - instrument
	instrument5 - instrument
	satellite3 - satellite
	instrument6 - instrument
	satellite4 - satellite
	instrument7 - instrument
	spectrograph0 - mode
	image2 - mode
	thermograph1 - mode
	GroundStation1 - direction
	GroundStation2 - direction
	GroundStation0 - direction
	GroundStation4 - direction
	GroundStation3 - direction
	Star5 - direction
	Star6 - direction
	Phenomenon7 - direction
	Star8 - direction
	Phenomenon9 - direction
	Planet10 - direction
	Star11 - direction
	Phenomenon12 - direction
	Star13 - direction
	Planet14 - direction
	Phenomenon15 - direction
	Star16 - direction
	Phenomenon17 - direction
	Planet18 - direction
	Star19 - direction
)
(:init
	(supports instrument0 image2)
	(calibration_target instrument0 GroundStation2)
	(supports instrument1 spectrograph0)
	(supports instrument1 image2)
	(supports instrument1 thermograph1)
	(calibration_target instrument1 GroundStation0)
	(supports instrument2 spectrograph0)
	(supports instrument2 image2)
	(supports instrument2 thermograph1)
	(calibration_target instrument2 GroundStation0)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 GroundStation4)
	(supports instrument3 image2)
	(supports instrument3 thermograph1)
	(calibration_target instrument3 GroundStation3)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Star13)
	(supports instrument4 spectrograph0)
	(supports instrument4 image2)
	(supports instrument4 thermograph1)
	(calibration_target instrument4 GroundStation2)
	(supports instrument5 spectrograph0)
	(supports instrument5 image2)
	(supports instrument5 thermograph1)
	(calibration_target instrument5 GroundStation0)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Star5)
	(supports instrument6 thermograph1)
	(supports instrument6 image2)
	(calibration_target instrument6 GroundStation4)
	(on_board instrument6 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star19)
	(supports instrument7 thermograph1)
	(calibration_target instrument7 GroundStation3)
	(on_board instrument7 satellite4)
	(power_avail satellite4)
	(pointing satellite4 GroundStation1)
)
(:goal (and
	(have_image Star5 image2)
	(have_image Star6 spectrograph0)
	(have_image Star8 spectrograph0)
	(have_image Phenomenon9 thermograph1)
	(have_image Planet10 image2)
	(have_image Star11 spectrograph0)
	(have_image Phenomenon12 spectrograph0)
	(have_image Star13 image2)
	(have_image Planet14 image2)
	(have_image Phenomenon15 thermograph1)
	(have_image Star16 image2)
	(have_image Phenomenon17 thermograph1)
	(have_image Planet18 image2)
	(have_image Star19 image2)
))

)
