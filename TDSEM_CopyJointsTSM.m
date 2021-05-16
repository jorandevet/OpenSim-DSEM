% Script that adds joints to TDSEM bodies
% import opensim libraries
import org.opensim.modeling.*
% Load scapulothoracic joint library
Model.LoadOpenSimLibrary('C:\OpenSim 4.1\plugins\ScapulothoracicJointPlugin40_WinX64.dll');


%% ST joint 

STJ = TSM.getJointSet.get(2).clone();
STJ.setName('scapulothoracic_joint')
PF = PhysicalOffsetFrame.safeDownCast(STJ.get_frames(0));
CF = PhysicalOffsetFrame.safeDownCast(STJ.get_frames(1));
radii = STJ.getPropertyByName('thoracic_ellipsoid_radii_x_y_z');

% Pparent
% Oparent

% Pchild
% Ochild


%% GH joint 

GHJ = CustomJoint.safeDownCast(TSM.getJointSet.get(3));
GHJ.setName('glenohumeral_joint')
PF = PhysicalOffsetFrame.safeDownCast(GHJ.get_frames(0));
CF = PhysicalOffsetFrame.safeDownCast(GHJ.get_frames(1));

% Adjust Location and orientation in Frames
Pparent = Rg2s*(GHj-Os)';
Pparent = Vec3(Pparent(1),Pparent(2),Pparent(3));
PF.set_translation(Pparent);

Rh2s = Rg2s*Rg2h';
Oparent = rotm2eul(Rh2s,'XYZ');
Oparent = Vec3(Oparent(1),Oparent(2),Oparent(3));
PF.set_orientation(Oparent);

Pchild  = Rg2h*(GHj-Oh)';
Pchild  = Vec3(Pchild(1),Pchild(2),Pchild(3));
CF.set_translation(Pchild);

Ochild  = Vec3(0,0,0);
CF.set_orientation(Ochild);

% Adjust SpatialTransform
GHtrans = SpatialTransform.safeDownCast(GHJ.getSpatialTransform());
% Rotations
GHtrans.updTransformAxis(0).setCoordinateNames(ArrayStr('hum_elev_plane',1));
GHtrans.updTransformAxis(0).setFunction(LinearFunction(1,0));
GHtrans.updTransformAxis(0).setAxis(Vec3(0,1,0));
%
GHtrans.updTransformAxis(1).setCoordinateNames(ArrayStr('hum_elev',1));
GHtrans.updTransformAxis(1).setFunction(LinearFunction(1,0));
GHtrans.updTransformAxis(1).setAxis(Vec3(-1,0,0));
%
InternalRotAxis = HumeralHeadCentre - (EL+EM)/2; InternalRotAxis = InternalRotAxis/vecnorm(InternalRotAxis); InternalRotAxis = Rg2h*InternalRotAxis';
GHtrans.updTransformAxis(2).setCoordinateNames(ArrayStr('hum_int_rot',1));
GHtrans.updTransformAxis(2).setFunction(LinearFunction(1,0));
GHtrans.updTransformAxis(2).setAxis(Vec3(InternalRotAxis(1),InternalRotAxis(2),InternalRotAxis(3)));

% Translations
GHtrans.updTransformAxis(3).setFunction(Constant(0));
GHtrans.updTransformAxis(3).setAxis(Vec3(1,0,0));

GHtrans.updTransformAxis(4).setFunction(Constant(0));
GHtrans.updTransformAxis(4).setAxis(Vec3(0,1,0));

GHtrans.updTransformAxis(5).setFunction(Constant(0));
GHtrans.updTransformAxis(5).setAxis(Vec3(0,0,1));

% Adjust Coordinates
coord = GHJ.get_coordinates(0);
coord.setName('hum_elev_plane');
coord.set_default_value(0);
coord.setRange(deg2rad([-180 180]));

coord = GHJ.get_coordinates(1);
coord.setName('hum_elev');
coord.set_default_value(0);
coord.setRange(deg2rad([-180 180]));

coord = GHJ.get_coordinates(2);
coord.setName('hum_int_rot');
coord.set_default_value(0);
coord.setRange(deg2rad([-180 180]));

GHJ.print('CopyGHJ');

%% HU joint

HUJ = CustomJoint.safeDownCast(TSM.getJointSet.get(4));
HUJ.setName('humeroulnar_joint')
PF = PhysicalOffsetFrame.safeDownCast(HUJ.get_frames(0));
CF = PhysicalOffsetFrame.safeDownCast(HUJ.get_frames(1));

% Adjust offset frames
Ru2h = Rg2h*Rg2u';

Pparent = Rg2h*(HUj-Oh)';
Pparent = Vec3(Pparent(1),Pparent(2),Pparent(3));
PF.set_translation(Pparent);

Oparent = rotm2eul(Ru2h,'XYZ');
Oparent = Vec3(Oparent(1),Oparent(2),Oparent(3));
PF.set_orientation(Oparent);

Pchild  = Rg2u*(HUj-Ou)';
Pchild  = Vec3(Pchild(1),Pchild(2),Pchild(3));
CF.set_translation(Pchild);

Ochild = Vec3(0);
CF.set_orientation(Ochild);

% Adjust SpatialTransform
HUtrans = SpatialTransform.safeDownCast(HUJ.getSpatialTransform());

% From .dsp
GlobalAxis = Rg2u*[0.8531   0.0183  -0.5108]';

HUtrans.updTransformAxis(2).setCoordinateNames(ArrayStr('elbow_flexion',1));
HUtrans.updTransformAxis(2).setAxis(Vec3(GlobalAxis(1),GlobalAxis(2),GlobalAxis(3)));

% Adjust Coordinate
coord = HUJ.get_coordinates(0);
coord.setName('elbow_flexion');
coord.set_default_value(0);
coord.setRange(deg2rad([-10 150]));

HUJ.print('CopyHUJ');

%% UR joint 

URJ = CustomJoint.safeDownCast(TSM.getJointSet.get(5));
URJ.setName('radioulnar_joint')
PF = PhysicalOffsetFrame.safeDownCast(URJ.get_frames(0));
CF = PhysicalOffsetFrame.safeDownCast(URJ.get_frames(1));

% Adjust offset frames
Rr2u = Rg2u*Rg2r';

Pparent = Rg2u*(URj-Ou)';
Pparent = Vec3(Pparent(1),Pparent(2),Pparent(3));
PF.set_translation(Pparent);

Oparent = rotm2eul(Rr2u,'XYZ');
Oparent = Vec3(Oparent(1),Oparent(2),Oparent(3));
PF.set_orientation(Oparent);

Pchild  = Rg2r*(URj-Or)';
Pchild  = Vec3(Pchild(1),Pchild(2),Pchild(3));
CF.set_translation(Pchild);

Ochild = Vec3(0);
CF.set_orientation(Ochild);

% Adjust SpatialTransform
URtrans = SpatialTransform.safeDownCast(URJ.getSpatialTransform());

% From .dsp
GlobalAxis = Rg2r*[-0.0604   0.9874   0.1465]';

URtrans.updTransformAxis(1).setCoordinateNames(ArrayStr('pronation',1));
URtrans.updTransformAxis(1).setAxis(Vec3(GlobalAxis(1),GlobalAxis(2),GlobalAxis(3)));

% Adjust Coordinate
coord = URJ.get_coordinates(0);
coord.setName('pronation');
coord.set_default_value(0);
coord.setRange(deg2rad([-90 90]));

URJ.print('CopyURJ');