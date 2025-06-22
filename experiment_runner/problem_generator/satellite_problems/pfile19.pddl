(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	satellite1 - satellite
	instrument1 - instrument
	satellite2 - satellite
	instrument2 - instrument
	satellite3 - satellite
	instrument3 - instrument
	satellite4 - satellite
	instrument4 - instrument
	instrument5 - instrument
	instrument6 - instrument
	thermograph3 - mode
	image1 - mode
	spectrograph4 - mode
	thermograph0 - mode
	infrared2 - mode
	GroundStation1 - direction
	Star0 - direction
	Star2 - direction
	Planet3 - direction
	Planet4 - direction
	Phenomenon5 - direction
	Phenomenon6 - direction
	Phenomenon7 - direction
	Planet8 - direction
	Planet9 - direction
	Planet10 - direction
	Star11 - direction
	Star12 - direction
	Star13 - direction
	Star14 - direction
	Phenomenon15 - direction
	Planet16 - direction
	Phenomenon17 - direction
	Star18 - direction
	Phenomenon19 - direction
	Star20 - direction
	Phenomenon21 - direction
	Phenomenon22 - direction
	Planet23 - direction
	Star24 - direction
	Planet25 - direction
	Planet26 - direction
)
(:init
	(supports instrument0 spectrograph4)
	(calibration_target instrument0 Star0)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Phenomenon21)
	(supports instrument1 image1)
	(supports instrument1 thermograph0)
	(supports instrument1 thermograph3)
	(calibration_target instrument1 GroundStation1)
	(on_board instrument1 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Star18)
	(supports instrument2 spectrograph4)
	(supports instrument2 thermograph0)
	(calibration_target instrument2 Star2)
	(on_board instrument2 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Star13)
	(supports instrument3 thermograph3)
	(calibration_target instrument3 Star0)
	(on_board instrument3 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Planet10)
	(supports instrument4 thermograph0)
	(calibration_target instrument4 Star2)
	(supports instrument5 thermograph0)
	(supports instrument5 spectrograph4)
	(supports instrument5 image1)
	(calibration_target instrument5 Star2)
	(supports instrument6 infrared2)
	(calibration_target instrument6 Star2)
	(on_board instrument4 satellite4)
	(on_board instrument5 satellite4)
	(on_board instrument6 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Phenomenon15)
)
(:goal (and
	(pointing satellite0 Planet10)
	(pointing satellite2 Phenomenon15)
	(have_image Planet3 spectrograph4)
	(have_image Planet4 infrared2)
	(have_image Phenomenon5 spectrograph4)
	(have_image Phenomenon6 thermograph3)
	(have_image Phenomenon7 thermograph3)
	(have_image Planet8 thermograph3)
	(have_image Planet10 spectrograph4)
	(have_image Star11 thermograph3)
	(have_image Star12 image1)
	(have_image Star13 spectrograph4)
	(have_image Star14 infrared2)
	(have_image Phenomenon15 spectrograph4)
	(have_image Planet16 image1)
	(have_image Star18 image1)
	(have_image Phenomenon19 spectrograph4)
	(have_image Phenomenon21 spectrograph4)
	(have_image Phenomenon22 thermograph3)
	(have_image Planet23 thermograph3)
	(have_image Star24 infrared2)
	(have_image Planet25 thermograph0)
	(have_image Planet26 thermograph3)
))

)
