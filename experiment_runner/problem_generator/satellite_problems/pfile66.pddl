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
	satellite3 - satellite
	instrument6 - instrument
	satellite4 - satellite
	instrument7 - instrument
	instrument8 - instrument
	spectrograph0 - mode
	infrared2 - mode
	image1 - mode
	image4 - mode
	infrared3 - mode
	GroundStation0 - direction
	GroundStation2 - direction
	Star3 - direction
	Star1 - direction
	Phenomenon4 - direction
	Planet5 - direction
	Planet6 - direction
	Planet7 - direction
	Star8 - direction
	Planet9 - direction
	Star10 - direction
	Planet11 - direction
	Planet12 - direction
	Star13 - direction
	Phenomenon14 - direction
	Planet15 - direction
	Star16 - direction
	Planet17 - direction
	Phenomenon18 - direction
	Star19 - direction
	Phenomenon20 - direction
	Phenomenon21 - direction
	Star22 - direction
	Phenomenon23 - direction
	Planet24 - direction
	Phenomenon25 - direction
	Planet26 - direction
)
(:init
	(supports instrument0 infrared3)
	(supports instrument0 image4)
	(calibration_target instrument0 Star3)
	(supports instrument1 infrared2)
	(supports instrument1 spectrograph0)
	(calibration_target instrument1 GroundStation2)
	(supports instrument2 image1)
	(calibration_target instrument2 GroundStation0)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star8)
	(supports instrument3 infrared2)
	(calibration_target instrument3 GroundStation0)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Phenomenon18)
	(supports instrument4 infrared2)
	(calibration_target instrument4 Star3)
	(supports instrument5 infrared3)
	(calibration_target instrument5 GroundStation2)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Star22)
	(supports instrument6 image4)
	(supports instrument6 spectrograph0)
	(supports instrument6 infrared2)
	(calibration_target instrument6 Star1)
	(on_board instrument6 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Phenomenon21)
	(supports instrument7 image1)
	(supports instrument7 infrared3)
	(supports instrument7 infrared2)
	(calibration_target instrument7 Star3)
	(supports instrument8 infrared3)
	(supports instrument8 image4)
	(supports instrument8 image1)
	(calibration_target instrument8 Star1)
	(on_board instrument7 satellite4)
	(on_board instrument8 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Phenomenon25)
)
(:goal (and
	(pointing satellite3 Phenomenon18)
	(have_image Phenomenon4 infrared3)
	(have_image Planet5 image1)
	(have_image Planet6 spectrograph0)
	(have_image Planet7 image4)
	(have_image Star8 image1)
	(have_image Planet9 spectrograph0)
	(have_image Star10 infrared2)
	(have_image Planet11 spectrograph0)
	(have_image Planet12 infrared3)
	(have_image Star13 infrared3)
	(have_image Phenomenon14 infrared3)
	(have_image Planet15 spectrograph0)
	(have_image Planet17 spectrograph0)
	(have_image Star19 infrared2)
	(have_image Phenomenon20 image4)
	(have_image Phenomenon21 image1)
	(have_image Star22 spectrograph0)
	(have_image Planet24 spectrograph0)
	(have_image Phenomenon25 image1)
	(have_image Planet26 image4)
))

)
