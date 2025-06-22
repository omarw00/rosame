(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	satellite1 - satellite
	instrument1 - instrument
	instrument2 - instrument
	instrument3 - instrument
	satellite2 - satellite
	instrument4 - instrument
	instrument5 - instrument
	instrument6 - instrument
	satellite3 - satellite
	instrument7 - instrument
	instrument8 - instrument
	satellite4 - satellite
	instrument9 - instrument
	image1 - mode
	thermograph4 - mode
	image0 - mode
	image2 - mode
	spectrograph3 - mode
	Star0 - direction
	GroundStation2 - direction
	Star1 - direction
	Star3 - direction
	Phenomenon4 - direction
	Phenomenon5 - direction
	Star6 - direction
	Planet7 - direction
	Planet8 - direction
	Star9 - direction
	Planet10 - direction
	Planet11 - direction
	Phenomenon12 - direction
	Phenomenon13 - direction
	Planet14 - direction
	Phenomenon15 - direction
	Star16 - direction
	Star17 - direction
	Star18 - direction
	Planet19 - direction
	Planet20 - direction
	Planet21 - direction
)
(:init
	(supports instrument0 image2)
	(calibration_target instrument0 Star0)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star18)
	(supports instrument1 image2)
	(supports instrument1 spectrograph3)
	(calibration_target instrument1 Star1)
	(supports instrument2 thermograph4)
	(calibration_target instrument2 Star0)
	(supports instrument3 image2)
	(supports instrument3 image1)
	(supports instrument3 image0)
	(calibration_target instrument3 Star1)
	(on_board instrument1 satellite1)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Planet11)
	(supports instrument4 spectrograph3)
	(supports instrument4 image2)
	(calibration_target instrument4 Star1)
	(supports instrument5 image2)
	(calibration_target instrument5 Star1)
	(supports instrument6 image2)
	(supports instrument6 thermograph4)
	(calibration_target instrument6 GroundStation2)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Planet19)
	(supports instrument7 image0)
	(calibration_target instrument7 GroundStation2)
	(supports instrument8 image2)
	(supports instrument8 image0)
	(calibration_target instrument8 Star1)
	(on_board instrument7 satellite3)
	(on_board instrument8 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star3)
	(supports instrument9 spectrograph3)
	(calibration_target instrument9 Star1)
	(on_board instrument9 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Phenomenon4)
)
(:goal (and
	(pointing satellite0 Phenomenon15)
	(pointing satellite1 Star17)
	(pointing satellite2 Star1)
	(have_image Phenomenon4 image2)
	(have_image Phenomenon5 image0)
	(have_image Star6 image2)
	(have_image Planet7 spectrograph3)
	(have_image Planet8 image0)
	(have_image Star9 spectrograph3)
	(have_image Planet10 image0)
	(have_image Planet11 spectrograph3)
	(have_image Phenomenon13 image0)
	(have_image Planet14 thermograph4)
	(have_image Phenomenon15 spectrograph3)
	(have_image Star16 image1)
	(have_image Star17 image1)
	(have_image Planet20 image0)
	(have_image Planet21 image1)
))

)
