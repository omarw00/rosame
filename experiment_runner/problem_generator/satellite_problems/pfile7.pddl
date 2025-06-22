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
	instrument5 - instrument
	instrument6 - instrument
	satellite3 - satellite
	instrument7 - instrument
	satellite4 - satellite
	instrument8 - instrument
	infrared0 - mode
	infrared2 - mode
	thermograph1 - mode
	spectrograph3 - mode
	thermograph4 - mode
	GroundStation2 - direction
	GroundStation1 - direction
	Star0 - direction
	Star3 - direction
	Phenomenon4 - direction
	Phenomenon5 - direction
	Phenomenon6 - direction
	Phenomenon7 - direction
	Star8 - direction
	Star9 - direction
	Planet10 - direction
	Phenomenon11 - direction
	Phenomenon12 - direction
	Star13 - direction
	Star14 - direction
	Planet15 - direction
	Phenomenon16 - direction
)
(:init
	(supports instrument0 infrared0)
	(supports instrument0 thermograph4)
	(supports instrument0 spectrograph3)
	(calibration_target instrument0 Star0)
	(supports instrument1 spectrograph3)
	(supports instrument1 infrared2)
	(calibration_target instrument1 Star3)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Phenomenon4)
	(supports instrument2 thermograph1)
	(supports instrument2 spectrograph3)
	(calibration_target instrument2 Star3)
	(supports instrument3 spectrograph3)
	(calibration_target instrument3 GroundStation2)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Phenomenon5)
	(supports instrument4 thermograph1)
	(supports instrument4 thermograph4)
	(supports instrument4 spectrograph3)
	(calibration_target instrument4 GroundStation2)
	(supports instrument5 infrared2)
	(supports instrument5 spectrograph3)
	(calibration_target instrument5 GroundStation1)
	(supports instrument6 thermograph4)
	(supports instrument6 infrared2)
	(supports instrument6 spectrograph3)
	(calibration_target instrument6 GroundStation1)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(on_board instrument6 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Phenomenon4)
	(supports instrument7 spectrograph3)
	(supports instrument7 thermograph1)
	(supports instrument7 thermograph4)
	(calibration_target instrument7 Star0)
	(on_board instrument7 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Phenomenon12)
	(supports instrument8 thermograph4)
	(calibration_target instrument8 Star3)
	(on_board instrument8 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Phenomenon11)
)
(:goal (and
	(pointing satellite2 Star13)
	(pointing satellite3 GroundStation1)
	(pointing satellite4 Phenomenon12)
	(have_image Phenomenon4 thermograph1)
	(have_image Phenomenon5 thermograph4)
	(have_image Phenomenon6 thermograph4)
	(have_image Phenomenon7 thermograph4)
	(have_image Star8 infrared2)
	(have_image Star9 infrared2)
	(have_image Phenomenon11 thermograph1)
	(have_image Phenomenon12 infrared0)
	(have_image Star13 infrared0)
	(have_image Star14 infrared2)
	(have_image Planet15 infrared0)
	(have_image Phenomenon16 infrared2)
))

)
