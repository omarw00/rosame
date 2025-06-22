(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	satellite1 - satellite
	instrument1 - instrument
	satellite2 - satellite
	instrument2 - instrument
	instrument3 - instrument
	satellite3 - satellite
	instrument4 - instrument
	instrument5 - instrument
	instrument6 - instrument
	satellite4 - satellite
	instrument7 - instrument
	instrument8 - instrument
	infrared1 - mode
	infrared0 - mode
	image2 - mode
	image3 - mode
	GroundStation2 - direction
	Star1 - direction
	GroundStation4 - direction
	Star0 - direction
	GroundStation3 - direction
	Planet5 - direction
	Phenomenon6 - direction
	Phenomenon7 - direction
	Star8 - direction
	Planet9 - direction
	Star10 - direction
	Planet11 - direction
	Phenomenon12 - direction
	Star13 - direction
	Planet14 - direction
	Planet15 - direction
	Planet16 - direction
	Star17 - direction
	Planet18 - direction
	Phenomenon19 - direction
	Star20 - direction
	Planet21 - direction
	Star22 - direction
	Star23 - direction
	Phenomenon24 - direction
	Phenomenon25 - direction
	Phenomenon26 - direction
)
(:init
	(supports instrument0 image3)
	(supports instrument0 image2)
	(calibration_target instrument0 GroundStation3)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star10)
	(supports instrument1 infrared0)
	(calibration_target instrument1 GroundStation4)
	(on_board instrument1 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Star22)
	(supports instrument2 image2)
	(supports instrument2 infrared0)
	(supports instrument2 infrared1)
	(calibration_target instrument2 Star0)
	(supports instrument3 image3)
	(calibration_target instrument3 GroundStation4)
	(on_board instrument2 satellite2)
	(on_board instrument3 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Phenomenon7)
	(supports instrument4 image2)
	(supports instrument4 image3)
	(supports instrument4 infrared1)
	(calibration_target instrument4 Star1)
	(supports instrument5 infrared0)
	(supports instrument5 image2)
	(supports instrument5 image3)
	(calibration_target instrument5 GroundStation4)
	(supports instrument6 infrared0)
	(supports instrument6 image3)
	(calibration_target instrument6 Star0)
	(on_board instrument4 satellite3)
	(on_board instrument5 satellite3)
	(on_board instrument6 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Planet16)
	(supports instrument7 image2)
	(supports instrument7 infrared0)
	(calibration_target instrument7 Star0)
	(supports instrument8 image3)
	(calibration_target instrument8 GroundStation3)
	(on_board instrument7 satellite4)
	(on_board instrument8 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Planet5)
)
(:goal (and
	(pointing satellite1 Star22)
	(have_image Planet5 image3)
	(have_image Phenomenon6 infrared0)
	(have_image Phenomenon7 infrared1)
	(have_image Star8 infrared0)
	(have_image Planet9 image3)
	(have_image Planet11 infrared1)
	(have_image Phenomenon12 infrared1)
	(have_image Star13 image2)
	(have_image Planet14 infrared1)
	(have_image Planet16 image3)
	(have_image Star17 image3)
	(have_image Planet18 image2)
	(have_image Star20 infrared0)
	(have_image Planet21 infrared0)
	(have_image Star22 image2)
	(have_image Star23 image3)
	(have_image Phenomenon24 infrared0)
	(have_image Phenomenon25 image3)
	(have_image Phenomenon26 image2)
))

)
