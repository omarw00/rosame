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
	infrared1 - mode
	infrared2 - mode
	spectrograph0 - mode
	Star2 - direction
	GroundStation3 - direction
	Star4 - direction
	GroundStation0 - direction
	Star1 - direction
	Phenomenon5 - direction
	Star6 - direction
	Star7 - direction
	Phenomenon8 - direction
	Planet9 - direction
	Star10 - direction
	Planet11 - direction
	Star12 - direction
	Star13 - direction
	Planet14 - direction
	Planet15 - direction
	Star16 - direction
	Star17 - direction
	Star18 - direction
	Star19 - direction
	Star20 - direction
	Star21 - direction
	Star22 - direction
	Phenomenon23 - direction
	Phenomenon24 - direction
	Planet25 - direction
	Phenomenon26 - direction
	Star27 - direction
	Star28 - direction
)
(:init
	(supports instrument0 infrared1)
	(supports instrument0 infrared2)
	(supports instrument0 spectrograph0)
	(calibration_target instrument0 Star2)
	(supports instrument1 infrared2)
	(supports instrument1 spectrograph0)
	(calibration_target instrument1 GroundStation3)
	(supports instrument2 infrared2)
	(calibration_target instrument2 GroundStation0)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Phenomenon5)
	(supports instrument3 infrared2)
	(calibration_target instrument3 Star1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Star18)
	(supports instrument4 spectrograph0)
	(calibration_target instrument4 GroundStation3)
	(on_board instrument4 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Planet25)
	(supports instrument5 infrared1)
	(supports instrument5 infrared2)
	(supports instrument5 spectrograph0)
	(calibration_target instrument5 GroundStation3)
	(supports instrument6 infrared1)
	(supports instrument6 infrared2)
	(supports instrument6 spectrograph0)
	(calibration_target instrument6 GroundStation0)
	(supports instrument7 spectrograph0)
	(supports instrument7 infrared1)
	(supports instrument7 infrared2)
	(calibration_target instrument7 Star4)
	(on_board instrument5 satellite3)
	(on_board instrument6 satellite3)
	(on_board instrument7 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star16)
	(supports instrument8 infrared1)
	(supports instrument8 infrared2)
	(calibration_target instrument8 GroundStation0)
	(supports instrument9 spectrograph0)
	(supports instrument9 infrared2)
	(supports instrument9 infrared1)
	(calibration_target instrument9 Star1)
	(on_board instrument8 satellite4)
	(on_board instrument9 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Star19)
)
(:goal (and
	(pointing satellite1 Star19)
	(pointing satellite2 Phenomenon24)
	(pointing satellite3 Phenomenon26)
	(pointing satellite4 Star19)
	(have_image Phenomenon5 spectrograph0)
	(have_image Star6 infrared2)
	(have_image Star7 infrared2)
	(have_image Phenomenon8 infrared2)
	(have_image Planet9 spectrograph0)
	(have_image Star10 infrared2)
	(have_image Planet11 infrared2)
	(have_image Star12 infrared1)
	(have_image Star13 infrared1)
	(have_image Planet14 infrared2)
	(have_image Planet15 infrared1)
	(have_image Star16 spectrograph0)
	(have_image Star17 spectrograph0)
	(have_image Star18 infrared1)
	(have_image Star19 infrared1)
	(have_image Star21 infrared2)
	(have_image Star22 infrared2)
	(have_image Planet25 infrared1)
	(have_image Phenomenon26 infrared2)
	(have_image Star27 spectrograph0)
	(have_image Star28 infrared1)
))

)
