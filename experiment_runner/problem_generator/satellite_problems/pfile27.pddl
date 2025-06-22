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
	image0 - mode
	spectrograph1 - mode
	Star3 - direction
	Star2 - direction
	Star1 - direction
	GroundStation4 - direction
	Star0 - direction
	Phenomenon5 - direction
	Phenomenon6 - direction
	Phenomenon7 - direction
	Planet8 - direction
	Phenomenon9 - direction
	Phenomenon10 - direction
	Planet11 - direction
	Phenomenon12 - direction
	Star13 - direction
	Phenomenon14 - direction
	Phenomenon15 - direction
	Planet16 - direction
	Planet17 - direction
	Star18 - direction
	Phenomenon19 - direction
	Star20 - direction
	Planet21 - direction
	Star22 - direction
	Phenomenon23 - direction
	Star24 - direction
	Star25 - direction
	Planet26 - direction
	Phenomenon27 - direction
	Phenomenon28 - direction
)
(:init
	(supports instrument0 image0)
	(supports instrument0 spectrograph1)
	(calibration_target instrument0 Star3)
	(supports instrument1 infrared2)
	(supports instrument1 image0)
	(calibration_target instrument1 Star2)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star2)
	(supports instrument2 image0)
	(calibration_target instrument2 GroundStation4)
	(supports instrument3 image0)
	(calibration_target instrument3 Star1)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Phenomenon10)
	(supports instrument4 spectrograph1)
	(supports instrument4 infrared2)
	(supports instrument4 image0)
	(calibration_target instrument4 Star1)
	(on_board instrument4 satellite2)
	(power_avail satellite2)
	(pointing satellite2 GroundStation4)
	(supports instrument5 image0)
	(calibration_target instrument5 Star2)
	(on_board instrument5 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Planet8)
	(supports instrument6 infrared2)
	(calibration_target instrument6 Star1)
	(supports instrument7 infrared2)
	(supports instrument7 spectrograph1)
	(calibration_target instrument7 GroundStation4)
	(supports instrument8 spectrograph1)
	(supports instrument8 image0)
	(supports instrument8 infrared2)
	(calibration_target instrument8 Star0)
	(on_board instrument6 satellite4)
	(on_board instrument7 satellite4)
	(on_board instrument8 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Planet16)
)
(:goal (and
	(pointing satellite0 Phenomenon5)
	(have_image Phenomenon5 spectrograph1)
	(have_image Phenomenon6 infrared2)
	(have_image Phenomenon7 infrared2)
	(have_image Planet8 infrared2)
	(have_image Phenomenon9 infrared2)
	(have_image Planet11 spectrograph1)
	(have_image Star13 spectrograph1)
	(have_image Phenomenon14 infrared2)
	(have_image Phenomenon15 spectrograph1)
	(have_image Planet16 image0)
	(have_image Planet17 image0)
	(have_image Star18 infrared2)
	(have_image Phenomenon19 image0)
	(have_image Star20 image0)
	(have_image Planet21 infrared2)
	(have_image Star22 infrared2)
	(have_image Phenomenon23 image0)
	(have_image Star24 image0)
	(have_image Planet26 infrared2)
	(have_image Phenomenon27 infrared2)
	(have_image Phenomenon28 infrared2)
))

)
