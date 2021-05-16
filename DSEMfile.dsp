REM --------------------------------------------------------
REM Filename:  /home/chadwick/work/model/dsem/dasp/l1091fd.dsp 
REM Parameter file based upon complete anatomical data set
REM (including muscle architecture) from cadaver l1091r
REM measured in Leiden by Spoor, Klein Breteler and Minekus.
REM Last updated 17-Dec-2003 Ed Chadwick
REM -------------------------------------
REM brachioradialis corrected 21-9-2010, Dirkjan
REM  -------------------


REM --------------------------------------------------------
REM ------------  Definition of hinge joints  --------------
REM --------------------------------------------------------

REM The joints of the limb are defined in terms of HINGES,
REM and three perpendicular hinges define a ball joint. The
REM orientation of the thorax is fixed, making it the frame
REM of reference.
REM HINGE elnr or1 or2 axis
REM elnr: element number
REM or1 or2: orientation nodes
REM axis: direction of axis - x: 1 0 0  y: 0 1 0  z: 0 0 1

REM global thorax orientation:
HINGE  1  1  2  1  0  0
HINGE  2  2  3  0  1  0
HINGE  3  3  4  0  0  1
FIX  1  2 FIX  1  3 FIX  1  4

REM sternoclavicular joint:
HINGE  4  4  5  0  1  0
HINGE  5  5  6  0  0  1
HINGE  6  6  7  1  0  0
REM RLSE  4  1 RLSE  5  1
RLSE  6  1

REM acromioclavicular joint:
HINGE   7   7   8   0   1   0
HINGE   8   8   9   0   0   1
HINGE   9   9  10   1   0   0
REM RLSE   7   1
RLSE   8   1
RLSE   9   1

REM glenohumeral joint:
HINGE  10   4  11   1   0   0
HINGE  11  11  12   0   1   0
HINGE  12  12  13   0   0   1

REM humero-ulnar joint:
HINGE  13  13  14   0.8531   0.0183  -0.5108
HINGE  14  14  15   0   1   0
HINGE  15  15  16   0   0   1

REM ulnar-radial joint:
HINGE  16  16  17  -0.0604   0.9874   0.1465
HINGE  17  17  18   0   0   1
HINGE  18  18  19   0   1   0

REM radial-carpal joint:
HINGE  19  19  20   1   0   0
HINGE  20  20  21   0   1   0
HINGE  21  21  22   0   0   1

REM --------------------------------------------------------
REM -----------  Definition of multinode bodies  -----------
REM --------------------------------------------------------

REM MNODEDEF elnr pos or
REM elnr: element number for multinode body
REM pos or: position and orientation nodes

REM thorax (elementnr,position node,orientation node)
REM center of gravity is center of ellipsoid
MNODEDEF  22  23   4
X    23    0.00  -14.86    5.91

REM clavicle (elementnr,position node,orientation node)
MNODEDEF  23  24   7
X    24    8.89    1.22    4.23

REM scapula (elementnr,position node,orientation node)
MNODEDEF  24  25  10
X    25   12.94   -2.59   10.59

REM humerus (elementnr,position node,orientation node)
MNODEDEF  25  26  13
X    26   17.87   -9.67    6.54

REM ulna (elementnr,position node,orientation node)
MNODEDEF  26  27  16
X    27   19.53  -37.15    9.18

REM radius (elementnr,position node,orientation node)
MNODEDEF  27  28  19
X    28   18.85  -43.74    3.92

REM hand (elementnr,position node,orientation node)
MNODEDEF  28  29  22
X    29   18.22  -64.73   -0.75

REM Additional node for point of application of hand force.
REM N.B. it has the same coordinates as X  29
MNODE 28    30
X    30   18.22  -64.73   -0.75

REM position origin at the thorax:
MNODE  22     31
X    31    0.00    0.00    0.00

REM --------------------------------------------------------
REM -----------  Definition of joint positions  ------------
REM --------------------------------------------------------

REM MNODE elnr nodenr
REM elnr: element number of multinode element
REM nodenr: number of node to be attributed to that element

REM position sternoclavicular joint:
MNODE  22    32
MNODE  23    32
X    32    0.14   -1.52    0.28

REM position acromioclavicular joint:
MNODE  23    33
MNODE  24    33
X    33   17.66    1.43    7.31

REM position glenohumeral joint:
MNODE  24    34
MNODE  25    34
X    34   17.08   -1.92    6.55

REM centre of humeral head
MNODE  25    35
X    35   16.86   -1.75    6.51

REM mid-point articular surface glenoid
MNODE  24    36
X    36   15.14   -1.98    7.81

REM position humero-ulnar joint:
MNODE  25     37
MNODE  26     37
X    37   19.36  -30.80    9.02

REM position ulno-radial joint:
MNODE  26     38
MNODE  27     38
X    38   20.11  -32.27    6.87

REM position radio-carpal joint (mid-point styloids):
MNODE  27    39
MNODE  28    39
X    39   19.42  -55.36    1.70

REM scapulo-thoracic gliding plane:
REM The position nodes 42 and 43 at the ellipsoid, are the 
REM projections of the position nodes 40 and 41 at the scapula.
REM SURFPAR elnr nodenr mx my mz ax ay az
REM elnr: element number
REM nodenr: node number
REM mx my mz: coordinates of centre of ellipsoid
REM ax ay az: lengths of axes of the ellipsoid

MNODE  24     40
MNODE  24     41
MNODE  22     42
MNODE  22     43
SURFACE  29   42   40   23    4
SURFACE  30   43   41   23    4
SURFPAR  29    0.00  -14.86    5.91   14.70   20.79    9.44
SURFPAR  30    0.00  -14.86    5.91   14.70   20.79    9.44
X    40    6.21   -2.45   12.36
X    41    8.99  -12.76   13.33
X    42    9.99    9.99    9.99
X    43    9.99    9.99    9.99

REM --------------------------------------------------------
REM ------------  Definition of bony landmarks  ------------
REM --------------------------------------------------------

REM MNODE elnr nodenr
REM elnr: element number of multinode element
REM nodenr: number of node to be attributed to that element

REM In vivo palpated bony landmark at the thorax (SC):
REM temporarily taken from r2kr4
MNODE  22   44
X    44    1.97    0.93    1.37

REM In vivo palpated bony landmark at the scapula (AC):
MNODE  24   45
X    45   16.51    2.66    7.18

REM In vivo palpated bony landmark at the scapula (AA):
MNODE  24   46
X    46   18.26    0.75   10.56

REM In vivo palpated bony landmark at the scapula (TS):
MNODE  24   47
X    47    7.50   -1.17   15.60

REM In vivo palpated bony landmark at the scapula (AI):
MNODE  24   48
X    48   10.16  -12.62   15.67

REM In vivo palpated bony landmark at the humerus (epic. med.):
MNODE  25   49
X    49   15.66  -30.79   10.56

REM In vivo palpated bony landmark at the humerus (epic. lat.): 
MNODE  25   50
X    50   21.53  -30.21    7.15

REM In vivo palpated bony landmark at the ulna (olecranon):
MNODE  26   51
X    51   18.97  -30.23   10.85

REM In vivo palpated bony landmark at the ulna (styloid process):
MNODE  26   52
X    52   21.54  -55.71    3.39

REM In vivo palpated bony landmark at the radius (styloid process):
MNODE  27   53
X    53   17.29  -55.01    0.01

REM --------------------------------------------------------
REM --------------  Definition of ligaments  ---------------
REM --------------------------------------------------------

REM All ligaments are TRUSSES and are passive (that is, they
REM can only generate force as a result of extension).
REM TRUSS elnr pos1 pos2
REM elnr: element number of ligament
REM pos1 pos2: node number of origin and insertion points

REM  ------------- Coraco-clavicular ligaments -------------
REM  --------------------- (conoid) ------------------------

TRUSS      31   54   55
MNODE      23   54
MNODE      24   55
X          54   11.84    1.40    7.13
X          55   11.80    0.22    7.14

REM  ------------------- (trapezoid) -----------------------

TRUSS      32   56   57
RLSE       32    1
MNODE      23   56
MNODE      24   57
X          56   13.23    1.40    6.64
X          57   12.30    0.72    6.57

REM  ------------- Costo-clavicular ligaments --------------

TRUSS      33   58   59
RLSE       33    1
MNODE      22   58
MNODE      23   59
X          58    5.02   -0.18    2.38
X          59    5.09   -0.49    2.47

TRUSS      34   60   61
RLSE       34    1
MNODE      22   60
MNODE      23   61
X          60    3.84   -0.76    1.62
X          61    3.90   -0.81    2.05

