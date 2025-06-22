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
	thermograph0 - mode
	image3 - mode
	thermograph2 - mode
	Star3 - direction
	Star1 - direction
	Star0 - direction
	GroundStation2 - direction
	Phenomenon4 - direction
	Planet5 - direction
	Star6 - direction
	Planet7 - direction
	Planet8 - direction
	Planet9 - direction
	Star10 - direction
	Phenomenon11 - direction
	Planet12 - direction
	Star13 - direction
	Phenomenon14 - direction
	Planet15 - direction
	Star16 - direction
	Planet17 - direction
	Phenomenon18 - direction
	Star19 - direction
	Phenomenon20 - direction
	Star21 - direction
	Planet22 - direction
	Star23 - direction
	Planet24 - direction
)
(:init
	(supports instrument0 spectrograph1)
	(supports instrument0 image3)
	(calibration_target instrument0 Star1)
	(supports instrument1 thermograph2)
	(supports instrument1 spectrograph1)
	(supports instrument1 thermograph0)
	(calibration_target instrument1 Star1)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star10)
	(supports instrument2 image3)
	(calibration_target instrument2 Star3)
	(on_board instrument2 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Star1)
	(supports instrument3 thermograph2)
	(supports instrument3 thermograph0)
	(calibration_target instrument3 Star0)
	(supports instrument4 spectrograph1)
	(supports instrument4 thermograph0)
	(calibration_target instrument4 Star0)
	(supports instrument5 thermograph0)
	(calibration_target instrument5 Star0)
	(on_board instrument3 satellite2)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Star1)
	(supports instrument6 image3)
	(supports instrument6 spectrograph1)
	(supports instrument6 thermograph0)
	(calibration_target instrument6 Star1)
	(on_board instrument6 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star23)
	(supports instrument7 spectrograph1)
	(supports instrument7 image3)
	(supports instrument7 thermograph0)
	(calibration_target instrument7 Star1)
	(supports instrument8 spectrograph1)
	(calibration_target instrument8 Star0)
	(supports instrument9 thermograph2)
	(supports instrument9 image3)
	(supports instrument9 thermograph0)
	(calibration_target instrument9 GroundStation2)
	(on_board instrument7 satellite4)
	(on_board instrument8 satellite4)
	(on_board instrument9 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Planet22)
)
(:goal (and
	(pointing satellite0 Star23)
	(have_image Phenomenon4 thermograph2)
	(have_image Planet5 spectrograph1)
	(have_image Star6 thermograph2)
	(have_image Planet7 spectrograph1)
	(have_image Star10 image3)
	(have_image Phenomenon11 thermograph2)
	(have_image Planet12 thermograph2)
	(have_image Star13 spectrograph1)
	(have_image Phenomenon14 image3)
	(have_image Planet15 thermograph0)
	(have_image Star16 spectrograph1)
	(have_image Planet17 image3)
	(have_image Phenomenon18 spectrograph1)
	(have_image Star19 spectrograph1)
	(have_image Phenomenon20 image3)
	(have_image Star21 spectrograph1)
	(have_image Planet22 thermograph0)
	(have_image Star23 thermograph2)
	(have_image Planet24 image3)
))

)
