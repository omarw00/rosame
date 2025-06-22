(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	satellite1 - satellite
	instrument1 - instrument
	instrument2 - instrument
	instrument3 - instrument
	satellite2 - satellite
	instrument4 - instrument
	satellite3 - satellite
	instrument5 - instrument
	instrument6 - instrument
	instrument7 - instrument
	satellite4 - satellite
	instrument8 - instrument
	thermograph2 - mode
	image1 - mode
	spectrograph3 - mode
	image0 - mode
	GroundStation1 - direction
	GroundStation0 - direction
	GroundStation4 - direction
	Star2 - direction
	GroundStation3 - direction
	Planet5 - direction
	Phenomenon6 - direction
	Star7 - direction
	Planet8 - direction
	Phenomenon9 - direction
	Phenomenon10 - direction
	Planet11 - direction
	Planet12 - direction
	Planet13 - direction
	Planet14 - direction
	Planet15 - direction
	Star16 - direction
	Planet17 - direction
	Planet18 - direction
	Planet19 - direction
	Planet20 - direction
	Planet21 - direction
	Planet22 - direction
	Phenomenon23 - direction
	Phenomenon24 - direction
	Star25 - direction
	Star26 - direction
)
(:init
	(supports instrument0 image0)
	(supports instrument0 thermograph2)
	(calibration_target instrument0 Star2)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Phenomenon6)
	(supports instrument1 thermograph2)
	(calibration_target instrument1 GroundStation3)
	(supports instrument2 thermograph2)
	(supports instrument2 image0)
	(calibration_target instrument2 Star2)
	(supports instrument3 thermograph2)
	(supports instrument3 image1)
	(supports instrument3 spectrograph3)
	(calibration_target instrument3 GroundStation0)
	(on_board instrument1 satellite1)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Star25)
	(supports instrument4 thermograph2)
	(supports instrument4 spectrograph3)
	(calibration_target instrument4 GroundStation0)
	(on_board instrument4 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Star7)
	(supports instrument5 image1)
	(supports instrument5 spectrograph3)
	(supports instrument5 image0)
	(calibration_target instrument5 GroundStation4)
	(supports instrument6 image0)
	(supports instrument6 image1)
	(calibration_target instrument6 GroundStation4)
	(supports instrument7 spectrograph3)
	(supports instrument7 image1)
	(calibration_target instrument7 Star2)
	(on_board instrument5 satellite3)
	(on_board instrument6 satellite3)
	(on_board instrument7 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star16)
	(supports instrument8 image0)
	(calibration_target instrument8 GroundStation3)
	(on_board instrument8 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Star26)
)
(:goal (and
	(pointing satellite0 Phenomenon10)
	(pointing satellite4 Planet22)
	(have_image Planet5 image1)
	(have_image Phenomenon6 image1)
	(have_image Star7 image0)
	(have_image Planet8 spectrograph3)
	(have_image Phenomenon9 image0)
	(have_image Planet11 spectrograph3)
	(have_image Planet12 image0)
	(have_image Planet13 image1)
	(have_image Planet14 image1)
	(have_image Planet15 thermograph2)
	(have_image Star16 image0)
	(have_image Planet17 image1)
	(have_image Planet18 spectrograph3)
	(have_image Planet19 spectrograph3)
	(have_image Planet20 thermograph2)
	(have_image Planet21 spectrograph3)
	(have_image Planet22 image0)
	(have_image Phenomenon23 thermograph2)
	(have_image Phenomenon24 image1)
	(have_image Star26 image0)
))

)