TRUSS      35   62   63
RLSE       35    1
MNODE      22   62
MNODE      23   63
X          62    3.34   -1.25    1.80
X          63    2.92   -1.57    2.59

REM  ------------- Sterno-clavicular ligament --------------

TRUSS      36   64   65
RLSE       36    1
MNODE      22   64
MNODE      23   65
X          64    0.70   -0.20    0.84
X          65    1.89    0.70    2.69

TRUSS      37   66   67
RLSE       37    1
MNODE      22   66
MNODE      23   67
X          66    0.02   -0.05    1.75
X          67    1.89    0.70    2.69

REM  --------------- Gleno-humeral ligaments ---------------

TRUSS      38   68   69
RLSE       38    1
MNODE      24   68
MNODE      25   69
X          68   16.52   -2.45    8.83
X          69   18.06   -3.46    7.86

TRUSS      39   70   71
RLSE       39    1
MNODE      24   70
MNODE      25   71
X          70   15.19   -0.63    8.88
X          71   18.38    0.19    6.47

TRUSS      40   72   73
RLSE       40    1
MNODE      24   72
MNODE      25   73
X          72   13.68    0.57    5.30
X          73   17.79   -0.14    4.41

TRUSS      41   74   75
RLSE       41    1
MNODE      24   74
MNODE      25   75
X          74   14.29   -0.25    6.22
X          75   15.21   -2.09    5.20

TRUSS      42   76   77
RLSE       42    1
MNODE      24   76
MNODE      25   77
X          76   14.71   -2.61    6.48
X          77   15.88   -4.32    6.59

TRUSS      43   78   79
RLSE       43    1
MNODE      24   78
MNODE      25   79
X          78   14.71   -2.61    6.48
X          79   17.12   -5.01    7.92

REM --------------------------------------------------------
REM -----------  Definition of wrapping objects  -----------
REM --------------------------------------------------------

REM A number of geometrical surfaces are defined, each
REM representing a bony contour around which muscle CURVE
REM elements can wrap


REM ELLIPSO surfacenr mx my mz ax ay az pp po
REM mx, my, mz: coordinates of centre of ellipsoid
REM ax, ay, az: lengths of the axes of the ellipsoid
REM pp, po: position and orientation nodes

ELLIPSO  1   0.00 -14.86   5.91  14.70  20.79   9.44 23  4

REM BALL surfacenr mx my mz r pp po
REM mx, my, mz: coordinates of centre of ball
REM r: radius of the ball
REM pp, po: position and orientation nodes

BALL  2  17.19  -2.03   6.29   2.72 26 13
BALL  3  16.86  -1.75   6.51   2.31 26 13

REM CYLINDER surfacenr dx dy dz sx sy sz r pp po
REM dx, dy, dz: unit vectors in direction of axes
REM sx, sy, sz: coordinates of a point on the long axis
REM r: radius of the cylinder
REM pp, po: position and orientation nodes

CYLINDER  4  0.0602 -0.9949  0.0810  17.75  -9.22   6.49  1.00 26 13
CYLINDER  5  0.0993  0.9003  0.4239  19.92 -35.32   5.79  0.92 28 19
CYLINDER  6  0.8531  0.0183 -0.5108  19.36 -30.80   9.02  1.90 27 16
CYLINDER  7 -0.8531 -0.0183  0.5108  19.36 -30.80   9.02  1.50 27 16
CYLINDER  8  0.0186  0.9767  0.2136  19.79 -43.87   3.87  0.90 28 19
CYLINDER  9 -0.1157  0.9547  0.2740  20.77 -51.88   3.88  0.70 27 16
CYLINDER 10 -0.1481 -0.8839 -0.4436  19.28 -40.60   3.49  0.71 28 19

REM --------------------------------------------------------
REM -----------------  Definition of muscles  --------------
REM --------------------------------------------------------

REM There are two sorts of muscle elements: TRUSSES, which
REM have a straight line path between origin and insertion,
REM and CURVES, which wrap around surfaces (ELLIPS, BALL, 
REM CYLINDER). Muscles are all ACTIVE elements (that is,
REM they can generate force.)

REM TRUSS elnr node1 node2
REM elnr: element number
REM node1 node2: numbers of origin and insertion nodes

REM CURVE elnr node1 node2 node3 surfacenr mnode
REM elnr: element number
REM node1 node2: numbers of origin and insertion nodes
REM node3: contact point between muscle and wrapping object
REM surfacenr: no. of surface that defines wrapping object
REM mnode: multinode element to which node3 belongs

REM MUSPAR elnr PCSA mass optlen tenlen penangle
REM elnr: element number
REM optlen: optimum fibre length
REM tenlen: tendon length
REM PCSA: physiological cross-sectional area
REM penangle: pennation angle

REM ACTPAR elnr Tnex Tact Tdact
REM elnr : element number
REM Tnex : neural excitation time constant
REM Tact : activation time constant
REM Tdact: deactivation time constant

REM  ----------------- M. Trapezius (scap) -----------------

TRUSS      44   80   81
ACTIVE     44    1
MNODE      22   80
MNODE      24   81
X          80   -0.81    5.34   11.41
X          81   16.02    2.07    9.82
MUSPAR     44    1.18   19.54   14.46    0.30    0.00
ACTPAR     44  0.0344  0.0144  0.0535

TRUSS      45   82   83
ACTIVE     45    1
MNODE      22   82
MNODE      24   83
X          82   -0.80    5.05   11.53
X          83   14.89    1.74   11.65
MUSPAR     45    1.68   21.61   11.27    2.70    0.00
ACTPAR     45  0.0344  0.0144  0.0535

TRUSS      46   84   85
ACTIVE     46    1
MNODE      22   84
MNODE      24   85
X          84   -0.43    4.25   11.78
X          85   12.97    1.11   12.77
MUSPAR     46    1.99   24.19   10.70    5.40    0.00
ACTPAR     46  0.0344  0.0144  0.0535

TRUSS      47   86   87
ACTIVE     47    1
MNODE      22   86
MNODE      24   87
X          86   -0.37    3.72   12.14
X          87   11.84    0.81   13.33
MUSPAR     47    1.38   14.94    9.52    5.30    0.00
ACTPAR     47  0.0344  0.0144  0.0535

TRUSS      48   88   89
ACTIVE     48    1
MNODE      22   88
MNODE      24   89
X          88   -0.31    2.61   12.50
X          89   10.93    0.81   13.10
MUSPAR     48    1.22   12.80    9.24    3.50    0.00
ACTPAR     48  0.0344  0.0144  0.0535

TRUSS      49   90   91
ACTIVE     49    1
MNODE      22   90
MNODE      24   91
X          90   -0.43   -0.02   13.63
X          91   12.14    0.40   13.65
MUSPAR     49    1.01   10.25    8.93    3.30    0.00
ACTPAR     49  0.0344  0.0144  0.0535

TRUSS      50   92   93
ACTIVE     50    1
MNODE      22   92
MNODE      24   93
X          92   -0.16   -3.39   14.69
X          93   10.93    0.81   13.10
MUSPAR     50    0.97    9.58    8.68    3.60    0.00
ACTPAR     50  0.0344  0.0144  0.0535

TRUSS      51   94   95
ACTIVE     51    1
MNODE      22   94
MNODE      24   95
X          94    0.37   -6.29   15.11
X          95   11.41    0.42   13.77
MUSPAR     51    1.38   12.12    7.70    4.80    0.00
ACTPAR     51  0.0344  0.0144  0.0535

TRUSS      52   96   97
ACTIVE     52    1
MNODE      22   96
MNODE      24   97
X          96    0.66  -11.09   15.22
X          97    9.43    0.20   13.91
MUSPAR     52    1.23   14.16   10.11    3.40    0.00
ACTPAR     52  0.0344  0.0144  0.0535

TRUSS      53   98   99
ACTIVE     53    1
MNODE      22   98
MNODE      24   99
X          98    1.02  -14.79   15.40
X          99   10.14   -0.23   14.12
MUSPAR     53    0.81   11.58   12.64    3.50    0.00
ACTPAR     53  0.0344  0.0144  0.0535

TRUSS      54  100  101
ACTIVE     54    1
MNODE      22  100
MNODE      24  101
X         100    1.35  -17.94   14.77
X         101   10.83   -0.22   14.06
MUSPAR     54    0.92   14.07   13.55    3.10    0.00
ACTPAR     54  0.0344  0.0144  0.0535

REM  ----------------- M. Trapezius (clav) -----------------

TRUSS      55  102  103
ACTIVE     55    1
MNODE      22  102
MNODE      23  103
X         102   -0.97   12.94   11.24
X         103   11.75    2.62    6.22
MUSPAR     55    0.97   17.12   15.47    4.70    0.00
ACTPAR     55  0.0344  0.0144  0.0535

