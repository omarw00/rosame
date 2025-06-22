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
	instrument6 - instrument
	satellite3 - satellite
	instrument7 - instrument
	instrument8 - instrument
	instrument9 - instrument
	satellite4 - satellite
	instrument10 - instrument
	image1 - mode
	infrared2 - mode
	spectrograph0 - mode
	Star2 - direction
	Star0 - direction
	Star1 - direction
	Planet3 - direction
	Star4 - direction
	Planet5 - direction
	Planet6 - direction
	Star7 - direction
	Star8 - direction
	Planet9 - direction
	Planet10 - direction
	Planet11 - direction
	Phenomenon12 - direction
	Planet13 - direction
	Planet14 - direction
	Planet15 - direction
	Phenomenon16 - direction
	Planet17 - direction
	Phenomenon18 - direction
	Star19 - direction
	Planet20 - direction
	Phenomenon21 - direction
	Star22 - direction
	Planet23 - direction
	Star24 - direction
	Planet25 - direction
)
(:init
	(supports instrument0 spectrograph0)
	(supports instrument0 infrared2)
	(supports instrument0 image1)
	(calibration_target instrument0 Star0)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Planet5)
	(supports instrument1 spectrograph0)
	(supports instrument1 infrared2)
	(supports instrument1 image1)
	(calibration_target instrument1 Star2)
	(supports instrument2 infrared2)
	(supports instrument2 image1)
	(supports instrument2 spectrograph0)
	(calibration_target instrument2 Star2)
	(supports instrument3 spectrograph0)
	(supports instrument3 image1)
	(supports instrument3 infrared2)
	(calibration_target instrument3 Star2)
	(on_board instrument1 satellite1)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Star24)
	(supports instrument4 image1)
	(calibration_target instrument4 Star2)
	(supports instrument5 spectrograph0)
	(supports instrument5 image1)
	(calibration_target instrument5 Star2)
	(supports instrument6 infrared2)
	(supports instrument6 image1)
	(calibration_target instrument6 Star2)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Planet23)
	(supports instrument7 infrared2)
	(supports instrument7 image1)
	(supports instrument7 spectrograph0)
	(calibration_target instrument7 Star2)
	(supports instrument8 image1)
	(supports instrument8 infrared2)
	(supports instrument8 spectrograph0)
	(calibration_target instrument8 Star1)
	(supports instrument9 spectrograph0)
	(supports instrument9 image1)
	(supports instrument9 infrared2)
	(calibration_target instrument9 Star0)
	(on_board instrument7 satellite3)
	(on_board instrument8 satellite3)
	(on_board instrument9 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star7)
	(supports instrument10 spectrograph0)
	(supports instrument10 infrared2)
	(calibration_target instrument10 Star1)
	(on_board instrument10 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Planet25)
)
(:goal (and
	(pointing satellite0 Phenomenon18)
	(pointing satellite1 Star19)
	(pointing satellite4 Planet20)
	(have_image Planet3 image1)
	(have_image Star4 image1)
	(have_image Planet5 image1)
	(have_image Planet6 infrared2)
	(have_image Star7 image1)
	(have_image Star8 infrared2)
	(have_image Planet9 spectrograph0)
	(have_image Planet10 image1)
	(have_image Planet11 spectrograph0)
	(have_image Phenomenon12 spectrograph0)
	(have_image Planet13 spectrograph0)
	(have_image Planet14 image1)
	(have_image Planet15 spectrograph0)
	(have_image Phenomenon16 image1)
	(have_image Planet17 image1)
	(have_image Star19 image1)
	(have_image Planet20 spectrograph0)
	(have_image Phenomenon21 infrared2)
	(have_image Star22 spectrograph0)
	(have_image Planet23 image1)
	(have_image Star24 infrared2)
	(have_image Planet25 infrared2)
))

)
