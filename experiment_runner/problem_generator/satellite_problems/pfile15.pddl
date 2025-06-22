(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	instrument2 - instrument
	satellite1 - satellite
	instrument3 - instrument
	instrument4 - instrument
	instrument5 - instrument
	satellite2 - satellite
	instrument6 - instrument
	instrument7 - instrument
	instrument8 - instrument
	satellite3 - satellite
	instrument9 - instrument
	satellite4 - satellite
	instrument10 - instrument
	instrument11 - instrument
	instrument12 - instrument
	infrared3 - mode
	spectrograph4 - mode
	image2 - mode
	spectrograph1 - mode
	infrared0 - mode
	Star2 - direction
	Star0 - direction
	GroundStation1 - direction
	Planet3 - direction
	Star4 - direction
	Star5 - direction
	Star6 - direction
	Star7 - direction
	Planet8 - direction
	Planet9 - direction
	Phenomenon10 - direction
	Phenomenon11 - direction
	Planet12 - direction
	Star13 - direction
	Star14 - direction
	Star15 - direction
	Planet16 - direction
	Planet17 - direction
	Phenomenon18 - direction
	Phenomenon19 - direction
	Phenomenon20 - direction
	Star21 - direction
)
(:init
	(supports instrument0 spectrograph4)
	(calibration_target instrument0 GroundStation1)
	(supports instrument1 image2)
	(supports instrument1 infrared0)
	(calibration_target instrument1 Star0)
	(supports instrument2 spectrograph1)
	(supports instrument2 infrared3)
	(calibration_target instrument2 GroundStation1)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star6)
	(supports instrument3 spectrograph1)
	(supports instrument3 spectrograph4)
	(supports instrument3 image2)
	(calibration_target instrument3 GroundStation1)
	(supports instrument4 infrared0)
	(supports instrument4 image2)
	(calibration_target instrument4 Star0)
	(supports instrument5 infrared3)
	(calibration_target instrument5 GroundStation1)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(on_board instrument5 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Planet3)
	(supports instrument6 infrared3)
	(calibration_target instrument6 GroundStation1)
	(supports instrument7 infrared3)
	(supports instrument7 image2)
	(supports instrument7 spectrograph4)
	(calibration_target instrument7 GroundStation1)
	(supports instrument8 spectrograph1)
	(supports instrument8 infrared0)
	(calibration_target instrument8 GroundStation1)
	(on_board instrument6 satellite2)
	(on_board instrument7 satellite2)
	(on_board instrument8 satellite2)
	(power_avail satellite2)
	(pointing satellite2 GroundStation1)
	(supports instrument9 image2)
	(supports instrument9 infrared3)
	(calibration_target instrument9 GroundStation1)
	(on_board instrument9 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star6)
	(supports instrument10 infrared3)
	(supports instrument10 spectrograph4)
	(supports instrument10 spectrograph1)
	(calibration_target instrument10 Star0)
	(supports instrument11 image2)
	(supports instrument11 spectrograph4)
	(supports instrument11 infrared0)
	(calibration_target instrument11 Star0)
	(supports instrument12 infrared0)
	(supports instrument12 spectrograph1)
	(supports instrument12 image2)
	(calibration_target instrument12 GroundStation1)
	(on_board instrument10 satellite4)
	(on_board instrument11 satellite4)
	(on_board instrument12 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Star0)
)
(:goal (and
	(pointing satellite0 Phenomenon10)
	(pointing satellite2 Planet8)
	(pointing satellite4 Star4)
	(have_image Planet3 image2)
	(have_image Star4 spectrograph4)
	(have_image Star5 spectrograph4)
	(have_image Star6 spectrograph4)
	(have_image Star7 spectrograph4)
	(have_image Planet8 infrared3)
	(have_image Planet9 infrared3)
	(have_image Phenomenon10 image2)
	(have_image Phenomenon11 infrared0)
	(have_image Planet12 infrared0)
	(have_image Star13 spectrograph4)
	(have_image Star14 spectrograph4)
	(have_image Planet16 image2)
	(have_image Planet17 spectrograph1)
	(have_image Phenomenon18 image2)
	(have_image Phenomenon19 image2)
	(have_image Phenomenon20 image2)
	(have_image Star21 infrared0)
))

)
