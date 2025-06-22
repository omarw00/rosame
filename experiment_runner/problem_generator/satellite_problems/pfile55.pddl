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
	satellite4 - satellite
	instrument9 - instrument
	image0 - mode
	thermograph2 - mode
	spectrograph4 - mode
	image1 - mode
	thermograph3 - mode
	GroundStation2 - direction
	GroundStation0 - direction
	GroundStation3 - direction
	Star1 - direction
	Planet4 - direction
	Star5 - direction
	Phenomenon6 - direction
	Star7 - direction
	Planet8 - direction
	Phenomenon9 - direction
	Phenomenon10 - direction
	Phenomenon11 - direction
	Planet12 - direction
	Phenomenon13 - direction
)
(:init
	(supports instrument0 image0)
	(calibration_target instrument0 GroundStation0)
	(supports instrument1 thermograph3)
	(calibration_target instrument1 GroundStation0)
	(supports instrument2 spectrograph4)
	(calibration_target instrument2 Star1)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star5)
	(supports instrument3 thermograph2)
	(calibration_target instrument3 GroundStation3)
	(supports instrument4 image0)
	(calibration_target instrument4 GroundStation3)
	(supports instrument5 image0)
	(supports instrument5 thermograph3)
	(supports instrument5 spectrograph4)
	(calibration_target instrument5 Star1)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(on_board instrument5 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Phenomenon10)
	(supports instrument6 thermograph2)
	(supports instrument6 thermograph3)
	(calibration_target instrument6 Star1)
	(supports instrument7 image1)
	(supports instrument7 thermograph2)
	(calibration_target instrument7 GroundStation0)
	(on_board instrument6 satellite2)
	(on_board instrument7 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Planet4)
	(supports instrument8 image1)
	(supports instrument8 spectrograph4)
	(calibration_target instrument8 GroundStation3)
	(on_board instrument8 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Phenomenon11)
	(supports instrument9 thermograph3)
	(supports instrument9 image1)
	(supports instrument9 spectrograph4)
	(calibration_target instrument9 Star1)
	(on_board instrument9 satellite4)
	(power_avail satellite4)
	(pointing satellite4 GroundStation3)
)
(:goal (and
	(pointing satellite3 Star7)
	(have_image Planet4 image0)
	(have_image Star5 spectrograph4)
	(have_image Phenomenon6 image1)
	(have_image Star7 image0)
	(have_image Planet8 image0)
	(have_image Phenomenon9 image1)
	(have_image Phenomenon10 thermograph3)
	(have_image Phenomenon11 image1)
	(have_image Phenomenon13 thermograph2)
))

)
