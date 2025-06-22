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
	satellite3 - satellite
	instrument5 - instrument
	satellite4 - satellite
	instrument6 - instrument
	instrument7 - instrument
	instrument8 - instrument
	spectrograph0 - mode
	infrared2 - mode
	spectrograph1 - mode
	spectrograph3 - mode
	Star3 - direction
	GroundStation2 - direction
	GroundStation0 - direction
	GroundStation1 - direction
	Star4 - direction
	Phenomenon5 - direction
	Phenomenon6 - direction
	Planet7 - direction
	Planet8 - direction
	Star9 - direction
	Planet10 - direction
	Star11 - direction
	Planet12 - direction
	Star13 - direction
	Star14 - direction
)
(:init
	(supports instrument0 infrared2)
	(supports instrument0 spectrograph0)
	(calibration_target instrument0 GroundStation2)
	(supports instrument1 spectrograph1)
	(supports instrument1 infrared2)
	(calibration_target instrument1 GroundStation2)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star4)
	(supports instrument2 spectrograph0)
	(calibration_target instrument2 GroundStation0)
	(on_board instrument2 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Star4)
	(supports instrument3 infrared2)
	(supports instrument3 spectrograph3)
	(calibration_target instrument3 GroundStation1)
	(supports instrument4 spectrograph0)
	(supports instrument4 infrared2)
	(calibration_target instrument4 Star3)
	(on_board instrument3 satellite2)
	(on_board instrument4 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Phenomenon6)
	(supports instrument5 infrared2)
	(supports instrument5 spectrograph1)
	(calibration_target instrument5 GroundStation2)
	(on_board instrument5 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Phenomenon6)
	(supports instrument6 spectrograph0)
	(supports instrument6 spectrograph3)
	(calibration_target instrument6 GroundStation1)
	(supports instrument7 spectrograph1)
	(supports instrument7 infrared2)
	(supports instrument7 spectrograph0)
	(calibration_target instrument7 GroundStation0)
	(supports instrument8 spectrograph3)
	(calibration_target instrument8 GroundStation1)
	(on_board instrument6 satellite4)
	(on_board instrument7 satellite4)
	(on_board instrument8 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Phenomenon5)
)
(:goal (and
	(pointing satellite1 Star14)
	(pointing satellite3 Star14)
	(pointing satellite4 Star9)
	(have_image Phenomenon5 spectrograph1)
	(have_image Phenomenon6 infrared2)
	(have_image Planet7 spectrograph1)
	(have_image Planet8 spectrograph3)
	(have_image Star9 spectrograph0)
	(have_image Planet10 spectrograph0)
	(have_image Star11 spectrograph0)
	(have_image Planet12 infrared2)
	(have_image Star13 spectrograph3)
	(have_image Star14 spectrograph3)
))

)
