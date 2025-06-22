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
	satellite3 - satellite
	instrument6 - instrument
	instrument7 - instrument
	satellite4 - satellite
	instrument8 - instrument
	instrument9 - instrument
	instrument10 - instrument
	infrared0 - mode
	infrared1 - mode
	thermograph2 - mode
	Star2 - direction
	Star0 - direction
	Star1 - direction
	GroundStation3 - direction
	Phenomenon4 - direction
	Planet5 - direction
	Star6 - direction
	Planet7 - direction
	Phenomenon8 - direction
	Star9 - direction
	Star10 - direction
	Planet11 - direction
	Phenomenon12 - direction
	Planet13 - direction
	Star14 - direction
	Star15 - direction
	Star16 - direction
	Star17 - direction
	Phenomenon18 - direction
	Planet19 - direction
	Planet20 - direction
	Phenomenon21 - direction
	Phenomenon22 - direction
	Phenomenon23 - direction
)
(:init
	(supports instrument0 infrared0)
	(supports instrument0 thermograph2)
	(supports instrument0 infrared1)
	(calibration_target instrument0 Star0)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star14)
	(supports instrument1 infrared0)
	(supports instrument1 thermograph2)
	(supports instrument1 infrared1)
	(calibration_target instrument1 Star0)
	(supports instrument2 thermograph2)
	(supports instrument2 infrared0)
	(calibration_target instrument2 Star1)
	(supports instrument3 thermograph2)
	(supports instrument3 infrared1)
	(calibration_target instrument3 Star0)
	(on_board instrument1 satellite1)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Planet20)
	(supports instrument4 infrared0)
	(supports instrument4 thermograph2)
	(supports instrument4 infrared1)
	(calibration_target instrument4 Star0)
	(supports instrument5 infrared1)
	(supports instrument5 thermograph2)
	(supports instrument5 infrared0)
	(calibration_target instrument5 Star0)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Star15)
	(supports instrument6 thermograph2)
	(supports instrument6 infrared1)
	(calibration_target instrument6 Star2)
	(supports instrument7 thermograph2)
	(supports instrument7 infrared1)
	(calibration_target instrument7 Star0)
	(on_board instrument6 satellite3)
	(on_board instrument7 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Phenomenon8)
	(supports instrument8 infrared1)
	(supports instrument8 infrared0)
	(supports instrument8 thermograph2)
	(calibration_target instrument8 Star1)
	(supports instrument9 thermograph2)
	(supports instrument9 infrared1)
	(supports instrument9 infrared0)
	(calibration_target instrument9 Star1)
	(supports instrument10 thermograph2)
	(calibration_target instrument10 GroundStation3)
	(on_board instrument8 satellite4)
	(on_board instrument9 satellite4)
	(on_board instrument10 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Phenomenon8)
)
(:goal (and
	(have_image Phenomenon4 thermograph2)
	(have_image Planet5 infrared1)
	(have_image Star6 infrared0)
	(have_image Planet7 infrared0)
	(have_image Phenomenon8 infrared0)
	(have_image Star9 thermograph2)
	(have_image Planet11 infrared0)
	(have_image Planet13 infrared1)
	(have_image Star14 thermograph2)
	(have_image Star15 infrared0)
	(have_image Star16 infrared0)
	(have_image Star17 infrared0)
	(have_image Phenomenon18 infrared0)
	(have_image Planet19 infrared0)
	(have_image Planet20 infrared0)
	(have_image Phenomenon21 thermograph2)
	(have_image Phenomenon22 infrared0)
	(have_image Phenomenon23 infrared0)
))

)
