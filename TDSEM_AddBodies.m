% import opensim libraries
import org.opensim.modeling.*
% Load scapulothoracic joint library
%Model.LoadOpenSimLibrary('C:\OpenSim 4.1\plugins\ScapulothoracicJointPlugin40_WinX64.dll');


%%%%%
%% 1. Add bodies to model
%%%%%

%% Thorax: parameters from .dsp, rest of the segments from Klein Breteler et
% al. 1999
Thorax = Body();
Thorax.setName('thorax');
Thorax.setMass(20);
COM = Rg2t*(COMthorax-Ot)';
Thorax.setMassCenter(Vec3(COM(1),COM(2),COM(3)));
Thorax.setInertia(Inertia(1.2981,0.55245,1.1281,0,0,0));

TDSEM.addBody(Thorax);

Geometry = Ellipsoid(0.0944,0.2079,0.147);
Geometry.setColor(Vec3(0.5));
Geometry.setOpacity(0.5);
Frame = PhysicalOffsetFrame();
Frame.setName('GeometryFrame');
Frame.setParentFrame(Thorax);
Frame.setOffsetTransform(Transform(Vec3(COM(1),COM(2),COM(3))));
%Thorax.addComponent(Frame);
%Frame.attachGeometry(Geometry.clone());

%% Clavicle
Clavicle = Body();
Clavicle.setName('clavicle');
Clavicle.setMass(0.156);
COM = Rg2c*(COMclavicle-Oc)';
Clavicle.setMassCenter(Vec3(COM(1),COM(2),COM(3)));
Clavicle.setInertia(Inertia(0.001,0.001,0.003,0,0,0));

TDSEM.addBody(Clavicle);

Geometry = Cylinder(0.01,vecnorm(AC-SC)/2.5);
Geometry.setColor(Vec3(0.5));
Geometry.setOpacity(0.5);
Frame = PhysicalOffsetFrame();
Frame.setName('GeometryFrame');
Frame.setParentFrame(Clavicle);
Frame.setOffsetTransform(Transform(Vec3(COM(1),COM(2),COM(3))));
Frame.set_orientation(Vec3(pi/2,0,0));
%Clavicle.addComponent(Frame);
%Frame.attachGeometry(Geometry.clone());


%% Scapula
Scapula = Body();
Scapula.setName('scapula');
Scapula.setMass(0.704);
COM = Rg2s*(COMscapula-Os)';
Scapula.setMassCenter(Vec3(COM(1),COM(2),COM(3)));
Scapula.setInertia(Inertia(0.007,0.007,0.007,0,0,0));

TDSEM.addBody(Scapula);

Geometry = Ellipsoid(vecnorm(TS-AA)/2,vecnorm(TS-AI)/2,0.01);
Geometry.setColor(Vec3(0.5));
Geometry.setOpacity(0.5);
Frame = PhysicalOffsetFrame();
Frame.setName('GeometryFrame');
Frame.setParentFrame(Scapula);
Frame.setOffsetTransform(Transform(Vec3(COM(1),COM(2),COM(3))));
Frame.set_orientation(Vec3(0,pi/2,0));
%Scapula.addComponent(Frame);
%Frame.attachGeometry(Geometry.clone());

%% Humerus
Humerus = Body();
Humerus.setName('humerus');
Humerus.setMass(2.052);
COM = Rg2h*(COMhumerus-Oh)';
Humerus.setMassCenter(Vec3(COM(1),COM(2),COM(3)));
Humerus.setInertia(Inertia(1.320, 0.199, 1.320,0,0,0));

TDSEM.addBody(Humerus);

Geometry = Cylinder(0.03,vecnorm(GHj-(EL+EM)/2)/2.5);
Geometry.setColor(Vec3(0.5));
Geometry.setOpacity(0.5);
Frame = PhysicalOffsetFrame();
Frame.setName('GeometryFrame');
Frame.setParentFrame(Humerus);
Frame.setOffsetTransform(Transform(Vec3(COM(1),COM(2),COM(3))));
Frame.set_orientation(Vec3(0,0,0));
%Humerus.addComponent(Frame);
%Frame.attachGeometry(Geometry.clone());

% Note: Ulnar and radial mass and interia half of forearm values 
%% Ulna
Ulna = Body();
Ulna.setName('ulna');
Ulna.setMass(0.5464);
COM = Rg2u*(COMulna-Ou)';
Ulna.setMassCenter(Vec3(COM(1),COM(2),COM(3)));
Ulna.setInertia(Inertia(0.0030585,0.00045325,0.0030585,0,0,0));

TDSEM.addBody(Ulna);

Geometry = Cylinder(0.015,vecnorm(US-(EL+EM)/2)/2.5);
Geometry.setColor(Vec3(0.5));
Geometry.setOpacity(0.5);
Frame = PhysicalOffsetFrame();
Frame.setName('GeometryFrame');
Frame.setParentFrame(Ulna);
Frame.setOffsetTransform(Transform(Vec3(COM(1),COM(2),COM(3))));
Frame.set_orientation(Vec3(0,0,0));
%Ulna.addComponent(Frame);
%Frame.attachGeometry(Geometry.clone());

%% Radius
Radius = Body();
Radius.setName('radius');
Radius.setMass(0.5464);
COM = Rg2r*(COMradius-Or)';
Radius.setMassCenter(Vec3(COM(1),COM(2),COM(3)));
Radius.setInertia(Inertia(0.0030585,0.00045325,0.0030585,0,0,0));

TDSEM.addBody(Radius);

Geometry = Cylinder(0.015,vecnorm(RS-(EL+EM)/2)/2.5);
Geometry.setColor(Vec3(0.5));
Geometry.setOpacity(0.5);
Frame = PhysicalOffsetFrame();
Frame.setName('GeometryFrame');
Frame.setParentFrame(Radius);
Frame.setOffsetTransform(Transform(Vec3(COM(1),COM(2),COM(3))));
Frame.set_orientation(Vec3(0,0,0));
%Radius.addComponent(Frame);
%Frame.attachGeometry(Geometry.clone());

%% Hand
Hand = Body();
Hand.setName('hand');
Hand.setMass(0.525);
COM = Rg2hand*(COMhand-Ohand)';
Hand.setMassCenter(Vec3(COM(1),COM(2),COM(3)));
Hand.setInertia(Inertia(0.064,0.019,0.064,0,0,0));

TDSEM.addBody(Hand);

Geometry = Ellipsoid(0.01,0.09,0.09);
Geometry.setColor(Vec3(0.5));
Geometry.setOpacity(0.5);
Frame = PhysicalOffsetFrame();
Frame.setName('GeometryFrame');
Frame.setParentFrame(Hand);
Frame.setOffsetTransform(Transform(Vec3(COM(1),COM(2),COM(3))));
%Hand.addComponent(Frame);
%Frame.attachGeometry(Geometry.clone());
