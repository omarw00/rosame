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
	instrument6 - instrument
	instrument7 - instrument
	satellite3 - satellite
	instrument8 - instrument
	satellite4 - satellite
	instrument9 - instrument
	image0 - mode
	image3 - mode
	infrared2 - mode
	image1 - mode
	GroundStation3 - direction
	GroundStation1 - direction
	GroundStation2 - direction
	Star0 - direction
	Phenomenon4 - direction
	Phenomenon5 - direction
	Star6 - direction
	Phenomenon7 - direction
	Planet8 - direction
	Phenomenon9 - direction
	Star10 - direction
	Planet11 - direction
	Star12 - direction
	Planet13 - direction
	Phenomenon14 - direction
	Planet15 - direction
	Star16 - direction
	Planet17 - direction
	Planet18 - direction
	Phenomenon19 - direction
	Phenomenon20 - direction
	Star21 - direction
	Star22 - direction
	Star23 - direction
	Star24 - direction
	Star25 - direction
	Phenomenon26 - direction
	Phenomenon27 - direction
)
(:init
	(supports instrument0 image3)
	(supports instrument0 image0)
	(calibration_target instrument0 Star0)
	(supports instrument1 image0)
	(supports instrument1 image1)
	(calibration_target instrument1 GroundStation2)
	(supports instrument2 infrared2)
	(supports instrument2 image3)
	(supports instrument2 image1)
	(calibration_target instrument2 GroundStation2)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Planet13)
	(supports instrument3 infrared2)
	(supports instrument3 image0)
	(calibration_target instrument3 GroundStation2)
	(supports instrument4 image3)
	(supports instrument4 infrared2)
	(calibration_target instrument4 GroundStation3)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Planet18)
	(supports instrument5 image1)
	(calibration_target instrument5 Star0)
	(supports instrument6 image1)
	(calibration_target instrument6 GroundStation1)
	(supports instrument7 infrared2)
	(calibration_target instrument7 GroundStation2)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(on_board instrument7 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Phenomenon26)
	(supports instrument8 image3)
	(supports instrument8 image0)
	(supports instrument8 infrared2)
	(calibration_target instrument8 GroundStation2)
	(on_board instrument8 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star24)
	(supports instrument9 image1)
	(supports instrument9 infrared2)
	(supports instrument9 image3)
	(calibration_target instrument9 Star0)
	(on_board instrument9 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Phenomenon14)
)
(:goal (and
	(pointing satellite3 Planet15)
	(have_image Phenomenon4 image3)
	(have_image Phenomenon5 infrared2)
	(have_image Phenomenon7 image1)
	(have_image Planet8 image1)
	(have_image Phenomenon9 image1)
	(have_image Star10 image3)
	(have_image Planet11 image0)
	(have_image Star12 image1)
	(have_image Phenomenon14 infrared2)
	(have_image Planet15 infrared2)
	(have_image Star16 image3)
	(have_image Planet17 image1)
	(have_image Planet18 image0)
	(have_image Phenomenon19 image0)
	(have_image Phenomenon20 image0)
	(have_image Star21 image0)
	(have_image Star22 image3)
	(have_image Star24 image3)
	(have_image Star25 image3)
	(have_image Phenomenon26 image1)
	(have_image Phenomenon27 image0)
))

)
