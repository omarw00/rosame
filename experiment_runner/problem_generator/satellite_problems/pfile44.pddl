(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	satellite1 - satellite
	instrument2 - instrument
	satellite2 - satellite
	instrument3 - instrument
	instrument4 - instrument
	satellite3 - satellite
	instrument5 - instrument
	satellite4 - satellite
	instrument6 - instrument
	instrument7 - instrument
	image0 - mode
	infrared3 - mode
	spectrograph2 - mode
	thermograph1 - mode
	Star0 - direction
	GroundStation2 - direction
	Star1 - direction
	Star3 - direction
	Planet4 - direction
	Planet5 - direction
	Phenomenon6 - direction
	Star7 - direction
	Star8 - direction
	Planet9 - direction
	Phenomenon10 - direction
	Planet11 - direction
	Phenomenon12 - direction
	Star13 - direction
	Planet14 - direction
	Planet15 - direction
	Phenomenon16 - direction
	Phenomenon17 - direction
	Phenomenon18 - direction
	Star19 - direction
)
(:init
	(supports instrument0 spectrograph2)
	(supports instrument0 thermograph1)
	(supports instrument0 infrared3)
	(calibration_target instrument0 GroundStation2)
	(supports instrument1 thermograph1)
	(supports instrument1 infrared3)
	(supports instrument1 image0)
	(calibration_target instrument1 Star0)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star1)
	(supports instrument2 infrared3)
	(supports instrument2 thermograph1)
	(supports instrument2 spectrograph2)
	(calibration_target instrument2 GroundStation2)
	(on_board instrument2 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Phenomenon18)
	(supports instrument3 infrared3)
	(supports instrument3 image0)
	(calibration_target instrument3 Star0)
	(supports instrument4 thermograph1)
	(calibration_target instrument4 GroundStation2)
	(on_board instrument3 satellite2)
	(on_board instrument4 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Phenomenon10)
	(supports instrument5 thermograph1)
	(supports instrument5 spectrograph2)
	(supports instrument5 infrared3)
	(calibration_target instrument5 Star1)
	(on_board instrument5 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Phenomenon17)
	(supports instrument6 thermograph1)
	(calibration_target instrument6 GroundStation2)
	(supports instrument7 thermograph1)
	(calibration_target instrument7 Star1)
	(on_board instrument6 satellite4)
	(on_board instrument7 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Planet9)
)
(:goal (and
	(pointing satellite4 Phenomenon17)
	(have_image Star3 thermograph1)
	(have_image Planet4 thermograph1)
	(have_image Planet5 image0)
	(have_image Phenomenon6 infrared3)
	(have_image Star7 image0)
	(have_image Star8 image0)
	(have_image Planet9 infrared3)
	(have_image Phenomenon10 spectrograph2)
	(have_image Planet11 image0)
	(have_image Phenomenon12 image0)
	(have_image Star13 thermograph1)
	(have_image Planet14 infrared3)
	(have_image Planet15 spectrograph2)
	(have_image Phenomenon16 thermograph1)
	(have_image Phenomenon17 spectrograph2)
	(have_image Phenomenon18 thermograph1)
	(have_image Star19 image0)
))

)
