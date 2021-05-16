% Code that add ligament elements from .dsp file to TDSEM.osim


%% Coraco-clavicular  ligaments

% Conoid 
% P1= Rg2c*([11.84    1.40    7.13]/100-Oc)' %(clavicle)
% P2= Rg2s*([11.80    0.22    7.14]/100-Os)' %(scapula)

% Trapezoid 
% P1= Rg2c*([13.23    1.40    6.64]/100-Oc)' %(clavicle)
% P2= Rg2s*([12.30    0.72    6.57]/100-Os)' %(scapula)


%% Costo-clavicular ligaments

% 1
% P1=  Rg2c*([5.02   -0.18    2.38]/100-Oc)'%(clavicle)
% P2=  Rg2t*([5.09   -0.49    2.47]/100-Ot)'%(thorax)

% 2
% P1=  Rg2c*([3.84   -0.76    1.62]/100-Oc)'%(clavicle)
% P2=  Rg2t*([3.90   -0.81    2.05]-Ot)'%(thorax)

% 2
% P1=  Rg2c*([3.34   -1.25    1.80]/100-Oc)'%(clavicle)
% P2=  Rg2t*([2.92   -1.57    2.59]/100-Ot)'%(thorax)

%% Sterno-clavicular ligament

% 1
% P1= Rg2t*([0.70   -0.20    0.84]/100-Ot])'%(thorax)
% P2= Rg2c*([1.89    0.70    2.69]/100-Oc])'%(clavicle)

% 2
% P1= Rg2t*([0.02   -0.05    1.75]/100-Ot])'%(thorax)
% P2= Rg2c*([1.89    0.70    2.69]/100-Oc])'%(clavicle)

%% Gleno-humeral ligaments

%1
%P1 = Rg2s*([16.52   -2.45    8.83]/100-Os)'% (scapula)
%P2 = Rg2h*([18.06   -3.46    7.86]/100-Oh)'% (humerus)

%2
%P1 = Rg2s*([15.19   -0.63    8.88]/100-Os)'% (scapula)
%P2 = Rg2h*([18.38    0.19    6.47]/100-Oh)'% (humerus)

%3
%P1 = Rg2s*([13.68    0.57    5.30]/100-Os)'% (scapula)
%P2 = Rg2h*([17.79   -0.14    4.41]/100-Oh)'% (humerus)

%4
%P1 = Rg2s*([14.29   -0.25    6.22]/100-Os)'% (scapula)
%P2 = Rg2h*([15.21   -2.09    5.20]/100-Oh)'% (humerus)

%5
%P1 = Rg2s*([14.71   -2.61    6.48]/100-Os)'% (scapula)
%P2 = Rg2h*([15.88   -4.32    6.59]/100-Oh)'% (humerus)

%6
%P1 = Rg2s*([14.71   -2.61    6.48]/100-Os)'% (scapula)
%P2 = Rg2h*([17.12   -5.01    7.92]/100-Oh)'% (humerus)