TRUSS      56  104  105
ACTIVE     56    1
MNODE      22  104
MNODE      23  105
X         104   -1.06    7.17   10.66
X         105   14.21    2.71    7.21
MUSPAR     56    0.47    9.69   16.80    4.20    0.00
ACTPAR     56  0.0269  0.0069  0.0347

REM  ----------------- M. Levator Scapulae -----------------

TRUSS      57  106  107
ACTIVE     57    1
MNODE      22  106
MNODE      24  107
X         106    3.88   14.79    5.72
X         107    7.14   -0.01   14.15
MUSPAR     57    0.96   17.31   15.78    1.90    0.00
ACTPAR     57  0.0269  0.0069  0.0347

TRUSS      58  108  109
ACTIVE     58    1
MNODE      22  108
MNODE      24  109
X         108    2.91   12.54    6.07
X         109    7.22    1.23   13.19
MUSPAR     58    1.04   15.44   13.02    1.80    0.00
ACTPAR     58  0.0269  0.0069  0.0347

REM  ----------------- M. Pectoralis Minor------------------

TRUSS      59  110  111
ACTIVE     59    1
MNODE      22  110
MNODE      24  111
X         110    5.13   -6.06   -1.80
X         111   12.39   -0.25    4.49
MUSPAR     59    0.47    4.07    7.65    5.10    0.00
ACTPAR     59  0.0350  0.0150  0.0550

TRUSS      60  112  113
ACTIVE     60    1
MNODE      22  112
MNODE      24  113
X         112    5.85   -9.33   -2.67
X         113   12.39   -0.25    4.49
MUSPAR     60    1.07   13.23   10.86    4.10    0.00
ACTPAR     60  0.0350  0.0150  0.0550

TRUSS      61  114  115
ACTIVE     61    1
MNODE      22  114
MNODE      24  115
X         114    9.65   -9.47   -2.03
X         115   12.77   -0.81    4.08
MUSPAR     61    1.07   13.03   10.75    2.90    0.00
ACTPAR     61  0.0350  0.0150  0.0550

TRUSS      62  116  117
ACTIVE     62    1
MNODE      22  116
MNODE      24  117
X         116    8.86  -11.38   -2.43
X         117   13.28   -1.55    3.80
MUSPAR     62    0.46    7.20   13.81    2.60    0.00
ACTPAR     62  0.0350  0.0150  0.0550

REM  ------------------- M. Rhomboideus --------------------

TRUSS      63  118  119
ACTIVE     63    1
MNODE      22  118
MNODE      24  119
X         118   -0.91    6.27   10.80
X         119    7.39   -1.65   14.40
MUSPAR     63    0.51    5.75    9.86    1.50    0.00
ACTPAR     63  0.0284  0.0084  0.0385

TRUSS      64  120  121
ACTIVE     64    1
MNODE      22  120
MNODE      24  121
X         120   -0.76    5.06   11.51
X         121    8.15   -8.71   15.50
MUSPAR     64    0.92   11.30   10.77    6.60    0.00
ACTPAR     64  0.0284  0.0084  0.0385

TRUSS      65  122  123
ACTIVE     65    1
MNODE      22  122
MNODE      24  123
X         122    0.54    3.17   12.52
X         123    8.16   -9.25   15.62
MUSPAR     65    1.42   20.34   12.59    3.20    0.00
ACTPAR     65  0.0284  0.0084  0.0385

TRUSS      66  124  125
ACTIVE     66    1
MNODE      22  124
MNODE      24  125
X         124   -0.28    0.68   13.48
X         125    8.43  -10.43   15.65
MUSPAR     66    0.82   11.76   12.67    3.10    0.00
ACTPAR     66  0.0269  0.0069  0.0347

TRUSS      67  126  127
ACTIVE     67    1
MNODE      22  126
MNODE      24  127
X         126    0.05   -2.00   14.49
X         127    8.66  -11.59   15.44
MUSPAR     67    0.67    8.85   11.70    4.00    0.00
ACTPAR     67  0.0269  0.0069  0.0347

REM  ----------------- M. Serratus anterior ----------------

CURVE      68  128  129  130   1   22
ACTIVE     68    1
MNODE      24  128
MNODE      22  129
MNODE      22  130
X         128    8.96  -12.12   15.71
X         129   13.80  -20.98    3.53
X         130    9.99    9.99    9.99
MUSPAR     68    0.61   11.39   16.35    2.50    0.00
ACTPAR     68  0.0269  0.0069  0.0347

CURVE      69  131  132  133   1   22
ACTIVE     69    1
MNODE      24  131
MNODE      22  132
MNODE      22  133
X         131    8.99  -12.09   15.30
X         132   13.27  -18.84    1.49
X         133    9.99    9.99    9.99
MUSPAR     69    1.10   20.83   16.67    0.90    0.00
ACTPAR     69  0.0269  0.0069  0.0347

CURVE      70  134  135  136   1   22
ACTIVE     70    1
MNODE      24  134
MNODE      22  135
MNODE      22  136
X         134    9.28  -12.12   14.79
X         135   12.42  -15.90    0.24
X         136    9.99    9.99    9.99
MUSPAR     70    1.05   19.25   16.22    0.70    0.00
ACTPAR     70  0.0269  0.0069  0.0347

CURVE      71  137  138  139   1   22
ACTIVE     71    1
MNODE      24  137
MNODE      22  138
MNODE      22  139
X         137    9.33  -11.59   14.56
X         138   12.31  -12.21   -0.31
X         139    9.99    9.99    9.99
MUSPAR     71    1.10   16.29   12.89    0.00    0.00
ACTPAR     71  0.0269  0.0069  0.0347

CURVE      72  140  141  142   1   22
ACTIVE     72    1
MNODE      24  140
MNODE      22  141
MNODE      22  142
X         140    9.11  -11.04   14.54
X         141   11.94   -8.59    0.41
X         142    9.99    9.99    9.99
MUSPAR     72    0.64    9.09   12.59    1.10    0.00
ACTPAR     72  0.0428  0.0264  0.0835

CURVE      73  143  144  145   1   22
ACTIVE     73    1
MNODE      24  143
MNODE      22  144
MNODE      22  145
X         143    9.38  -10.58   14.63
X         144   11.24   -4.28    1.99
X         145    9.99    9.99    9.99
MUSPAR     73    0.97   13.45   12.20    0.00    0.00
ACTPAR     73  0.0428  0.0264  0.0835

CURVE      74  146  147  148   1   22
ACTIVE     74    1
MNODE      24  146
MNODE      22  147
MNODE      22  148
X         146    8.18   -6.16   14.82
X         147   10.01   -0.77    3.29
X         148    9.99    9.99    9.99
MUSPAR     74    0.47    6.09   11.33    0.90    0.00
ACTPAR     74  0.0428  0.0264  0.0835

CURVE      75  149  150  151   1   22
ACTIVE     75    1
MNODE      24  149
MNODE      22  150
MNODE      22  151
X         149    7.68   -3.26   14.61
X         150   10.10    0.23    5.52
X         151    9.99    9.99    9.99
MUSPAR     75    0.76    7.29    8.45    1.10    0.00
ACTPAR     75  0.0428  0.0264  0.0835

CURVE      76  152  153  154   1   22
ACTIVE     76    1
MNODE      24  152
MNODE      22  153
MNODE      22  154
X         152    7.09   -0.26   13.77
X         153    9.80    0.62    5.46
X         154    9.99    9.99    9.99
MUSPAR     76    0.79    7.24    8.00    0.70    0.00
ACTPAR     76  0.0428  0.0264  0.0835

CURVE      77  155  156  157   1   22
ACTIVE     77    1
MNODE      24  155
MNODE      22  156
MNODE      22  157
X         155    7.26    0.93   12.61
X         156    9.44    1.09    5.95
X         157    9.99    9.99    9.99
MUSPAR     77    0.63    4.76    6.60    0.50    0.00
ACTPAR     77  0.0428  0.0264  0.0835

CURVE      78  158  159  160   1   22
ACTIVE     78    1
MNODE      24  158
MNODE      22  159
MNODE      22  160
X         158    7.42    1.31   11.81
X         159    9.80    0.62    5.46
X         160    9.99    9.99    9.99
MUSPAR     78    0.23    2.29    8.85    0.00    0.00
ACTPAR     78  0.0428  0.0264  0.0835

CURVE      79  161  162  163   1   22
ACTIVE     79    1
MNODE      24  161
MNODE      22  162
MNODE      22  163
X         161    7.93    1.95   10.17
X         162   10.05    0.09    4.70
X         163    9.99    9.99    9.99
MUSPAR     79    1.12   12.12    9.45    0.00    0.00
ACTPAR     79  0.0428  0.0264  0.0835

