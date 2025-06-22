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
	instrument6 - instrument
	satellite4 - satellite
	instrument7 - instrument
	infrared0 - mode
	infrared1 - mode
	image2 - mode
	Star0 - direction
	GroundStation1 - direction
	Star2 - direction
	Planet3 - direction
	Planet4 - direction
	Phenomenon5 - direction
	Planet6 - direction
	Phenomenon7 - direction
	Star8 - direction
	Planet9 - direction
	Phenomenon10 - direction
	Phenomenon11 - direction
	Planet12 - direction
	Phenomenon13 - direction
	Star14 - direction
	Planet15 - direction
)
(:init
	(supports instrument0 image2)
	(supports instrument0 infrared0)
	(supports instrument0 infrared1)
	(calibration_target instrument0 Star0)
	(supports instrument1 infrared1)
	(supports instrument1 image2)
	(calibration_target instrument1 Star2)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Planet9)
	(supports instrument2 image2)
	(supports instrument2 infrared1)
	(supports instrument2 infrared0)
	(calibration_target instrument2 Star2)
	(on_board instrument2 satellite1)
	(power_avail satellite1)
	(pointing satellite1 GroundStation1)
	(supports instrument3 image2)
	(supports instrument3 infrared1)
	(calibration_target instrument3 Star0)
	(supports instrument4 infrared1)
	(supports instrument4 infrared0)
	(supports instrument4 image2)
	(calibration_target instrument4 GroundStation1)
	(on_board instrument3 satellite2)
	(on_board instrument4 satellite2)
	(power_avail satellite2)
	(pointing satellite2 GroundStation1)
	(supports instrument5 image2)
	(supports instrument5 infrared0)
	(calibration_target instrument5 Star2)
	(supports instrument6 infrared1)
	(supports instrument6 infrared0)
	(supports instrument6 image2)
	(calibration_target instrument6 Star2)
	(on_board instrument5 satellite3)
	(on_board instrument6 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Planet6)
	(supports instrument7 image2)
	(calibration_target instrument7 Star2)
	(on_board instrument7 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Star2)
)
(:goal (and
	(pointing satellite0 Phenomenon13)
	(pointing satellite3 Phenomenon13)
	(have_image Planet3 image2)
	(have_image Planet4 infrared0)
	(have_image Phenomenon5 image2)
	(have_image Planet6 infrared1)
	(have_image Phenomenon7 infrared1)
	(have_image Star8 infrared1)
	(have_image Planet9 image2)
	(have_image Phenomenon10 infrared1)
	(have_image Phenomenon11 infrared0)
	(have_image Phenomenon13 infrared0)
	(have_image Star14 image2)
	(have_image Planet15 image2)
))

)
