% Marker('name',Frame,Vec3(Loc))

% import opensim libraries
import org.opensim.modeling.*

%% Thorax
% IJ
Loc = Rg2t*(IJ-Ot)';
Mark = Marker('IJ',Thorax,Vec3(Loc(1),Loc(2),Loc(3)));
TDSEM.addMarker(Mark);

% PX
Loc = Rg2t*(PX-Ot)';
Mark = Marker('PX',Thorax,Vec3(Loc(1),Loc(2),Loc(3)));
TDSEM.addMarker(Mark);

% C7
Loc = Rg2t*(C7-Ot)';
Mark = Marker('C7',Thorax,Vec3(Loc(1),Loc(2),Loc(3)));
TDSEM.addMarker(Mark);

% T1
Loc = Rg2t*(T1-Ot)';
Mark = Marker('T1',Thorax,Vec3(Loc(1),Loc(2),Loc(3)));
TDSEM.addMarker(Mark);

% T8
Loc = Rg2t*(T8-Ot)';
Mark = Marker('T8',Thorax,Vec3(Loc(1),Loc(2),Loc(3)));
TDSEM.addMarker(Mark);

% COM
Loc = Rg2t*(COMthorax-Ot)';
Mark = Marker('ThoraxCenterOfMass',Thorax,Vec3(Loc(1),Loc(2),Loc(3)));
TDSEM.addMarker(Mark);

%% Clavicle
% SC
Loc = Rg2c*(SC-Oc)';
Mark = Marker('SC',Clavicle,Vec3(Loc(1),Loc(2),Loc(3)));
TDSEM.addMarker(Mark);

% AC
Loc = Rg2c*(AC-Oc)';
Mark = Marker('AC',Clavicle,Vec3(Loc(1),Loc(2),Loc(3)));
TDSEM.addMarker(Mark);

% COM
Loc = Rg2c*(COMclavicle-Oc)';
Mark = Marker('ClavicleCenterOfMass',Clavicle,Vec3(Loc(1),Loc(2),Loc(3)));
TDSEM.addMarker(Mark);

%% Scapula
% TS
Loc = Rg2s*(TS-Os)';
Mark = Marker('TS',Scapula,Vec3(Loc(1),Loc(2),Loc(3)));
TDSEM.addMarker(Mark);

% AI
Loc = Rg2s*(AI-Os)';
Mark = Marker('AI',Scapula,Vec3(Loc(1),Loc(2),Loc(3)));
TDSEM.addMarker(Mark);

% AA
Loc = Rg2s*(AA-Os)';
Mark = Marker('AA',Scapula,Vec3(Loc(1),Loc(2),Loc(3)));
TDSEM.addMarker(Mark);

% PC
Loc = Rg2s*(PC-Os)';
Mark = Marker('PC',Scapula,Vec3(Loc(1),Loc(2),Loc(3)));
TDSEM.addMarker(Mark);

% MidPointGlenoid
Loc = Rg2s*(MidPointGlenoid-Os)';
Mark = Marker('MidPointGlenoid',Scapula,Vec3(Loc(1),Loc(2),Loc(3)));
TDSEM.addMarker(Mark);

% COM
Loc = Rg2s*(COMscapula-Os)';
Mark = Marker('ScapulaCenterOfMass',Scapula,Vec3(Loc(1),Loc(2),Loc(3)));
TDSEM.addMarker(Mark);

% Scapular Centerpoint
Loc = Rg2s*((TS+AA+AI)/3-Os)';
Mark = Marker('ScapulaCenterPoint',Scapula,Vec3(Loc(1),Loc(2),Loc(3)));
TDSEM.addMarker(Mark);


%% Humerus
% GH
Loc = Rg2h*(GHj-Oh)';
Mark = Marker('GH',Humerus,Vec3(Loc(1),Loc(2),Loc(3)));
TDSEM.addMarker(Mark);

% EM
Loc = Rg2h*(EM-Oh)';
Mark = Marker('EM',Humerus,Vec3(Loc(1),Loc(2),Loc(3)));
TDSEM.addMarker(Mark);

% EL
Loc = Rg2h*(EL-Oh)';
Mark = Marker('EL',Humerus,Vec3(Loc(1),Loc(2),Loc(3)));
TDSEM.addMarker(Mark);

% HumeralHeadCenter
Loc = Rg2h*(HumeralHeadCentre-Oh)';
Mark = Marker('HumeralHeadCenter',Humerus,Vec3(Loc(1),Loc(2),Loc(3)));
TDSEM.addMarker(Mark);

% COM
Loc = Rg2h*(COMhumerus-Oh)';
Mark = Marker('HumerusCenterOfMass',Humerus,Vec3(Loc(1),Loc(2),Loc(3)));
TDSEM.addMarker(Mark);

%% Ulna
% US
Loc = Rg2u*(US-Ou)';
Mark = Marker('US',Ulna,Vec3(Loc(1),Loc(2),Loc(3)));
TDSEM.addMarker(Mark);

% OL
Loc = Rg2u*(OL-Ou)';
Mark = Marker('OL',Ulna,Vec3(Loc(1),Loc(2),Loc(3)));
TDSEM.addMarker(Mark);

% COM
Loc = Rg2u*(COMulna-Ou)';
Mark = Marker('UlnaCenterOfMass',Ulna,Vec3(Loc(1),Loc(2),Loc(3)));
TDSEM.addMarker(Mark);

%% Radius
% RS
Loc = Rg2r*(RS-Or)';
Mark = Marker('RS',Radius,Vec3(Loc(1),Loc(2),Loc(3)));
TDSEM.addMarker(Mark);

% COM
Loc = Rg2r*(COMradius-Or)';
Mark = Marker('RadiusCenterOfMass',Radius,Vec3(Loc(1),Loc(2),Loc(3)));
TDSEM.addMarker(Mark);

%% Hand
% MidPoint Styloids
Loc = Rg2hand*(RCj-Ohand)';
Mark = Marker('MidPointStyloids',Hand,Vec3(Loc(1),Loc(2),Loc(3)));
TDSEM.addMarker(Mark);

% COM
Loc = Rg2hand*(COMhand-Ohand)';
Mark = Marker('HandCenterofMass',Hand,Vec3(Loc(1),Loc(2),Loc(3)));
TDSEM.addMarker(Mark);
