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
	satellite4 - satellite
	instrument7 - instrument
	infrared2 - mode
	thermograph0 - mode
	infrared3 - mode
	thermograph1 - mode
	GroundStation2 - direction
	Star1 - direction
	Star0 - direction
	Star3 - direction
	Planet4 - direction
	Phenomenon5 - direction
	Planet6 - direction
	Planet7 - direction
	Planet8 - direction
	Star9 - direction
	Phenomenon10 - direction
	Phenomenon11 - direction
	Star12 - direction
)
(:init
	(supports instrument0 thermograph1)
	(supports instrument0 infrared3)
	(supports instrument0 infrared2)
	(calibration_target instrument0 Star0)
	(supports instrument1 thermograph1)
	(calibration_target instrument1 GroundStation2)
	(supports instrument2 thermograph1)
	(calibration_target instrument2 Star1)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Planet6)
	(supports instrument3 infrared3)
	(supports instrument3 thermograph0)
	(supports instrument3 infrared2)
	(calibration_target instrument3 Star0)
	(supports instrument4 thermograph0)
	(supports instrument4 thermograph1)
	(calibration_target instrument4 Star1)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Star0)
	(supports instrument5 thermograph0)
	(supports instrument5 infrared2)
	(supports instrument5 thermograph1)
	(calibration_target instrument5 GroundStation2)
	(on_board instrument5 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Planet8)
	(supports instrument6 infrared3)
	(supports instrument6 thermograph1)
	(calibration_target instrument6 Star1)
	(on_board instrument6 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Phenomenon5)
	(supports instrument7 thermograph1)
	(calibration_target instrument7 Star0)
	(on_board instrument7 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Phenomenon10)
)
(:goal (and
	(pointing satellite0 Phenomenon10)
	(pointing satellite1 Star1)
	(pointing satellite4 Star1)
	(have_image Star3 thermograph1)
	(have_image Phenomenon5 thermograph0)
	(have_image Planet6 thermograph1)
	(have_image Planet7 thermograph1)
	(have_image Planet8 infrared3)
	(have_image Star9 thermograph0)
	(have_image Phenomenon10 thermograph0)
	(have_image Phenomenon11 thermograph1)
	(have_image Star12 infrared2)
))

)
