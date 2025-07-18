# Blocks World Generator and Planner

## Description
This is the code for the random Blocks World (BW) state/problem generators and domain-specific planners described in the paper:

*John Slaney and Sylvie Thiébaux
Blocks World revisited
Artificial Intelligence 125 (2001): 119-153.*

The bbwstates_src directory contains the source of:
- the random states generator bwstates which generates uniformely distributed random states of a given size
- suboptimal linear-time planners US, GN1, GN2
- optimal planner OPTIMAL

The bwkstates_src directory contains the source of bwkstates, which generates uniformely distributed random states with a given number of blocks and towers

Note that the states generated by these programs are complete (that
is, complete specifications of which block is on which) and are
pseudo-random within the class of such states of the same number of
blocks. The number of blocks (not including the table) is supplied as
the argument to this program, along with the number of states
required.

The output is in the form of a list of intgers. The blocks are to be
thought of as numbered from 1 to N, with the table as number 0. Each
state is specified by giving first N and then for each block in sequence
the number of the block it is on. A notional size of zero terminates the
output. For example, the state of 6 blocks

    2
    5    3
    4    1    6
   -------------
   
is represented by the integers
   6
   0 5 1 0 4 0
meaning there are 6 blocks; 1 is on the table, 2 on 5, 3 on 1, 4 on the
table, 5 on 4 and 6 on the table.

Optionally bbwstates outputs a solution to the problem instead of the
pair of states. The algorithm used to generate the solution may be US,
GN1, GN2 or OPTIMAL 

The random numbers are supplied by the C library function drand48(). To
ensure that every BW state of the given size has the same probability of
being generated, it is necessary to calculate the probability at every
step that the next block to be placed should go on the table. The numbers
required for this are calculated in advance, which is why this program
pauses for a while before generating any states.

## Installation

You need gcc. Run the makefiles in the respective directories.

## Usage

### bbwstates
*    -n <integer>     number of blocks in each state (default 0)
*    -p <integer>     number of problems (pairs of states) (default 1)
*    -r <integer>     seed for the random number generator (default 3088)
*    -a <integer>     algorithm used to solve problem
                      0 = US, 1 = GN1, 2 = GN2, 3 = OPTIMAL.
*    -v <integer>     verbosity
                     -1 = states, 0 = average, 1 = plan lengths,
                      2 = states and plan lengths, 3 = plans.

### bwkstates
*    -n <integer>   number of blocks in each state (default 0)
*    -s <integer>   number of states required (default 1)
*    -r <integer>   seed for the random number generator (default 3088)
*    -i <integer>   number of towers in odd rank states (default unspecified)
*    -g <integer>   number of towers in even rank states (default unspecified)

For bwkstates, as supplied, the maximum number of blocks is 1000. This figure may be changed by redefining the constant SZ in the header. However, as the
memory requirement is quadratic in SZ, significantly increasing the size
may be a bad idea unless your machine has adequate memory.


## Authors and acknowledgment
Authors are John Slaney and Sylvie Thiebaux

## License



