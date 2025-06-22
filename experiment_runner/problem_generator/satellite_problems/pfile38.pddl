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
	satellite3 - satellite
	instrument7 - instrument
	instrument8 - instrument
	satellite4 - satellite
	instrument9 - instrument
	instrument10 - instrument
	instrument11 - instrument
	image1 - mode
	thermograph3 - mode
	spectrograph4 - mode
	thermograph0 - mode
	infrared2 - mode
	Star2 - direction
	Star0 - direction
	GroundStation1 - direction
	GroundStation3 - direction
	Planet4 - direction
	Phenomenon5 - direction
	Star6 - direction
	Planet7 - direction
	Planet8 - direction
	Star9 - direction
	Planet10 - direction
	Planet11 - direction
	Phenomenon12 - direction
	Planet13 - direction
	Star14 - direction
	Planet15 - direction
)
(:init
	(supports instrument0 thermograph3)
	(supports instrument0 spectrograph4)
	(supports instrument0 thermograph0)
	(calibration_target instrument0 Star2)
	(supports instrument1 thermograph0)
	(calibration_target instrument1 GroundStation3)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Planet10)
	(supports instrument2 thermograph3)
	(calibration_target instrument2 Star0)
	(supports instrument3 thermograph0)
	(supports instrument3 thermograph3)
	(calibration_target instrument3 Star2)
	(supports instrument4 infrared2)
	(supports instrument4 spectrograph4)
	(calibration_target instrument4 Star0)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Star9)
	(supports instrument5 infrared2)
	(calibration_target instrument5 Star0)
	(supports instrument6 thermograph0)
	(supports instrument6 spectrograph4)
	(supports instrument6 thermograph3)
	(calibration_target instrument6 Star0)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Planet15)
	(supports instrument7 infrared2)
	(calibration_target instrument7 Star0)
	(supports instrument8 thermograph0)
	(calibration_target instrument8 GroundStation1)
	(on_board instrument7 satellite3)
	(on_board instrument8 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Planet11)
	(supports instrument9 thermograph3)
	(supports instrument9 infrared2)
	(calibration_target instrument9 GroundStation1)
	(supports instrument10 thermograph3)
	(supports instrument10 image1)
	(calibration_target instrument10 GroundStation1)
	(supports instrument11 infrared2)
	(supports instrument11 thermograph0)
	(supports instrument11 spectrograph4)
	(calibration_target instrument11 GroundStation3)
	(on_board instrument9 satellite4)
	(on_board instrument10 satellite4)
	(on_board instrument11 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Star0)
)
(:goal (and
	(pointing satellite2 Planet4)
	(pointing satellite3 Phenomenon5)
	(have_image Planet4 thermograph0)
	(have_image Star6 thermograph0)
	(have_image Planet7 image1)
	(have_image Planet8 infrared2)
	(have_image Star9 spectrograph4)
	(have_image Planet10 infrared2)
	(have_image Planet11 spectrograph4)
	(have_image Phenomenon12 thermograph3)
	(have_image Planet13 thermograph0)
	(have_image Star14 thermograph3)
	(have_image Planet15 image1)
))

)
