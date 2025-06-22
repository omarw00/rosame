(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	satellite1 - satellite
	instrument2 - instrument
	satellite2 - satellite
	instrument3 - instrument
	instrument4 - instrument
	instrument5 - instrument
	satellite3 - satellite
	instrument6 - instrument
	satellite4 - satellite
	instrument7 - instrument
	instrument8 - instrument
	instrument9 - instrument
	spectrograph1 - mode
	infrared2 - mode
	infrared0 - mode
	thermograph4 - mode
	image3 - mode
	Star0 - direction
	GroundStation1 - direction
	GroundStation2 - direction
	Star4 - direction
	Star3 - direction
	Planet5 - direction
	Planet6 - direction
	Star7 - direction
	Star8 - direction
	Star9 - direction
	Planet10 - direction
	Phenomenon11 - direction
	Planet12 - direction
	Star13 - direction
	Phenomenon14 - direction
	Star15 - direction
	Star16 - direction
	Phenomenon17 - direction
	Phenomenon18 - direction
	Phenomenon19 - direction
	Planet20 - direction
	Phenomenon21 - direction
	Planet22 - direction
	Star23 - direction
	Planet24 - direction
	Planet25 - direction
	Phenomenon26 - direction
	Star27 - direction
	Phenomenon28 - direction
	Star29 - direction
)
(:init
	(supports instrument0 infrared2)
	(calibration_target instrument0 GroundStation2)
	(supports instrument1 infrared2)
	(calibration_target instrument1 GroundStation1)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Planet10)
	(supports instrument2 spectrograph1)
	(supports instrument2 thermograph4)
	(calibration_target instrument2 Star0)
	(on_board instrument2 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Planet22)
	(supports instrument3 image3)
	(supports instrument3 infrared0)
	(supports instrument3 infrared2)
	(calibration_target instrument3 GroundStation1)
	(supports instrument4 spectrograph1)
	(supports instrument4 infrared0)
	(calibration_target instrument4 Star4)
	(supports instrument5 thermograph4)
	(supports instrument5 infrared2)
	(supports instrument5 spectrograph1)
	(calibration_target instrument5 GroundStation1)
	(on_board instrument3 satellite2)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Star7)
	(supports instrument6 infrared2)
	(supports instrument6 image3)
	(supports instrument6 thermograph4)
	(calibration_target instrument6 GroundStation2)
	(on_board instrument6 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star13)
	(supports instrument7 infrared0)
	(supports instrument7 spectrograph1)
	(calibration_target instrument7 Star3)
	(supports instrument8 infrared2)
	(supports instrument8 thermograph4)
	(calibration_target instrument8 Star4)
	(supports instrument9 image3)
	(supports instrument9 thermograph4)
	(supports instrument9 infrared0)
	(calibration_target instrument9 Star3)
	(on_board instrument7 satellite4)
	(on_board instrument8 satellite4)
	(on_board instrument9 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Phenomenon26)
)
(:goal (and
	(pointing satellite2 Phenomenon26)
	(pointing satellite3 Phenomenon26)
	(have_image Planet5 thermograph4)
	(have_image Planet6 infrared0)
	(have_image Star7 spectrograph1)
	(have_image Star8 infrared0)
	(have_image Star9 infrared2)
	(have_image Planet10 infrared0)
	(have_image Phenomenon11 thermograph4)
	(have_image Planet12 infrared2)
	(have_image Star13 thermograph4)
	(have_image Phenomenon14 thermograph4)
	(have_image Star15 image3)
	(have_image Star16 spectrograph1)
	(have_image Phenomenon17 spectrograph1)
	(have_image Phenomenon18 spectrograph1)
	(have_image Phenomenon19 spectrograph1)
	(have_image Phenomenon21 thermograph4)
	(have_image Planet22 thermograph4)
	(have_image Star23 infrared2)
	(have_image Planet24 thermograph4)
	(have_image Planet25 infrared2)
	(have_image Phenomenon26 infrared2)
	(have_image Star27 spectrograph1)
	(have_image Phenomenon28 infrared0)
	(have_image Star29 thermograph4)
))

)
