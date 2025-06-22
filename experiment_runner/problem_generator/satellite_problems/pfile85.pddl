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
	image2 - mode
	image3 - mode
	image0 - mode
	infrared1 - mode
	GroundStation4 - direction
	GroundStation0 - direction
	GroundStation3 - direction
	GroundStation2 - direction
	Star1 - direction
	Planet5 - direction
	Phenomenon6 - direction
	Planet7 - direction
	Star8 - direction
	Star9 - direction
	Planet10 - direction
	Planet11 - direction
	Star12 - direction
	Planet13 - direction
	Star14 - direction
	Planet15 - direction
	Phenomenon16 - direction
	Planet17 - direction
	Phenomenon18 - direction
	Star19 - direction
	Star20 - direction
	Planet21 - direction
	Planet22 - direction
	Phenomenon23 - direction
	Phenomenon24 - direction
	Star25 - direction
	Planet26 - direction
)
(:init
	(supports instrument0 infrared1)
	(supports instrument0 image3)
	(calibration_target instrument0 GroundStation2)
	(supports instrument1 image3)
	(supports instrument1 image0)
	(supports instrument1 image2)
	(calibration_target instrument1 Star1)
	(supports instrument2 image3)
	(calibration_target instrument2 Star1)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 GroundStation3)
	(supports instrument3 image3)
	(supports instrument3 image0)
	(supports instrument3 image2)
	(calibration_target instrument3 GroundStation4)
	(supports instrument4 infrared1)
	(supports instrument4 image2)
	(supports instrument4 image0)
	(calibration_target instrument4 GroundStation0)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Planet7)
	(supports instrument5 image0)
	(supports instrument5 infrared1)
	(calibration_target instrument5 Star1)
	(on_board instrument5 satellite2)
	(power_avail satellite2)
	(pointing satellite2 GroundStation3)
	(supports instrument6 image2)
	(supports instrument6 image3)
	(calibration_target instrument6 GroundStation2)
	(supports instrument7 image2)
	(calibration_target instrument7 GroundStation3)
	(supports instrument8 image0)
	(calibration_target instrument8 GroundStation2)
	(on_board instrument6 satellite3)
	(on_board instrument7 satellite3)
	(on_board instrument8 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Planet22)
	(supports instrument9 image0)
	(supports instrument9 infrared1)
	(calibration_target instrument9 GroundStation2)
	(supports instrument10 infrared1)
	(supports instrument10 image0)
	(supports instrument10 image3)
	(calibration_target instrument10 Star1)
	(on_board instrument9 satellite4)
	(on_board instrument10 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Planet26)
)
(:goal (and
	(pointing satellite1 Star14)
	(have_image Planet5 image0)
	(have_image Phenomenon6 image3)
	(have_image Planet7 infrared1)
	(have_image Star8 infrared1)
	(have_image Star9 image3)
	(have_image Planet11 image3)
	(have_image Star12 image3)
	(have_image Planet13 infrared1)
	(have_image Star14 image2)
	(have_image Planet15 image3)
	(have_image Phenomenon16 image0)
	(have_image Planet17 infrared1)
	(have_image Phenomenon18 image2)
	(have_image Star19 image0)
	(have_image Star20 image2)
	(have_image Planet21 image2)
	(have_image Planet22 image0)
	(have_image Phenomenon23 image2)
	(have_image Phenomenon24 image2)
	(have_image Star25 image0)
	(have_image Planet26 image3)
))

)
