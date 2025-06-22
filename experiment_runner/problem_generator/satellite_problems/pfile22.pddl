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
	satellite3 - satellite
	instrument5 - instrument
	instrument6 - instrument
	satellite4 - satellite
	instrument7 - instrument
	infrared0 - mode
	infrared1 - mode
	image3 - mode
	image4 - mode
	image2 - mode
	Star3 - direction
	Star4 - direction
	Star0 - direction
	GroundStation2 - direction
	GroundStation1 - direction
	Phenomenon5 - direction
	Planet6 - direction
	Star7 - direction
	Planet8 - direction
	Planet9 - direction
	Phenomenon10 - direction
	Planet11 - direction
	Phenomenon12 - direction
	Star13 - direction
	Phenomenon14 - direction
	Planet15 - direction
	Star16 - direction
	Phenomenon17 - direction
	Phenomenon18 - direction
	Phenomenon19 - direction
	Phenomenon20 - direction
	Planet21 - direction
	Planet22 - direction
	Phenomenon23 - direction
)
(:init
	(supports instrument0 infrared0)
	(supports instrument0 infrared1)
	(calibration_target instrument0 GroundStation1)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Phenomenon20)
	(supports instrument1 infrared0)
	(supports instrument1 image2)
	(calibration_target instrument1 GroundStation2)
	(supports instrument2 infrared1)
	(supports instrument2 image2)
	(supports instrument2 image4)
	(calibration_target instrument2 Star4)
	(supports instrument3 image4)
	(supports instrument3 infrared0)
	(supports instrument3 infrared1)
	(calibration_target instrument3 GroundStation2)
	(on_board instrument1 satellite1)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Star0)
	(supports instrument4 infrared1)
	(supports instrument4 image2)
	(supports instrument4 infrared0)
	(calibration_target instrument4 GroundStation1)
	(on_board instrument4 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Star0)
	(supports instrument5 infrared1)
	(calibration_target instrument5 Star0)
	(supports instrument6 image3)
	(supports instrument6 image4)
	(calibration_target instrument6 GroundStation2)
	(on_board instrument5 satellite3)
	(on_board instrument6 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Phenomenon17)
	(supports instrument7 image2)
	(supports instrument7 image4)
	(supports instrument7 image3)
	(calibration_target instrument7 GroundStation1)
	(on_board instrument7 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Phenomenon12)
)
(:goal (and
	(pointing satellite0 Planet6)
	(pointing satellite2 Star13)
	(pointing satellite3 Phenomenon10)
	(pointing satellite4 Phenomenon14)
	(have_image Phenomenon5 infrared1)
	(have_image Planet6 image4)
	(have_image Star7 infrared0)
	(have_image Planet8 image3)
	(have_image Planet9 image4)
	(have_image Phenomenon10 infrared0)
	(have_image Planet11 infrared1)
	(have_image Phenomenon12 infrared0)
	(have_image Star13 image2)
	(have_image Phenomenon14 image3)
	(have_image Planet15 image2)
	(have_image Star16 image3)
	(have_image Phenomenon17 infrared1)
	(have_image Phenomenon18 infrared1)
	(have_image Phenomenon19 image2)
	(have_image Phenomenon20 infrared0)
	(have_image Planet21 image2)
	(have_image Planet22 image3)
	(have_image Phenomenon23 image3)
))

)
