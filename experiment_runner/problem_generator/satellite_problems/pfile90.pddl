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
	satellite4 - satellite
	instrument7 - instrument
	instrument8 - instrument
	instrument9 - instrument
	thermograph0 - mode
	spectrograph3 - mode
	image1 - mode
	infrared2 - mode
	Star0 - direction
	Star2 - direction
	Star1 - direction
	Phenomenon3 - direction
	Phenomenon4 - direction
	Planet5 - direction
	Planet6 - direction
	Star7 - direction
	Planet8 - direction
	Phenomenon9 - direction
	Star10 - direction
	Planet11 - direction
	Phenomenon12 - direction
	Planet13 - direction
	Planet14 - direction
	Planet15 - direction
	Phenomenon16 - direction
	Star17 - direction
	Phenomenon18 - direction
	Phenomenon19 - direction
)
(:init
	(supports instrument0 infrared2)
	(calibration_target instrument0 Star1)
	(supports instrument1 image1)
	(supports instrument1 infrared2)
	(supports instrument1 spectrograph3)
	(calibration_target instrument1 Star2)
	(supports instrument2 spectrograph3)
	(supports instrument2 image1)
	(supports instrument2 thermograph0)
	(calibration_target instrument2 Star1)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star1)
	(supports instrument3 infrared2)
	(supports instrument3 image1)
	(supports instrument3 thermograph0)
	(calibration_target instrument3 Star2)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Phenomenon9)
	(supports instrument4 image1)
	(supports instrument4 infrared2)
	(calibration_target instrument4 Star0)
	(on_board instrument4 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Star7)
	(supports instrument5 infrared2)
	(supports instrument5 image1)
	(supports instrument5 spectrograph3)
	(calibration_target instrument5 Star0)
	(supports instrument6 image1)
	(supports instrument6 thermograph0)
	(calibration_target instrument6 Star2)
	(on_board instrument5 satellite3)
	(on_board instrument6 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star17)
	(supports instrument7 infrared2)
	(calibration_target instrument7 Star2)
	(supports instrument8 infrared2)
	(supports instrument8 thermograph0)
	(supports instrument8 spectrograph3)
	(calibration_target instrument8 Star1)
	(supports instrument9 infrared2)
	(supports instrument9 image1)
	(supports instrument9 spectrograph3)
	(calibration_target instrument9 Star1)
	(on_board instrument7 satellite4)
	(on_board instrument8 satellite4)
	(on_board instrument9 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Star1)
)
(:goal (and
	(pointing satellite0 Phenomenon18)
	(pointing satellite1 Star1)
	(pointing satellite3 Planet11)
	(have_image Phenomenon3 thermograph0)
	(have_image Phenomenon4 spectrograph3)
	(have_image Planet5 image1)
	(have_image Planet6 infrared2)
	(have_image Star7 spectrograph3)
	(have_image Phenomenon9 infrared2)
	(have_image Star10 infrared2)
	(have_image Planet11 infrared2)
	(have_image Phenomenon12 thermograph0)
	(have_image Planet13 image1)
	(have_image Planet14 thermograph0)
	(have_image Planet15 thermograph0)
	(have_image Phenomenon16 spectrograph3)
	(have_image Star17 image1)
	(have_image Phenomenon18 spectrograph3)
	(have_image Phenomenon19 image1)
))

)
