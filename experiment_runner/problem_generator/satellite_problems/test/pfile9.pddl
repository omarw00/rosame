(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	satellite1 - satellite
	instrument2 - instrument
	satellite2 - satellite
	instrument3 - instrument
	instrument4 - instrument
	satellite3 - satellite
	instrument5 - instrument
	satellite4 - satellite
	instrument6 - instrument
	instrument7 - instrument
	image3 - mode
	infrared1 - mode
	image2 - mode
	infrared4 - mode
	spectrograph0 - mode
	Star0 - direction
	GroundStation3 - direction
	Star2 - direction
	Star1 - direction
	Star4 - direction
	Phenomenon5 - direction
	Star6 - direction
	Star7 - direction
	Phenomenon8 - direction
	Planet9 - direction
	Phenomenon10 - direction
	Phenomenon11 - direction
	Planet12 - direction
	Planet13 - direction
	Phenomenon14 - direction
	Star15 - direction
	Planet16 - direction
	Planet17 - direction
	Star18 - direction
	Planet19 - direction
)
(:init
	(supports instrument0 image2)
	(calibration_target instrument0 Star2)
	(supports instrument1 image2)
	(supports instrument1 image3)
	(calibration_target instrument1 Star2)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star4)
	(supports instrument2 image2)
	(supports instrument2 image3)
	(supports instrument2 spectrograph0)
	(calibration_target instrument2 GroundStation3)
	(on_board instrument2 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Star4)
	(supports instrument3 spectrograph0)
	(calibration_target instrument3 Star0)
	(supports instrument4 image2)
	(supports instrument4 spectrograph0)
	(supports instrument4 image3)
	(calibration_target instrument4 GroundStation3)
	(on_board instrument3 satellite2)
	(on_board instrument4 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Star7)
	(supports instrument5 image3)
	(calibration_target instrument5 GroundStation3)
	(on_board instrument5 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Phenomenon10)
	(supports instrument6 image2)
	(supports instrument6 infrared4)
	(supports instrument6 infrared1)
	(calibration_target instrument6 Star2)
	(supports instrument7 spectrograph0)
	(supports instrument7 infrared4)
	(calibration_target instrument7 Star1)
	(on_board instrument6 satellite4)
	(on_board instrument7 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Star6)
)
(:goal (and
	(pointing satellite1 Planet17)
	(pointing satellite3 Phenomenon5)
	(have_image Star4 infrared1)
	(have_image Phenomenon5 image2)
	(have_image Star6 infrared4)
	(have_image Star7 spectrograph0)
	(have_image Phenomenon10 image2)
	(have_image Phenomenon11 image2)
	(have_image Planet12 image3)
	(have_image Planet13 infrared1)
	(have_image Planet16 image3)
	(have_image Planet17 spectrograph0)
	(have_image Star18 image2)
	(have_image Planet19 image2)
))

)
