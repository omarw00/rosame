(define (problem gripper-problem-1)
  (:domain gripper-strips-4ops)
  (:objects
    pos1 pos2 pos3 pos4 pos5 pos6 pos7 pos8 pos9 - position
    tile1 tile2 tile3 tile4 tile5 tile6 tile7 tile8 - tile
  )
  (:init
    ;; Initial positions of the tiles
    (at pos1 pos2 tile1)
    (at pos1 pos3 tile2)
    (at pos2 pos2 tile3)
    (at pos2 pos3 tile4)
    (at pos3 pos2 tile5)
    (at pos3 pos3 tile6)
    (at pos2 pos1 tile7)
    (at pos3 pos1 tile8)
    ;; Blank space at pos1-pos1
    (blank pos1 pos1)
    ;; Increment relations
    (inc pos1 pos2)
    (inc pos2 pos3)
    ;; Decrement relations
    (dec pos2 pos1)
    (dec pos3 pos2)
  )
  (:goal
    (and
      ;; Goal configuration of tiles
      (at pos1 pos1 tile1)
      (at pos1 pos2 tile2)
      (at pos1 pos3 tile3)
      (at pos2 pos1 tile4)
      (at pos2 pos2 tile5)
      (at pos2 pos3 tile6)
      (at pos3 pos1 tile7)
      (at pos3 pos2 tile8)
      ;; Blank at pos3-pos3
      (blank pos3 pos3)
    )
  )
)
