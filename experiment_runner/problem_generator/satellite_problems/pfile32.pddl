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
	image1 - mode
	infrared2 - mode
	infrared0 - mode
	GroundStation1 - direction
	Star2 - direction
	Star0 - direction
	Planet3 - direction
	Star4 - direction
	Planet5 - direction
	Star6 - direction
	Phenomenon7 - direction
	Planet8 - direction
	Star9 - direction
	Planet10 - direction
	Star11 - direction
	Planet12 - direction
	Planet13 - direction
	Star14 - direction
	Planet15 - direction
	Phenomenon16 - direction
	Planet17 - direction
	Star18 - direction
	Planet19 - direction
	Star20 - direction
)
(:init
	(supports instrument0 infrared0)
	(calibration_target instrument0 GroundStation1)
	(supports instrument1 image1)
	(calibration_target instrument1 Star2)
	(supports instrument2 infrared0)
	(calibration_target instrument2 GroundStation1)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Planet5)
	(supports instrument3 infrared2)
	(calibration_target instrument3 Star0)
	(supports instrument4 image1)
	(supports instrument4 infrared0)
	(calibration_target instrument4 Star2)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Star18)
	(supports instrument5 image1)
	(calibration_target instrument5 Star2)
	(on_board instrument5 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Planet15)
	(supports instrument6 image1)
	(supports instrument6 infrared0)
	(supports instrument6 infrared2)
	(calibration_target instrument6 Star0)
	(supports instrument7 infrared0)
	(calibration_target instrument7 Star2)
	(supports instrument8 infrared2)
	(supports instrument8 image1)
	(supports instrument8 infrared0)
	(calibration_target instrument8 Star0)
	(on_board instrument6 satellite3)
	(on_board instrument7 satellite3)
	(on_board instrument8 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star14)
	(supports instrument9 infrared0)
	(supports instrument9 infrared2)
	(calibration_target instrument9 Star0)
	(on_board instrument9 satellite4)
	(power_avail satellite4)
	(pointing satellite4 GroundStation1)
)
(:goal (and
	(pointing satellite3 Planet8)
	(have_image Planet3 infrared2)
	(have_image Star4 image1)
	(have_image Planet5 infrared2)
	(have_image Star6 infrared2)
	(have_image Phenomenon7 image1)
	(have_image Planet8 image1)
	(have_image Star9 infrared0)
	(have_image Planet10 image1)
	(have_image Star11 infrared0)
	(have_image Planet12 image1)
	(have_image Planet13 infrared2)
	(have_image Star14 infrared2)
	(have_image Planet15 infrared2)
	(have_image Planet17 image1)
	(have_image Planet19 infrared2)
	(have_image Star20 infrared2)
))

)
