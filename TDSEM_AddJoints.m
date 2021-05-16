% Script that adds joints to TDSEM bodies
% import opensim libraries
import org.opensim.modeling.*
% Load scapulothoracic joint library
Model.LoadOpenSimLibrary('C:\OpenSim 4.1\plugins\ScapulothoracicJointPlugin40_WinX64.dll');

%% Moving Base

Base = FreeJoint('MovingBase',TDSEM.get_ground(),Vec3(0),Vec3(0),Thorax,Vec3(0),Vec3(0));
Base.get_coordinates(0).setName('Thorax_Rx');
Base.get_coordinates(1).setName('Thorax_Ry');
Base.get_coordinates(2).setName('Thorax_Rz');
Base.get_coordinates(3).setName('Thorax_Tx');
Base.get_coordinates(4).setName('Thorax_Ty');
Base.get_coordinates(5).setName('Thorax_Tz');

Base.get_coordinates(0).setRange([-pi,pi]);
Base.get_coordinates(1).setRange([-pi,pi]);
Base.get_coordinates(2).setRange([-pi,pi]);
Base.get_coordinates(3).setRange([-5,5]);
Base.get_coordinates(4).setRange([-5,5]);
Base.get_coordinates(5).setRange([-5,5]);

TDSEM.addJoint(Base);

%% SC joint

Pparent = Rg2t*(SCj-Ot)';
Pparent = Vec3(Pparent(1),Pparent(2),Pparent(3));

Rc2t = Rg2t*Rg2c';
Oparent = rotm2eul(Rc2t,'XYZ');
Oparent = Vec3(Oparent(1),Oparent(2),Oparent(3));

Pchild  = Rg2c*(SCj-Oc)';
Pchild  = Vec3(Pchild(1),Pchild(2),Pchild(3));

Ochild  = Vec3(0,0,0);

SCJ = BallJoint('SternoClavicularJoint',Thorax,Pparent,Oparent,Clavicle,Pchild,Ochild);
SCJ.get_coordinates(0).setName('Clav_Depression');
SCJ.get_coordinates(1).setName('Clav_Protraction');
SCJ.get_coordinates(2).setName('Clav_Axial_Rot');


