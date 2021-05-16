% Script that adds joints to TDSEM bodies
% import opensim libraries
import org.opensim.modeling.*
% Load scapulothoracic joint library
Model.LoadOpenSimLibrary('C:\OpenSim 4.1\plugins\ScapulothoracicJointPlugin40_WinX64.dll');

%% Moving Base

Base = FreeJoint('moving_base',TDSEM.get_ground(),Vec3(0),Vec3(0),Thorax,Vec3(0),Vec3(0));
Base.get_coordinates(0).setName('thorax_rx');
Base.get_coordinates(1).setName('thorax_ry');
Base.get_coordinates(2).setName('thorax_rz');
Base.get_coordinates(3).setName('thorax_tx');
Base.get_coordinates(4).setName('thorax_ty');
Base.get_coordinates(5).setName('thorax_tz');

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

SCJ = BallJoint('sternoclavicular_joint',Thorax,Pparent,Oparent,Clavicle,Pchild,Ochild);
SCJ.get_coordinates(0).setName('clav_depr');
SCJ.get_coordinates(1).setName('clav_prot');
SCJ.get_coordinates(2).setName('clav_ax_rot');


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

ACJ = BallJoint('acromioclavicular_joint',Clavicle,Pparent,Oparent,Scapula,Pchild,Ochild);
ACJ.get_coordinates(0).setName('scap_med_rot');
ACJ.get_coordinates(1).setName('scap_prot');
ACJ.get_coordinates(2).setName('scap_ant_tilt');

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

GHJ = BallJoint('glenohumeral_joint',Scapula,Pparent,Oparent,Humerus,Pchild,Ochild);
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
%GlobalAxis = [0.8531   0.0183  -0.5108]';

Ru2h = Rg2h*Rg2u';

Pparent = Rg2h*(HUj-Oh)';
Pparent = Vec3(Pparent(1),Pparent(2),Pparent(3));

Oparent = rotm2eul(Ru2h,'XYZ');
Oparent = Vec3(Oparent(1),Oparent(2),Oparent(3));

Pchild  = Rg2u*(HUj-Ou)';
Pchild  = Vec3(Pchild(1),Pchild(2),Pchild(3));

Ochild = Vec3(0);


HUJ = PinJoint('HumeroUlnarJoint',Humerus,Pparent,Oparent,Ulna,Pchild,Ochild);

% HUJ = CustomJoint('HumeroUlnarJoint',Humerus,Pparent,Oparent,Ulna,Pchild,Ochild,SpatialTransform());

HUJ.get_coordinates(0).setName('Elbow_Flexion');

HUJ.get_coordinates(0).setRange(deg2rad([0 180]));

TDSEM.addJoint(HUJ);

%% UR joint   Needs Alteration: In the DSEM, the whole forearm rotates, so rotation of the radius with respect to the ulna along this axis is incorrect

% From .dsp
GlobalAxis = [-0.0604   0.9874   0.1465]';

Rr2u = Rg2u*Rg2r';

Pparent = Rg2u*(URj-Ou)';
Pparent = Vec3(Pparent(1),Pparent(2),Pparent(3));

Oparent = rotm2eul(Rr2u,'XYZ');
Oparent = Vec3(Oparent(1),Oparent(2),Oparent(3));

Pchild  = Rg2r*(URj-Or)';
Pchild  = Vec3(Pchild(1),Pchild(2),Pchild(3));

Ochild = Vec3(0);

RUJ = WeldJoint('RadioUlnarJoint',Ulna,Pparent,Oparent,Radius,Pchild,Ochild);
%RUJ = CustomJoint('RadioUlnarJoint',Ulna,Pparent,Oparent,Radius,Pchild,Ochild);

%RUJ.get_coordinates(0).setName('Pronation');

TDSEM.addJoint(RUJ);

%% RC joint
Rhand2r = Rg2r*Rg2hand';


Pparent = Rg2r*(RCj-Or)';
Pparent = Vec3(Pparent(1),Pparent(2),Pparent(3));

Oparent = rotm2eul(Rhand2r,'XYZ');
Oparent = Vec3(Oparent(1),Oparent(2),Oparent(3));

Pchild  = Rg2hand*(RCj-Ohand)';
Pchild  = Vec3(Pchild(1),Pchild(2),Pchild(3));
Ochild  = Vec3(0,0,0);
RCJ = WeldJoint('radiocarpal_joint',Radius,Pparent,Oparent,Hand,Pchild,Ochild);


%%
TDSEM.addJoint(RCJ);


TDSEM.finalizeConnections();