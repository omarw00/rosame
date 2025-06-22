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
	satellite3 - satellite
	instrument5 - instrument
	instrument6 - instrument
	satellite4 - satellite
	instrument7 - instrument
	image1 - mode
	thermograph0 - mode
	thermograph2 - mode
	Star2 - direction
	Star0 - direction
	Star1 - direction
	GroundStation3 - direction
	Phenomenon4 - direction
	Planet5 - direction
	Phenomenon6 - direction
	Star7 - direction
	Planet8 - direction
	Planet9 - direction
	Star10 - direction
	Phenomenon11 - direction
	Phenomenon12 - direction
	Star13 - direction
	Star14 - direction
	Phenomenon15 - direction
	Star16 - direction
	Phenomenon17 - direction
	Planet18 - direction
	Phenomenon19 - direction
	Planet20 - direction
	Planet21 - direction
	Phenomenon22 - direction
	Planet23 - direction
	Phenomenon24 - direction
)
(:init
	(supports instrument0 image1)
	(supports instrument0 thermograph0)
	(supports instrument0 thermograph2)
	(calibration_target instrument0 GroundStation3)
	(supports instrument1 thermograph2)
	(calibration_target instrument1 Star1)
	(supports instrument2 thermograph0)
	(supports instrument2 thermograph2)
	(calibration_target instrument2 GroundStation3)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Phenomenon12)
	(supports instrument3 thermograph2)
	(supports instrument3 image1)
	(supports instrument3 thermograph0)
	(calibration_target instrument3 GroundStation3)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Planet23)
	(supports instrument4 image1)
	(supports instrument4 thermograph0)
	(calibration_target instrument4 Star0)
	(on_board instrument4 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Planet9)
	(supports instrument5 thermograph0)
	(supports instrument5 image1)
	(supports instrument5 thermograph2)
	(calibration_target instrument5 Star0)
	(supports instrument6 image1)
	(supports instrument6 thermograph2)
	(calibration_target instrument6 Star1)
	(on_board instrument5 satellite3)
	(on_board instrument6 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Planet23)
	(supports instrument7 thermograph2)
	(supports instrument7 thermograph0)
	(calibration_target instrument7 GroundStation3)
	(on_board instrument7 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Planet9)
)
(:goal (and
	(pointing satellite2 Planet23)
	(pointing satellite4 Phenomenon17)
	(have_image Phenomenon4 thermograph0)
	(have_image Planet5 image1)
	(have_image Phenomenon6 image1)
	(have_image Planet8 image1)
	(have_image Planet9 thermograph2)
	(have_image Star10 thermograph2)
	(have_image Phenomenon11 thermograph0)
	(have_image Star13 thermograph2)
	(have_image Star14 thermograph2)
	(have_image Phenomenon15 thermograph0)
	(have_image Phenomenon17 thermograph0)
	(have_image Planet18 image1)
	(have_image Phenomenon19 thermograph2)
	(have_image Planet20 image1)
	(have_image Planet21 image1)
	(have_image Phenomenon22 thermograph2)
	(have_image Planet23 thermograph0)
	(have_image Phenomenon24 thermograph2)
))

)