SCJ.get_coordinates(0).setRange(deg2rad([-45 45]));
SCJ.get_coordinates(1).setRange(deg2rad([-45 45]));
SCJ.get_coordinates(2).setRange(deg2rad([-45 45]));
%SCJ = UniversalJoint('SternoClavicularJoint',

TDSEM.addJoint(SCJ);

%% AC joint 
Pparent = Rg2c*(ACj-Oc)';
Pparent = Vec3(Pparent(1),Pparent(2),Pparent(3));

Rs2c = Rg2c*Rg2s';
Oparent = rotm2eul(Rs2c,'XYZ');
Oparent = Vec3(Oparent(1),Oparent(2),Oparent(3));

Pchild  = Rg2s*(ACj-Os)';
Pchild  = Vec3(Pchild(1),Pchild(2),Pchild(3));

Ochild  = Vec3(0,0,0);

ACJ = BallJoint('AcromioClavicularJoint',Clavicle,Pparent,Oparent,Scapula,Pchild,Ochild);
ACJ.get_coordinates(0).setName('Scap_Med_Rot');
ACJ.get_coordinates(1).setName('Scap_Prot');
ACJ.get_coordinates(2).setName('Scap_Ant_Tilt');

ACJ.get_coordinates(0).setRange(deg2rad([-45 45]));
ACJ.get_coordinates(1).setRange(deg2rad([-45 45]));
ACJ.get_coordinates(2).setRange(deg2rad([-45 45]));
%ACJ = PointConstraint('AcromioClavicularJoint',

TDSEM.addJoint(ACJ);

%% ST joint Needs inclusion


%STJ = ScapuloThoracicJoint('ScapuloThoracicJoint',


%% GH joint Needs alteration 
Pparent = Rg2s*(GHj-Os)';
Pparent = Vec3(Pparent(1),Pparent(2),Pparent(3));

Rh2s = Rg2s*Rg2h';
Oparent = rotm2eul(Rh2s,'XYZ');
Oparent = Vec3(Oparent(1),Oparent(2),Oparent(3));

Pchild  = Rg2h*(GHj-Oh)';
Pchild  = Vec3(Pchild(1),Pchild(2),Pchild(3));

Ochild  = Vec3(0,0,0);

GHJ = GimbalJoint('GlenoHumeralJoint',Scapula,Pparent,Oparent,Humerus,Pchild,Ochild);
GHJ.get_coordinates(0).setName('GH_X');
GHJ.get_coordinates(1).setName('GH_Y');
GHJ.get_coordinates(2).setName('GH_Z');

GHJ.get_coordinates(0).setRange(deg2rad([-180 180]));
GHJ.get_coordinates(1).setRange(deg2rad([-180 180]));
GHJ.get_coordinates(2).setRange(deg2rad([-180 180]));

%GHJ = CustomJoint('GlenoHumeralJoint',Scapula,Pparent,Oparent,Humerus,Pchild,Ochild,SpatialTransform());



TDSEM.addJoint(GHJ);
%% HU joint
% From .dsp
GlobalAxis = [0.8531   0.0183  -0.5108]';

% Override:
%GlobalAxis = Zh';

Pparent = Rg2h*(HUj-Oh)';
Pparent = Vec3(Pparent(1),Pparent(2),Pparent(3));
AngleParent = acos(dot(Rg2h*GlobalAxis,[0;0;1]));
AxisParent = cross(Rg2h*GlobalAxis,[0;0;1])/vecnorm(cross(Rg2h*GlobalAxis,[0;0;1]));
Oparent = rotm2eul(axang2rotm([AxisParent;AngleParent]'),'XYZ');
Oparent = Vec3(Oparent(1),Oparent(2),Oparent(3));

Pchild  = Rg2u*(HUj-Ou)';
Pchild  = Vec3(Pchild(1),Pchild(2),Pchild(3));
AngleChild=acos(dot(Rg2u*GlobalAxis,[0;0;1]));
AxisChild = cross(Rg2u*GlobalAxis,[0;0;1])/vecnorm(cross(Rg2u*GlobalAxis,[0;0;1]));
Ochild  = rotm2eul(axang2rotm([AxisChild;AngleChild]'),'XYZ');
Ochild  = Vec3(Ochild(1),Ochild(2),Ochild(3));


HUJ = PinJoint('HumeroUlnarJoint',Humerus,Pparent,Oparent,Ulna,Pchild,Ochild);

HUJ.get_coordinates(0).setName('Elbow_Flexion');

HUJ.get_coordinates(0).setRange(deg2rad([0 180]));

TDSEM.addJoint(HUJ);

%% UR joint   Needs Alteration: In the DSEM, the whole forearm rotates, so rotation of the radius with respect to the ulna along this axis is incorrect

% Forearm rotation axis in the DSEM is the vector from US to URjoint
GlobalAxis = [-0.0604   0.9874   0.1465]';

% Alterations
%GlobalAxis = (URj-US)'/vecnorm(URj-US);
%GlobalAxis = Yr';

Pparent = Rg2u*(URj-Ou)';
Pparent = Vec3(Pparent(1),Pparent(2),Pparent(3));
AngleParent = acos(dot(Rg2u*GlobalAxis,[0;0;1]));
AxisParent = cross(Rg2u*GlobalAxis,[0;0;1])/vecnorm(cross(Rg2u*GlobalAxis,[0;0;1]));
Oparent = rotm2eul(axang2rotm([AxisParent;AngleParent]'),'XYZ');
Oparent = Vec3(Oparent(1),Oparent(2),Oparent(3));

Pchild  = Rg2r*(URj-Or)';
Pchild  = Vec3(Pchild(1),Pchild(2),Pchild(3));
AngleChild=acos(dot(Rg2r*GlobalAxis,[0;0;1]));
AxisChild = cross(Rg2r*GlobalAxis,[0;0;1])/vecnorm(cross(Rg2r*GlobalAxis,[0;0;1]));
Ochild  = rotm2eul(axang2rotm([AxisChild;AngleChild]'),'XYZ');
Ochild  = Vec3(Ochild(1),Ochild(2),Ochild(3));

RUJ = PinJoint('RadioUlnarJoint',Ulna,Pparent,Oparent,Radius,Pchild,Ochild);

RUJ.get_coordinates(0).setName('Pronation');


% DoF = SpatialTransform();
% 
%         rot1 = TransformAxis();
%         rot1.setName('rotation1');
%         rot1.setAxis(Vec3(1,0,0));
%         rot1.set_function(Constant(0))
% 
%         rot2 = TransformAxis();
%         rot2.setName('rotation2');
%         rot2.set_coordinates(0,'Pronation');
%         rot2.setAxis(Vec3(0,1,0));
%         rot2.set_function(LinearFunction(1,0));
% 
%         rot3 = TransformAxis();
%         rot3.setName('rotation3');
%         rot3.setAxis(Vec3(0,0,1));
%         rot3.set_function(Constant(0));
% 
%         trans1 = TransformAxis();
%         trans1.setName('translation1');
%         trans1.setAxis(Vec3(1,0,0));
%         trans1.set_function(Constant(0));
% 
%         trans2 = TransformAxis();
%         trans2.setName('translation2');
%         trans2.setAxis(Vec3(0,1,0));
%         trans2.set_function(Constant(0));
% 
%         trans3 = TransformAxis();
%         trans3.setName('translation3');
%         trans3.setAxis(Vec3(0,0,1));
%         trans3.set_function(Constant(0));
% 
%         DoF.set_rotation1(rot1);
%         DoF.set_rotation2(rot2);
%         DoF.set_rotation3(rot3);
% 
%         DoF.set_translation1(trans1);
%         DoF.set_translation2(trans2);
%         DoF.set_translation3(trans3);
%         
% RUJ = CustomJoint('RadioUlnarJoint',Ulna,Pparent,Oparent,Radius,Pchild,Ochild,DoF);

TDSEM.addJoint(RUJ);

%% RC joint
Pparent = Rg2r*(RCj-Or)';
Pparent = Vec3(Pparent(1),Pparent(2),Pparent(3));
Oparent = Vec3(0,0,0);
Pchild  = Rg2hand*(RCj-Ohand)';
Pchild  = Vec3(Pchild(1),Pchild(2),Pchild(3));
Ochild  = Vec3(0,0,0);
RCJ = WeldJoint('RadioCarpalJoint',Radius,Pparent,Oparent,Hand,Pchild,Ochild);

%RCJ = BallJoint('RadioCarpalJoint',Radius,Pparent,Oparent,Hand,Pchild,Ochild);
%RCJ.get_coordinates(0).setName('RC1');
%RCJ.get_coordinates(1).setName('RC2');
%RCJ.get_coordinates(2).setName('RC3');

TDSEM.addJoint(RCJ);


TDSEM.finalizeConnections();