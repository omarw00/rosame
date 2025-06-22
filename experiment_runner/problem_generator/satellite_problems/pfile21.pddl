(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	satellite1 - satellite
	instrument2 - instrument
	instrument3 - instrument
	satellite2 - satellite
	instrument4 - instrument
	satellite3 - satellite
	instrument5 - instrument
	satellite4 - satellite
	instrument6 - instrument
	instrument7 - instrument
	instrument8 - instrument
	infrared2 - mode
	spectrograph0 - mode
	image1 - mode
	GroundStation1 - direction
	Star0 - direction
	GroundStation2 - direction
	Planet3 - direction
	Phenomenon4 - direction
	Phenomenon5 - direction
	Planet6 - direction
	Star7 - direction
	Star8 - direction
	Phenomenon9 - direction
	Phenomenon10 - direction
	Planet11 - direction
	Phenomenon12 - direction
	Phenomenon13 - direction
	Phenomenon14 - direction
	Planet15 - direction
	Phenomenon16 - direction
	Star17 - direction
)
(:init
	(supports instrument0 spectrograph0)
	(supports instrument0 image1)
	(calibration_target instrument0 Star0)
	(supports instrument1 spectrograph0)
	(supports instrument1 image1)
	(supports instrument1 infrared2)
	(calibration_target instrument1 GroundStation2)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Phenomenon5)
	(supports instrument2 spectrograph0)
	(supports instrument2 infrared2)
	(supports instrument2 image1)
	(calibration_target instrument2 Star0)
	(supports instrument3 infrared2)
	(calibration_target instrument3 Star0)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Star8)
	(supports instrument4 image1)
	(calibration_target instrument4 GroundStation2)
	(on_board instrument4 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Star17)
	(supports instrument5 spectrograph0)
	(supports instrument5 image1)
	(calibration_target instrument5 Star0)
	(on_board instrument5 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star17)
	(supports instrument6 infrared2)
	(supports instrument6 spectrograph0)
	(calibration_target instrument6 Star0)
	(supports instrument7 image1)
	(calibration_target instrument7 Star0)
	(supports instrument8 image1)
	(supports instrument8 spectrograph0)
	(supports instrument8 infrared2)
	(calibration_target instrument8 GroundStation2)
	(on_board instrument6 satellite4)
	(on_board instrument7 satellite4)
	(on_board instrument8 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Phenomenon12)
)
(:goal (and
	(pointing satellite0 GroundStation2)
	(have_image Planet3 infrared2)
	(have_image Phenomenon5 image1)
	(have_image Planet6 image1)
	(have_image Star7 spectrograph0)
	(have_image Star8 image1)
	(have_image Phenomenon9 image1)
	(have_image Phenomenon10 spectrograph0)
	(have_image Planet11 image1)
	(have_image Phenomenon12 infrared2)
	(have_image Phenomenon13 image1)
	(have_image Phenomenon14 image1)
	(have_image Planet15 spectrograph0)
	(have_image Phenomenon16 infrared2)
	(have_image Star17 spectrograph0)
))

)
