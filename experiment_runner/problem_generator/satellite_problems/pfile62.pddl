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
	instrument9 - instrument
	satellite4 - satellite
	instrument10 - instrument
	image1 - mode
	spectrograph2 - mode
	image3 - mode
	infrared0 - mode
	Star0 - direction
	GroundStation1 - direction
	Star2 - direction
	GroundStation3 - direction
	Planet4 - direction
	Planet5 - direction
	Planet6 - direction
	Star7 - direction
	Phenomenon8 - direction
	Star9 - direction
	Planet10 - direction
	Star11 - direction
	Star12 - direction
	Star13 - direction
	Star14 - direction
	Phenomenon15 - direction
	Planet16 - direction
)
(:init
	(supports instrument0 image1)
	(supports instrument0 spectrograph2)
	(calibration_target instrument0 Star2)
	(supports instrument1 image3)
	(supports instrument1 image1)
	(calibration_target instrument1 GroundStation1)
	(supports instrument2 image1)
	(calibration_target instrument2 Star0)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 GroundStation3)
	(supports instrument3 infrared0)
	(supports instrument3 image3)
	(supports instrument3 image1)
	(calibration_target instrument3 GroundStation1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Planet10)
	(supports instrument4 image3)
	(supports instrument4 infrared0)
	(calibration_target instrument4 Star0)
	(supports instrument5 spectrograph2)
	(supports instrument5 image1)
	(calibration_target instrument5 GroundStation1)
	(supports instrument6 image1)
	(supports instrument6 infrared0)
	(calibration_target instrument6 GroundStation3)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Star7)
	(supports instrument7 image1)
	(supports instrument7 infrared0)
	(calibration_target instrument7 GroundStation1)
	(supports instrument8 spectrograph2)
	(supports instrument8 image1)
	(supports instrument8 image3)
	(calibration_target instrument8 Star2)
	(supports instrument9 image3)
	(calibration_target instrument9 Star2)
	(on_board instrument7 satellite3)
	(on_board instrument8 satellite3)
	(on_board instrument9 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star11)
	(supports instrument10 infrared0)
	(calibration_target instrument10 GroundStation3)
	(on_board instrument10 satellite4)
	(power_avail satellite4)
	(pointing satellite4 GroundStation1)
)
(:goal (and
	(pointing satellite3 Planet5)
	(have_image Planet4 image3)
	(have_image Planet5 spectrograph2)
	(have_image Planet6 spectrograph2)
	(have_image Star7 spectrograph2)
	(have_image Phenomenon8 image3)
	(have_image Star9 infrared0)
	(have_image Planet10 infrared0)
	(have_image Star12 image1)
	(have_image Star13 infrared0)
	(have_image Star14 image3)
	(have_image Phenomenon15 image1)
	(have_image Planet16 spectrograph2)
))

)
