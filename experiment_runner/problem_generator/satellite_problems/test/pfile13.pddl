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
	instrument7 - instrument
	satellite3 - satellite
	instrument8 - instrument
	satellite4 - satellite
	instrument9 - instrument
	instrument10 - instrument
	instrument11 - instrument
	spectrograph0 - mode
	image2 - mode
	infrared1 - mode
	Star0 - direction
	Star2 - direction
	Star1 - direction
	Planet3 - direction
	Star4 - direction
	Star5 - direction
	Star6 - direction
	Planet7 - direction
	Planet8 - direction
	Star9 - direction
	Star10 - direction
	Star11 - direction
	Star12 - direction
	Phenomenon13 - direction
	Planet14 - direction
	Planet15 - direction
	Planet16 - direction
	Star17 - direction
	Star18 - direction
	Planet19 - direction
	Phenomenon20 - direction
	Planet21 - direction
	Planet22 - direction
)
(:init
	(supports instrument0 image2)
	(supports instrument0 spectrograph0)
	(calibration_target instrument0 Star2)
	(supports instrument1 infrared1)
	(supports instrument1 spectrograph0)
	(calibration_target instrument1 Star0)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star10)
	(supports instrument2 spectrograph0)
	(supports instrument2 infrared1)
	(supports instrument2 image2)
	(calibration_target instrument2 Star1)
	(supports instrument3 image2)
	(supports instrument3 spectrograph0)
	(supports instrument3 infrared1)
	(calibration_target instrument3 Star2)
	(supports instrument4 infrared1)
	(calibration_target instrument4 Star0)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Planet15)
	(supports instrument5 image2)
	(supports instrument5 infrared1)
	(supports instrument5 spectrograph0)
	(calibration_target instrument5 Star2)
	(supports instrument6 image2)
	(supports instrument6 spectrograph0)
	(supports instrument6 infrared1)
	(calibration_target instrument6 Star2)
	(supports instrument7 spectrograph0)
	(calibration_target instrument7 Star1)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(on_board instrument7 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Star2)
	(supports instrument8 image2)
	(supports instrument8 spectrograph0)
	(supports instrument8 infrared1)
	(calibration_target instrument8 Star0)
	(on_board instrument8 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Planet8)
	(supports instrument9 infrared1)
	(calibration_target instrument9 Star2)
	(supports instrument10 image2)
	(calibration_target instrument10 Star1)
	(supports instrument11 infrared1)
	(calibration_target instrument11 Star1)
	(on_board instrument9 satellite4)
	(on_board instrument10 satellite4)
	(on_board instrument11 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Planet7)
)
(:goal (and
	(pointing satellite0 Star0)
	(pointing satellite2 Star9)
	(pointing satellite3 Star18)
	(have_image Planet3 image2)
	(have_image Star5 image2)
	(have_image Star6 spectrograph0)
	(have_image Planet7 spectrograph0)
	(have_image Planet8 infrared1)
	(have_image Star9 infrared1)
	(have_image Star10 spectrograph0)
	(have_image Star11 infrared1)
	(have_image Star12 spectrograph0)
	(have_image Phenomenon13 image2)
	(have_image Planet14 infrared1)
	(have_image Planet15 spectrograph0)
	(have_image Planet16 image2)
	(have_image Star17 spectrograph0)
	(have_image Star18 spectrograph0)
	(have_image Planet19 spectrograph0)
	(have_image Phenomenon20 spectrograph0)
	(have_image Planet21 infrared1)
	(have_image Planet22 spectrograph0)
))

)
