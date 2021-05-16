% Master file to construct OpenSim model from DSEM source file
clear all;

path = 'C:\Users\joran\Desktop\OpenSim DSEM\';
addpath(path)
cd(path) 

% import opensim libraries
import org.opensim.modeling.*
% Load scapulothoracic joint library
Model.LoadOpenSimLibrary('C:\OpenSim 4.1\plugins\ScapulothoracicJointPlugin40_WinX64.dll');



TDSEM = Model();
TDSEM.setName('DSEM-OpenLoop');

TDSEM.set_gravity(Vec3(0,-9.81,0));
TDSEM.set_length_units('meters');
TDSEM.set_force_units('N');
TDSEM.set_credits('');
TDSEM.set_publications('');


TSM = Model('TSM-Generic.osim');


%%
run TDSEM_CreateBodyFrames.m

%% 
run TDSEM_AddBodies.m

%% 
run TDSEM_AddMarkers.m

%% 
%run TDSEM_AddJoints.m
%run TDSEM_AddJointsV2.m
%run TDSEM_CopyJointsTSM.m
run TDSEM_AddJointsV3.m

%%
run TDSEM_AddWrapGeometries.m

%%
run TDSEM_AddMuscles.m

%%
run TDSEM_AddLigaments.m

TDSEM.finalizeConnections();
TDSEM.print('TDSEMopenloop.osim')