(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	instrument2 - instrument
	satellite1 - satellite
	instrument3 - instrument
	instrument4 - instrument
	instrument5 - instrument
	satellite2 - satellite
	instrument6 - instrument
	satellite3 - satellite
	instrument7 - instrument
	instrument8 - instrument
	instrument9 - instrument
	satellite4 - satellite
	instrument10 - instrument
	spectrograph2 - mode
	spectrograph1 - mode
	image0 - mode
	Star3 - direction
	GroundStation0 - direction
	Star1 - direction
	Star2 - direction
	Phenomenon4 - direction
	Star5 - direction
	Star6 - direction
	Star7 - direction
	Star8 - direction
	Star9 - direction
	Phenomenon10 - direction
	Phenomenon11 - direction
	Planet12 - direction
	Phenomenon13 - direction
	Planet14 - direction
	Star15 - direction
	Phenomenon16 - direction
	Star17 - direction
	Planet18 - direction
	Star19 - direction
	Phenomenon20 - direction
	Star21 - direction
	Star22 - direction
	Phenomenon23 - direction
	Star24 - direction
	Planet25 - direction
	Star26 - direction
	Planet27 - direction
)
(:init
	(supports instrument0 spectrograph2)
	(calibration_target instrument0 Star1)
	(supports instrument1 spectrograph2)
	(supports instrument1 spectrograph1)
	(calibration_target instrument1 GroundStation0)
	(supports instrument2 image0)
	(supports instrument2 spectrograph2)
	(calibration_target instrument2 GroundStation0)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Planet27)
	(supports instrument3 spectrograph1)
	(calibration_target instrument3 Star1)
	(supports instrument4 image0)
	(supports instrument4 spectrograph1)
	(calibration_target instrument4 GroundStation0)
	(supports instrument5 image0)
	(supports instrument5 spectrograph1)
	(supports instrument5 spectrograph2)
	(calibration_target instrument5 Star2)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(on_board instrument5 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Phenomenon16)
	(supports instrument6 spectrograph1)
	(supports instrument6 image0)
	(supports instrument6 spectrograph2)
	(calibration_target instrument6 Star2)
	(on_board instrument6 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Phenomenon13)
	(supports instrument7 spectrograph2)
	(supports instrument7 spectrograph1)
	(calibration_target instrument7 Star1)
	(supports instrument8 image0)
	(calibration_target instrument8 Star2)
	(supports instrument9 spectrograph1)
	(calibration_target instrument9 Star1)
	(on_board instrument7 satellite3)
	(on_board instrument8 satellite3)
	(on_board instrument9 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star19)
	(supports instrument10 image0)
	(calibration_target instrument10 Star2)
	(on_board instrument10 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Phenomenon16)
)
(:goal (and
	(pointing satellite2 Phenomenon23)
	(pointing satellite3 Star7)
	(pointing satellite4 Phenomenon16)
	(have_image Phenomenon4 spectrograph2)
	(have_image Star5 spectrograph1)
	(have_image Star6 spectrograph2)
	(have_image Star7 spectrograph1)
	(have_image Star8 spectrograph2)
	(have_image Star9 spectrograph2)
	(have_image Phenomenon10 spectrograph2)
	(have_image Phenomenon11 image0)
	(have_image Planet14 spectrograph1)
	(have_image Star15 spectrograph1)
	(have_image Star17 spectrograph2)
	(have_image Planet18 image0)
	(have_image Phenomenon20 spectrograph1)
	(have_image Star21 spectrograph1)
	(have_image Star22 image0)
	(have_image Star24 image0)
	(have_image Planet25 image0)
	(have_image Star26 spectrograph2)
	(have_image Planet27 image0)
))

)
