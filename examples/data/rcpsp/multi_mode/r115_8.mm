************************************************************************
file with basedata            : cr115_.bas
initial value random generator: 759916045
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  130
RESOURCES
  - renewable                 :  1   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       21        0       21
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           7  12  13
   3        3          2           6   7
   4        3          3           5   8  11
   5        3          2           9  12
   6        3          3           9  10  12
   7        3          2          14  16
   8        3          3           9  10  17
   9        3          2          13  16
  10        3          2          13  16
  11        3          1          15
  12        3          2          15  17
  13        3          1          14
  14        3          1          15
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0
  2      1     2       6    0    5
         2     8       5    0    5
         3     8       4    2    0
  3      1     2       5    9    0
         2     4       3    0    4
         3     5       2    0    3
  4      1     3       5    0    3
         2     6       5    6    0
         3    10       2    0    2
  5      1     4       3    8    0
         2     6       3    7    0
         3     8       3    4    0
  6      1     2       9    5    0
         2     7       8    5    0
         3     9       8    4    0
  7      1     4       6    5    0
         2     6       5    4    0
         3    10       3    0    6
  8      1     6       5    9    0
         2     9       4    9    0
         3    10       1    0    9
  9      1     5       6    0    9
         2     9       5    7    0
         3    10       2    0    7
 10      1     6       7    3    0
         2     8       6    0   10
         3    10       4    0    5
 11      1     6       2    0    5
         2     6       2    4    0
         3     7       2    0    4
 12      1     2       9    5    0
         2     4       6    3    0
         3     4       7    0    2
 13      1     3       7    0    2
         2     5       5    7    0
         3     9       2    7    0
 14      1     1       4    0    9
         2     3       4    0    4
         3     6       4    0    3
 15      1     1       4    8    0
         2     3       4    5    0
         3     8       2    0    8
 16      1     6       6    7    0
         2     8       3    0    9
         3     9       3    0    8
 17      1     5       2    0    3
         2     6       2    6    0
         3     7       1    0    2
 18      1     0       0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  N 1  N 2
   21   50   44
************************************************************************