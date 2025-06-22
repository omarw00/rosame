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
	satellite2 - satellite
	instrument5 - instrument
	instrument6 - instrument
	instrument7 - instrument
	satellite3 - satellite
	instrument8 - instrument
	instrument9 - instrument
	satellite4 - satellite
	instrument10 - instrument
	instrument11 - instrument
	instrument12 - instrument
	image1 - mode
	spectrograph0 - mode
	infrared2 - mode
	Star3 - direction
	Star1 - direction
	Star0 - direction
	GroundStation2 - direction
	Phenomenon4 - direction
	Star5 - direction
	Phenomenon6 - direction
	Planet7 - direction
	Phenomenon8 - direction
	Star9 - direction
	Planet10 - direction
	Star11 - direction
	Star12 - direction
	Phenomenon13 - direction
	Planet14 - direction
	Star15 - direction
	Star16 - direction
	Star17 - direction
	Star18 - direction
	Phenomenon19 - direction
	Star20 - direction
	Phenomenon21 - direction
	Star22 - direction
	Planet23 - direction
	Phenomenon24 - direction
	Phenomenon25 - direction
	Planet26 - direction
)
(:init
	(supports instrument0 infrared2)
	(supports instrument0 image1)
	(supports instrument0 spectrograph0)
	(calibration_target instrument0 GroundStation2)
	(supports instrument1 infrared2)
	(supports instrument1 spectrograph0)
	(calibration_target instrument1 Star0)
	(supports instrument2 infrared2)
	(supports instrument2 image1)
	(calibration_target instrument2 Star3)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Planet23)
	(supports instrument3 image1)
	(calibration_target instrument3 Star1)
	(supports instrument4 image1)
	(supports instrument4 spectrograph0)
	(calibration_target instrument4 Star3)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Star0)
	(supports instrument5 image1)
	(supports instrument5 spectrograph0)
	(supports instrument5 infrared2)
	(calibration_target instrument5 GroundStation2)
	(supports instrument6 image1)
	(calibration_target instrument6 Star3)
	(supports instrument7 image1)
	(calibration_target instrument7 Star3)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(on_board instrument7 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Phenomenon25)
	(supports instrument8 spectrograph0)
	(supports instrument8 infrared2)
	(supports instrument8 image1)
	(calibration_target instrument8 GroundStation2)
	(supports instrument9 infrared2)
	(supports instrument9 spectrograph0)
	(supports instrument9 image1)
	(calibration_target instrument9 Star3)
	(on_board instrument8 satellite3)
	(on_board instrument9 satellite3)
	(power_avail satellite3)
	(pointing satellite3 GroundStation2)
	(supports instrument10 image1)
	(calibration_target instrument10 Star1)
	(supports instrument11 image1)
	(supports instrument11 spectrograph0)
	(supports instrument11 infrared2)
	(calibration_target instrument11 Star0)
	(supports instrument12 infrared2)
	(supports instrument12 spectrograph0)
	(supports instrument12 image1)
	(calibration_target instrument12 GroundStation2)
	(on_board instrument10 satellite4)
	(on_board instrument11 satellite4)
	(on_board instrument12 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Star16)
)
(:goal (and
	(have_image Phenomenon4 spectrograph0)
	(have_image Phenomenon6 infrared2)
	(have_image Planet7 infrared2)
	(have_image Phenomenon8 image1)
	(have_image Planet10 image1)
	(have_image Star11 infrared2)
	(have_image Star12 infrared2)
	(have_image Phenomenon13 spectrograph0)
	(have_image Planet14 image1)
	(have_image Star15 infrared2)
	(have_image Star16 spectrograph0)
	(have_image Star18 infrared2)
	(have_image Phenomenon19 spectrograph0)
	(have_image Star20 infrared2)
	(have_image Phenomenon21 infrared2)
	(have_image Star22 spectrograph0)
	(have_image Planet23 image1)
	(have_image Phenomenon24 infrared2)
	(have_image Phenomenon25 infrared2)
	(have_image Planet26 spectrograph0)
))

)
