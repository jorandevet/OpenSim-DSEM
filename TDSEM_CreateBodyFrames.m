% data from .dsp file
% With this data, body frame origins (O), body-frame axis (X,Y,Z), and a
% rotation matrix from the data's ground frame to body-fixed frames (R) are
% constructed.

%%%%%%
%% 1. Global marker locations
%%%%%%


%% Bony Landmarks
% Thorax
IJ = [0 0 0];
PX = [-0.0098 -0.1327 -0.0319];
C7 = [0 0.0541 0.1242];
T1 = [0.0014 0.0362 0.1368];
T8 = [0.0098 -0.1715 0.1561];

% Clavicle
SC = [0.0197 0.0093 0.0137];
AC = [0.1651 0.0266 0.0718];

% Scapula
TS = [0.0750 -0.0117 0.1560];
AI = [0.1016 -0.1262 0.1567];
AA = [0.1826 0.0075 0.1056];
PC = [0.1424 -0.0104 0.0348];    % Taken from biceps caput breve origin
MidPointGlenoid = [0.1514 -0.0198 0.0781];

% Humerus
EM = [0.1566 -0.3079 0.1056];
EL = [0.2153 -0.3021 0.0715];
HumeralHeadCentre= [0.1686 -0.0175 0.0651];

% Ulna
OL = [0.1897 -0.3023 0.1058];
US = [0.2154 -0.5571 0.0339];

% Radius
RS = [0.1729 -0.5501 0.0001];


%% Joint locations
SCj = [0.0014 -0.0152 0.0028];
ACj = [0.1766 0.0143 0.0731];
GHj = [0.1708 -0.0192 0.0655];
HUj = [0.1936 -0.3080 0.0902];
URj = [0.2011 -0.3227 0.0687];
RCj = [0.1942 -0.5536 0.0170];


%% Center of mass locations

COMthorax   = [0.00  -14.86    5.91]/100;
COMclavicle = [8.89    1.22    4.23]/100;
COMscapula  = [12.94   -2.59   10.59]/100;
COMhumerus  = [17.87   -9.67    6.54]/100;
COMulna     = [19.53  -37.15    9.18]/100;
COMradius   = [18.85  -43.74    3.92]/100;
COMhand     = [18.22  -64.73   -0.75]/100;




%%%%
%% 2. Create body-frames from ISB recommendations
%%%%

% Thorax
Ot = IJ;

Yt = (IJ+C7)/2 - (PX+T8)/2;
Yt = Yt/vecnorm(Yt);

Zt = cross(C7-IJ,(PX+T8)/2-IJ);
Zt = Zt/vecnorm(Zt);

Xt = cross(Yt,Zt); %In Klein Breteler et al. 1999, this axis points backwards instead of forwards
Xt = Xt/vecnorm(Xt);

Rg2t = [Xt;Yt;Zt];

% Clavicle
Oc = SC;

Zc = AC-SC;
Zc = Zc/vecnorm(Zc);

Xc = cross(Yt,Zc);
Xc = Xc/vecnorm(Xc);

Yc = cross(Zc,Xc);
Yc = Yc/vecnorm(Yc);

Rg2c = [Xc;Yc;Zc];

% Scapula
Os = AA;

Zs = AA-TS;
Zs = Zs/vecnorm(Zs);

Xs = cross(AA-AI,AA-TS);
Xs = Xs/vecnorm(Xs);

Ys = cross(Zs,Xs);
Ys = Ys/vecnorm(Ys);

Rg2s = [Xs;Ys;Zs];

% Humerus
Oh = GHj;

Yh = GHj-(EL+EM)/2;
Yh = Yh/vecnorm(Yh);

Xh = cross(GHj-EL,GHj-EM);
Xh = Xh/vecnorm(Xh);

Zh = cross(Xh,Yh);
Zh = Zh/vecnorm(Zh);

Rg2h = [Xh;Yh;Zh];

% Ulna
Ou = US;

Yu = (EL+EM)/2 - US;
Yu = Yu/vecnorm(Yu);

Xu = cross(EM-US,EL-US);
Xu = Xu/vecnorm(Xu);

Zu = cross(Xu,Yu);
Zu = Zu/vecnorm(Zu);

Rg2u = [Xu;Yu;Zu];

%% Radius
Or = RS;

Yr = EL-RS;
Yr = Yr/vecnorm(Yr);

Xr = cross(EL-RS,US-RS);
Xr = Xr/vecnorm(Xr);


Zr = cross(Xr,Yr);
Zr = Zr/vecnorm(Zr);

Rg2r = [Xr;Yr;Zr];

% Hand
Ohand = COMhand;

% Y-Axis of the hand points from hand origin (palm of the hand) 
% to centerpoint of US and RS
Yhand = (US+RS)/2 -Ohand;
Yhand = Yhand/vecnorm(Yhand);

% X-axis of the hand points from hand origin through the palm of the hand 
Xhand = cross(US-Ohand,RS-Ohand);
Xhand = Xhand/vecnorm(Xhand);

% Z-axis of the hand points from the hand origin in the direction of the
% thumb
Zhand = cross(Xhand,Yhand);
Zhand = Zhand/vecnorm(Zhand);

Rg2hand = [Xhand;Yhand;Zhand];

%% For the hand, axis-directions of the Radius are used
%Ohand = RCj;
%Yhand = Yr;
%Xhand = Xr;
%Zhand = Zr;

%Rg2hand = [Xhand;Yhand;Zhand];







