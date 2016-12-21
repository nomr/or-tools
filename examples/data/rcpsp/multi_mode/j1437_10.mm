************************************************************************
file with basedata            : md165_.bas
initial value random generator: 1850393436
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  16
horizon                       :  106
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     14      0       17        5       17
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3          10  13  14
   3        3          3           5   6   7
   4        3          3           6   9  11
   5        3          3          10  12  14
   6        3          1          15
   7        3          3           8  10  12
   8        3          3           9  13  14
   9        3          1          15
  10        3          1          11
  11        3          1          15
  12        3          1          13
  13        3          1          16
  14        3          1          16
  15        3          1          16
  16        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     1       5    5    7    8
         2     4       4    5    7    6
         3     5       4    4    7    4
  3      1     4       9   10    7    4
         2     5       7    9    7    4
         3    10       7    7    6    4
  4      1     3       4    5    6    5
         2     8       3    4    5    5
         3     9       2    4    3    4
  5      1     6       9    6    4    5
         2     8       6    6    3    4
         3    10       2    5    2    1
  6      1     3       5   10    8   10
         2     5       4    7    6    9
         3    10       1    6    4    7
  7      1     3       9    7    9    9
         2     4       7    6    7    8
         3     6       5    6    5    8
  8      1     6       6    7    6    7
         2     7       6    6    5    7
         3     8       5    6    1    5
  9      1     2      10    7    8    6
         2     4       7    5    6    6
         3     6       7    4    3    4
 10      1     2       7    4    8    8
         2     3       7    3    6    5
         3     4       5    3    5    1
 11      1     1      10    7    8    5
         2     2       7    5    8    4
         3     7       5    5    7    3
 12      1     5      10    4    7    2
         2     5       8    4    9    2
         3     5       9    4    5    3
 13      1     2       7    4    8    8
         2     4       7    4    8    6
         3     9       3    3    8    6
 14      1     1       8   10    8    7
         2     5       8    9    6    7
         3     7       8    7    4    7
 15      1     2       8    4    4    8
         2     8       7    4    3    8
         3    10       6    4    2    7
 16      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   13   11   72   71
************************************************************************