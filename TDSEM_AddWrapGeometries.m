% Code that adds wrapping geometries from .dsp file into TDSEM.osim model

% import opensim libraries
import org.opensim.modeling.*

% REM ELLIPSO surfacenr mx my mz ax ay az pp po
% REM mx, my, mz: coordinates of centre of ellipsoid
% REM ax, ay, az: lengths of the axes of the ellipsoid
% REM pp, po: position and orientation nodes


%% Thorax
% ELLIPSO  1   0.00 -14.86   5.91       14.70  20.79   9.44         23  4

ThoraxEllipsoid = WrapEllipsoid();
ThoraxEllipsoid.setName('serratus_anterior');
ThoraxEllipsoid.set_active(1);
Center = Rg2t*([0.00 -0.1486   0.0591]-Ot)';
ThoraxEllipsoid.set_translation(Vec3(Center(1),Center(2),Center(3)));
ThoraxEllipsoid.set_xyz_body_rotation(Vec3(0));
ThoraxEllipsoid.set_dimensions(Vec3(0.0944,0.2079,0.1470));
ThoraxEllipsoid.set_quadrant('all');


Thorax.addWrapObject(ThoraxEllipsoid);

    
% REM BALL surfacenr mx my mz r pp po
% REM mx, my, mz: coordinates of centre of ball
% REM r: radius of the ball
% REM pp, po: position and orientation nodes
% 
% REM CYLINDER surfacenr dx dy dz sx sy sz r pp po
% REM dx, dy, dz: unit vectors in direction of axes
% REM sx, sy, sz: coordinates of a point on the long axis
% REM r: radius of the cylinder
% REM pp, po: position and orientation nodes

%% Humerus
% BALL  2  17.19  -2.03   6.29   2.72 26 13
HumerusSphere1 = WrapSphere();
HumerusSphere1.setName('deltoid');
HumerusSphere1.set_active(1);
Center = Rg2h*([0.1719  -0.0203   0.0629]-Oh)';
HumerusSphere1.set_translation(Vec3(Center(1),Center(2),Center(3)));
HumerusSphere1.set_quadrant('all');
HumerusSphere1.set_radius(2.72/100);

Humerus.addWrapObject(HumerusSphere1)

% BALL  3  16.86  -1.75   6.51   2.31 26 13
HumerusSphere2 = WrapSphere();
HumerusSphere2.setName('humeral_head');
HumerusSphere2.set_active(1);
Center = Rg2h*([0.1686  -0.0175   0.0651]-Oh)';
HumerusSphere2.set_translation(Vec3(Center(1),Center(2),Center(3)));
HumerusSphere2.set_quadrant('all');
HumerusSphere2.set_radius(2.31/100);

Humerus.addWrapObject(HumerusSphere2)


% REM CYLINDER surfacenr dx dy dz sx sy sz r pp po
% REM dx, dy, dz: unit vectors in direction of axes
% REM sx, sy, sz: coordinates of a point on the long axis
% REM r: radius of the cylinder
% REM pp, po: position and orientation nodes

