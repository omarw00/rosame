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
	satellite3 - satellite
	instrument5 - instrument
	instrument6 - instrument
	satellite4 - satellite
	instrument7 - instrument
	instrument8 - instrument
	image2 - mode
	image1 - mode
	infrared0 - mode
	Star2 - direction
	GroundStation0 - direction
	GroundStation4 - direction
	Star3 - direction
	Star1 - direction
	Planet5 - direction
	Star6 - direction
	Planet7 - direction
	Phenomenon8 - direction
	Planet9 - direction
	Planet10 - direction
	Star11 - direction
	Phenomenon12 - direction
	Planet13 - direction
	Planet14 - direction
)
(:init
	(supports instrument0 infrared0)
	(calibration_target instrument0 GroundStation4)
	(supports instrument1 image1)
	(supports instrument1 image2)
	(calibration_target instrument1 GroundStation0)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star6)
	(supports instrument2 image1)
	(calibration_target instrument2 Star1)
	(supports instrument3 image1)
	(supports instrument3 image2)
	(supports instrument3 infrared0)
	(calibration_target instrument3 GroundStation0)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Star11)
	(supports instrument4 image2)
	(calibration_target instrument4 GroundStation4)
	(on_board instrument4 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Planet5)
	(supports instrument5 image1)
	(supports instrument5 infrared0)
	(calibration_target instrument5 GroundStation4)
	(supports instrument6 infrared0)
	(supports instrument6 image1)
	(calibration_target instrument6 Star3)
	(on_board instrument5 satellite3)
	(on_board instrument6 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star2)
	(supports instrument7 image1)
	(supports instrument7 image2)
	(supports instrument7 infrared0)
	(calibration_target instrument7 Star1)
	(supports instrument8 infrared0)
	(calibration_target instrument8 Star1)
	(on_board instrument7 satellite4)
	(on_board instrument8 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Phenomenon8)
)
(:goal (and
	(pointing satellite0 Planet13)
	(pointing satellite2 Star11)
	(have_image Planet5 infrared0)
	(have_image Star6 infrared0)
	(have_image Phenomenon8 image1)
	(have_image Planet10 image1)
	(have_image Star11 image1)
	(have_image Planet13 image2)
	(have_image Planet14 infrared0)
))

)
