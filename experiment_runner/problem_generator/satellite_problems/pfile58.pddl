(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	satellite1 - satellite
	instrument2 - instrument
	instrument3 - instrument
	instrument4 - instrument
	satellite2 - satellite
	instrument5 - instrument
	instrument6 - instrument
	satellite3 - satellite
	instrument7 - instrument
	instrument8 - instrument
	satellite4 - satellite
	instrument9 - instrument
	instrument10 - instrument
	image1 - mode
	thermograph0 - mode
	infrared4 - mode
	infrared2 - mode
	image3 - mode
	GroundStation0 - direction
	GroundStation1 - direction
	Star2 - direction
	Planet3 - direction
	Star4 - direction
	Phenomenon5 - direction
	Phenomenon6 - direction
	Star7 - direction
	Phenomenon8 - direction
	Phenomenon9 - direction
	Star10 - direction
	Planet11 - direction
	Planet12 - direction
	Star13 - direction
	Planet14 - direction
	Star15 - direction
	Star16 - direction
	Planet17 - direction
)
(:init
	(supports instrument0 infrared4)
	(supports instrument0 thermograph0)
	(supports instrument0 image1)
	(calibration_target instrument0 GroundStation1)
	(supports instrument1 image1)
	(supports instrument1 infrared4)
	(calibration_target instrument1 GroundStation0)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star7)
	(supports instrument2 image1)
	(supports instrument2 infrared2)
	(calibration_target instrument2 GroundStation0)
	(supports instrument3 infrared2)
	(calibration_target instrument3 GroundStation0)
	(supports instrument4 image1)
	(supports instrument4 thermograph0)
	(supports instrument4 infrared4)
	(calibration_target instrument4 GroundStation0)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Planet12)
	(supports instrument5 thermograph0)
	(calibration_target instrument5 GroundStation1)
	(supports instrument6 image3)
	(supports instrument6 image1)
	(calibration_target instrument6 GroundStation0)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Star10)
	(supports instrument7 thermograph0)
	(calibration_target instrument7 GroundStation1)
	(supports instrument8 thermograph0)
	(supports instrument8 image3)
	(calibration_target instrument8 Star2)
	(on_board instrument7 satellite3)
	(on_board instrument8 satellite3)
	(power_avail satellite3)
	(pointing satellite3 GroundStation1)
	(supports instrument9 infrared2)
	(supports instrument9 infrared4)
	(supports instrument9 image3)
	(calibration_target instrument9 GroundStation1)
	(supports instrument10 image3)
	(calibration_target instrument10 Star2)
	(on_board instrument9 satellite4)
	(on_board instrument10 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Star2)
)
(:goal (and
	(pointing satellite1 GroundStation0)
	(pointing satellite3 GroundStation1)
	(have_image Planet3 thermograph0)
	(have_image Star4 thermograph0)
	(have_image Phenomenon5 infrared2)
	(have_image Phenomenon6 infrared4)
	(have_image Star7 infrared2)
	(have_image Phenomenon8 infrared4)
	(have_image Phenomenon9 thermograph0)
	(have_image Star10 infrared2)
	(have_image Planet12 image1)
	(have_image Planet14 image1)
	(have_image Star15 infrared4)
	(have_image Planet17 infrared4)
))

)
