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
	satellite3 - satellite
	instrument6 - instrument
	instrument7 - instrument
	satellite4 - satellite
	instrument8 - instrument
	instrument9 - instrument
	instrument10 - instrument
	thermograph0 - mode
	spectrograph4 - mode
	image3 - mode
	image1 - mode
	thermograph2 - mode
	GroundStation2 - direction
	GroundStation3 - direction
	GroundStation1 - direction
	Star0 - direction
	GroundStation4 - direction
	Star5 - direction
	Planet6 - direction
	Star7 - direction
	Star8 - direction
	Planet9 - direction
	Star10 - direction
	Planet11 - direction
	Phenomenon12 - direction
	Phenomenon13 - direction
	Planet14 - direction
	Phenomenon15 - direction
	Planet16 - direction
	Planet17 - direction
	Star18 - direction
	Star19 - direction
	Planet20 - direction
	Planet21 - direction
	Planet22 - direction
	Planet23 - direction
	Planet24 - direction
	Planet25 - direction
	Star26 - direction
	Star27 - direction
)
(:init
	(supports instrument0 image1)
	(supports instrument0 thermograph0)
	(supports instrument0 spectrograph4)
	(calibration_target instrument0 GroundStation3)
	(supports instrument1 image1)
	(calibration_target instrument1 Star0)
	(supports instrument2 thermograph2)
	(supports instrument2 image3)
	(calibration_target instrument2 Star0)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Phenomenon15)
	(supports instrument3 image1)
	(calibration_target instrument3 GroundStation4)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Star19)
	(supports instrument4 spectrograph4)
	(calibration_target instrument4 GroundStation2)
	(supports instrument5 spectrograph4)
	(calibration_target instrument5 GroundStation3)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Phenomenon12)
	(supports instrument6 thermograph0)
	(supports instrument6 image1)
	(calibration_target instrument6 GroundStation1)
	(supports instrument7 image3)
	(supports instrument7 spectrograph4)
	(supports instrument7 thermograph0)
	(calibration_target instrument7 Star0)
	(on_board instrument6 satellite3)
	(on_board instrument7 satellite3)
	(power_avail satellite3)
	(pointing satellite3 GroundStation3)
	(supports instrument8 image3)
	(supports instrument8 image1)
	(calibration_target instrument8 GroundStation4)
	(supports instrument9 image1)
	(calibration_target instrument9 GroundStation4)
	(supports instrument10 thermograph2)
	(supports instrument10 image1)
	(supports instrument10 image3)
	(calibration_target instrument10 GroundStation4)
	(on_board instrument8 satellite4)
	(on_board instrument9 satellite4)
	(on_board instrument10 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Planet11)
)
(:goal (and
	(pointing satellite0 Star0)
	(pointing satellite3 Planet21)
	(have_image Star5 image1)
	(have_image Planet6 spectrograph4)
	(have_image Star8 thermograph0)
	(have_image Planet9 spectrograph4)
	(have_image Star10 spectrograph4)
	(have_image Planet11 spectrograph4)
	(have_image Phenomenon12 image3)
	(have_image Phenomenon13 image3)
	(have_image Planet14 thermograph0)
	(have_image Phenomenon15 thermograph0)
	(have_image Planet17 thermograph2)
	(have_image Star18 spectrograph4)
	(have_image Star19 image3)
	(have_image Planet20 thermograph0)
	(have_image Planet21 image3)
	(have_image Planet22 spectrograph4)
	(have_image Planet23 thermograph0)
	(have_image Planet24 image1)
	(have_image Planet25 image3)
	(have_image Star26 thermograph0)
	(have_image Star27 thermograph0)
))

)