REM  ----------------- M. Deltoideus, scap. ----------------

CURVE      80  164  165  166   2   25
ACTIVE     80    1
MNODE      24  164
MNODE      25  165
MNODE      25  166
X         164   10.84   -0.66   13.95
X         165   19.29  -12.90    7.57
X         166    9.99    9.99    9.99
MUSPAR     80    2.89   37.03   11.28    8.00    5.00
ACTPAR     80  0.0428  0.0264  0.0835

CURVE      81  167  168  169   2   25
ACTIVE     81    1
MNODE      24  167
MNODE      25  168
MNODE      25  169
X         167   13.72    0.58   12.74
X         168   19.20  -11.46    7.01
X         169    9.99    9.99    9.99
MUSPAR     81    2.11   22.69    9.49    7.60    5.00
ACTPAR     81  0.0428  0.0264  0.0835

CURVE      82  170  171  172   2   25
ACTIVE     82    1
MNODE      24  170
MNODE      25  171
MNODE      25  172
X         170   16.81    1.07   11.02
X         171   19.20  -11.46    7.01
X         172    9.99    9.99    9.99
MUSPAR     82    4.46   42.14    8.33    6.20    5.00
ACTPAR     82  0.0428  0.0264  0.0835

CURVE      83  173  174  175   2   25
ACTIVE     83    1
MNODE      24  173
MNODE      25  174
MNODE      25  175
X         173   17.88    0.21   10.26
X         174   19.09  -10.30    6.80
X         175    9.99    9.99    9.99
MUSPAR     83    1.17    8.88    6.66    4.50    5.00
ACTPAR     83  0.0428  0.0264  0.0835

CURVE      84  176  177  178   2   25
ACTIVE     84    1
MNODE      24  176
MNODE      25  177
MNODE      25  178
X         176   18.70    0.86    8.44
X         177   18.98   -9.65    6.40
X         178    9.99    9.99    9.99
MUSPAR     84    1.20    8.91    6.56    3.50    5.00
ACTPAR     84  0.0267  0.0067  0.0343

CURVE      85  179  180  181   2   25
ACTIVE     85    1
MNODE      24  179
MNODE      25  180
MNODE      25  181
X         179   18.28    1.28    9.94
X         180   19.41  -12.69    7.18
X         181    9.99    9.99    9.99
MUSPAR     85    2.85   24.85    7.67    6.70    5.00
ACTPAR     85  0.0267  0.0067  0.0343

CURVE      86  182  183  184   2   25
ACTIVE     86    1
MNODE      24  182
MNODE      25  183
MNODE      25  184
X         182   18.64    0.82    9.37
X         183   19.40  -14.96    7.27
X         184    9.99    9.99    9.99
MUSPAR     86    1.49   12.75    7.54    8.20    5.00
ACTPAR     86  0.0267  0.0067  0.0343

CURVE      87  185  186  187   2   25
ACTIVE     87    1
MNODE      24  185
MNODE      25  186
MNODE      25  187
X         185   18.67    1.40    8.31
X         186   19.41  -12.69    7.18
X         187    9.99    9.99    9.99
MUSPAR     87    2.15   17.30    7.10    6.50    5.00
ACTPAR     87  0.0267  0.0067  0.0343

CURVE      88  188  189  190   2   25
ACTIVE     88    1
MNODE      24  188
MNODE      25  189
MNODE      25  190
X         188   18.59    1.23    7.70
X         189   19.06  -13.64    6.15
X         190    9.99    9.99    9.99
MUSPAR     88    2.86   23.78    7.32    7.10    5.00
ACTPAR     88  0.0267  0.0067  0.0343

CURVE      89  191  192  193   2   25
ACTIVE     89    1
MNODE      24  191
MNODE      25  192
MNODE      25  193
X         191   18.40    1.20    6.80
X         192   18.93  -12.51    5.97
X         193    9.99    9.99    9.99
MUSPAR     89    4.45   37.90    7.48    6.40    5.00
ACTPAR     89  0.0267  0.0067  0.0343

CURVE      90  194  195  196   2   25
ACTIVE     90    1
MNODE      24  194
MNODE      25  195
MNODE      25  196
X         194   17.63    1.35    5.81
X         195   18.71  -11.18    5.65
X         196    9.99    9.99    9.99
MUSPAR     90    2.39   20.12    7.37    4.80    5.00
ACTPAR     90  0.0303  0.0097  0.0418

REM  ----------------- M. Deltoideus, clav. ----------------

CURVE      91  197  198  199   2   25
ACTIVE     91    1
MNODE      23  197
MNODE      25  198
MNODE      25  199
X         197   13.81    2.19    5.88
X         198   18.71  -11.18    5.65
X         199    9.99    9.99    9.99
MUSPAR     91    1.28   12.17    8.36    6.20    5.00
ACTPAR     91  0.0303  0.0097  0.0418

CURVE      92  200  201  202   2   25
ACTIVE     92    1
MNODE      23  200
MNODE      25  201
MNODE      25  202
X         200   11.61    2.46    5.40
X         201   18.47  -13.85    5.74
X         202    9.99    9.99    9.99
MUSPAR     92    1.60   17.01    9.40    8.80    5.00
ACTPAR     92  0.0303  0.0097  0.0418

CURVE      93  203  204  205   2   25
ACTIVE     93    1
MNODE      23  203
MNODE      25  204
MNODE      25  205
X         203   12.28    2.17    5.21
X         204   18.58  -11.90    5.68
X         205    9.99    9.99    9.99
MUSPAR     93    1.05    9.83    8.24    6.70    5.00
ACTPAR     93  0.0303  0.0097  0.0418

CURVE      94  206  207  208   2   25
ACTIVE     94    1
MNODE      23  206
MNODE      25  207
MNODE      25  208
X         206   12.12    1.56    5.16
X         207   18.47  -13.85    5.74
X         208    9.99    9.99    9.99
MUSPAR     94    1.12   12.59    9.91    7.30    5.00
ACTPAR     94  0.0303  0.0097  0.0418

REM ------------------ M. Coracobrachialis -----------------

TRUSS      95  209  210
ACTIVE     95    1
MNODE      24  209
MNODE      25  210
X         209   14.58   -0.99    3.97
X         210   17.24  -16.56    7.19
MUSPAR     95    2.01   15.06    6.60    9.20    0.00
ACTPAR     95  0.0303  0.0097  0.0418

TRUSS      96  211  212
ACTIVE     96    1
MNODE      24  211
MNODE      25  212
X         211   14.13   -1.72    4.03
X         212   17.20  -18.35    8.10
MUSPAR     96    1.48   11.51    6.83   10.40    0.00
ACTPAR     96  0.0261  0.0061  0.0327

TRUSS      97  213  214
ACTIVE     97    1
MNODE      24  213
MNODE      25  214
X         213   14.22   -1.03    3.47
X         214   17.26  -19.29    7.73
MUSPAR     97    1.14    9.39    7.27   11.30    0.00
ACTPAR     97  0.0261  0.0061  0.0327

REM  ------------------ M. Infraspinatus -------------------

CURVE      98  215  216  217   3   25
ACTIVE     98    1
MNODE      24  215
MNODE      25  216
MNODE      25  217
X         215   12.82   -4.52   11.49
X         216   19.38   -0.81    6.57
X         217    9.99    9.99    9.99
MUSPAR     98    2.72   19.61    6.33    3.80    0.00
ACTPAR     98  0.0261  0.0061  0.0327

CURVE      99  218  219  220   3   25
ACTIVE     99    1
MNODE      24  218
MNODE      25  219
MNODE      25  220
X         218    8.76  -10.31   16.17
X         219   18.93   -0.25    6.11
X         220    9.99    9.99    9.99
MUSPAR     99    2.75   22.45    7.19   10.70    0.00
ACTPAR     99  0.0261  0.0061  0.0327

CURVE     100  221  222  223   3   25
ACTIVE    100    1
MNODE      24  221
MNODE      25  222
MNODE      25  223
X         221   10.01   -8.09   15.30
X         222   18.93   -0.25    6.11
X         223    9.99    9.99    9.99
MUSPAR    100    1.94   14.88    6.77    8.40    0.00
ACTPAR    100  0.0261  0.0061  0.0327

CURVE     101  224  225  226   3   25
ACTIVE    101    1
MNODE      24  224
MNODE      25  225
MNODE      25  226
X         224    9.38   -5.86   15.14
X         225   18.72    0.06    6.21
X         226    9.99    9.99    9.99
MUSPAR    101    2.07   16.31    6.93    7.10    0.00
ACTPAR    101  0.0261  0.0061  0.0327

