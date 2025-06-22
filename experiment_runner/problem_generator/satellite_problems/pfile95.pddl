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
	satellite3 - satellite
	instrument4 - instrument
	satellite4 - satellite
	instrument5 - instrument
	spectrograph1 - mode
	infrared2 - mode
	image0 - mode
	Star3 - direction
	GroundStation4 - direction
	Star1 - direction
	Star0 - direction
	Star2 - direction
	Phenomenon5 - direction
	Phenomenon6 - direction
	Phenomenon7 - direction
	Planet8 - direction
	Phenomenon9 - direction
	Phenomenon10 - direction
	Planet11 - direction
	Phenomenon12 - direction
	Star13 - direction
	Phenomenon14 - direction
	Phenomenon15 - direction
	Planet16 - direction
	Planet17 - direction
)
(:init
	(supports instrument0 image0)
	(calibration_target instrument0 Star1)
	(supports instrument1 image0)
	(supports instrument1 infrared2)
	(calibration_target instrument1 Star0)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 GroundStation4)
	(supports instrument2 infrared2)
	(supports instrument2 image0)
	(supports instrument2 spectrograph1)
	(calibration_target instrument2 Star1)
	(on_board instrument2 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Planet16)
	(supports instrument3 infrared2)
	(calibration_target instrument3 Star2)
	(on_board instrument3 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Star3)
	(supports instrument4 spectrograph1)
	(supports instrument4 infrared2)
	(calibration_target instrument4 Star0)
	(on_board instrument4 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Planet11)
	(supports instrument5 image0)
	(supports instrument5 infrared2)
	(calibration_target instrument5 Star2)
	(on_board instrument5 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Planet11)
)
(:goal (and
	(pointing satellite2 Star3)
	(pointing satellite3 Phenomenon10)
	(pointing satellite4 Planet16)
	(have_image Phenomenon5 spectrograph1)
	(have_image Phenomenon6 infrared2)
	(have_image Phenomenon7 infrared2)
	(have_image Planet8 infrared2)
	(have_image Phenomenon9 infrared2)
	(have_image Planet11 spectrograph1)
	(have_image Star13 spectrograph1)
	(have_image Phenomenon14 infrared2)
	(have_image Phenomenon15 spectrograph1)
	(have_image Planet16 image0)
	(have_image Planet17 image0)
))

)
