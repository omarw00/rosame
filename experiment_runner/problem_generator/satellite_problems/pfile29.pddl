(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	satellite1 - satellite
	instrument1 - instrument
	satellite2 - satellite
	instrument2 - instrument
	satellite3 - satellite
	instrument3 - instrument
	instrument4 - instrument
	instrument5 - instrument
	satellite4 - satellite
	instrument6 - instrument
	image2 - mode
	spectrograph0 - mode
	image3 - mode
	infrared1 - mode
	Star0 - direction
	GroundStation1 - direction
	Star3 - direction
	GroundStation2 - direction
	Planet4 - direction
	Planet5 - direction
	Star6 - direction
	Planet7 - direction
	Phenomenon8 - direction
	Star9 - direction
	Star10 - direction
	Planet11 - direction
	Phenomenon12 - direction
	Planet13 - direction
	Phenomenon14 - direction
	Planet15 - direction
	Planet16 - direction
	Star17 - direction
	Planet18 - direction
	Phenomenon19 - direction
	Planet20 - direction
	Star21 - direction
	Phenomenon22 - direction
	Planet23 - direction
	Planet24 - direction
	Star25 - direction
	Planet26 - direction
	Planet27 - direction
)
(:init
	(supports instrument0 infrared1)
	(supports instrument0 image2)
	(calibration_target instrument0 Star3)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Planet15)
	(supports instrument1 spectrograph0)
	(supports instrument1 infrared1)
	(supports instrument1 image2)
	(calibration_target instrument1 Star3)
	(on_board instrument1 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Phenomenon19)
	(supports instrument2 image3)
	(calibration_target instrument2 GroundStation1)
	(on_board instrument2 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Star17)
	(supports instrument3 image3)
	(supports instrument3 image2)
	(supports instrument3 infrared1)
	(calibration_target instrument3 GroundStation1)
	(supports instrument4 image2)
	(calibration_target instrument4 GroundStation1)
	(supports instrument5 image3)
	(supports instrument5 infrared1)
	(supports instrument5 spectrograph0)
	(calibration_target instrument5 Star3)
	(on_board instrument3 satellite3)
	(on_board instrument4 satellite3)
	(on_board instrument5 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star3)
	(supports instrument6 infrared1)
	(supports instrument6 image3)
	(calibration_target instrument6 GroundStation2)
	(on_board instrument6 satellite4)
	(power_avail satellite4)
	(pointing satellite4 GroundStation1)
)
(:goal (and
	(pointing satellite1 Star0)
	(pointing satellite2 Planet11)
	(pointing satellite4 Planet16)
	(have_image Planet4 image2)
	(have_image Planet5 image2)
	(have_image Planet7 image3)
	(have_image Star9 infrared1)
	(have_image Star10 image2)
	(have_image Planet11 image3)
	(have_image Phenomenon12 spectrograph0)
	(have_image Planet13 image2)
	(have_image Phenomenon14 image2)
	(have_image Planet15 spectrograph0)
	(have_image Planet16 spectrograph0)
	(have_image Planet18 infrared1)
	(have_image Phenomenon19 image3)
	(have_image Planet20 image3)
	(have_image Star21 image3)
	(have_image Phenomenon22 infrared1)
	(have_image Planet23 image2)
	(have_image Planet24 image2)
	(have_image Star25 spectrograph0)
	(have_image Planet26 image3)
	(have_image Planet27 spectrograph0)
))

)