CURVE     102  227  228  229   3   25
ACTIVE    102    1
MNODE      24  227
MNODE      25  228
MNODE      25  229
X         227    8.81   -2.70   14.00
X         228   18.72    0.06    6.21
X         229    9.99    9.99    9.99
MUSPAR    102    3.02   24.14    6.98    5.00    0.00
ACTPAR    102  0.0293  0.0093  0.0407

CURVE     103  230  231  232   3   25
ACTIVE    103    1
MNODE      24  230
MNODE      25  231
MNODE      25  232
X         230   11.07   -0.57   13.98
X         231   19.09   -0.56    6.22
X         232    9.99    9.99    9.99
MUSPAR    103    1.82   15.64    7.53    3.50    0.00
ACTPAR    103  0.0293  0.0093  0.0407

REM  ------------------ M. Teres minor ---------------------

TRUSS     104  233  234
ACTIVE    104    1
MNODE      24  233
MNODE      25  234
X         233   13.95   -6.81   11.78
X         234   19.79   -2.52    6.09
MUSPAR    104    1.22    7.14    5.01    4.90    0.00
ACTPAR    104  0.0293  0.0093  0.0407

TRUSS     105  235  236
ACTIVE    105    1
MNODE      24  235
MNODE      25  236
X         235   13.40   -7.15   12.90
X         236   19.92   -1.95    5.86
MUSPAR    105    1.95   12.21    5.50    5.10    0.00
ACTPAR    105  0.0293  0.0093  0.0407

TRUSS     106  237  238
ACTIVE    106    1
MNODE      24  237
MNODE      25  238
X         237   14.95   -4.16   10.72
X         238   19.79   -2.52    6.09
MUSPAR    106    1.80   10.41    5.06    1.80    0.00
ACTPAR    106  0.0293  0.0093  0.0407

REM  ------------------- M. Teres major --------------------

CURVE     107  239  240  241   4   25
ACTIVE    107    1
MNODE      24  239
MNODE      25  240
MNODE      25  241
X         239   11.87  -11.08   13.29
X         240   16.44   -8.54    6.56
X         241    9.99    9.99    9.99
MUSPAR    107    1.65   26.43   14.11    0.60    0.00
ACTPAR    107  0.0293  0.0093  0.0407

CURVE     108  242  243  244   4   25
ACTIVE    108    1
MNODE      24  242
MNODE      25  243
MNODE      25  244
X         242   10.75  -12.04   14.19
X         243   16.81  -10.40    6.55
X         244    9.99    9.99    9.99
MUSPAR    108    0.85   15.49   15.95    1.20    0.00
ACTPAR    108  0.0276  0.0080  0.0376

CURVE     109  245  246  247   4   25
ACTIVE    109    1
MNODE      24  245
MNODE      25  246
MNODE      25  247
X         245   11.79   -9.55   14.61
X         246   16.72   -9.81    6.59
X         247    9.99    9.99    9.99
MUSPAR    109    2.00   34.81   15.26    1.50    0.00
ACTPAR    109  0.0276  0.0080  0.0376

CURVE     110  248  249  250   4   25
ACTIVE    110    1
MNODE      24  248
MNODE      25  249
MNODE      25  250
X         248   12.47  -10.01   13.12
X         249   16.25   -6.98    6.35
X         250    9.99    9.99    9.99
MUSPAR    110    1.58   19.71   10.93    3.40    0.00
ACTPAR    110  0.0276  0.0080  0.0376

REM  ------------------ M. Supraspinatus -------------------

CURVE     111  251  252  253   3   25
ACTIVE    111    1
MNODE      24  251
MNODE      25  252
MNODE      25  253
X         251   12.05   -0.08   11.39
X         252   19.16   -0.63    5.53
X         253    9.99    9.99    9.99
MUSPAR    111    1.20    7.40    5.41    1.70    0.00
ACTPAR    111  0.0276  0.0080  0.0376

CURVE     112  254  255  256   3   25
ACTIVE    112    1
MNODE      24  254
MNODE      25  255
MNODE      25  256
X         254   12.44    0.81   12.40
X         255   19.16   -0.63    5.53
X         256    9.99    9.99    9.99
MUSPAR    112    1.13    7.56    5.91    2.50    0.00
ACTPAR    112  0.0276  0.0080  0.0376

CURVE     113  257  258  259   3   25
ACTIVE    113    1
MNODE      24  257
MNODE      25  258
MNODE      25  259
X         257    8.41    1.06   12.19
X         258   17.37   -0.13    4.60
X         259    9.99    9.99    9.99
MUSPAR    113    2.58   16.51    5.64    5.20    0.00
ACTPAR    113  0.0276  0.0080  0.0376

CURVE     114  260  261  262   3   25
ACTIVE    114    1
MNODE      24  260
MNODE      25  261
MNODE      25  262
X         260    9.62    1.25    9.94
X         261   17.37   -0.13    4.60
X         262    9.99    9.99    9.99
MUSPAR    114    1.30    8.19    5.54    3.10    0.00
ACTPAR    114  0.0318  0.0118  0.0470

REM  ------------------ M. Subscapularis -------------------

CURVE     115  263  264  265   3   25
ACTIVE    115    1
MNODE      24  263
MNODE      25  264
MNODE      25  265
X         263   12.04   -1.76   11.11
X         264   15.79   -0.46    4.90
X         265    9.99    9.99    9.99
MUSPAR    115    0.44    2.81    5.56    2.80    0.00
ACTPAR    115  0.0318  0.0118  0.0470

CURVE     116  266  267  268   3   25
ACTIVE    116    1
MNODE      24  266
MNODE      25  267
MNODE      25  268
X         266    9.41    0.31   11.49
X         267   15.90   -0.84    4.60
X         268    9.99    9.99    9.99
MUSPAR    116    0.78    5.75    6.49    4.40    0.00
ACTPAR    116  0.0318  0.0118  0.0470

CURVE     117  269  270  271   3   25
ACTIVE    117    1
MNODE      24  269
MNODE      25  270
MNODE      25  271
X         269    8.57   -2.49   13.70
X         270   15.79   -0.46    4.90
X         271    9.99    9.99    9.99
MUSPAR    117    2.64   20.21    6.76    5.90    5.00
ACTPAR    117  0.0318  0.0118  0.0470

CURVE     118  272  273  274   3   25
ACTIVE    118    1
MNODE      24  272
MNODE      25  273
MNODE      25  274
X         272   10.36   -5.11   13.87
X         273   15.85   -1.52    4.33
X         274    9.99    9.99    9.99
MUSPAR    118    2.74   23.76    7.44    5.50    5.00
ACTPAR    118  0.0318  0.0118  0.0470

CURVE     119  275  276  277   3   25
ACTIVE    119    1
MNODE      24  275
MNODE      25  276
MNODE      25  277
X         275   11.01   -6.37   13.25
X         276   16.20   -1.30    4.14
X         277    9.99    9.99    9.99
MUSPAR    119    1.14   10.33    7.97    6.60    0.00
ACTPAR    119  0.0318  0.0118  0.0470

CURVE     120  278  279  280   3   25
ACTIVE    120    1
MNODE      24  278
MNODE      25  279
MNODE      25  280
X         278   10.13   -8.74   14.86
X         279   15.84   -1.96    4.02
X         280    9.99    9.99    9.99
MUSPAR    120    1.49   12.92    7.62    7.70    0.00
ACTPAR    120  0.0302  0.0098  0.0421

CURVE     121  281  282  283   3   25
ACTIVE    121    1
MNODE      24  281
MNODE      25  282
MNODE      25  283
X         281   10.69  -10.24   14.06
X         282   15.55   -2.09    4.36
X         283    9.99    9.99    9.99
MUSPAR    121    1.62   15.13    8.20    7.90    0.00
ACTPAR    121  0.0302  0.0098  0.0421

CURVE     122  284  285  286   3   25
ACTIVE    122    1
MNODE      24  284
MNODE      25  285
MNODE      25  286
X         284   12.55   -6.97   11.78
X         285   15.55   -2.09    4.36
X         286    9.99    9.99    9.99
MUSPAR    122    0.61    5.32    7.65    4.00    0.00
ACTPAR    122  0.0282  0.0071  0.0353

CURVE     123  287  288  289   3   25
ACTIVE    123    1
MNODE      24  287
MNODE      25  288
MNODE      25  289
X         287   12.35   -9.69   13.01
X         288   15.38   -2.52    4.89
X         289    9.99    9.99    9.99
MUSPAR    123    2.22   18.20    7.21    5.90    0.00
ACTPAR    123  0.0282  0.0071  0.0353

