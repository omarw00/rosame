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
	satellite4 - satellite
	instrument8 - instrument
	infrared2 - mode
	image0 - mode
	infrared3 - mode
	image1 - mode
	GroundStation2 - direction
	GroundStation1 - direction
	Star0 - direction
	Phenomenon3 - direction
	Phenomenon4 - direction
	Planet5 - direction
	Planet6 - direction
	Phenomenon7 - direction
	Phenomenon8 - direction
	Star9 - direction
	Star10 - direction
	Phenomenon11 - direction
	Planet12 - direction
	Planet13 - direction
	Planet14 - direction
	Planet15 - direction
	Star16 - direction
	Phenomenon17 - direction
	Planet18 - direction
	Planet19 - direction
	Phenomenon20 - direction
	Planet21 - direction
	Planet22 - direction
)
(:init
	(supports instrument0 image0)
	(calibration_target instrument0 GroundStation2)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Planet18)
	(supports instrument1 infrared2)
	(calibration_target instrument1 GroundStation1)
	(supports instrument2 infrared2)
	(calibration_target instrument2 GroundStation1)
	(supports instrument3 image0)
	(supports instrument3 infrared2)
	(supports instrument3 infrared3)
	(calibration_target instrument3 GroundStation2)
	(on_board instrument1 satellite1)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Phenomenon7)
	(supports instrument4 infrared2)
	(calibration_target instrument4 GroundStation2)
	(supports instrument5 infrared3)
	(calibration_target instrument5 GroundStation1)
	(supports instrument6 infrared2)
	(calibration_target instrument6 Star0)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Planet15)
	(supports instrument7 infrared2)
	(supports instrument7 infrared3)
	(calibration_target instrument7 GroundStation1)
	(on_board instrument7 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Phenomenon4)
	(supports instrument8 image1)
	(supports instrument8 infrared3)
	(supports instrument8 image0)
	(calibration_target instrument8 Star0)
	(on_board instrument8 satellite4)
	(power_avail satellite4)
	(pointing satellite4 GroundStation1)
)
(:goal (and
	(pointing satellite2 Phenomenon20)
	(pointing satellite4 Phenomenon8)
	(have_image Phenomenon3 infrared3)
	(have_image Planet5 image1)
	(have_image Planet6 image0)
	(have_image Phenomenon7 image1)
	(have_image Phenomenon8 infrared2)
	(have_image Star9 infrared3)
	(have_image Star10 image0)
	(have_image Phenomenon11 infrared2)
	(have_image Planet12 infrared3)
	(have_image Planet13 image0)
	(have_image Planet14 image0)
	(have_image Planet15 infrared2)
	(have_image Star16 image1)
	(have_image Phenomenon17 infrared3)
	(have_image Planet19 image1)
	(have_image Phenomenon20 infrared2)
	(have_image Planet21 image1)
	(have_image Planet22 infrared3)
))

)
