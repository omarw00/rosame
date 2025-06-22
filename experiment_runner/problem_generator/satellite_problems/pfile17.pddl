(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	satellite1 - satellite
	instrument1 - instrument
	instrument2 - instrument
	satellite2 - satellite
	instrument3 - instrument
	instrument4 - instrument
	instrument5 - instrument
	satellite3 - satellite
	instrument6 - instrument
	instrument7 - instrument
	instrument8 - instrument
	satellite4 - satellite
	instrument9 - instrument
	instrument10 - instrument
	infrared1 - mode
	infrared0 - mode
	spectrograph2 - mode
	Star1 - direction
	Star2 - direction
	GroundStation0 - direction
	Star3 - direction
	Star4 - direction
	Planet5 - direction
	Planet6 - direction
	Planet7 - direction
	Star8 - direction
	Phenomenon9 - direction
	Star10 - direction
	Phenomenon11 - direction
	Planet12 - direction
	Planet13 - direction
	Phenomenon14 - direction
	Phenomenon15 - direction
	Phenomenon16 - direction
	Star17 - direction
	Star18 - direction
	Star19 - direction
	Star20 - direction
	Planet21 - direction
	Phenomenon22 - direction
	Phenomenon23 - direction
	Star24 - direction
)
(:init
	(supports instrument0 spectrograph2)
	(supports instrument0 infrared1)
	(supports instrument0 infrared0)
	(calibration_target instrument0 Star1)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Planet5)
	(supports instrument1 infrared1)
	(supports instrument1 spectrograph2)
	(calibration_target instrument1 Star3)
	(supports instrument2 infrared0)
	(calibration_target instrument2 GroundStation0)
	(on_board instrument1 satellite1)
	(on_board instrument2 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Phenomenon22)
	(supports instrument3 infrared0)
	(supports instrument3 infrared1)
	(calibration_target instrument3 GroundStation0)
	(supports instrument4 infrared0)
	(calibration_target instrument4 Star2)
	(supports instrument5 infrared1)
	(supports instrument5 infrared0)
	(calibration_target instrument5 Star4)
	(on_board instrument3 satellite2)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Planet5)
	(supports instrument6 infrared0)
	(supports instrument6 spectrograph2)
	(supports instrument6 infrared1)
	(calibration_target instrument6 Star2)
	(supports instrument7 spectrograph2)
	(supports instrument7 infrared1)
	(calibration_target instrument7 GroundStation0)
	(supports instrument8 infrared0)
	(supports instrument8 infrared1)
	(calibration_target instrument8 Star4)
	(on_board instrument6 satellite3)
	(on_board instrument7 satellite3)
	(on_board instrument8 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star10)
	(supports instrument9 infrared1)
	(supports instrument9 spectrograph2)
	(calibration_target instrument9 Star3)
	(supports instrument10 spectrograph2)
	(supports instrument10 infrared0)
	(supports instrument10 infrared1)
	(calibration_target instrument10 Star4)
	(on_board instrument9 satellite4)
	(on_board instrument10 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Star2)
)
(:goal (and
	(pointing satellite2 Phenomenon23)
	(have_image Planet5 infrared1)
	(have_image Planet6 spectrograph2)
	(have_image Planet7 infrared1)
	(have_image Star8 infrared1)
	(have_image Phenomenon9 infrared1)
	(have_image Star10 infrared1)
	(have_image Phenomenon11 infrared1)
	(have_image Planet13 spectrograph2)
	(have_image Phenomenon14 spectrograph2)
	(have_image Phenomenon15 infrared1)
	(have_image Phenomenon16 spectrograph2)
	(have_image Star17 infrared1)
	(have_image Star18 infrared0)
	(have_image Star19 spectrograph2)
	(have_image Star20 infrared0)
	(have_image Planet21 spectrograph2)
	(have_image Phenomenon23 spectrograph2)
	(have_image Star24 infrared0)
))

)
