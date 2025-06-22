(define (problem blocks-4-0) (:domain blocks)
(:objects
a - block
	c - block
	b - block
	e - block
	d - block
	g - block
	f - block
	i - block
	h - block
	j - block
	a2 - agent
	a1 - agent
	a4 - agent
	a3 - agent
)

(:init
	(handempty a2)
	(handempty a4)
	(handempty a3)
	(handempty a1)
	(clear f)
	(clear c)
	(ontable i)
	(ontable f)
	(on a d)
	(on h a)
	(on g h)
	(on c e)
	(on e j)
	(on b g)
	(on d i)
	(on j b)

)

(:goal
	(and
	(on a g)
	(on g i)
	(on b a)
	(on f j)
	(on j e)
	(on h b)
	(on e h)
	(on d c)
	(on c f)
	(dummy-additional-predicate )
)
)

)