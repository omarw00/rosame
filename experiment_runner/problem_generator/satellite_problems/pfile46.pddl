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
	instrument7 - instrument
	satellite4 - satellite
	instrument8 - instrument
	instrument9 - instrument
	spectrograph1 - mode
	spectrograph2 - mode
	image0 - mode
	Star3 - direction
	Star2 - direction
	GroundStation0 - direction
	GroundStation1 - direction
	Star4 - direction
	Planet5 - direction
	Star6 - direction
	Planet7 - direction
	Planet8 - direction
	Phenomenon9 - direction
	Star10 - direction
	Phenomenon11 - direction
	Star12 - direction
	Star13 - direction
	Star14 - direction
	Planet15 - direction
	Phenomenon16 - direction
	Planet17 - direction
	Star18 - direction
	Phenomenon19 - direction
	Star20 - direction
	Star21 - direction
	Star22 - direction
	Planet23 - direction
)
(:init
	(supports instrument0 image0)
	(supports instrument0 spectrograph1)
	(calibration_target instrument0 Star3)
	(supports instrument1 spectrograph2)
	(calibration_target instrument1 Star3)
	(supports instrument2 spectrograph2)
	(supports instrument2 image0)
	(calibration_target instrument2 Star3)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Planet17)
	(supports instrument3 spectrograph2)
	(supports instrument3 spectrograph1)
	(supports instrument3 image0)
	(calibration_target instrument3 Star2)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Planet7)
	(supports instrument4 spectrograph2)
	(supports instrument4 spectrograph1)
	(supports instrument4 image0)
	(calibration_target instrument4 Star3)
	(on_board instrument4 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Phenomenon16)
	(supports instrument5 spectrograph2)
	(calibration_target instrument5 GroundStation0)
	(supports instrument6 image0)
	(supports instrument6 spectrograph2)
	(calibration_target instrument6 GroundStation1)
	(supports instrument7 image0)
	(supports instrument7 spectrograph2)
	(supports instrument7 spectrograph1)
	(calibration_target instrument7 Star2)
	(on_board instrument5 satellite3)
	(on_board instrument6 satellite3)
	(on_board instrument7 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Planet17)
	(supports instrument8 spectrograph2)
	(supports instrument8 image0)
	(calibration_target instrument8 GroundStation0)
	(supports instrument9 image0)
	(calibration_target instrument9 GroundStation1)
	(on_board instrument8 satellite4)
	(on_board instrument9 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Planet23)
)
(:goal (and
	(pointing satellite0 GroundStation0)
	(pointing satellite1 Star12)
	(have_image Star4 spectrograph1)
	(have_image Star6 spectrograph1)
	(have_image Planet7 spectrograph1)
	(have_image Planet8 spectrograph1)
	(have_image Star10 spectrograph1)
	(have_image Phenomenon11 spectrograph2)
	(have_image Star12 spectrograph1)
	(have_image Star14 image0)
	(have_image Planet15 spectrograph1)
	(have_image Phenomenon16 spectrograph1)
	(have_image Planet17 spectrograph1)
	(have_image Star18 spectrograph1)
	(have_image Phenomenon19 spectrograph2)
	(have_image Star20 image0)
	(have_image Star22 spectrograph1)
	(have_image Planet23 image0)
))

)
