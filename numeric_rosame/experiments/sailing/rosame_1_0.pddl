(define (domain sailing)
(:requirements :typing :fluents)
(:types 	boat person - object
)

(:predicates (saved ?t - person)
)

(:functions (x ?b - boat)
	(y ?b - boat)
	(d ?t - person)
)

(:action go_north_east
	:parameters (?a - boat)
	:precondition (and )
	:effect (and ))

(:action go_north_west
	:parameters (?a - boat)
	:precondition (and )
	:effect (and ))

(:action go_est
	:parameters (?a - boat)
	:precondition (and )
	:effect (and ))

(:action go_west
	:parameters (?a - boat)
	:precondition (and )
	:effect (and ))

(:action go_south_west
	:parameters (?a - boat)
	:precondition (and )
	:effect (and ))

(:action go_south_east
	:parameters (?a - boat)
	:precondition (and )
	:effect (and ))

(:action go_south
	:parameters (?a - boat)
	:precondition (and )
	:effect (and ))

(:action save_person
	:parameters (?a - boat ?b - person)
	:precondition (and )
	:effect (and ))

)