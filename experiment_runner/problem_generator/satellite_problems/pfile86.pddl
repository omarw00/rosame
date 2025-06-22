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
	satellite4 - satellite
	instrument6 - instrument
	instrument7 - instrument
	spectrograph3 - mode
	spectrograph2 - mode
	image0 - mode
	spectrograph1 - mode
	GroundStation3 - direction
	Star2 - direction
	GroundStation1 - direction
	GroundStation0 - direction
	Planet4 - direction
	Planet5 - direction
	Phenomenon6 - direction
	Planet7 - direction
	Planet8 - direction
	Phenomenon9 - direction
	Planet10 - direction
	Star11 - direction
	Planet12 - direction
	Planet13 - direction
)
(:init
	(supports instrument0 spectrograph1)
	(supports instrument0 image0)
	(calibration_target instrument0 GroundStation0)
	(supports instrument1 spectrograph3)
	(supports instrument1 image0)
	(calibration_target instrument1 Star2)
	(supports instrument2 spectrograph2)
	(supports instrument2 image0)
	(calibration_target instrument2 Star2)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Planet5)
	(supports instrument3 image0)
	(calibration_target instrument3 GroundStation1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Planet7)
	(supports instrument4 spectrograph3)
	(supports instrument4 image0)
	(supports instrument4 spectrograph1)
	(calibration_target instrument4 Star2)
	(on_board instrument4 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Planet10)
	(supports instrument5 image0)
	(supports instrument5 spectrograph2)
	(calibration_target instrument5 GroundStation1)
	(on_board instrument5 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Phenomenon6)
	(supports instrument6 spectrograph3)
	(calibration_target instrument6 GroundStation0)
	(supports instrument7 spectrograph1)
	(supports instrument7 image0)
	(supports instrument7 spectrograph2)
	(calibration_target instrument7 GroundStation0)
	(on_board instrument6 satellite4)
	(on_board instrument7 satellite4)
	(power_avail satellite4)
	(pointing satellite4 GroundStation0)
)
(:goal (and
	(pointing satellite0 Planet10)
	(pointing satellite2 Planet7)
	(pointing satellite3 Planet10)
	(have_image Planet5 spectrograph1)
	(have_image Phenomenon6 image0)
	(have_image Planet7 spectrograph2)
	(have_image Planet8 image0)
	(have_image Phenomenon9 spectrograph1)
	(have_image Planet10 spectrograph2)
	(have_image Star11 image0)
	(have_image Planet12 image0)
	(have_image Planet13 spectrograph1)
))

)
