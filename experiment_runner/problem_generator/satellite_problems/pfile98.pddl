(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	satellite1 - satellite
	instrument1 - instrument
	satellite2 - satellite
	instrument2 - instrument
	instrument3 - instrument
	instrument4 - instrument
	satellite3 - satellite
	instrument5 - instrument
	satellite4 - satellite
	instrument6 - instrument
	instrument7 - instrument
	infrared3 - mode
	infrared0 - mode
	spectrograph1 - mode
	image2 - mode
	spectrograph4 - mode
	Star0 - direction
	Star2 - direction
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
)
(:init
	(supports instrument0 spectrograph4)
	(calibration_target instrument0 Star2)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Planet9)
	(supports instrument1 spectrograph1)
	(supports instrument1 infrared0)
	(calibration_target instrument1 GroundStation1)
	(on_board instrument1 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Phenomenon11)
	(supports instrument2 infrared3)
	(supports instrument2 spectrograph1)
	(calibration_target instrument2 Star2)
	(supports instrument3 spectrograph4)
	(supports instrument3 infrared3)
	(supports instrument3 spectrograph1)
	(calibration_target instrument3 Star0)
	(supports instrument4 image2)
	(calibration_target instrument4 GroundStation1)
	(on_board instrument2 satellite2)
	(on_board instrument3 satellite2)
	(on_board instrument4 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Star0)
	(supports instrument5 spectrograph1)
	(supports instrument5 infrared3)
	(supports instrument5 image2)
	(calibration_target instrument5 Star2)
	(on_board instrument5 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star7)
	(supports instrument6 spectrograph1)
	(supports instrument6 image2)
	(supports instrument6 infrared0)
	(calibration_target instrument6 Star2)
	(supports instrument7 spectrograph4)
	(supports instrument7 image2)
	(calibration_target instrument7 GroundStation1)
	(on_board instrument6 satellite4)
	(on_board instrument7 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Star13)
)
(:goal (and
	(pointing satellite0 Star13)
	(pointing satellite2 Star5)
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
))

)
