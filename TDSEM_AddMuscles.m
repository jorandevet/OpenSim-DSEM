% Code that includes all muscle-element from .dsp file into the TDSEM.osim
% model

% import opensim libraries
import org.opensim.modeling.*

%% Used maximum muscle tension value

Smax = 100; % Value used in most generic models n/cm2
%Smax= 70;  % Value from Bolsterlee et al. 2015

%% Define empty structures
MuscleNames = [];
MuscleOrigin= [];
BodyOrigin = [];
MuscleInsertion = [];
BodyInsertion = [];
% MuscleParams .dsp file is [PCSA mass optlen tenlen penangle]
MuscleParams = [];
% ActParams .dsp file is [neural exittation time constant activation time
ActParams = [];
% constant deactivation time constant]
PathWraps = [];
Group = [];

%%%%%%%%%%%%
%% Fill structures with muscle-parameters from .dsp
%%%%%%%%%%%%

%% MusGroup: Trapezius, Scapular Portion > Thorax to Scapula
GroupName = 'Trapezius_scapular_portion';
TDSEM.getForceSet().addGroup(GroupName)
% 1
MuscleNames = [MuscleNames;         {'TrapScap1'}];
MuscleOrigin= [MuscleOrigin;        (Rg2t*([-0.81    5.34   11.41]/100-Ot)')'];
BodyOrigin = [BodyOrigin;           Thorax];
MuscleInsertion = [MuscleInsertion; (Rg2s*([16.02    2.07    9.82]/100-Os)')'];
BodyInsertion = [BodyInsertion;     Scapula];
MuscleParams = [MuscleParams;       1.18   19.54   14.46    0.30    0.00];
ActParams = [ActParams;             0.0344  0.0144  0.0535];
PathWraps = [PathWraps; NaN];
Group = [Group; {GroupName}];

% 2
MuscleNames = [MuscleNames;         {'TrapScap2'}];
MuscleOrigin= [MuscleOrigin;        (Rg2t*([-0.80    5.05   11.53]/100-Ot)')'];
BodyOrigin = [BodyOrigin;           Thorax];
MuscleInsertion = [MuscleInsertion; (Rg2s*([14.89    1.74   11.65]/100-Os)')'];
BodyInsertion = [BodyInsertion;     Scapula];
MuscleParams = [MuscleParams;       1.68   21.61   11.27    2.70    0.00];
ActParams = [ActParams;             0.0344  0.0144  0.0535];
PathWraps = [PathWraps; NaN];
Group = [Group; {GroupName}];

% 3
MuscleNames = [MuscleNames;         {'TrapScap3'}];
MuscleOrigin= [MuscleOrigin;        (Rg2t*([-0.43    4.25   11.78]/100-Ot)')'];
BodyOrigin = [BodyOrigin;           Thorax];
MuscleInsertion = [MuscleInsertion; (Rg2s*([12.97    1.11   12.77]/100-Os)')'];
BodyInsertion = [BodyInsertion;     Scapula];
MuscleParams = [MuscleParams;       1.99   24.19   10.70    5.40    0.00];
ActParams = [ActParams;             0.0344  0.0144  0.0535];
PathWraps = [PathWraps; NaN];
Group = [Group; {GroupName}];

% 4
MuscleNames = [MuscleNames;         {'TrapScap4'}];
MuscleOrigin= [MuscleOrigin;        (Rg2t*([-0.37    3.72   12.14]/100-Ot)')'];
BodyOrigin = [BodyOrigin;           Thorax];
MuscleInsertion = [MuscleInsertion; (Rg2s*([11.84    0.81   13.33]/100-Os)')'];
BodyInsertion = [BodyInsertion;     Scapula];
MuscleParams = [MuscleParams;       1.38   14.94    9.52    5.30    0.00];
ActParams = [ActParams;             0.0344  0.0144  0.0535];
PathWraps = [PathWraps; NaN];
Group = [Group; {GroupName}];

% 5
MuscleNames = [MuscleNames;         {'TrapScap5'}];
MuscleOrigin= [MuscleOrigin;        (Rg2t*([-0.31    2.61   12.50]/100-Ot)')'];
BodyOrigin = [BodyOrigin;           Thorax];
MuscleInsertion = [MuscleInsertion; (Rg2s*([10.93    0.81   13.10]/100-Os)')'];
BodyInsertion = [BodyInsertion;     Scapula];
MuscleParams = [MuscleParams;       1.22   12.80    9.24    3.50    0.00];
ActParams = [ActParams;             0.0344  0.0144  0.0535];
PathWraps = [PathWraps; NaN];
Group = [Group; {GroupName}];

% 6
MuscleNames = [MuscleNames;         {'TrapScap6'}];
MuscleOrigin= [MuscleOrigin;        (Rg2t*([-0.43   -0.02   13.63]/100-Ot)')'];
BodyOrigin = [BodyOrigin;           Thorax];
MuscleInsertion = [MuscleInsertion; (Rg2s*([12.14    0.40   13.65]/100-Os)')'];
BodyInsertion = [BodyInsertion;     Scapula];
MuscleParams = [MuscleParams;       1.01   10.25    8.93    3.30    0.00];
ActParams = [ActParams;             0.0344  0.0144  0.0535];
PathWraps = [PathWraps; NaN];
Group = [Group; {GroupName}];

% 7
MuscleNames = [MuscleNames;         {'TrapScap7'}];
MuscleOrigin= [MuscleOrigin;        (Rg2t*([-0.16   -3.39   14.69]/100-Ot)')'];
BodyOrigin = [BodyOrigin;           Thorax];
MuscleInsertion = [MuscleInsertion; (Rg2s*([10.93    0.81   13.10]/100-Os)')'];
BodyInsertion = [BodyInsertion;     Scapula];
MuscleParams = [MuscleParams;       0.97    9.58    8.68    3.60    0.00];
ActParams = [ActParams;             0.0344  0.0144  0.0535];
PathWraps = [PathWraps; NaN];
Group = [Group; {GroupName}];

% 8
MuscleNames = [MuscleNames;         {'TrapScap8'}];
MuscleOrigin= [MuscleOrigin;        (Rg2t*([0.37   -6.29   15.11]/100-Ot)')'];
BodyOrigin = [BodyOrigin;           Thorax];
MuscleInsertion = [MuscleInsertion; (Rg2s*([11.41    0.42   13.77]/100-Os)')'];
BodyInsertion = [BodyInsertion;     Scapula];
MuscleParams = [MuscleParams;       1.38   12.12    7.70    4.80    0.00];
ActParams = [ActParams;             0.0344  0.0144  0.0535];
PathWraps = [PathWraps; NaN];
Group = [Group; {GroupName}];

% 9
MuscleNames = [MuscleNames;         {'TrapScap9'}];
MuscleOrigin= [MuscleOrigin;        (Rg2t*([0.66  -11.09   15.22]/100-Ot)')'];
BodyOrigin = [BodyOrigin;           Thorax];
MuscleInsertion = [MuscleInsertion; (Rg2s*([9.43    0.20   13.91]/100-Os)')'];
BodyInsertion = [BodyInsertion;     Scapula];
MuscleParams = [MuscleParams;       1.23   14.16   10.11    3.40    0.00];
ActParams = [ActParams;             0.0344  0.0144  0.0535];
PathWraps = [PathWraps; NaN];
Group = [Group; {GroupName}];

% 10
MuscleNames = [MuscleNames;         {'TrapScap10'}];
MuscleOrigin= [MuscleOrigin;        (Rg2t*([1.02  -14.79   15.40]/100-Ot)')'];
BodyOrigin = [BodyOrigin;           Thorax];
MuscleInsertion = [MuscleInsertion; (Rg2s*([10.14   -0.23   14.12]/100-Os)')'];
BodyInsertion = [BodyInsertion;     Scapula];
MuscleParams = [MuscleParams;       0.81   11.58   12.64    3.50    0.00];
ActParams = [ActParams;             0.0344  0.0144  0.0535];
PathWraps = [PathWraps; NaN];
Group = [Group; {GroupName}];

% 11
MuscleNames = [MuscleNames;         {'TrapScap11'}];
MuscleOrigin= [MuscleOrigin;        (Rg2t*([1.35  -17.94   14.77]/100-Ot)')'];
BodyOrigin = [BodyOrigin;           Thorax];
MuscleInsertion = [MuscleInsertion; (Rg2s*([10.83   -0.22   14.06]/100-Os)')'];
BodyInsertion = [BodyInsertion;     Scapula];
MuscleParams = [MuscleParams;       0.92   14.07   13.55    3.10    0.00];
ActParams = [ActParams;             0.0344  0.0144  0.0535];
PathWraps = [PathWraps; NaN];
Group = [Group; {GroupName}];

%% MusGroup: Trapezius, Claviclular Portion > Thorax to Clavicle
GroupName = 'Trapezius_clavicular_portion';
TDSEM.getForceSet().addGroup(GroupName)

% 1
MuscleNames = [MuscleNames;         {'TrapClav1'}];
MuscleOrigin= [MuscleOrigin;        (Rg2t*([-0.97   12.94   11.24]/100-Ot)')'];
BodyOrigin = [BodyOrigin;           Thorax];
MuscleInsertion = [MuscleInsertion; (Rg2c*([11.75    2.62    6.22]/100-Oc)')'];
BodyInsertion = [BodyInsertion;     Clavicle];
MuscleParams = [MuscleParams;       0.97   17.12   15.47    4.70    0.00];
ActParams = [ActParams;             0.0344  0.0144  0.0535];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 2
MuscleNames = [MuscleNames;         {'TrapClav2'}];
MuscleOrigin= [MuscleOrigin;        (Rg2t*([-1.06    7.17   10.66]/100-Ot)')'];
BodyOrigin = [BodyOrigin;           Thorax];
MuscleInsertion = [MuscleInsertion; (Rg2c*([14.21    2.71    7.21]/100-Oc)')'];
BodyInsertion = [BodyInsertion;     Clavicle];
MuscleParams = [MuscleParams;       0.47    9.69   16.80    4.20    0.00];
ActParams = [ActParams;             0.0269  0.0069  0.0347];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

%% MusGroup: Levator Scapulae > Thorax to Scapula
GroupName = 'Levator_scapulae';
TDSEM.getForceSet().addGroup(GroupName)

% 1
MuscleNames = [MuscleNames;         {'LevScap1'}];
MuscleOrigin= [MuscleOrigin;        (Rg2t*([3.88   14.79    5.72]/100-Ot)')'];
BodyOrigin = [BodyOrigin;           Thorax];
MuscleInsertion = [MuscleInsertion; (Rg2s*([7.14   -0.01   14.15]/100-Os)')'];
BodyInsertion = [BodyInsertion;     Scapula];
MuscleParams = [MuscleParams;       0.96   17.31   15.78    1.90    0.00];
ActParams = [ActParams;             0.0269  0.0069  0.0347];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 2
MuscleNames = [MuscleNames;         {'LevScap2'}];
MuscleOrigin= [MuscleOrigin;        (Rg2t*([2.91   12.54    6.07]/100-Ot)')'];
BodyOrigin = [BodyOrigin;           Thorax];
MuscleInsertion = [MuscleInsertion; (Rg2s*([7.14   -0.01   14.15]/100-Os)')'];
BodyInsertion = [BodyInsertion;     Scapula];
MuscleParams = [MuscleParams;       0.96   17.31   15.78    1.90    0.00];
ActParams = [ActParams;             0.0269  0.0069  0.0347];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

%% MusGroup: Pectoralis Minor > Thorax to Scapula
GroupName = 'Pectoralis_minor';
TDSEM.getForceSet().addGroup(GroupName)

% 1
MuscleNames = [MuscleNames;         {'PectMin1'}];
MuscleOrigin= [MuscleOrigin;        (Rg2t*([5.13   -6.06   -1.80]/100-Ot)')'];
BodyOrigin = [BodyOrigin;           Thorax];
MuscleInsertion = [MuscleInsertion; (Rg2s*([12.39   -0.25    4.49]/100-Os)')'];
BodyInsertion = [BodyInsertion;     Scapula];
MuscleParams = [MuscleParams;       0.47    4.07    7.65    5.10    0.00];
ActParams = [ActParams;             0.0350  0.0150  0.0550];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 2
MuscleNames = [MuscleNames;         {'PectMin2'}];
MuscleOrigin= [MuscleOrigin;        (Rg2t*([5.85   -9.33   -2.67]/100-Ot)')'];
BodyOrigin = [BodyOrigin;           Thorax];
MuscleInsertion = [MuscleInsertion; (Rg2s*([12.39   -0.25    4.49]/100-Os)')'];
BodyInsertion = [BodyInsertion;     Scapula];
MuscleParams = [MuscleParams;       1.07   13.23   10.86    4.10    0.00];
ActParams = [ActParams;             0.0350  0.0150  0.0550];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 3
MuscleNames = [MuscleNames;         {'PectMin3'}];
MuscleOrigin= [MuscleOrigin;        (Rg2t*([9.65   -9.47   -2.03]/100-Ot)')'];
BodyOrigin = [BodyOrigin;           Thorax];
MuscleInsertion = [MuscleInsertion; (Rg2s*([12.77   -0.81    4.08]/100-Os)')'];
BodyInsertion = [BodyInsertion;     Scapula];
MuscleParams = [MuscleParams;       1.07   13.03   10.75    2.90    0.00];
ActParams = [ActParams;             0.0350  0.0150  0.0550];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 4
MuscleNames = [MuscleNames;         {'PectMin4'}];
MuscleOrigin= [MuscleOrigin;        (Rg2t*([8.86  -11.38   -2.43]/100-Ot)')'];
BodyOrigin = [BodyOrigin;           Thorax];
MuscleInsertion = [MuscleInsertion; (Rg2s*([13.28   -1.55    3.80]/100-Os)')'];
BodyInsertion = [BodyInsertion;     Scapula];
MuscleParams = [MuscleParams;       0.46    7.20   13.81    2.60    0.00];
ActParams = [ActParams;             0.0350  0.0150  0.0550];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

%% MusGroup: Rhomboideus > Thorax to Scapula
GroupName = 'Rhomboideus';
TDSEM.getForceSet().addGroup(GroupName)

% 1
MuscleNames = [MuscleNames;         {'Rhomb1'}];
MuscleOrigin= [MuscleOrigin;        (Rg2t*([-0.91    6.27   10.80]/100-Ot)')'];
BodyOrigin = [BodyOrigin;           Thorax];
MuscleInsertion = [MuscleInsertion; (Rg2s*([7.39   -1.65   14.40]/100-Os)')'];
BodyInsertion = [BodyInsertion;     Scapula];
MuscleParams = [MuscleParams;       0.51    5.75    9.86    1.50    0.00];
ActParams = [ActParams;             0.0284  0.0084  0.0385];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 2
MuscleNames = [MuscleNames;         {'Rhomb2'}];
MuscleOrigin= [MuscleOrigin;        (Rg2t*([-0.76    5.06   11.51]/100-Ot)')'];
BodyOrigin = [BodyOrigin;           Thorax];
MuscleInsertion = [MuscleInsertion; (Rg2s*([8.15   -8.71   15.50]/100-Os)')'];
BodyInsertion = [BodyInsertion;     Scapula];
MuscleParams = [MuscleParams;       0.92   11.30   10.77    6.60    0.00];
ActParams = [ActParams;             0.0284  0.0084  0.0385];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 3
MuscleNames = [MuscleNames;         {'Rhomb3'}];
MuscleOrigin= [MuscleOrigin;        (Rg2t*([0.54    3.17   12.52]/100-Ot)')'];
BodyOrigin = [BodyOrigin;           Thorax];
MuscleInsertion = [MuscleInsertion; (Rg2s*([8.16   -9.25   15.62]/100-Os)')'];
BodyInsertion = [BodyInsertion;     Scapula];
MuscleParams = [MuscleParams;       1.42   20.34   12.59    3.20    0.00];
ActParams = [ActParams;             0.0284  0.0084  0.0385];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 4
MuscleNames = [MuscleNames;         {'Rhomb4'}];
MuscleOrigin= [MuscleOrigin;        (Rg2t*([-0.28    0.68   13.48]/100-Ot)')'];
BodyOrigin = [BodyOrigin;           Thorax];
MuscleInsertion = [MuscleInsertion; (Rg2s*([8.43  -10.43   15.65]/100-Os)')'];
BodyInsertion = [BodyInsertion;     Scapula];
MuscleParams = [MuscleParams;       0.82   11.76   12.67    3.10    0.00];
ActParams = [ActParams;             0.0269  0.0069  0.0347];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 5
MuscleNames = [MuscleNames;         {'Rhomb5'}];
MuscleOrigin= [MuscleOrigin;        (Rg2t*([0.05   -2.00   14.49]/100-Ot)')'];
BodyOrigin = [BodyOrigin;           Thorax];
MuscleInsertion = [MuscleInsertion; (Rg2s*([8.66  -11.59   15.44]/100-Os)')'];
BodyInsertion = [BodyInsertion;     Scapula];
MuscleParams = [MuscleParams;       0.67    8.85   11.70    4.00    0.00];
ActParams = [ActParams;             0.0269  0.0069  0.0347];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

%% MusGroup: Serratus anterior > Scapula to Thorax
GroupName = 'Serratus_anterior';
TDSEM.getForceSet().addGroup(GroupName)

% 1
MuscleNames = [MuscleNames;         {'SerrAnt1'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([8.96  -12.12   15.71]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2t*([13.80  -20.98    3.53]/100-Ot)')'];
BodyInsertion = [BodyInsertion;     Thorax];
MuscleParams = [MuscleParams;       0.61   11.39   16.35    2.50    0.00];
ActParams = [ActParams;             0.0269  0.0069  0.0347];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 2
MuscleNames = [MuscleNames;         {'SerrAnt2'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([8.99  -12.09   15.30]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2t*([13.27  -18.84    1.49]/100-Ot)')'];
BodyInsertion = [BodyInsertion;     Thorax];
MuscleParams = [MuscleParams;       1.10   20.83   16.67    0.90    0.00];
ActParams = [ActParams;             0.0269  0.0069  0.0347];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 3
MuscleNames = [MuscleNames;         {'SerrAnt3'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([9.28  -12.12   14.79]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2t*([12.42  -15.90    0.24]/100-Ot)')'];
BodyInsertion = [BodyInsertion;     Thorax];
MuscleParams = [MuscleParams;       1.05   19.25   16.22    0.70    0.00];
ActParams = [ActParams;             0.0269  0.0069  0.0347];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 4
MuscleNames = [MuscleNames;         {'SerrAnt4'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([9.33  -11.59   14.56]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2t*([12.31  -12.21   -0.31]/100-Ot)')'];
BodyInsertion = [BodyInsertion;     Thorax];
MuscleParams = [MuscleParams;       1.10   16.29   12.89    0.00    0.00];
ActParams = [ActParams;             0.0269  0.0069  0.0347];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 5
MuscleNames = [MuscleNames;         {'SerrAnt5'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([9.11  -11.04   14.54]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2t*([11.94   -8.59    0.41]/100-Ot)')'];
BodyInsertion = [BodyInsertion;     Thorax];
MuscleParams = [MuscleParams;       0.64    9.09   12.59    1.10    0.00];
ActParams = [ActParams;             0.0428  0.0264  0.0835];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 6
MuscleNames = [MuscleNames;         {'SerrAnt6'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([9.38  -10.58   14.63]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2t*([11.24   -4.28    1.99]/100-Ot)')'];
BodyInsertion = [BodyInsertion;     Thorax];
MuscleParams = [MuscleParams;       0.97   13.45   12.20    0.00    0.00];
ActParams = [ActParams;             0.0428  0.0264  0.0835];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 7
MuscleNames = [MuscleNames;         {'SerrAnt7'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([8.18   -6.16   14.82]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2t*([10.01   -0.77    3.29]/100-Ot)')'];
BodyInsertion = [BodyInsertion;     Thorax];
MuscleParams = [MuscleParams;       0.47    6.09   11.33    0.90    0.00];
ActParams = [ActParams;             0.0428  0.0264  0.0835];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 8
MuscleNames = [MuscleNames;         {'SerrAnt8'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([7.68   -3.26   14.61]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2t*([10.10    0.23    5.52]/100-Ot)')'];
BodyInsertion = [BodyInsertion;     Thorax];
MuscleParams = [MuscleParams;       0.76    7.29    8.45    1.10    0.00];
ActParams = [ActParams;             0.0428  0.0264  0.0835];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 9
MuscleNames = [MuscleNames;         {'SerrAnt9'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([7.09   -0.26   13.77]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2t*([9.80    0.62    5.46]/100-Ot)')'];
BodyInsertion = [BodyInsertion;     Thorax];
MuscleParams = [MuscleParams;       0.79    7.24    8.00    0.70    0.00];
ActParams = [ActParams;             0.0428  0.0264  0.0835];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 10
MuscleNames = [MuscleNames;         {'SerrAnt10'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([7.26    0.93   12.61]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2t*([9.44    1.09    5.95]/100-Ot)')'];
BodyInsertion = [BodyInsertion;     Thorax];
MuscleParams = [MuscleParams;       0.63    4.76    6.60    0.50    0.00];
ActParams = [ActParams;             0.0428  0.0264  0.0835];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 11
MuscleNames = [MuscleNames;         {'SerrAnt11'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([7.42    1.31   11.81]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2t*([9.80    0.62    5.46]/100-Ot)')'];
BodyInsertion = [BodyInsertion;     Thorax];
MuscleParams = [MuscleParams;       0.23    2.29    8.85    0.00    0.00];
ActParams = [ActParams;             0.0428  0.0264  0.0835];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 12
MuscleNames = [MuscleNames;         {'SerrAnt12'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([7.93    1.95   10.17]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2t*([10.05    0.09    4.70]/100-Ot)')'];
BodyInsertion = [BodyInsertion;     Thorax];
MuscleParams = [MuscleParams;       1.12   12.12    9.45    0.00    0.00];
ActParams = [ActParams;             0.0428  0.0264  0.0835];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];


%% MusGroup: Deltoideus, scapular portion > Scapula to humerus
GroupName = 'Deltoideus_scapular_portion';
TDSEM.getForceSet().addGroup(GroupName)

% 1
MuscleNames = [MuscleNames;         {'DeltScap1'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([10.84   -0.66   13.95]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2h*([19.29  -12.90    7.57]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;       2.89   37.03   11.28    8.00    5.00];
ActParams = [ActParams;             0.0428  0.0264  0.0835];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 2
MuscleNames = [MuscleNames;         {'DeltScap2'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([13.72    0.58   12.74]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2h*([19.20  -11.46    7.01]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;       2.11   22.69    9.49    7.60    5.00];
ActParams = [ActParams;             0.0428  0.0264  0.0835];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 3
MuscleNames = [MuscleNames;         {'DeltScap3'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([16.81    1.07   11.02]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2h*([19.20  -11.46    7.01]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;       4.46   42.14    8.33    6.20    5.00];
ActParams = [ActParams;             0.0428  0.0264  0.0835];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 4
MuscleNames = [MuscleNames;         {'DeltScap4'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([17.88    0.21   10.26]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2h*([19.09  -10.30    6.80]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;       1.17    8.88    6.66    4.50    5.00];
ActParams = [ActParams;             0.0428  0.0264  0.0835];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 5
MuscleNames = [MuscleNames;         {'DeltScap5'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([18.70    0.86    8.44]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2h*([18.98   -9.65    6.40]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;       1.20    8.91    6.56    3.50    5.00];
ActParams = [ActParams;             0.0267  0.0067  0.0343];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 6
MuscleNames = [MuscleNames;         {'DeltScap6'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([18.28    1.28    9.94]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2h*([19.41  -12.69    7.18]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;       2.85   24.85    7.67    6.70    5.00];
ActParams = [ActParams;             0.0267  0.0067  0.0343];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 7
MuscleNames = [MuscleNames;         {'DeltScap7'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([18.64    0.82    9.37]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2h*([19.40  -14.96    7.27]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;       1.49   12.75    7.54    8.20    5.00];
ActParams = [ActParams;             0.0267  0.0067  0.0343];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 8
MuscleNames = [MuscleNames;         {'DeltScap8'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([18.67    1.40    8.31]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2h*([19.41  -12.69    7.18]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;       2.15   17.30    7.10    6.50    5.00];
ActParams = [ActParams;             0.0267  0.0067  0.0343];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 9
MuscleNames = [MuscleNames;         {'DeltScap9'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([18.59    1.23    7.70]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2h*([19.06  -13.64    6.15]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;       2.86   23.78    7.32    7.10    5.00];
ActParams = [ActParams;             0.0267  0.0067  0.0343];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 10
MuscleNames = [MuscleNames;         {'DeltScap10'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([18.40    1.20    6.80]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2h*([18.93  -12.51    5.97]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;       4.45   37.90    7.48    6.40    5.00];
ActParams = [ActParams;             0.0267  0.0067  0.0343];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 11
MuscleNames = [MuscleNames;         {'DeltScap11'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([17.63    1.35    5.81]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2h*([18.71  -11.18    5.65]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;       2.39   20.12    7.37    4.80    5.00];
ActParams = [ActParams;             0.0303  0.0097  0.0418];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

%% MusGroup: Deltoideus, clavicular portion > clavicle to humerus
GroupName = 'Deltoideus_clavicular_portion';
TDSEM.getForceSet().addGroup(GroupName)

% 1
MuscleNames = [MuscleNames;         {'DeltClav1'}];
MuscleOrigin= [MuscleOrigin;        (Rg2c*([13.81    2.19    5.88]/100-Oc)')'];
BodyOrigin = [BodyOrigin;           Clavicle];
MuscleInsertion = [MuscleInsertion; (Rg2h*([18.71  -11.18    5.65]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;       1.28   12.17    8.36    6.20    5.00];
ActParams = [ActParams;             0.0303  0.0097  0.0418];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 2
MuscleNames = [MuscleNames;         {'DeltClav2'}];
MuscleOrigin= [MuscleOrigin;        (Rg2c*([11.61    2.46    5.40]/100-Oc)')'];
BodyOrigin = [BodyOrigin;           Clavicle];
MuscleInsertion = [MuscleInsertion; (Rg2h*([18.47  -13.85    5.74]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;       1.60   17.01    9.40    8.80    5.00];
ActParams = [ActParams;             0.0303  0.0097  0.0418];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 3
MuscleNames = [MuscleNames;         {'DeltClav3'}];
MuscleOrigin= [MuscleOrigin;        (Rg2c*([12.28    2.17    5.21]/100-Oc)')'];
BodyOrigin = [BodyOrigin;           Clavicle];
MuscleInsertion = [MuscleInsertion; (Rg2h*([18.58  -11.90    5.68]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;       1.05    9.83    8.24    6.70    5.00];
ActParams = [ActParams;             0.0303  0.0097  0.0418];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 4
MuscleNames = [MuscleNames;         {'DeltClav4'}];
MuscleOrigin= [MuscleOrigin;        (Rg2c*([12.12    1.56    5.16]/100-Oc)')'];
BodyOrigin = [BodyOrigin;           Clavicle];
MuscleInsertion = [MuscleInsertion; (Rg2h*([18.47  -13.85    5.74]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;       1.12   12.59    9.91    7.30    5.00];
ActParams = [ActParams;             0.0303  0.0097  0.0418];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

%% MusGroup: Coracobrachialis > scapula to humerus
GroupName = 'Coracobrachialis';
TDSEM.getForceSet().addGroup(GroupName)

% 1
MuscleNames = [MuscleNames;         {'Coracobr1'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([14.58   -0.99    3.97]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2h*([17.24  -16.56    7.19]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;       2.01   15.06    6.60    9.20    0.00];
ActParams = [ActParams;             0.0303  0.0097  0.0418];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 2
MuscleNames = [MuscleNames;         {'Coracobr2'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([14.13   -1.72    4.03]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2h*([17.20  -18.35    8.10]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;       1.48   11.51    6.83   10.40    0.00];
ActParams = [ActParams;             0.0261  0.0061  0.0327];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 3
MuscleNames = [MuscleNames;         {'Coracobr3'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([14.22   -1.03    3.47]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2h*([17.26  -19.29    7.73]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;       1.14    9.39    7.27   11.30    0.00];
ActParams = [ActParams;             0.0261  0.0061  0.0327];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

%% MusGroup: Infraspinatus > scapula to humerus
GroupName = 'Infraspinatus';
TDSEM.getForceSet().addGroup(GroupName)

% 1
MuscleNames = [MuscleNames;         {'Infra1'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([12.82   -4.52   11.49]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2h*([19.38   -0.81    6.57]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;       2.72   19.61    6.33    3.80    0.00];
ActParams = [ActParams;             0.0261  0.0061  0.0327];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 2
MuscleNames = [MuscleNames;         {'Infra2'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([8.76  -10.31   16.17]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2h*([18.93   -0.25    6.11]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;       2.75   22.45    7.19   10.70    0.00];
ActParams = [ActParams;             0.0261  0.0061  0.0327];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 3
MuscleNames = [MuscleNames;         {'Infra3'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([10.01   -8.09   15.30]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2h*([18.93   -0.25    6.11]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;       1.94   14.88    6.77    8.40    0.00];
ActParams = [ActParams;             0.0261  0.0061  0.0327];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];


% 4
MuscleNames = [MuscleNames;         {'Infra4'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([9.38   -5.86   15.14]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2h*([18.72    0.06    6.21]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;       2.07   16.31    6.93    7.10    0.00];
ActParams = [ActParams;             0.0261  0.0061  0.0327];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 5
MuscleNames = [MuscleNames;         {'Infra5'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([8.81   -2.70   14.00]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2h*([18.72    0.06    6.21]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;       3.02   24.14    6.98    5.00    0.00];
ActParams = [ActParams;             0.0293  0.0093  0.0407];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 6
MuscleNames = [MuscleNames;         {'Infra6'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([11.07   -0.57   13.98]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2h*([19.09   -0.56    6.22]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;       1.82   15.64    7.53    3.50    0.00];
ActParams = [ActParams;             0.0293  0.0093  0.0407];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];


%% MusGroup: Teres minor > scapula to humerus
GroupName = 'Teres_minor';
TDSEM.getForceSet().addGroup(GroupName)

% 1
MuscleNames = [MuscleNames;         {'TerMin1'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([13.95   -6.81   11.78]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2h*([19.79   -2.52    6.09]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;        1.22    7.14    5.01    4.90    0.00];
ActParams = [ActParams;             0.0293  0.0093  0.0407];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 2
MuscleNames = [MuscleNames;         {'TerMin2'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([13.40   -7.15   12.90]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2h*([19.92   -1.95    5.86]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;        1.95   12.21    5.50    5.10    0.00];
ActParams = [ActParams;             0.0293  0.0093  0.0407];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 3
MuscleNames = [MuscleNames;         {'TerMin3'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([14.95   -4.16   10.72]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2h*([19.79   -2.52    6.09]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;        1.80   10.41    5.06    1.80    0.00];
ActParams = [ActParams;             0.0293  0.0093  0.0407];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

%% MusGroup: Teres major > scapula to humerus
GroupName = 'Teres_major';
TDSEM.getForceSet().addGroup(GroupName)

% 1
MuscleNames = [MuscleNames;         {'TerMaj1'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([11.87  -11.08   13.29]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2h*([16.44   -8.54    6.56]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;        1.65   26.43   14.11    0.60    0.00];
ActParams = [ActParams;             0.0293  0.0093  0.0407];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 2
MuscleNames = [MuscleNames;         {'TerMaj2'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([10.75  -12.04   14.19]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2h*([16.81  -10.40    6.55]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;        0.85   15.49   15.95    1.20    0.00];
ActParams = [ActParams;             0.0276  0.0080  0.0376];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 3
MuscleNames = [MuscleNames;         {'TerMaj3'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([11.79   -9.55   14.61]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2h*([16.72   -9.81    6.59]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;        2.00   34.81   15.26    1.50    0.00];
ActParams = [ActParams;             0.0276  0.0080  0.0376];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 4
MuscleNames = [MuscleNames;         {'TerMaj4'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([12.47  -10.01   13.12]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2h*([16.25   -6.98    6.35]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;        1.58   19.71   10.93    3.40    0.00];
ActParams = [ActParams;             0.0276  0.0080  0.0376];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

%% MusGroup: Supraspinatus > scapula to humerus
GroupName = 'Supraspinatus';
TDSEM.getForceSet().addGroup(GroupName)

% 1
MuscleNames = [MuscleNames;         {'Supra1'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([12.05   -0.08   11.39]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2h*([19.16   -0.63    5.53]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;        1.20    7.40    5.41    1.70    0.00];
ActParams = [ActParams;             0.0276  0.0080  0.0376];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 2
MuscleNames = [MuscleNames;         {'Supra2'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([12.44    0.81   12.40]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2h*([19.16   -0.63    5.53]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;        1.13    7.56    5.91    2.50    0.00];
ActParams = [ActParams;             0.0276  0.0080  0.0376];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 3
MuscleNames = [MuscleNames;         {'Supra3'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([8.41    1.06   12.19]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2h*([17.37   -0.13    4.60]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;        2.58   16.51    5.64    5.20    0.00];
ActParams = [ActParams;             0.0276  0.0080  0.0376];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 4
MuscleNames = [MuscleNames;         {'Supra4'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([9.62    1.25    9.94]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2h*([17.37   -0.13    4.60]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;        1.30    8.19    5.54    3.10    0.00];
ActParams = [ActParams;             0.0318  0.0118  0.0470];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

%% MusGroup: Subscapularis > scapula to humerus
GroupName = 'Subscapularis';
TDSEM.getForceSet().addGroup(GroupName)

% 1
MuscleNames = [MuscleNames;         {'Subscap1'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([12.04   -1.76   11.11]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2h*([15.79   -0.46    4.90]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;        0.44    2.81    5.56    2.80    0.00];
ActParams = [ActParams;             0.0318  0.0118  0.0470];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 2
MuscleNames = [MuscleNames;         {'Subscap2'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([9.41    0.31   11.49]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2h*([15.79   -0.46    4.90]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;        2.64   20.21    6.76    5.90    5.00];
ActParams = [ActParams;             0.0318  0.0118  0.0470];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 3
MuscleNames = [MuscleNames;         {'Subscap3'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([8.57   -2.49   13.70]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2h*([15.90   -0.84    4.60]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;        0.78    5.75    6.49    4.40    0.00];
ActParams = [ActParams;             0.0318  0.0118  0.0470];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 4
MuscleNames = [MuscleNames;         {'Subscap4'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([10.36   -5.11   13.87]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2h*([15.85   -1.52    4.33]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;        2.74   23.76    7.44    5.50    5.00];
ActParams = [ActParams;             0.0318  0.0118  0.0470];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 5
MuscleNames = [MuscleNames;         {'Subscap5'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([11.01   -6.37   13.25]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2h*([16.20   -1.30    4.14]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;        1.14   10.33    7.97    6.60    0.00];
ActParams = [ActParams;             0.0318  0.0118  0.0470];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 6
MuscleNames = [MuscleNames;         {'Subscap6'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([10.13   -8.74   14.86]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2h*([15.84   -1.96    4.02]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;        1.49   12.92    7.62    7.70    0.00];
ActParams = [ActParams;             0.0302  0.0098  0.0421];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 7
MuscleNames = [MuscleNames;         {'Subscap7'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([10.69  -10.24   14.06]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2h*([15.55   -2.09    4.36]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;        1.62   15.13    8.20    7.90    0.00];
ActParams = [ActParams;             0.0302  0.0098  0.0421];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 8
MuscleNames = [MuscleNames;         {'Subscap8'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([12.55   -6.97   11.78]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2h*([15.55   -2.09    4.36]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;        0.61    5.32    7.65    4.00    0.00];
ActParams = [ActParams;             0.0282  0.0071  0.0353];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 9
MuscleNames = [MuscleNames;         {'Subscap9'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([12.35   -9.69   13.01]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2h*([15.38   -2.52    4.89]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;        2.22   18.20    7.21    5.90    0.00];
ActParams = [ActParams;             0.0282  0.0071  0.0353];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 10
MuscleNames = [MuscleNames;         {'Subscap10'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([14.27   -5.53   10.72]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2h*([15.76   -3.77    5.71]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;        0.47    3.61    6.76    1.00    0.00];
ActParams = [ActParams;             0.0359  0.0159  0.0572];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 11
MuscleNames = [MuscleNames;         {'Subscap11'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([14.71   -4.60    9.57]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2h*([15.85   -4.30    6.33]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;        0.16    1.15    6.43    0.00    0.00];
ActParams = [ActParams;             0.0359  0.0159  0.0572];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

%% MusGroup: Latissimus dorsi > thorax to humerus
GroupName = 'Latissimus_dorsi';
TDSEM.getForceSet().addGroup(GroupName)

% 1
MuscleNames = [MuscleNames;         {'LatDors1'}];
MuscleOrigin= [MuscleOrigin;        (Rg2t*([0.98  -12.60   15.26]/100-Ot)')'];
BodyOrigin = [BodyOrigin;           Thorax];
MuscleInsertion = [MuscleInsertion; (Rg2h*([16.53   -5.86    5.26]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;        0.56   14.98   23.43    9.00    0.00];
ActParams = [ActParams;             0.0334  0.0120  0.0476];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 2
MuscleNames = [MuscleNames;         {'LatDors2'}];
MuscleOrigin= [MuscleOrigin;        (Rg2t*([1.30  -19.67   14.82]/100-Ot)')'];
BodyOrigin = [BodyOrigin;           Thorax];
MuscleInsertion = [MuscleInsertion; (Rg2h*([16.65   -6.51    5.31]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;        0.88   28.83   28.57    8.30    0.00];
ActParams = [ActParams;             0.0334  0.0120  0.0476];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 3
MuscleNames = [MuscleNames;         {'LatDors3'}];
MuscleOrigin= [MuscleOrigin;        (Rg2t*([1.16  -25.15   13.92]/100-Ot)')'];
BodyOrigin = [BodyOrigin;           Thorax];
MuscleInsertion = [MuscleInsertion; (Rg2h*([16.65   -6.51    5.31]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;        1.29   43.05   29.51   10.50    0.00];
ActParams = [ActParams;             0.0334  0.0120  0.0476];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 4
MuscleNames = [MuscleNames;         {'LatDors4'}];
MuscleOrigin= [MuscleOrigin;        (Rg2t*([2.11  -31.09   12.80]/100-Ot)')'];
BodyOrigin = [BodyOrigin;           Thorax];
MuscleInsertion = [MuscleInsertion; (Rg2h*([16.53   -5.86    5.26]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;        0.96   35.15   32.06   12.00    0.00];
ActParams = [ActParams;             0.0334  0.0120  0.0476];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 5
MuscleNames = [MuscleNames;         {'LatDors5'}];
MuscleOrigin= [MuscleOrigin;        (Rg2t*([7.92  -30.84    9.92]/100-Ot)')'];
BodyOrigin = [BodyOrigin;           Thorax];
MuscleInsertion = [MuscleInsertion; (Rg2h*([16.53   -5.86    5.26]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;        0.88   31.57   31.29    7.20    0.00];
ActParams = [ActParams;             0.0334  0.0120  0.0476];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 6
MuscleNames = [MuscleNames;         {'LatDors6'}];
MuscleOrigin= [MuscleOrigin;        (Rg2t*([10.42  -29.78    8.51]/100-Ot)')'];
BodyOrigin = [BodyOrigin;           Thorax];
MuscleInsertion = [MuscleInsertion; (Rg2h*([16.65   -6.51    5.31]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;        1.05   40.69   34.02    6.90    0.00];
ActParams = [ActParams;             0.0334  0.0120  0.0476];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

%% MusGroup: Pectoralis major, thoracic portion > thorax to humerus
GroupName = 'Pectoralis_major_thoracic_portion';
TDSEM.getForceSet().addGroup(GroupName)

% 1
MuscleNames = [MuscleNames;         {'PectMajT1'}];
MuscleOrigin= [MuscleOrigin;        (Rg2t*([6.12  -15.74   -3.21]/100-Ot)')'];
BodyOrigin = [BodyOrigin;           Thorax];
MuscleInsertion = [MuscleInsertion; (Rg2h*([17.46   -8.36    5.05]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;        1.25   26.92   18.84    3.60    0.00];
ActParams = [ActParams;             0.0318  0.0118  0.0470];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 2
MuscleNames = [MuscleNames;         {'PectMajT2'}];
MuscleOrigin= [MuscleOrigin;        (Rg2t*([2.79  -14.03   -3.92]/100-Ot)')'];
BodyOrigin = [BodyOrigin;           Thorax];
MuscleInsertion = [MuscleInsertion; (Rg2h*([17.55   -8.92    5.09]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;        1.18   24.48   18.30    4.30    0.00];
ActParams = [ActParams;             0.0302  0.0098  0.0421];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 3
MuscleNames = [MuscleNames;         {'PectMajT3'}];
MuscleOrigin= [MuscleOrigin;        (Rg2t*([0.84  -12.23   -3.48]/100-Ot)')'];
BodyOrigin = [BodyOrigin;           Thorax];
MuscleInsertion = [MuscleInsertion; (Rg2h*([17.58   -9.42    5.16]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;        1.65   34.75   18.53    5.30    0.00];
ActParams = [ActParams;             0.0302  0.0098  0.0421];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 4
MuscleNames = [MuscleNames;         {'PectMajT4'}];
MuscleOrigin= [MuscleOrigin;        (Rg2t*([1.32  -10.06   -3.72]/100-Ot)')'];
BodyOrigin = [BodyOrigin;           Thorax];
MuscleInsertion = [MuscleInsertion; (Rg2h*([17.52   -8.48    5.00]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;        1.57   33.01   18.33    2.80    0.00];
ActParams = [ActParams;             0.0282  0.0071  0.0353];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 5
MuscleNames = [MuscleNames;         {'PectMajT5'}];
MuscleOrigin= [MuscleOrigin;        (Rg2t*([0.71   -4.18   -1.90]/100-Ot)')'];
BodyOrigin = [BodyOrigin;           Thorax];
MuscleInsertion = [MuscleInsertion; (Rg2h*([17.44   -7.48    4.87]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;        1.33   22.73   15.00    2.60    0.00];
ActParams = [ActParams;             0.0282  0.0071  0.0353];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 6
MuscleNames = [MuscleNames;         {'PectMajT6'}];
MuscleOrigin= [MuscleOrigin;        (Rg2t*([1.16   -2.27   -0.61]/100-Ot)')'];
BodyOrigin = [BodyOrigin;           Thorax];
MuscleInsertion = [MuscleInsertion; (Rg2h*([17.52   -8.48    5.00]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;        1.98   32.43   14.49    3.60    0.00];
ActParams = [ActParams;             0.0359  0.0159  0.0572];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

%% MusGroup: Pectoralis major, clavicular portion > clavicle to humerus
GroupName = 'Pectoralis_major_clavicular_portion';
TDSEM.getForceSet().addGroup(GroupName)

% 1
MuscleNames = [MuscleNames;         {'PectMajC1'}];
MuscleOrigin= [MuscleOrigin;        (Rg2c*([6.45    0.24    1.04]/100-Oc)')'];
BodyOrigin = [BodyOrigin;           Clavicle];
MuscleInsertion = [MuscleInsertion; (Rg2h*([17.81  -10.89    5.33]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;        1.79   27.69   13.63    1.70    0.00];
ActParams = [ActParams;             0.0359  0.0159  0.0572];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 2
MuscleNames = [MuscleNames;         {'PectMajC2'}];
MuscleOrigin= [MuscleOrigin;        (Rg2c*([8.20    0.69    1.89]/100-Oc)')'];
BodyOrigin = [BodyOrigin;           Clavicle];
MuscleInsertion = [MuscleInsertion; (Rg2h*([17.44   -7.48    4.87]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;        1.13   13.99   10.91    1.40    0.00];
ActParams = [ActParams;             0.0359  0.0159  0.0572];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

%% MusGroup: Biceps, long head > scapula to radius
GroupName = 'Biceps_brachii_long_head';
TDSEM.getForceSet().addGroup(GroupName)

% In .dsp file, two seperate elements are given for the long head, these
% are combined though a wrapping geometry here, as this arrangement does not work in OpenSim

% part 1: scapula to humerus
MuscleNames = [MuscleNames;         {'BicLongProx'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([15.35   -0.14    7.24]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2h*([17.12   -0.28    4.56]/100-Oh)')'];
BodyInsertion = [BodyInsertion;     Humerus];
MuscleParams = [MuscleParams;        3.47   66.20   12.92   23.35    0.00];
ActParams = [ActParams;             0.0359  0.0159  0.0572];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% part 1: humerus to radius
MuscleNames = [MuscleNames;         {'BicLongDist'}];
MuscleOrigin= [MuscleOrigin;        (Rg2h*([16.90   -3.52    4.42]/100-Oh)')'];
BodyOrigin = [BodyOrigin;           Humerus];
MuscleInsertion = [MuscleInsertion; (Rg2r*([19.77  -36.03    6.84]/100-Or)')'];
BodyInsertion = [BodyInsertion;     Radius];
MuscleParams = [MuscleParams;        3.47   66.20   12.92   23.35    0.00];
ActParams = [ActParams;             0.0359  0.0159  0.0572];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

%Combined: scapula to radius
MuscleNames = [MuscleNames;         {'BicLong'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([15.35   -0.14    7.24]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2r*([19.77  -36.03    6.84]/100-Or)')'];
BodyInsertion = [BodyInsertion;     Radius];
MuscleParams = [MuscleParams;        3.47   66.20   12.92   23.35    0.00];
ActParams = [ActParams;             0.0359  0.0159  0.0572];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

%% MusGroup: Biceps, short head > scapula to radius
GroupName = 'Biceps_brachii_short_head';
TDSEM.getForceSet().addGroup(GroupName)

% 1
MuscleNames = [MuscleNames;         {'BicShort1'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([14.24   -1.04    3.48]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2r*([19.77  -36.03    6.84]/100-Or)')'];
BodyInsertion = [BodyInsertion;     Radius];
MuscleParams = [MuscleParams;        1.73   20.79   11.70   19.13    0.00];
ActParams = [ActParams;             0.0359  0.0159  0.0572];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 2
MuscleNames = [MuscleNames;         {'BicShort2'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([14.24   -1.04    3.48]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2r*([19.77  -36.03    6.84]/100-Or)')'];
BodyInsertion = [BodyInsertion;     Radius];
MuscleParams = [MuscleParams;        3.22   31.07   11.49   19.27    0.00];
ActParams = [ActParams;             0.0359  0.0159  0.0572];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

%% MusGroup: Triceps, long head > scapula to ulna
GroupName = 'Triceps_brachii_long_head';
TDSEM.getForceSet().addGroup(GroupName)

% 1
MuscleNames = [MuscleNames;         {'TriLong1'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([15.36   -4.27   10.15]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2u*([18.48  -32.30   11.13]/100-Ou)')'];
BodyInsertion = [BodyInsertion;     Ulna];
MuscleParams = [MuscleParams;        2.23   26.97   10.08   20.41   10.00];
ActParams = [ActParams;             0.0334  0.0120  0.0476];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 2
MuscleNames = [MuscleNames;         {'TriLong2'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([15.35   -4.13    8.28]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2u*([19.30  -32.57    9.94]/100-Ou)')'];
BodyInsertion = [BodyInsertion;     Ulna];
MuscleParams = [MuscleParams;        2.96   29.55    8.81   21.93   10.00];
ActParams = [ActParams;             0.0334  0.0120  0.0476];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 3
MuscleNames = [MuscleNames;         {'TriLong3'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([15.84   -3.73    9.07]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2u*([19.68  -35.55   10.05]/100-Ou)')'];
BodyInsertion = [BodyInsertion;     Ulna];
MuscleParams = [MuscleParams;        2.83   29.64   11.83   21.80   10.00];
ActParams = [ActParams;             0.0334  0.0120  0.0476];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 4
MuscleNames = [MuscleNames;         {'TriLong4'}];
MuscleOrigin= [MuscleOrigin;        (Rg2s*([15.35   -4.13    8.28]/100-Os)')'];
BodyOrigin = [BodyOrigin;           Scapula];
MuscleInsertion = [MuscleInsertion; (Rg2u*([19.62  -35.22    9.48]/100-Ou)')'];
BodyInsertion = [BodyInsertion;     Ulna];
MuscleParams = [MuscleParams;        3.27   32.03   12.26   21.97    0.00];
ActParams = [ActParams;             0.0334  0.0120  0.0476];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

%% MusGroup: Triceps, medial head > humerus to ulna
GroupName = 'Triceps_brachii_medial_head';
TDSEM.getForceSet().addGroup(GroupName)

% 1
MuscleNames = [MuscleNames;         {'TriMed1'}];
MuscleOrigin= [MuscleOrigin;        (Rg2h*([17.24  -16.71    8.09]/100-Oh)')'];
BodyOrigin = [BodyOrigin;           Humerus];
MuscleInsertion = [MuscleInsertion; (Rg2u*([19.21  -31.35   11.90]/100-Ou)')'];
BodyInsertion = [BodyInsertion;     Ulna];
MuscleParams = [MuscleParams;        2.63   18.40    8.07    8.75   17.00];
ActParams = [ActParams;             0.0359  0.0159  0.0572];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 2
MuscleNames = [MuscleNames;         {'TriMed2'}];
MuscleOrigin= [MuscleOrigin;        (Rg2h*([17.34  -14.24    8.11]/100-Oh)')'];
BodyOrigin = [BodyOrigin;           Humerus];
MuscleInsertion = [MuscleInsertion; (Rg2u*([19.21  -31.35   11.90]/100-Ou)')'];
BodyInsertion = [BodyInsertion;     Ulna];
MuscleParams = [MuscleParams;       2.56   17.65    7.73   11.22    0.00];
ActParams = [ActParams;             0.0334  0.0120  0.0476];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 3
MuscleNames = [MuscleNames;         {'TriMed3'}];
MuscleOrigin= [MuscleOrigin;        (Rg2h*([19.82  -25.86    9.17]/100-Oh)')'];
BodyOrigin = [BodyOrigin;           Humerus];
MuscleInsertion = [MuscleInsertion; (Rg2u*([19.21  -31.35   11.90]/100-Ou)')'];
BodyInsertion = [BodyInsertion;     Ulna];
MuscleParams = [MuscleParams;       2.40   11.95    6.02    1.07    0.00];
ActParams = [ActParams;             0.0334  0.0120  0.0476];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 4
MuscleNames = [MuscleNames;         {'TriMed4'}];
MuscleOrigin= [MuscleOrigin;        (Rg2h*([19.16  -21.66    9.42]/100-Oh)')'];
BodyOrigin = [BodyOrigin;           Humerus];
MuscleInsertion = [MuscleInsertion; (Rg2u*([19.21  -31.35   11.90]/100-Ou)')'];
BodyInsertion = [BodyInsertion;     Ulna];
MuscleParams = [MuscleParams;       2.11   13.95    7.46    4.04    8.00];
ActParams = [ActParams;             0.0334  0.0120  0.0476];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 5
MuscleNames = [MuscleNames;         {'TriMed5'}];
MuscleOrigin= [MuscleOrigin;        (Rg2h*([17.85  -17.41    8.88]/100-Oh)')'];
BodyOrigin = [BodyOrigin;           Humerus];
MuscleInsertion = [MuscleInsertion; (Rg2u*([19.21  -31.35   11.90]/100-Ou)')'];
BodyInsertion = [BodyInsertion;     Ulna];
MuscleParams = [MuscleParams;       1.07    7.70    8.07    7.38    0.00];
ActParams = [ActParams;             0.0334  0.0120  0.0476];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

%% MusGroup: Triceps, lateral head > humerus to ulna
GroupName = 'Triceps_brachii_lateral_head';
TDSEM.getForceSet().addGroup(GroupName)

% 1
MuscleNames = [MuscleNames;         {'TriLat1'}];
MuscleOrigin= [MuscleOrigin;        (Rg2h*([18.46   -7.28    7.63]/100-Oh)')'];
BodyOrigin = [BodyOrigin;           Humerus];
MuscleInsertion = [MuscleInsertion; (Rg2u*([18.97  -29.82   11.55]/100-Ou)')'];
BodyInsertion = [BodyInsertion;     Ulna];
MuscleParams = [MuscleParams;       1.53   12.50    7.58   17.07    0.00];
ActParams = [ActParams;             0.0334  0.0120  0.0476];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 2
MuscleNames = [MuscleNames;         {'TriLat2'}];
MuscleOrigin= [MuscleOrigin;        (Rg2h*([18.46   -7.28    7.63]/100-Oh)')'];
BodyOrigin = [BodyOrigin;           Humerus];
MuscleInsertion = [MuscleInsertion; (Rg2u*([19.12  -30.06   11.63]/100-Ou)')'];
BodyInsertion = [BodyInsertion;     Ulna];
MuscleParams = [MuscleParams;       4.10   33.20    7.66   17.70    5.00];
ActParams = [ActParams;             0.0334  0.0120  0.0476];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 3
MuscleNames = [MuscleNames;         {'TriLat3'}];
MuscleOrigin= [MuscleOrigin;        (Rg2h*([18.46   -7.28    7.63]/100-Oh)')'];
BodyOrigin = [BodyOrigin;           Humerus];
MuscleInsertion = [MuscleInsertion; (Rg2u*([19.85  -30.61   11.05]/100-Ou)')'];
BodyInsertion = [BodyInsertion;     Ulna];
MuscleParams = [MuscleParams;       2.19   15.20    6.56   19.11   10.00];
ActParams = [ActParams;             0.0334  0.0120  0.0476];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 4
MuscleNames = [MuscleNames;         {'TriLat4'}];
MuscleOrigin= [MuscleOrigin;        (Rg2h*([19.15  -11.28    7.62]/100-Oh)')'];
BodyOrigin = [BodyOrigin;           Humerus];
MuscleInsertion = [MuscleInsertion; (Rg2u*([19.85  -30.61   11.05]/100-Ou)')'];
BodyInsertion = [BodyInsertion;     Ulna];
MuscleParams = [MuscleParams;       2.75   16.20    6.38   15.70   10.00];
ActParams = [ActParams;             0.0334  0.0120  0.0476];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 5
MuscleNames = [MuscleNames;         {'TriLat5'}];
MuscleOrigin= [MuscleOrigin;        (Rg2h*([19.15  -11.28    7.62]/100-Oh)')'];
BodyOrigin = [BodyOrigin;           Humerus];
MuscleInsertion = [MuscleInsertion; (Rg2u*([19.56  -30.22   11.02]/100-Ou)')'];
BodyInsertion = [BodyInsertion;     Ulna];
MuscleParams = [MuscleParams;       0.87    5.85    6.38   15.70   17.00];
ActParams = [ActParams;             0.0334  0.0120  0.0476];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

%% MusGroup: Brachialis > humerus to ulna
GroupName = 'Brachialis';
TDSEM.getForceSet().addGroup(GroupName)

% 1
MuscleNames = [MuscleNames;         {'Brach1'}];
MuscleOrigin= [MuscleOrigin;        (Rg2h*([19.00  -16.64    7.81]/100-Oh)')'];
BodyOrigin = [BodyOrigin;           Humerus];
MuscleInsertion = [MuscleInsertion; (Rg2u*([17.96  -35.29    9.61]/100-Ou)')'];
BodyInsertion = [BodyInsertion;     Ulna];
MuscleParams = [MuscleParams;       3.14   29.10    8.76    8.07    0.00];
ActParams = [ActParams;             0.0334  0.0120  0.0476];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 2
MuscleNames = [MuscleNames;         {'Brach2'}];
MuscleOrigin= [MuscleOrigin;        (Rg2h*([17.39  -17.30    7.48]/100-Oh)')'];
BodyOrigin = [BodyOrigin;           Humerus];
MuscleInsertion = [MuscleInsertion; (Rg2u*([17.76  -35.03   10.02]/100-Ou)')'];
BodyInsertion = [BodyInsertion;     Ulna];
MuscleParams = [MuscleParams;       1.58   15.90    9.53    5.92    0.00];
ActParams = [ActParams;             0.0334  0.0120  0.0476];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 3
MuscleNames = [MuscleNames;         {'Brach3'}];
MuscleOrigin= [MuscleOrigin;        (Rg2h*([17.26  -19.88    8.40]/100-Oh)')'];
BodyOrigin = [BodyOrigin;           Humerus];
MuscleInsertion = [MuscleInsertion; (Rg2u*([17.34  -33.88   10.47]/100-Ou)')'];
BodyInsertion = [BodyInsertion;     Ulna];
MuscleParams = [MuscleParams;       1.57   14.65    8.70    3.94    0.00];
ActParams = [ActParams;             0.0334  0.0120  0.0476];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 4
MuscleNames = [MuscleNames;         {'Brach4'}];
MuscleOrigin= [MuscleOrigin;        (Rg2h*([18.02  -20.92    8.00]/100-Oh)')'];
BodyOrigin = [BodyOrigin;           Humerus];
MuscleInsertion = [MuscleInsertion; (Rg2u*([17.98  -35.00    9.74]/100-Ou)')'];
BodyInsertion = [BodyInsertion;     Ulna];
MuscleParams = [MuscleParams;       0.87    7.00    7.58    3.17    0.00];
ActParams = [ActParams;             0.0334  0.0120  0.0476];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 5
MuscleNames = [MuscleNames;         {'Brach5'}];
MuscleOrigin= [MuscleOrigin;        (Rg2h*([17.40  -23.91    9.40]/100-Oh)')'];
BodyOrigin = [BodyOrigin;           Humerus];
MuscleInsertion = [MuscleInsertion; (Rg2u*([17.54  -34.57   10.26]/100-Ou)')'];
BodyInsertion = [BodyInsertion;     Ulna];
MuscleParams = [MuscleParams;       1.01    6.60    6.19    2.09    0.00];
ActParams = [ActParams;             0.0334  0.0120  0.0476];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 6
MuscleNames = [MuscleNames;         {'Brach6'}];
MuscleOrigin= [MuscleOrigin;        (Rg2h*([18.13  -24.78    8.51]/100-Oh)')'];
BodyOrigin = [BodyOrigin;           Humerus];
MuscleInsertion = [MuscleInsertion; (Rg2u*([17.27  -34.10   10.25]/100-Ou)')'];
BodyInsertion = [BodyInsertion;     Ulna];
MuscleParams = [MuscleParams;       1.04    4.10    4.72    3.50    0.00];
ActParams = [ActParams;             0.0334  0.0120  0.0476];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 7
MuscleNames = [MuscleNames;         {'Brach7'}];
MuscleOrigin= [MuscleOrigin;        (Rg2h*([17.43  -25.44    9.42]/100-Oh)')'];
BodyOrigin = [BodyOrigin;           Humerus];
MuscleInsertion = [MuscleInsertion; (Rg2u*([18.17  -34.81    9.48]/100-Ou)')'];
BodyInsertion = [BodyInsertion;     Ulna];
MuscleParams = [MuscleParams;       1.18    6.50    6.21    0.76    0.00];
ActParams = [ActParams;             0.0334  0.0120  0.0476];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

%% MusGroup: Anconeus > humerus to ulna
GroupName = 'Anconeus';
TDSEM.getForceSet().addGroup(GroupName)

% 1
MuscleNames = [MuscleNames;         {'Anco1'}];
MuscleOrigin= [MuscleOrigin;        (Rg2h*([20.42  -30.88    9.35]/100-Oh)')'];
BodyOrigin = [BodyOrigin;           Humerus];
MuscleInsertion = [MuscleInsertion; (Rg2u*([20.55  -32.76    9.77]/100-Ou)')'];
BodyInsertion = [BodyInsertion;     Ulna];
MuscleParams = [MuscleParams;       0.31    0.83    2.52    0.64    0.00];
ActParams = [ActParams;             0.0334  0.0120  0.0476];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 2
MuscleNames = [MuscleNames;         {'Anco2'}];
MuscleOrigin= [MuscleOrigin;        (Rg2h*([20.21  -31.28    9.35]/100-Oh)')'];
BodyOrigin = [BodyOrigin;           Humerus];
MuscleInsertion = [MuscleInsertion; (Rg2u*([20.61  -33.09    9.63]/100-Ou)')'];
BodyInsertion = [BodyInsertion;     Ulna];
MuscleParams = [MuscleParams;       0.70    1.50    2.02    0.80   15.00];
ActParams = [ActParams;             0.0334  0.0120  0.0476];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 3
MuscleNames = [MuscleNames;         {'Anco3'}];
MuscleOrigin= [MuscleOrigin;        (Rg2h*([20.35  -30.33    9.51]/100-Oh)')'];
BodyOrigin = [BodyOrigin;           Humerus];
MuscleInsertion = [MuscleInsertion; (Rg2u*([20.49  -32.44    9.91]/100-Ou)')'];
BodyInsertion = [BodyInsertion;     Ulna];
MuscleParams = [MuscleParams;       0.25    0.60    2.28    0.43    0.00];
ActParams = [ActParams;             0.0334  0.0120  0.0476];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 4
MuscleNames = [MuscleNames;         {'Anco4'}];
MuscleOrigin= [MuscleOrigin;        (Rg2h*([20.34  -31.39    8.69]/100-Oh)')'];
BodyOrigin = [BodyOrigin;           Humerus];
MuscleInsertion = [MuscleInsertion; (Rg2u*([21.12  -36.27    8.95]/100-Ou)')'];
BodyInsertion = [BodyInsertion;     Ulna];
MuscleParams = [MuscleParams;       1.18    2.20    2.70    3.00   18.00];
ActParams = [ActParams;             0.0334  0.0120  0.0476];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 4
MuscleNames = [MuscleNames;         {'Anco5'}];
MuscleOrigin= [MuscleOrigin;        (Rg2h*([20.31  -31.46    8.93]/100-Oh)')'];
BodyOrigin = [BodyOrigin;           Humerus];
MuscleInsertion = [MuscleInsertion; (Rg2u*([20.86  -34.75    9.40]/100-Ou)')'];
BodyInsertion = [BodyInsertion;     Ulna];
MuscleParams = [MuscleParams;       1.18    3.33    2.66    2.00   23.00];
ActParams = [ActParams;             0.0334  0.0120  0.0476];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];



%% MusGroup: Brachioradialis > humerus to radius
GroupName = 'Brachioradialis';
TDSEM.getForceSet().addGroup(GroupName)

% 1
MuscleNames = [MuscleNames;         {'Brachiorad1'}];
MuscleOrigin= [MuscleOrigin;        (Rg2h*([18.81  -21.71    8.77]/100-Oh)')'];
BodyOrigin = [BodyOrigin;           Humerus];
MuscleInsertion = [MuscleInsertion; (Rg2r*([17.45 -54.11 0.40]/100-Or)')'];
BodyInsertion = [BodyInsertion;     Radius];
MuscleParams = [MuscleParams;       0.30    4.70   16.13   11.97    0.00];
ActParams = [ActParams;             0.0334  0.0120  0.0476];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 2
MuscleNames = [MuscleNames;         {'Brachiorad2'}];
MuscleOrigin= [MuscleOrigin;        (Rg2h*([19.37  -23.42    9.40]/100-Oh)')'];
BodyOrigin = [BodyOrigin;           Humerus];
MuscleInsertion = [MuscleInsertion; (Rg2r*([17.45 -54.11 0.40]/100-Or)')'];
BodyInsertion = [BodyInsertion;     Radius];
MuscleParams = [MuscleParams;       0.82   14.00   16.13   11.97    0.00];
ActParams = [ActParams;             0.0334  0.0120  0.0476];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 3
MuscleNames = [MuscleNames;         {'Brachiorad3'}];
MuscleOrigin= [MuscleOrigin;        (Rg2h*([19.65  -25.08    9.56]/100-Oh)')'];
BodyOrigin = [BodyOrigin;           Humerus];
MuscleInsertion = [MuscleInsertion; (Rg2r*([17.45 -54.11 0.40]/100-Or)')'];
BodyInsertion = [BodyInsertion;     Radius];
MuscleParams = [MuscleParams;       0.52    5.97   10.66   15.42    0.00];
ActParams = [ActParams;             0.0334  0.0120  0.0476];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];


%% MusGroup: Pronator teres > humerus to radius and ulna to radius
GroupName = 'Pronator_teres';
TDSEM.getForceSet().addGroup(GroupName)

% 1 Humeral part
MuscleNames = [MuscleNames;         {'PronTerHum'}];
MuscleOrigin= [MuscleOrigin;        (Rg2h*([15.58  -29.44   11.19]/100-Oh)')'];
BodyOrigin = [BodyOrigin;           Humerus];
MuscleInsertion = [MuscleInsertion; (Rg2r*([19.32  -41.89    2.11]/100-Or)')'];
BodyInsertion = [BodyInsertion;     Radius];
MuscleParams = [MuscleParams;       5.10   27.50    5.10    8.51    0.00];
ActParams = [ActParams;             0.0334  0.0120  0.0476];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 2 Ulnar part
MuscleNames = [MuscleNames;         {'PronTerUl'}];
MuscleOrigin= [MuscleOrigin;        (Rg2u*([17.66  -33.40    8.47]/100-Ou)')'];
BodyOrigin = [BodyOrigin;           Ulna];
MuscleInsertion = [MuscleInsertion; (Rg2r*([18.85  -39.69    3.00]/100-Or)')'];
BodyInsertion = [BodyInsertion;     Radius];
MuscleParams = [MuscleParams;       1.41    4.33    3.91    4.84    0.00];
ActParams = [ActParams;             0.0334  0.0120  0.0476];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

%% MusGroup: Supinator > ulna to radius
GroupName = 'Supinator';
TDSEM.getForceSet().addGroup(GroupName)

% 1
MuscleNames = [MuscleNames;         {'Supin1'}];
MuscleOrigin= [MuscleOrigin;        (Rg2u*([21.20  -39.18    7.88]/100-Ou)')'];
BodyOrigin = [BodyOrigin;           Ulna];
MuscleInsertion = [MuscleInsertion; (Rg2r*([19.33  -39.67    3.08]/100-Or)')'];
BodyInsertion = [BodyInsertion;     Radius];
MuscleParams = [MuscleParams;       0.47    0.84    2.67    2.54    0.00];
ActParams = [ActParams;             0.0334  0.0120  0.0476];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 2
MuscleNames = [MuscleNames;         {'Supin2'}];
MuscleOrigin= [MuscleOrigin;        (Rg2u*([20.89  -37.46    6.96]/100-Ou)')'];
BodyOrigin = [BodyOrigin;           Ulna];
MuscleInsertion = [MuscleInsertion; (Rg2r*([19.82  -38.60    3.67]/100-Or)')'];
BodyInsertion = [BodyInsertion;     Radius];
MuscleParams = [MuscleParams;       2.32    3.64    1.48    2.31    0.00];
ActParams = [ActParams;             0.0334  0.0120  0.0476];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 3
MuscleNames = [MuscleNames;         {'Supin3'}];
MuscleOrigin= [MuscleOrigin;        (Rg2u*([20.97  -35.87    7.64]/100-Ou)')'];
BodyOrigin = [BodyOrigin;           Ulna];
MuscleInsertion = [MuscleInsertion; (Rg2r*([19.18  -37.36    3.88]/100-Or)')'];
BodyInsertion = [BodyInsertion;     Radius];
MuscleParams = [MuscleParams;       1.26    3.36    2.52    1.50    0.00];
ActParams = [ActParams;             0.0334  0.0120  0.0476];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 4
MuscleNames = [MuscleNames;         {'Supin4'}];
MuscleOrigin= [MuscleOrigin;        (Rg2u*([20.88  -34.90    7.74]/100-Ou)')'];
BodyOrigin = [BodyOrigin;           Ulna];
MuscleInsertion = [MuscleInsertion; (Rg2r*([19.08  -36.66    4.46]/100-Or)')'];
BodyInsertion = [BodyInsertion;     Radius];
MuscleParams = [MuscleParams;       1.48    2.96    2.63    1.45    0.00];
ActParams = [ActParams;             0.0334  0.0120  0.0476];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 5
MuscleNames = [MuscleNames;         {'Supin5'}];
MuscleOrigin= [MuscleOrigin;        (Rg2u*([20.78  -33.93    7.85]/100-Ou)')'];
BodyOrigin = [BodyOrigin;           Ulna];
MuscleInsertion = [MuscleInsertion; (Rg2r*([18.99  -35.96    5.04]/100-Or)')'];
BodyInsertion = [BodyInsertion;     Radius];
MuscleParams = [MuscleParams;       2.85    6.76    2.74    1.39    2.00];
ActParams = [ActParams;             0.0334  0.0120  0.0476];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

%% MusGroup: Pronator quadratus > radius to ulna
GroupName = 'Pronator_quadratus';
TDSEM.getForceSet().addGroup(GroupName)

% 1
MuscleNames = [MuscleNames;         {'PronQuad1'}];
MuscleOrigin= [MuscleOrigin;        (Rg2r*([18.50  -52.33    1.51]/100-Or)')'];
BodyOrigin = [BodyOrigin;           Radius];
MuscleInsertion = [MuscleInsertion; (Rg2u*([19.98  -51.16    4.58]/100-Ou)')'];
BodyInsertion = [BodyInsertion;     Ulna];
MuscleParams = [MuscleParams;       0.73    1.63    3.77    0.01    0.00];
ActParams = [ActParams;             0.0334  0.0120  0.0476];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 2
MuscleNames = [MuscleNames;         {'PronQuad2'}];
MuscleOrigin= [MuscleOrigin;        (Rg2r*([18.40  -52.79    1.30]/100-Or)')'];
BodyOrigin = [BodyOrigin;           Radius];
MuscleInsertion = [MuscleInsertion; (Rg2u*([20.22  -52.84    3.91]/100-Ou)')'];
BodyInsertion = [BodyInsertion;     Ulna];
MuscleParams = [MuscleParams;       1.78    3.47    3.86    0.01    0.00];
ActParams = [ActParams;             0.0334  0.0120  0.0476];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

% 3
MuscleNames = [MuscleNames;         {'PronQuad3'}];
MuscleOrigin= [MuscleOrigin;        (Rg2r*([18.16  -53.75    1.44]/100-Or)')'];
BodyOrigin = [BodyOrigin;           Radius];
MuscleInsertion = [MuscleInsertion; (Rg2r*([20.34  -53.98    3.53]/100-Ou)')'];
BodyInsertion = [BodyInsertion;     Ulna];
MuscleParams = [MuscleParams;       2.19    4.93    3.52    0.01    0.00];
ActParams = [ActParams;             0.0334  0.0120  0.0476];
PathWraps = [PathWraps; NaN];
Group = [Group; GroupName];

%%%%%%%%%%%%
%% Loop through structures to add muscle-elements
%%%%%%%%%%%%

metabolics = Umberger2010MuscleMetabolicsProbe();
metabolics.setName('MuscleMetabolics');

for m = 1:size(MuscleNames,1)
    
    % Exemption for element modeling long head of the biceps, which needs a
    % via pont
    if strcmp(MuscleNames(m),'BicLong')
        disp('Long Head Biceps Exemption')
    
        % create muscle                     Name              Fmax = PCSA*Smax            OFL                  TSL                PenAngle 
    mus = Millard2012EquilibriumMuscle(MuscleNames(m),MuscleParams(m,1)*Smax,MuscleParams(m,3)/100,MuscleParams(m,4)/100,deg2rad(MuscleParams(m,5)));
    mus.set_appliesForce(1);
    
    % Via point is at the midpoint of omitted attachments on the humerus in DSEM
    A = [17.12   -0.28    4.56]/100;
    B = [16.90   -3.52    4.42]/100;
    ViaPoint = (A+B)/2;
    ViaPoint = Rg2h*(ViaPoint-Oh)';
    
    % Add Origin
    mus.addNewPathPoint('Origin',BodyOrigin(m),Vec3(MuscleOrigin(m,1),MuscleOrigin(m,2),MuscleOrigin(m,3)));
    % Add ViaPoint
    mus.addNewPathPoint('ViaPoint',Humerus,Vec3(ViaPoint(1),ViaPoint(2),ViaPoint(3)));
    % Add Insertion
    mus.addNewPathPoint('Insertion',BodyInsertion(m),Vec3(MuscleInsertion(m,1),MuscleInsertion(m,2),MuscleInsertion(m,3)));    
        
    % Add PathWrapp
   
    
    % Add muscle to model
    TDSEM.addForce(mus);
    
    % Add muscle to muscle group
    TDSEM.getForceSet().addObjectToGroup(Group(m),MuscleNames(m));
    
    % Add metabolic probe for muscle  fiber ratio       mass
    metabolics.addMuscle(MuscleNames(m,:),0.5,MuscleParams(m,2)/1000);
    
    else
    
    % create muscle                     Name              Fmax = PCSA*Smax            OFL                  TSL                PenAngle 
    mus = Millard2012EquilibriumMuscle(MuscleNames(m),MuscleParams(m,1)*Smax,MuscleParams(m,3)/100,MuscleParams(m,4)/100,deg2rad(MuscleParams(m,5)));
    mus.set_appliesForce(1);
    
    % Add Origin
    mus.addNewPathPoint('Origin',BodyOrigin(m),Vec3(MuscleOrigin(m,1),MuscleOrigin(m,2),MuscleOrigin(m,3)));
    % Add Insertion
    mus.addNewPathPoint('Insertion',BodyInsertion(m),Vec3(MuscleInsertion(m,1),MuscleInsertion(m,2),MuscleInsertion(m,3)));

    % Add PathWrapp
   
    
    % Add muscle to model
    TDSEM.addForce(mus);
    
    % Add muscle to muscle group
    TDSEM.getForceSet().addObjectToGroup(Group(m),MuscleNames(m));
    
    % Add metabolic probe for muscle  fiber ratio       mass
    metabolics.addMuscle(MuscleNames(m,:),0.5,MuscleParams(m,2)/1000);
    
    end
     
    
end


TDSEM.addProbe(metabolics);