CURVE     124  290  291  292   3   25
ACTIVE    124    1
MNODE      24  290
MNODE      25  291
MNODE      25  292
X         290   14.27   -5.53   10.72
X         291   15.76   -3.77    5.71
X         292    9.99    9.99    9.99
MUSPAR    124    0.47    3.61    6.76    1.00    0.00
ACTPAR    124  0.0359  0.0159  0.0572

CURVE     125  293  294  295   3   25
ACTIVE    125    1
MNODE      24  293
MNODE      25  294
MNODE      25  295
X         293   14.71   -4.60    9.57
X         294   15.85   -4.30    6.33
X         295    9.99    9.99    9.99
MUSPAR    125    0.16    1.15    6.43    0.00    0.00
ACTPAR    125  0.0359  0.0159  0.0572

REM  ----------------- M. Latissimus dorsi -----------------

CURVE     133  317  318  319   4   25
ACTIVE    133    1
MNODE      22  317
MNODE      25  318
MNODE      25  319
X         317    0.98  -12.60   15.26
X         318   16.53   -5.86    5.26
X         319    9.99    9.99    9.99
MUSPAR    133    0.56   14.98   23.43    9.00    0.00
ACTPAR    133  0.0334  0.0120  0.0476

CURVE     134  320  321  322   4   25
ACTIVE    134    1
MNODE      22  320
MNODE      25  321
MNODE      25  322
X         320    1.30  -19.67   14.82
X         321   16.65   -6.51    5.31
X         322    9.99    9.99    9.99
MUSPAR    134    0.88   28.83   28.57    8.30    0.00
ACTPAR    134  0.0334  0.0120  0.0476

CURVE     135  323  324  325   4   25
ACTIVE    135    1
MNODE      22  323
MNODE      25  324
MNODE      25  325
X         323    1.16  -25.15   13.92
X         324   16.65   -6.51    5.31
X         325    9.99    9.99    9.99
MUSPAR    135    1.29   43.05   29.51   10.50    0.00
ACTPAR    135  0.0334  0.0120  0.0476

CURVE     136  326  327  328   4   25
ACTIVE    136    1
MNODE      22  326
MNODE      25  327
MNODE      25  328
X         326    2.11  -31.09   12.80
X         327   16.53   -5.86    5.26
X         328    9.99    9.99    9.99
MUSPAR    136    0.96   35.15   32.06   12.00    0.00
ACTPAR    136  0.0334  0.0120  0.0476

CURVE     137  329  330  331   4   25
ACTIVE    137    1
MNODE      22  329
MNODE      25  330
MNODE      25  331
X         329    7.92  -30.84    9.92
X         330   16.53   -5.86    5.26
X         331    9.99    9.99    9.99
MUSPAR    137    0.88   31.57   31.29    7.20    0.00
ACTPAR    137  0.0334  0.0120  0.0476

CURVE     138  332  333  334   4   25
ACTIVE    138    1
MNODE      22  332
MNODE      25  333
MNODE      25  334
X         332   10.42  -29.78    8.51
X         333   16.65   -6.51    5.31
X         334    9.99    9.99    9.99
MUSPAR    138    1.05   40.69   34.02    6.90    0.00
ACTPAR    138  0.0334  0.0120  0.0476

REM  -------------- M. Pectoralis major, thor. -------------

CURVE     139  335  336  337   4   25
ACTIVE    139    1
MNODE      22  335
MNODE      25  336
MNODE      25  337
X         335    6.12  -15.74   -3.21
X         336   17.46   -8.36    5.05
X         337    9.99    9.99    9.99
MUSPAR    139    1.25   26.92   18.84    3.60    0.00
ACTPAR    139  0.0318  0.0118  0.0470

CURVE     140  338  339  340   4   25
ACTIVE    140    1
MNODE      22  338
MNODE      25  339
MNODE      25  340
X         338    2.79  -14.03   -3.92
X         339   17.55   -8.92    5.09
X         340    9.99    9.99    9.99
MUSPAR    140    1.18   24.48   18.30    4.30    0.00
ACTPAR    140  0.0302  0.0098  0.0421

CURVE     141  341  342  343   4   25
ACTIVE    141    1
MNODE      22  341
MNODE      25  342
MNODE      25  343
X         341    0.84  -12.23   -3.48
X         342   17.58   -9.42    5.16
X         343    9.99    9.99    9.99
MUSPAR    141    1.65   34.75   18.53    5.30    0.00
ACTPAR    141  0.0302  0.0098  0.0421

CURVE     142  344  345  346   4   25
ACTIVE    142    1
MNODE      22  344
MNODE      25  345
MNODE      25  346
X         344    1.32  -10.06   -3.72
X         345   17.52   -8.48    5.00
X         346    9.99    9.99    9.99
MUSPAR    142    1.57   33.01   18.33    2.80    0.00
ACTPAR    142  0.0282  0.0071  0.0353

CURVE     143  347  348  349   4   25
ACTIVE    143    1
MNODE      22  347
MNODE      25  348
MNODE      25  349
X         347    0.71   -4.18   -1.90
X         348   17.44   -7.48    4.87
X         349    9.99    9.99    9.99
MUSPAR    143    1.33   22.73   15.00    2.60    0.00
ACTPAR    143  0.0282  0.0071  0.0353

CURVE     144  350  351  352   4   25
ACTIVE    144    1
MNODE      22  350
MNODE      25  351
MNODE      25  352
X         350    1.16   -2.27   -0.61
X         351   17.52   -8.48    5.00
X         352    9.99    9.99    9.99
MUSPAR    144    1.98   32.43   14.49    3.60    0.00
ACTPAR    144  0.0359  0.0159  0.0572

REM  -------------- M. Pectoralis major, clav --------------

CURVE     145  353  354  355   4   25
ACTIVE    145    1
MNODE      23  353
MNODE      25  354
MNODE      25  355
X         353    6.45    0.24    1.04
X         354   17.81  -10.89    5.33
X         355    9.99    9.99    9.99
MUSPAR    145    1.79   27.69   13.63    1.70    0.00
ACTPAR    145  0.0359  0.0159  0.0572

CURVE     146  356  357  358   4   25
ACTIVE    146    1
MNODE      23  356
MNODE      25  357
MNODE      25  358
X         356    8.20    0.69    1.89
X         357   17.44   -7.48    4.87
X         358    9.99    9.99    9.99
MUSPAR    146    1.13   13.99   10.91    1.40    0.00
ACTPAR    146  0.0359  0.0159  0.0572

REM  ------- M. Biceps, caput longum (proximal part) -------

CURVE     126  296  297  298   3   25
ACTIVE    126    1
MNODE      24  296
MNODE      25  297
MNODE      25  298
X         296   15.35   -0.14    7.24
X         297   17.12   -0.28    4.56
X         298    9.99    9.99    9.99
MUSPAR    126    3.47   66.20   12.92   23.35    0.00
ACTPAR    126  0.0359  0.0159  0.0572

REM  -------- M. Biceps, caput longum (distal part) --------

CURVE     147  359  360  361   5   27
ACTIVE    147    1
MNODE      25  359
MNODE      27  360
MNODE      27  361
X         359   16.90   -3.52    4.42
X         360   19.77  -36.03    6.84
X         361    9.99    9.99    9.99
MUSPAR    147    3.47   66.20   12.92   23.35    0.00
ACTPAR    147  0.0359  0.0159  0.0572

REM  --------------- M. Biceps, caput breve ----------------

CURVE     127  299  300  301   5   27
ACTIVE    127    1
MNODE      24  299
MNODE      27  300
MNODE      27  301
X         299   14.24   -1.04    3.48
X         300   19.77  -36.03    6.84
X         301    9.99    9.99    9.99
MUSPAR    127    1.73   20.79   11.70   19.13    0.00
ACTPAR    127  0.0359  0.0159  0.0572

CURVE     128  302  303  304   5   27
ACTIVE    128    1
MNODE      24  302
MNODE      27  303
MNODE      27  304
X         302   14.24   -1.04    3.48
X         303   19.77  -36.03    6.84
X         304    9.99    9.99    9.99
MUSPAR    128    3.22   31.07   11.49   19.27    0.00
ACTPAR    128  0.0359  0.0159  0.0572

REM  -------------- M. Triceps, caput longum ---------------

CURVE     129  305  306  307   6   26
ACTIVE    129    1
MNODE      24  305
MNODE      26  306
MNODE      26  307
X         305   15.36   -4.27   10.15
X         306   18.48  -32.30   11.13
X         307    9.99    9.99    9.99
MUSPAR    129    2.23   26.97   10.08   20.41   10.00
ACTPAR    129  0.0334  0.0120  0.0476

