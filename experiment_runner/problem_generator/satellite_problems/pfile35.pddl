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
	satellite3 - satellite
	instrument6 - instrument
	instrument7 - instrument
	instrument8 - instrument
	satellite4 - satellite
	instrument9 - instrument
	instrument10 - instrument
	instrument11 - instrument
	spectrograph4 - mode
	image1 - mode
	spectrograph2 - mode
	thermograph3 - mode
	image0 - mode
	GroundStation2 - direction
	Star0 - direction
	GroundStation1 - direction
	Phenomenon3 - direction
	Phenomenon4 - direction
	Planet5 - direction
	Star6 - direction
	Star7 - direction
	Phenomenon8 - direction
	Star9 - direction
	Phenomenon10 - direction
	Planet11 - direction
	Phenomenon12 - direction
	Star13 - direction
	Phenomenon14 - direction
	Star15 - direction
	Star16 - direction
	Planet17 - direction
	Planet18 - direction
	Star19 - direction
)
(:init
	(supports instrument0 spectrograph2)
	(supports instrument0 spectrograph4)
	(calibration_target instrument0 GroundStation2)
	(supports instrument1 image1)
	(supports instrument1 thermograph3)
	(supports instrument1 image0)
	(calibration_target instrument1 GroundStation2)
	(supports instrument2 image1)
	(supports instrument2 spectrograph4)
	(calibration_target instrument2 Star0)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star13)
	(supports instrument3 image1)
	(supports instrument3 spectrograph4)
	(supports instrument3 thermograph3)
	(calibration_target instrument3 GroundStation2)
	(supports instrument4 image0)
	(supports instrument4 spectrograph4)
	(supports instrument4 image1)
	(calibration_target instrument4 Star0)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Phenomenon3)
	(supports instrument5 image1)
	(supports instrument5 spectrograph4)
	(calibration_target instrument5 GroundStation2)
	(on_board instrument5 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Star6)
	(supports instrument6 image0)
	(supports instrument6 thermograph3)
	(calibration_target instrument6 Star0)
	(supports instrument7 spectrograph4)
	(supports instrument7 image0)
	(calibration_target instrument7 GroundStation2)
	(supports instrument8 thermograph3)
	(supports instrument8 image1)
	(calibration_target instrument8 Star0)
	(on_board instrument6 satellite3)
	(on_board instrument7 satellite3)
	(on_board instrument8 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Phenomenon4)
	(supports instrument9 image0)
	(supports instrument9 thermograph3)
	(calibration_target instrument9 GroundStation1)
	(supports instrument10 thermograph3)
	(supports instrument10 spectrograph2)
	(supports instrument10 image0)
	(calibration_target instrument10 GroundStation1)
	(supports instrument11 image0)
	(calibration_target instrument11 GroundStation1)
	(on_board instrument9 satellite4)
	(on_board instrument10 satellite4)
	(on_board instrument11 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Phenomenon4)
)
(:goal (and
	(have_image Phenomenon3 image0)
	(have_image Planet5 image0)
	(have_image Star7 image0)
	(have_image Phenomenon8 image1)
	(have_image Phenomenon10 image0)
	(have_image Planet11 spectrograph4)
	(have_image Phenomenon12 thermograph3)
	(have_image Star13 thermograph3)
	(have_image Phenomenon14 spectrograph2)
	(have_image Star15 image1)
	(have_image Planet17 image0)
	(have_image Planet18 thermograph3)
	(have_image Star19 spectrograph2)
))

)
