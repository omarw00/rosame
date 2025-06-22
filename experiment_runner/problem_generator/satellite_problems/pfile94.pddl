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
	image2 - mode
	infrared1 - mode
	image0 - mode
	spectrograph3 - mode
	Star3 - direction
	GroundStation1 - direction
	Star2 - direction
	Star0 - direction
	Star4 - direction
	Planet5 - direction
	Star6 - direction
	Phenomenon7 - direction
	Star8 - direction
	Planet9 - direction
	Phenomenon10 - direction
	Star11 - direction
	Phenomenon12 - direction
	Star13 - direction
	Phenomenon14 - direction
	Phenomenon15 - direction
	Planet16 - direction
	Phenomenon17 - direction
	Planet18 - direction
	Planet19 - direction
	Phenomenon20 - direction
	Phenomenon21 - direction
	Planet22 - direction
	Planet23 - direction
	Star24 - direction
	Star25 - direction
	Star26 - direction
)
(:init
	(supports instrument0 infrared1)
	(calibration_target instrument0 GroundStation1)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star0)
	(supports instrument1 infrared1)
	(supports instrument1 image0)
	(calibration_target instrument1 Star0)
	(on_board instrument1 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Phenomenon10)
	(supports instrument2 infrared1)
	(supports instrument2 image2)
	(calibration_target instrument2 GroundStation1)
	(on_board instrument2 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Planet16)
	(supports instrument3 infrared1)
	(supports instrument3 image0)
	(calibration_target instrument3 GroundStation1)
	(on_board instrument3 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star6)
	(supports instrument4 spectrograph3)
	(supports instrument4 image2)
	(calibration_target instrument4 Star2)
	(supports instrument5 infrared1)
	(supports instrument5 image2)
	(calibration_target instrument5 Star0)
	(supports instrument6 spectrograph3)
	(supports instrument6 image0)
	(calibration_target instrument6 Star0)
	(on_board instrument4 satellite4)
	(on_board instrument5 satellite4)
	(on_board instrument6 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Star25)
)
(:goal (and
	(pointing satellite0 Star4)
	(pointing satellite1 Star13)
	(have_image Planet5 spectrograph3)
	(have_image Star6 image2)
	(have_image Phenomenon7 image0)
	(have_image Star8 infrared1)
	(have_image Planet9 spectrograph3)
	(have_image Phenomenon10 image2)
	(have_image Star11 image0)
	(have_image Phenomenon12 image2)
	(have_image Star13 spectrograph3)
	(have_image Phenomenon14 spectrograph3)
	(have_image Phenomenon15 image2)
	(have_image Planet16 image2)
	(have_image Phenomenon17 image0)
	(have_image Planet18 infrared1)
	(have_image Planet19 spectrograph3)
	(have_image Phenomenon20 image0)
	(have_image Phenomenon21 infrared1)
	(have_image Planet22 spectrograph3)
	(have_image Planet23 spectrograph3)
	(have_image Star24 spectrograph3)
	(have_image Star25 spectrograph3)
	(have_image Star26 image0)
))

)