CURVE     130  308  309  310   6   26
ACTIVE    130    1
MNODE      24  308
MNODE      26  309
MNODE      26  310
X         308   15.35   -4.13    8.28
X         309   19.30  -32.57    9.94
X         310    9.99    9.99    9.99
MUSPAR    130    2.96   29.55    8.81   21.93   10.00
ACTPAR    130  0.0334  0.0120  0.0476

CURVE     131  311  312  313   6   26
ACTIVE    131    1
MNODE      24  311
MNODE      26  312
MNODE      26  313
X         311   15.84   -3.73    9.07
X         312   19.68  -35.55   10.05
X         313    9.99    9.99    9.99
MUSPAR    131    2.83   29.64   11.83   21.80   10.00
ACTPAR    131  0.0334  0.0120  0.0476

CURVE     132  314  315  316   6   26
ACTIVE    132    1
MNODE      24  314
MNODE      26  315
MNODE      26  316
X         314   15.35   -4.13    8.28
X         315   19.62  -35.22    9.48
X         316    9.99    9.99    9.99
MUSPAR    132    3.27   32.03   12.26   21.97    0.00
ACTPAR    132  0.0334  0.0120  0.0476

REM  --------------- M. Triceps, medial part ---------------

CURVE     148  362  363  364   6   26
ACTIVE    148    1
MNODE      25  362
MNODE      26  363
MNODE      26  364
X         362   17.24  -16.71    8.09
X         363   19.21  -31.35   11.90
X         364    9.99    9.99    9.99
MUSPAR    148    2.63   18.40    8.07    8.75   17.00
ACTPAR    148  0.0359  0.0159  0.0572

CURVE     149  365  366  367   6   26
ACTIVE    149    1
MNODE      25  365
MNODE      26  366
MNODE      26  367
X         365   17.34  -14.24    8.11
X         366   19.21  -31.35   11.90
X         367    9.99    9.99    9.99
MUSPAR    149    2.56   17.65    7.73   11.22    0.00
ACTPAR    149  0.0334  0.0120  0.0476

CURVE     150  368  369  370   6   26
ACTIVE    150    1
MNODE      25  368
MNODE      26  369
MNODE      26  370
X         368   19.82  -25.86    9.17
X         369   19.21  -31.35   11.90
X         370    9.99    9.99    9.99
MUSPAR    150    2.40   11.95    6.02    1.07    0.00
ACTPAR    150  0.0334  0.0120  0.0476

CURVE     151  371  372  373   6   26
ACTIVE    151    1
MNODE      25  371
MNODE      26  372
MNODE      26  373
X         371   19.16  -21.66    9.42
X         372   19.21  -31.35   11.90
X         373    9.99    9.99    9.99
MUSPAR    151    2.11   13.95    7.46    4.04    8.00
ACTPAR    151  0.0334  0.0120  0.0476

CURVE     152  374  375  376   6   26
ACTIVE    152    1
MNODE      25  374
MNODE      26  375
MNODE      26  376
X         374   17.85  -17.41    8.88
X         375   19.21  -31.35   11.90
X         376    9.99    9.99    9.99
MUSPAR    152    1.07    7.70    8.07    7.38    0.00
ACTPAR    152  0.0334  0.0120  0.0476

REM  --------------- M. Triceps, lateral part --------------

CURVE     173  434  435  436   6   26
ACTIVE    173    1
MNODE      25  434
MNODE      26  435
MNODE      26  436
X         434   18.46   -7.28    7.63
X         435   18.97  -29.82   11.55
X         436    9.99    9.99    9.99
MUSPAR    173    1.53   12.50    7.58   17.07    0.00
ACTPAR    173  0.0334  0.0120  0.0476

CURVE     174  437  438  439   6   26
ACTIVE    174    1
MNODE      25  437
MNODE      26  438
MNODE      26  439
X         437   18.46   -7.28    7.63
X         438   19.12  -30.06   11.63
X         439    9.99    9.99    9.99
MUSPAR    174    4.10   33.20    7.66   17.70    5.00
ACTPAR    174  0.0334  0.0120  0.0476

CURVE     175  440  441  442   6   26
ACTIVE    175    1
MNODE      25  440
MNODE      26  441
MNODE      26  442
X         440   18.46   -7.28    7.63
X         441   19.85  -30.61   11.05
X         442    9.99    9.99    9.99
MUSPAR    175    2.19   15.20    6.56   19.11   10.00
ACTPAR    175  0.0334  0.0120  0.0476

CURVE     176  443  444  445   6   26
ACTIVE    176    1
MNODE      25  443
MNODE      26  444
MNODE      26  445
X         443   19.15  -11.28    7.62
X         444   19.85  -30.61   11.05
X         445    9.99    9.99    9.99
MUSPAR    176    2.75   16.20    6.38   15.70   10.00
ACTPAR    176  0.0334  0.0120  0.0476

CURVE     177  446  447  448   6   26
ACTIVE    177    1
MNODE      25  446
MNODE      26  447
MNODE      26  448
X         446   19.15  -11.28    7.62
X         447   19.56  -30.22   11.02
X         448    9.99    9.99    9.99
MUSPAR    177    0.87    5.85    6.38   15.70   17.00
ACTPAR    177  0.0334  0.0120  0.0476

REM  ------------------- M. Brachialis ---------------------

CURVE     153  377  378  379   7   26
ACTIVE    153    1
MNODE      25  377
MNODE      26  378
MNODE      26  379
X         377   19.00  -16.64    7.81
X         378   17.96  -35.29    9.61
X         379    9.99    9.99    9.99
MUSPAR    153    3.14   29.10    8.76    8.07    0.00
ACTPAR    153  0.0334  0.0120  0.0476

CURVE     154  380  381  382   7   26
ACTIVE    154    1
MNODE      25  380
MNODE      26  381
MNODE      26  382
X         380   17.39  -17.30    7.48
X         381   17.76  -35.03   10.02
X         382    9.99    9.99    9.99
MUSPAR    154    1.58   15.90    9.53    5.92    0.00
ACTPAR    154  0.0334  0.0120  0.0476

CURVE     155  383  384  385   7   26
ACTIVE    155    1
MNODE      25  383
MNODE      26  384
MNODE      26  385
X         383   17.26  -19.88    8.40
X         384   17.34  -33.88   10.47
X         385    9.99    9.99    9.99
MUSPAR    155    1.57   14.65    8.70    3.94    0.00
ACTPAR    155  0.0334  0.0120  0.0476

CURVE     156  386  387  388   7   26
ACTIVE    156    1
MNODE      25  386
MNODE      26  387
MNODE      26  388
X         386   18.02  -20.92    8.00
X         387   17.98  -35.00    9.74
X         388    9.99    9.99    9.99
MUSPAR    156    0.87    7.00    7.58    3.17    0.00
ACTPAR    156  0.0334  0.0120  0.0476

CURVE     157  389  390  391   7   26
ACTIVE    157    1
MNODE      25  389
MNODE      26  390
MNODE      26  391
X         389   17.40  -23.91    9.40
X         390   17.54  -34.57   10.26
X         391    9.99    9.99    9.99
MUSPAR    157    1.01    6.60    6.19    2.09    0.00
ACTPAR    157  0.0334  0.0120  0.0476

CURVE     158  392  393  394   7   26
ACTIVE    158    1
MNODE      25  392
MNODE      26  393
MNODE      26  394
X         392   18.13  -24.78    8.51
X         393   17.27  -34.10   10.25
X         394    9.99    9.99    9.99
MUSPAR    158    1.04    4.10    4.72    3.50    0.00
ACTPAR    158  0.0334  0.0120  0.0476

CURVE     159  395  396  397   7   26
ACTIVE    159    1
MNODE      25  395
MNODE      26  396
MNODE      26  397
X         395   17.43  -25.44    9.42
X         396   18.17  -34.81    9.48
X         397    9.99    9.99    9.99
MUSPAR    159    1.18    6.50    6.21    0.76    0.00
ACTPAR    159  0.0334  0.0120  0.0476

REM  ----------------- M. Brachioradialis ------------------

TRUSS     160  398  399
ACTIVE    160    1
MNODE      25  398
MNODE      27  399
X         398   18.81  -21.71    8.77
REM X         399   15.77  -55.42    5.37
X         399   17.45 -54.11 0.40
REM xnew =rs = [el-rs]/norm(el-rs)
MUSPAR    160    0.30    4.70   16.13   11.97    0.00
ACTPAR    160  0.0334  0.0120  0.0476

TRUSS     161  400  401
ACTIVE    161    1
MNODE      25  400
MNODE      27  401
X         400   19.37  -23.42    9.40
REM X         401   15.77  -55.42    5.37
X         401   17.45 -54.11 0.40

MUSPAR    161    0.82   14.00   16.13   11.97    0.00
ACTPAR    161  0.0334  0.0120  0.0476

