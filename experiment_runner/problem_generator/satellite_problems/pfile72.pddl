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
	image0 - mode
	spectrograph3 - mode
	spectrograph1 - mode
	image2 - mode
	image4 - mode
	Star0 - direction
	Star2 - direction
	Star3 - direction
	Star1 - direction
	Planet4 - direction
	Planet5 - direction
	Star6 - direction
	Star7 - direction
	Planet8 - direction
	Star9 - direction
	Planet10 - direction
	Star11 - direction
	Star12 - direction
	Phenomenon13 - direction
	Planet14 - direction
	Phenomenon15 - direction
	Planet16 - direction
)
(:init
	(supports instrument0 spectrograph1)
	(supports instrument0 spectrograph3)
	(calibration_target instrument0 Star1)
	(supports instrument1 image0)
	(calibration_target instrument1 Star2)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Planet8)
	(supports instrument2 image0)
	(supports instrument2 image2)
	(calibration_target instrument2 Star2)
	(on_board instrument2 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Star2)
	(supports instrument3 image4)
	(supports instrument3 image0)
	(calibration_target instrument3 Star3)
	(supports instrument4 image4)
	(supports instrument4 spectrograph1)
	(calibration_target instrument4 Star2)
	(supports instrument5 spectrograph3)
	(supports instrument5 spectrograph1)
	(supports instrument5 image0)
	(calibration_target instrument5 Star3)
	(on_board instrument3 satellite2)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Star7)
	(supports instrument6 spectrograph1)
	(supports instrument6 image2)
	(calibration_target instrument6 Star1)
	(on_board instrument6 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Planet4)
	(supports instrument7 image4)
	(supports instrument7 image2)
	(calibration_target instrument7 Star1)
	(on_board instrument7 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Star6)
)
(:goal (and
	(pointing satellite2 Star7)
	(pointing satellite4 Star7)
	(have_image Planet4 spectrograph1)
	(have_image Planet5 image0)
	(have_image Star6 image0)
	(have_image Star7 image4)
	(have_image Planet8 image4)
	(have_image Star9 image0)
	(have_image Planet10 spectrograph1)
	(have_image Star11 image0)
	(have_image Star12 image2)
	(have_image Phenomenon13 spectrograph1)
	(have_image Planet14 spectrograph1)
	(have_image Phenomenon15 image2)
	(have_image Planet16 spectrograph1)
))

)
