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
	satellite4 - satellite
	instrument6 - instrument
	image0 - mode
	image3 - mode
	infrared2 - mode
	image1 - mode
	GroundStation4 - direction
	Star2 - direction
	GroundStation3 - direction
	GroundStation1 - direction
	Star0 - direction
	Phenomenon5 - direction
	Phenomenon6 - direction
	Star7 - direction
	Phenomenon8 - direction
	Phenomenon9 - direction
	Phenomenon10 - direction
	Star11 - direction
	Star12 - direction
	Planet13 - direction
	Phenomenon14 - direction
	Phenomenon15 - direction
	Planet16 - direction
	Phenomenon17 - direction
	Planet18 - direction
	Planet19 - direction
	Planet20 - direction
	Planet21 - direction
	Phenomenon22 - direction
	Phenomenon23 - direction
	Planet24 - direction
	Phenomenon25 - direction
	Planet26 - direction
	Planet27 - direction
)
(:init
	(supports instrument0 image1)
	(supports instrument0 image0)
	(supports instrument0 image3)
	(calibration_target instrument0 GroundStation3)
	(supports instrument1 infrared2)
	(calibration_target instrument1 GroundStation1)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Phenomenon9)
	(supports instrument2 image1)
	(supports instrument2 infrared2)
	(calibration_target instrument2 GroundStation4)
	(supports instrument3 image1)
	(supports instrument3 image0)
	(calibration_target instrument3 Star2)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 GroundStation3)
	(supports instrument4 image0)
	(supports instrument4 image3)
	(supports instrument4 infrared2)
	(calibration_target instrument4 GroundStation3)
	(on_board instrument4 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Phenomenon6)
	(supports instrument5 infrared2)
	(supports instrument5 image3)
	(supports instrument5 image0)
	(calibration_target instrument5 GroundStation1)
	(on_board instrument5 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Planet21)
	(supports instrument6 image1)
	(calibration_target instrument6 Star0)
	(on_board instrument6 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Planet20)
)
(:goal (and
	(pointing satellite0 Planet19)
	(pointing satellite3 Phenomenon14)
	(have_image Phenomenon5 image3)
	(have_image Star7 infrared2)
	(have_image Phenomenon8 image1)
	(have_image Phenomenon9 image1)
	(have_image Star11 image1)
	(have_image Star12 infrared2)
	(have_image Planet13 image3)
	(have_image Phenomenon14 image3)
	(have_image Phenomenon15 image1)
	(have_image Planet16 image0)
	(have_image Phenomenon17 infrared2)
	(have_image Planet18 image3)
	(have_image Planet19 infrared2)
	(have_image Planet20 image0)
	(have_image Planet21 image0)
	(have_image Phenomenon22 image1)
	(have_image Phenomenon23 infrared2)
	(have_image Planet24 image0)
	(have_image Phenomenon25 image1)
	(have_image Planet26 image1)
	(have_image Planet27 image3)
))

)
