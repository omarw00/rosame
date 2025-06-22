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
	instrument6 - instrument
	satellite3 - satellite
	instrument7 - instrument
	instrument8 - instrument
	satellite4 - satellite
	instrument9 - instrument
	instrument10 - instrument
	spectrograph0 - mode
	infrared2 - mode
	thermograph3 - mode
	infrared1 - mode
	thermograph4 - mode
	Star2 - direction
	Star0 - direction
	GroundStation1 - direction
	Star3 - direction
	Phenomenon4 - direction
	Star5 - direction
	Phenomenon6 - direction
	Planet7 - direction
	Phenomenon8 - direction
	Phenomenon9 - direction
	Star10 - direction
	Phenomenon11 - direction
	Star12 - direction
	Star13 - direction
	Star14 - direction
	Star15 - direction
	Planet16 - direction
	Planet17 - direction
	Phenomenon18 - direction
	Star19 - direction
	Planet20 - direction
	Phenomenon21 - direction
)
(:init
	(supports instrument0 infrared2)
	(supports instrument0 spectrograph0)
	(supports instrument0 thermograph4)
	(calibration_target instrument0 Star0)
	(supports instrument1 thermograph3)
	(calibration_target instrument1 Star0)
	(supports instrument2 infrared2)
	(calibration_target instrument2 Star0)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star3)
	(supports instrument3 thermograph3)
	(supports instrument3 spectrograph0)
	(supports instrument3 infrared1)
	(calibration_target instrument3 GroundStation1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Planet7)
	(supports instrument4 thermograph3)
	(supports instrument4 thermograph4)
	(calibration_target instrument4 Star0)
	(supports instrument5 spectrograph0)
	(calibration_target instrument5 Star0)
	(supports instrument6 thermograph4)
	(supports instrument6 infrared2)
	(calibration_target instrument6 Star2)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Star3)
	(supports instrument7 infrared1)
	(calibration_target instrument7 Star2)
	(supports instrument8 thermograph4)
	(supports instrument8 infrared1)
	(calibration_target instrument8 Star2)
	(on_board instrument7 satellite3)
	(on_board instrument8 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star14)
	(supports instrument9 thermograph3)
	(calibration_target instrument9 Star0)
	(supports instrument10 thermograph4)
	(supports instrument10 infrared1)
	(supports instrument10 thermograph3)
	(calibration_target instrument10 GroundStation1)
	(on_board instrument9 satellite4)
	(on_board instrument10 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Planet7)
)
(:goal (and
	(pointing satellite0 Phenomenon11)
	(pointing satellite2 Planet17)
	(have_image Star3 thermograph3)
	(have_image Phenomenon4 infrared2)
	(have_image Star5 spectrograph0)
	(have_image Phenomenon6 infrared2)
	(have_image Planet7 thermograph4)
	(have_image Phenomenon9 infrared1)
	(have_image Phenomenon11 infrared1)
	(have_image Star12 thermograph4)
	(have_image Star13 thermograph4)
	(have_image Star15 spectrograph0)
	(have_image Planet16 spectrograph0)
	(have_image Planet17 thermograph3)
	(have_image Phenomenon18 infrared1)
	(have_image Star19 spectrograph0)
	(have_image Planet20 thermograph3)
	(have_image Phenomenon21 infrared2)
))

)
