(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	instrument2 - instrument
	satellite1 - satellite
	instrument3 - instrument
	satellite2 - satellite
	instrument4 - instrument
	instrument5 - instrument
	instrument6 - instrument
	satellite3 - satellite
	instrument7 - instrument
	instrument8 - instrument
	satellite4 - satellite
	instrument9 - instrument
	instrument10 - instrument
	infrared2 - mode
	infrared4 - mode
	image3 - mode
	infrared1 - mode
	thermograph0 - mode
	GroundStation4 - direction
	GroundStation2 - direction
	Star3 - direction
	Star1 - direction
	Star0 - direction
	Star5 - direction
	Planet6 - direction
	Planet7 - direction
	Star8 - direction
	Star9 - direction
	Star10 - direction
	Star11 - direction
	Star12 - direction
	Star13 - direction
	Phenomenon14 - direction
	Phenomenon15 - direction
	Planet16 - direction
	Planet17 - direction
)
(:init
	(supports instrument0 image3)
	(calibration_target instrument0 GroundStation4)
	(supports instrument1 infrared1)
	(supports instrument1 infrared2)
	(supports instrument1 image3)
	(calibration_target instrument1 Star3)
	(supports instrument2 thermograph0)
	(supports instrument2 infrared1)
	(calibration_target instrument2 Star0)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Planet7)
	(supports instrument3 image3)
	(supports instrument3 infrared4)
	(supports instrument3 infrared2)
	(calibration_target instrument3 Star1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Planet17)
	(supports instrument4 infrared2)
	(calibration_target instrument4 Star1)
	(supports instrument5 infrared2)
	(supports instrument5 thermograph0)
	(calibration_target instrument5 GroundStation2)
	(supports instrument6 image3)
	(supports instrument6 infrared2)
	(calibration_target instrument6 Star3)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Star13)
	(supports instrument7 image3)
	(calibration_target instrument7 Star1)
	(supports instrument8 infrared4)
	(supports instrument8 infrared2)
	(calibration_target instrument8 Star1)
	(on_board instrument7 satellite3)
	(on_board instrument8 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star12)
	(supports instrument9 infrared1)
	(supports instrument9 image3)
	(supports instrument9 thermograph0)
	(calibration_target instrument9 Star0)
	(supports instrument10 thermograph0)
	(calibration_target instrument10 Star0)
	(on_board instrument9 satellite4)
	(on_board instrument10 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Star11)
)
(:goal (and
	(pointing satellite0 Planet7)
	(pointing satellite4 Planet7)
	(have_image Star5 image3)
	(have_image Planet6 image3)
	(have_image Planet7 infrared2)
	(have_image Star8 infrared4)
	(have_image Star9 image3)
	(have_image Star10 infrared1)
	(have_image Star11 infrared2)
	(have_image Star12 infrared2)
	(have_image Star13 infrared4)
	(have_image Phenomenon14 infrared4)
	(have_image Phenomenon15 infrared1)
	(have_image Planet16 infrared4)
	(have_image Planet17 infrared2)
))

)
