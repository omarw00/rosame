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
	satellite4 - satellite
	instrument5 - instrument
	instrument6 - instrument
	infrared4 - mode
	infrared2 - mode
	image3 - mode
	image1 - mode
	thermograph0 - mode
	Star2 - direction
	GroundStation3 - direction
	GroundStation4 - direction
	GroundStation1 - direction
	GroundStation0 - direction
	Planet5 - direction
	Phenomenon6 - direction
	Planet7 - direction
	Phenomenon8 - direction
	Star9 - direction
	Star10 - direction
	Phenomenon11 - direction
	Phenomenon12 - direction
	Phenomenon13 - direction
	Star14 - direction
	Star15 - direction
	Planet16 - direction
	Phenomenon17 - direction
	Star18 - direction
	Phenomenon19 - direction
	Planet20 - direction
	Planet21 - direction
	Planet22 - direction
	Phenomenon23 - direction
	Phenomenon24 - direction
	Star25 - direction
	Phenomenon26 - direction
	Phenomenon27 - direction
	Phenomenon28 - direction
)
(:init
	(supports instrument0 infrared4)
	(calibration_target instrument0 GroundStation4)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star25)
	(supports instrument1 infrared4)
	(supports instrument1 infrared2)
	(calibration_target instrument1 GroundStation4)
	(on_board instrument1 satellite1)
	(power_avail satellite1)
	(pointing satellite1 GroundStation3)
	(supports instrument2 image3)
	(supports instrument2 infrared4)
	(supports instrument2 infrared2)
	(calibration_target instrument2 GroundStation0)
	(supports instrument3 image3)
	(calibration_target instrument3 GroundStation4)
	(on_board instrument2 satellite2)
	(on_board instrument3 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Phenomenon11)
	(supports instrument4 image3)
	(supports instrument4 thermograph0)
	(supports instrument4 infrared2)
	(calibration_target instrument4 GroundStation0)
	(on_board instrument4 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star14)
	(supports instrument5 thermograph0)
	(supports instrument5 image1)
	(supports instrument5 image3)
	(calibration_target instrument5 GroundStation1)
	(supports instrument6 thermograph0)
	(calibration_target instrument6 GroundStation0)
	(on_board instrument5 satellite4)
	(on_board instrument6 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Phenomenon23)
)
(:goal (and
	(pointing satellite1 Planet20)
	(pointing satellite2 Star9)
	(pointing satellite4 GroundStation1)
	(have_image Planet5 infrared2)
	(have_image Phenomenon6 image1)
	(have_image Planet7 infrared4)
	(have_image Phenomenon8 image3)
	(have_image Star9 infrared4)
	(have_image Star10 image3)
	(have_image Phenomenon11 infrared2)
	(have_image Phenomenon13 infrared2)
	(have_image Star14 thermograph0)
	(have_image Star15 infrared4)
	(have_image Planet16 image3)
	(have_image Phenomenon17 infrared4)
	(have_image Star18 infrared4)
	(have_image Phenomenon19 image1)
	(have_image Planet20 image1)
	(have_image Planet21 image3)
	(have_image Planet22 infrared2)
	(have_image Phenomenon23 thermograph0)
	(have_image Phenomenon24 thermograph0)
	(have_image Star25 thermograph0)
	(have_image Phenomenon26 infrared4)
	(have_image Phenomenon27 infrared4)
	(have_image Phenomenon28 image3)
))

)