TRUSS     162  402  403
ACTIVE    162    1
MNODE      25  402
MNODE      27  403
X         402   19.65  -25.08    9.56
REM X         403   15.77  -55.42    5.37
X         403   17.45 -54.11 0.40

MUSPAR    162    0.52    5.97   10.66   15.42    0.00
ACTPAR    162  0.0334  0.0120  0.0476

REM  -------------- M. Pronator teres, hum-rad -------------

CURVE     163  404  405  406  10   27
ACTIVE    163    1
MNODE      25  404
MNODE      27  405
MNODE      27  406
X         404   15.58  -29.44   11.19
X         405   19.32  -41.89    2.11
X         406    9.99    9.99    9.99
MUSPAR    163    5.10   27.50    5.10    8.51    0.00
ACTPAR    163  0.0334  0.0120  0.0476

REM  -------------- M. Pronator teres, uln-rad -------------

CURVE     164  407  408  409  10   27
ACTIVE    164    1
MNODE      26  407
MNODE      27  408
MNODE      27  409
X         407   17.66  -33.40    8.47
X         408   18.85  -39.69    3.00
X         409    9.99    9.99    9.99
MUSPAR    164    1.41    4.33    3.91    4.84    0.00
ACTPAR    164  0.0334  0.0120  0.0476

REM  ---------------- M. Supinator, hum-rad ----------------

REM  ---------------- M. Supinator, uln-rad ----------------

CURVE     165  410  411  412   8   27
ACTIVE    165    1
MNODE      26  410
MNODE      27  411
MNODE      27  412
X         410   21.20  -39.18    7.88
X         411   19.33  -39.67    3.08
X         412    9.99    9.99    9.99
MUSPAR    165    0.47    0.84    2.67    2.54    0.00
ACTPAR    165  0.0334  0.0120  0.0476

CURVE     166  413  414  415   8   27
ACTIVE    166    1
MNODE      26  413
MNODE      27  414
MNODE      27  415
X         413   20.89  -37.46    6.96
X         414   19.82  -38.60    3.67
X         415    9.99    9.99    9.99
MUSPAR    166    2.32    3.64    1.48    2.31    0.00
ACTPAR    166  0.0334  0.0120  0.0476

CURVE     167  416  417  418   8   27
ACTIVE    167    1
MNODE      26  416
MNODE      27  417
MNODE      27  418
X         416   20.97  -35.87    7.64
X         417   19.18  -37.36    3.88
X         418    9.99    9.99    9.99
MUSPAR    167    1.26    3.36    2.52    1.50    0.00
ACTPAR    167  0.0334  0.0120  0.0476

CURVE     168  419  420  421   8   27
ACTIVE    168    1
MNODE      26  419
MNODE      27  420
MNODE      27  421
X         419   20.88  -34.90    7.74
X         420   19.08  -36.66    4.46
X         421    9.99    9.99    9.99
MUSPAR    168    1.48    2.96    2.63    1.45    0.00
ACTPAR    168  0.0334  0.0120  0.0476

CURVE     169  422  423  424   8   27
ACTIVE    169    1
MNODE      26  422
MNODE      27  423
MNODE      27  424
X         422   20.78  -33.93    7.85
X         423   18.99  -35.96    5.04
X         424    9.99    9.99    9.99
MUSPAR    169    2.85    6.76    2.74    1.39    2.00
ACTPAR    169  0.0334  0.0120  0.0476

REM  ---------------- M. Pronator quadratus ----------------

CURVE     170  425  426  427   9   26
ACTIVE    170    1
MNODE      27  425
MNODE      26  426
MNODE      26  427
X         425   18.50  -52.33    1.51
X         426   19.98  -51.16    4.58
X         427    9.99    9.99    9.99
MUSPAR    170    0.73    1.63    3.77    0.01    0.00
ACTPAR    170  0.0334  0.0120  0.0476

CURVE     171  428  429  430   9   26
ACTIVE    171    1
MNODE      27  428
MNODE      26  429
MNODE      26  430
X         428   18.40  -52.79    1.30
X         429   20.22  -52.84    3.91
X         430    9.99    9.99    9.99
MUSPAR    171    1.78    3.47    3.86    0.01    0.00
ACTPAR    171  0.0334  0.0120  0.0476

CURVE     172  431  432  433   9   26
ACTIVE    172    1
MNODE      27  431
MNODE      26  432
MNODE      26  433
X         431   18.16  -53.75    1.44
X         432   20.34  -53.98    3.53
X         433    9.99    9.99    9.99
MUSPAR    172    2.19    4.93    3.52    0.01    0.00
ACTPAR    172  0.0334  0.0120  0.0476



REM  --------------------- M. Anconeus ---------------------

TRUSS     178  449  450
ACTIVE    178    1
MNODE      25  449
MNODE      26  450
X         449   20.42  -30.88    9.35
X         450   20.55  -32.76    9.77
MUSPAR    178    0.31    0.83    2.52    0.64    0.00
ACTPAR    178  0.0334  0.0120  0.0476

TRUSS     179  451  452
ACTIVE    179    1
MNODE      25  451
MNODE      26  452
X         451   20.21  -31.28    9.35
X         452   20.61  -33.09    9.63
MUSPAR    179    0.70    1.50    2.02    0.80   15.00
ACTPAR    179  0.0334  0.0120  0.0476

TRUSS     180  453  454
ACTIVE    180    1
MNODE      25  453
MNODE      26  454
X         453   20.35  -30.33    9.51
X         454   20.49  -32.44    9.91
MUSPAR    180    0.25    0.60    2.28    0.43    0.00
ACTPAR    180  0.0334  0.0120  0.0476

TRUSS     181  455  456
ACTIVE    181    1
MNODE      25  455
MNODE      26  456
X         455   20.34  -31.39    8.69
X         456   21.12  -36.27    8.95
MUSPAR    181    1.18    2.20    2.70    3.00   18.00
ACTPAR    181  0.0334  0.0120  0.0476

TRUSS     182  457  458
ACTIVE    182    1
MNODE      25  457
MNODE      26  458
X         457   20.31  -31.46    8.93
X         458   20.86  -34.75    9.40
MUSPAR    182    1.18    3.33    2.66    2.00   23.00
ACTPAR    182  0.0334  0.0120  0.0476
REM --------------------------------------------------------
REM ------------ Input generalised coordinates -------------
REM --------------------------------------------------------
REM IJ position
INPUTX  31   1
INPUTX  31   2
INPUTX  31   3
REM Thorax rotations
INPUTE   1   1
INPUTE   2   1
INPUTE   3   1
REM SCy, SCz, ACy rotations
DYNE     4   1
DYNE     5   1
DYNE     7   1
REM GH rotations
DYNE    10   1
DYNE    11   1
DYNE    12   1
REM Elbow flexion and forearm pro/supination
DYNE    13   1
DYNE    16   1
REM Wrist rotations
INPUTE  19   1
INPUTE  20   1
INPUTE  21   1

END
HALT

REM --------------------------------------------------------
REM ----------  Definition of inertial properties  ---------
REM --------------------------------------------------------

REM Jointdamping
REM Gravitational forces, mass and rotational inertia
REM translational inertia in kg/100 !!
REM (w.r.t. scaled units: -> cm: acceleration in 100 m/sec^2)
REM scapular mass and rotational inertia roughly estimated!!
REM rotational inertia in kg . m . cm !!
REM All inertial data still needs checking

REM Thorax data taken from r2k4r
REM adapted to 20 kg for wheelchair simulations
XF 23 0.0 -200.0 0.0
XM 23 0.200 0.200 0.200
XM  4 129.841 0.0 0.0 0.0 55.245 0.0 129.841

REM Clavicula
XF 24 0.0 -1.56  0.0
XM 24 0.00156  0.00156  0.00156
XM  7  0.00064  -0.00067  -0.00095  0.00263  -0.00029  0.00243

REM Scapula
XF 25 0.0 -7.054 0.0
XM 25 0.007054  0.007054  0.007054
XM 10  0.1  0.0  0.0  0.1  0.0  0.1

REM Humerus
XF 26 0.0  -20.519  0.0
XM 26 0.02052  0.02052  0.02052
XM 13 1.32 0.0 0.0 0.1988 0.0 1.32

REM Forearm
XF 28 0.0  -10.928  0.0
XM 28 0.01092  0.01092  0.01092
XM 19 0.6117 0.0 0.0 0.09065 0.0 0.6117

REM Hand
XF 29 0.0  -5.2466  0.0
XM 29  0.00525  0.00525  0.00525
REM XM 22  0.06387 0.0 0.0 0.01904 0.0 0.06387

END
END
