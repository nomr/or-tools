************************************************************************
file with basedata            : cn13_.bas
initial value random generator: 1610364336
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  124
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  1   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       16       15       16
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          2           6  13
   3        3          3           5  10  11
   4        3          3           6   8   9
   5        3          3           8   9  15
   6        3          3           7  10  11
   7        3          2          12  15
   8        3          2          12  13
   9        3          1          13
  10        3          1          15
  11        3          2          16  17
  12        3          2          14  17
  13        3          2          16  17
  14        3          1          16
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1
------------------------------------------------------------------------
  1      1     0       0    0    0
  2      1     1       4    0    0
         2     6       2    0    9
         3     8       1    0    7
  3      1     2       0   10    6
         2     9       6    0    6
         3     9       0   10    5
  4      1     2       0    6    0
         2     3       0    3    6
         3     6       7    0    5
  5      1     1       0    8   10
         2     5       0    7    8
         3    10       3    0    0
  6      1     1       0    9    3
         2     1       7    0    0
         3     8       0    9    0
  7      1     1       1    0    5
         2     1       0    6    6
         3     6       0    2    0
  8      1     1       0    5    0
         2     2       9    0    8
         3     9       0    4    6
  9      1     4       4    0    9
         2     7       0    2    0
         3    10       2    0    0
 10      1     3       0    7    0
         2     9       6    0    0
         3    10       5    0    0
 11      1     1       0    7    0
         2     7       1    0    5
         3    10       0    4    5
 12      1     5       6    0    8
         2     6       6    0    0
         3     7       3    0    0
 13      1     1       0    2    7
         2     4       4    0    5
         3     6       3    0    0
 14      1     3       0    2    0
         2     5      10    0    3
         3     9       5    0    0
 15      1     2       0    8    0
         2     4       0    5    8
         3     4       9    0    0
 16      1     4       6    0    0
         2     5       5    0    0
         3     6       2    0    0
 17      1     1       0   10    9
         2     1       0    8   10
         3     6       0    8    0
 18      1     0       0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1
   17   22   28
************************************************************************