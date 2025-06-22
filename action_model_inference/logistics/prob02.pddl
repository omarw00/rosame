(define (problem strips-log-x-1)
   (:domain logistics-strips)
   (:objects package6 package5 package4 package3 package2 package1 - OBJ
             city2 city1 - CITY
             truck2 truck1 - TRUCK
             plane2 plane1 - AIRPLANE
             city2-1 city1-1 - LOCATION
             city2-2 city1-2 - AIRPORT)
   (:init (in-city city2-2 city2)
          (in-city city2-1 city2)
          (in-city city1-2 city1)
          (in-city city1-1 city1)
          (at plane2 city2-2)
          (at plane1 city1-2)
          (at truck2 city2-1)
          (at truck1 city1-1)
          (at package6 city2-2)
          (at package5 city2-1)
          (at package4 city1-1)
          (in package3 truck1)
          (in package2 plane1)
          (in package1 truck2))
   (:goal (and (at package6 city1-2)
               (at package4 city2-2)
               (at package1 city2-1))))