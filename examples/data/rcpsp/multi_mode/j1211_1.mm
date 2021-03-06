************************************************************************
file with basedata            : md75_.bas
initial value random generator: 20921
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  14
horizon                       :  108
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     12      0       17        0       17
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          2           8  10
   3        3          3           5   9  10
   4        3          3           5   7   9
   5        3          2           6  11
   6        3          2          12  13
   7        3          2          10  13
   8        3          2           9  12
   9        3          2          11  13
  10        3          2          11  12
  11        3          1          14
  12        3          1          14
  13        3          1          14
  14        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     6       6    0    0    1
         2     6       0    5    0    1
         3     8       0    3    5    0
  3      1     3       0    6    0    5
         2     7       0    6    7    0
         3     8       8    0    0    2
  4      1     1       0   10    0    3
         2     2       1    0    7    0
         3     9       0    6    6    0
  5      1     3       2    0    0    7
         2     5       2    0    8    0
         3    10       2    0    0    6
  6      1     7       0   10    0    6
         2     7       9    0    6    0
         3     9       0   10    5    0
  7      1     2       4    0    3    0
         2     7       0    4    3    0
         3     7       4    0    0    2
  8      1     1       0   10    3    0
         2     8       0    7    2    0
         3    10       0    6    0    3
  9      1     5       0    3    8    0
         2     9       8    0    3    0
         3    10       6    0    0    4
 10      1     3       3    0    0    7
         2     4       0    4    6    0
         3    10       2    0    0    6
 11      1     5       0    5    5    0
         2     7       2    0    5    0
         3    10       0    4    3    0
 12      1     2       0    1    0    7
         2     4      10    0    0    7
         3    10       6    0    6    0
 13      1     4       0    5    3    0
         2     5       0    5    2    0
         3     7      10    0    1    0
 14      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   17   20   36   23
************************************************************************
