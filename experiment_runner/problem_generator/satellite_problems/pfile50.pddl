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
	satellite4 - satellite
	instrument7 - instrument
	infrared0 - mode
	spectrograph3 - mode
	image1 - mode
	thermograph2 - mode
	thermograph4 - mode
	GroundStation1 - direction
	GroundStation2 - direction
	Star0 - direction
	Phenomenon3 - direction
	Star4 - direction
	Planet5 - direction
	Star6 - direction
	Planet7 - direction
	Phenomenon8 - direction
	Star9 - direction
	Planet10 - direction
	Star11 - direction
	Star12 - direction
	Planet13 - direction
	Planet14 - direction
	Phenomenon15 - direction
	Star16 - direction
	Planet17 - direction
	Star18 - direction
	Planet19 - direction
	Star20 - direction
)
(:init
	(supports instrument0 thermograph2)
	(supports instrument0 spectrograph3)
	(calibration_target instrument0 GroundStation1)
	(supports instrument1 thermograph2)
	(supports instrument1 infrared0)
	(calibration_target instrument1 GroundStation1)
	(supports instrument2 image1)
	(supports instrument2 thermograph2)
	(calibration_target instrument2 GroundStation1)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star16)
	(supports instrument3 infrared0)
	(supports instrument3 thermograph4)
	(supports instrument3 thermograph2)
	(calibration_target instrument3 GroundStation1)
	(supports instrument4 infrared0)
	(supports instrument4 thermograph4)
	(calibration_target instrument4 Star0)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Phenomenon8)
	(supports instrument5 image1)
	(supports instrument5 spectrograph3)
	(supports instrument5 thermograph4)
	(calibration_target instrument5 GroundStation1)
	(on_board instrument5 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Star0)
	(supports instrument6 thermograph2)
	(supports instrument6 thermograph4)
	(supports instrument6 image1)
	(calibration_target instrument6 GroundStation2)
	(on_board instrument6 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Planet13)
	(supports instrument7 thermograph4)
	(calibration_target instrument7 Star0)
	(on_board instrument7 satellite4)
	(power_avail satellite4)
	(pointing satellite4 GroundStation1)
)
(:goal (and
	(pointing satellite1 Star9)
	(pointing satellite2 Phenomenon3)
	(pointing satellite4 Star4)
	(have_image Phenomenon3 infrared0)
	(have_image Star4 spectrograph3)
	(have_image Planet5 spectrograph3)
	(have_image Star6 thermograph2)
	(have_image Phenomenon8 thermograph4)
	(have_image Star9 thermograph2)
	(have_image Planet10 image1)
	(have_image Star11 infrared0)
	(have_image Planet13 spectrograph3)
	(have_image Planet14 thermograph4)
	(have_image Phenomenon15 spectrograph3)
	(have_image Star16 thermograph2)
	(have_image Planet17 image1)
	(have_image Star18 thermograph2)
	(have_image Planet19 thermograph4)
	(have_image Star20 infrared0)
))

)