% CYLINDER  4  0.0602 -0.9949  0.0810     17.75  -9.22   6.49     1.00  26 13
HumerusCylinder = WrapCylinder();
HumerusCylinder.setName('humerus');
HumerusCylinder.set_active(1);
Center = Rg2h*([17.75  -9.22   6.49]/100-Oh)';
HumerusCylinder.set_translation(Vec3(Center(1),Center(2),Center(3)));
Direction = Rg2h*[0.0602 -0.9949  0.0810]';
% The long axis of a WrapCylinder is aligned with the BodyFixed Z-axis, so
% Z-axis is aligned with Direction vector
Angle = acos(dot(Direction,[0;0;1]));
Axis  = cross(Direction,[0;0;1])/vecnorm(cross(Direction,[0;0;1]));
Direction = rotm2eul(axang2rotm([Axis;Angle]'),'XYZ');
HumerusCylinder.set_xyz_body_rotation(Vec3(Direction(1),Direction(2),Direction(3)));
HumerusCylinder.set_radius(1/100);
HumerusCylinder.set_quadrant('x');
HumerusCylinder.set_length(0.1);


Humerus.addWrapObject(HumerusCylinder);


%% Ulna 
% CYLINDER  6  0.8531  0.0183 -0.5108  19.36 -30.80   9.02  1.90 27 16
UlnaCylinder1 = WrapCylinder();
UlnaCylinder1.setName('triceps');
UlnaCylinder1.set_active(1);
Center = Rg2u*([19.36 -30.80   9.02]/100-Ou)';
UlnaCylinder1.set_translation(Vec3(Center(1),Center(2),Center(3)));
Direction = Rg2u*[0.8531  0.0183 -0.5108]';
% The long axis of a WrapCylinder is aligned with the BodyFixed Z-axis, so
% Z-axis is aligned with Direction vector
Angle = acos(dot(Direction,[0;0;1]));
Axis  = cross(Direction,[0;0;1])/vecnorm(cross(Direction,[0;0;1]));
Direction = rotm2eul(axang2rotm([Axis;Angle]'),'XYZ');
UlnaCylinder1.set_xyz_body_rotation(Vec3(Direction(1),Direction(2),Direction(3)));
UlnaCylinder1.set_radius(1.90/100);
UlnaCylinder1.set_quadrant('-x');
UlnaCylinder1.set_length(0.1);


Ulna.addWrapObject(UlnaCylinder1);

% CYLINDER  7 -0.8531 -0.0183  0.5108  19.36 -30.80   9.02  1.50 27 16
UlnaCylinder2 = WrapCylinder();
UlnaCylinder2.setName('brachialis');
UlnaCylinder2.set_active(1);
Center = Rg2u*([19.36 -30.80   9.02]/100-Ou)';
UlnaCylinder2.set_translation(Vec3(Center(1),Center(2),Center(3)));
Direction = Rg2u*[-0.8531 -0.0183  0.5108]';
% The long axis of a WrapCylinder is aligned with the BodyFixed Z-axis, so
% Z-axis is aligned with Direction vector
Angle = acos(dot(Direction,[0;0;1]));
Axis  = cross(Direction,[0;0;1])/vecnorm(cross(Direction,[0;0;1]));
Direction = rotm2eul(axang2rotm([Axis;Angle]'),'XYZ');
UlnaCylinder2.set_xyz_body_rotation(Vec3(Direction(1),Direction(2),Direction(3)));
UlnaCylinder2.set_radius(1.50/100);
UlnaCylinder2.set_quadrant('x');
UlnaCylinder2.set_length(0.1);

Ulna.addWrapObject(UlnaCylinder2);

% CYLINDER  9 -0.1157  0.9547  0.2740  20.77 -51.88   3.88  0.70 27 16

UlnaCylinder3 = WrapCylinder();
UlnaCylinder3.setName('pronator_quadratus');
UlnaCylinder3.set_active(1);
Center = Rg2u*([20.77 -51.88   3.88]/100-Ou)';
UlnaCylinder3.set_translation(Vec3(Center(1),Center(2),Center(3)));
Direction = Rg2u*[-0.1157  0.9547  0.2740]';
% The long axis of a WrapCylinder is aligned with the BodyFixed Z-axis, so
% Z-axis is aligned with Direction vector
Angle = acos(dot(Direction,[0;0;1]));
Axis  = cross(Direction,[0;0;1])/vecnorm(cross(Direction,[0;0;1]));
Direction = rotm2eul(axang2rotm([Axis;Angle]'),'XYZ');
UlnaCylinder3.set_xyz_body_rotation(Vec3(Direction(1),Direction(2),Direction(3)));
UlnaCylinder3.set_radius(0.70/100);
UlnaCylinder3.set_quadrant('-y');
UlnaCylinder3.set_length(0.1);

Ulna.addWrapObject(UlnaCylinder3);


%% Radius
% CYLINDER  5  0.0993  0.9003  0.4239  19.92 -35.32   5.79  0.92 28 19
RadiusCylinder1 = WrapCylinder();
RadiusCylinder1.setName('biceps_brachii');
RadiusCylinder1.set_active(1);
Center = Rg2r*([19.92 -35.32   5.79]/100-Or)';
RadiusCylinder1.set_translation(Vec3(Center(1),Center(2),Center(3)));
Direction = Rg2r*[0.0993  0.9003  0.4239]';
% The long axis of a WrapCylinder is aligned with the BodyFixed Z-axis, so
% Z-axis is aligned with Direction vector
Angle = acos(dot(Direction,[0;0;1]));
Axis  = cross(Direction,[0;0;1])/vecnorm(cross(Direction,[0;0;1]));
Direction = rotm2eul(axang2rotm([Axis;Angle]'),'XYZ');
RadiusCylinder1.set_xyz_body_rotation(Vec3(Direction(1),Direction(2),Direction(3)));
RadiusCylinder1.set_radius(0.92/100);
RadiusCylinder1.set_quadrant('-y');
RadiusCylinder1.set_length(0.1);

Radius.addWrapObject(RadiusCylinder1);

% CYLINDER  8  0.0186  0.9767  0.2136  19.79 -43.87   3.87  0.90 28 19
RadiusCylinder2 = WrapCylinder();
RadiusCylinder2.setName('supinator');
RadiusCylinder2.set_active(1);
Center = Rg2r*([19.79 -43.87   3.87]/100-Or)';
RadiusCylinder2.set_translation(Vec3(Center(1),Center(2),Center(3)));
Direction = Rg2r*[0.0186  0.9767  0.2136]';
% The long axis of a WrapCylinder is aligned with the BodyFixed Z-axis, so
% Z-axis is aligned with Direction vector
Angle = acos(dot(Direction,[0;0;1]));
Axis  = cross(Direction,[0;0;1])/vecnorm(cross(Direction,[0;0;1]));
Direction = rotm2eul(axang2rotm([Axis;Angle]'),'XYZ');
RadiusCylinder2.set_xyz_body_rotation(Vec3(Direction(1),Direction(2),Direction(3)));
RadiusCylinder2.set_radius(0.90/100);
RadiusCylinder2.set_quadrant('y');
RadiusCylinder2.set_length(0.2);

Radius.addWrapObject(RadiusCylinder2);

% CYLINDER 10 -0.1481 -0.8839 -0.4436  19.28 -40.60   3.49  0.71 28 19
RadiusCylinder3 = WrapCylinder();
RadiusCylinder3.setName('pronator_teres');
RadiusCylinder3.set_active(1);
Center = Rg2r*([19.28 -40.60   3.49]/100-Or)';
RadiusCylinder3.set_translation(Vec3(Center(1),Center(2),Center(3)));
Direction = Rg2r*[-0.1481 -0.8839 -0.4436]';
% The long axis of a WrapCylinder is aligned with the BodyFixed Z-axis, so
% Z-axis is aligned with Direction vector
Angle = acos(dot(Direction,[0;0;1]));
Axis  = cross(Direction,[0;0;1])/vecnorm(cross(Direction,[0;0;1]));
Direction = rotm2eul(axang2rotm([Axis;Angle]'),'XYZ');
RadiusCylinder3.set_xyz_body_rotation(Vec3(Direction(1),Direction(2),Direction(3)));
RadiusCylinder3.set_radius(0.71/100);
RadiusCylinder3.set_quadrant('-x');
RadiusCylinder3.set_length(0.1);

Radius.addWrapObject(RadiusCylinder3);