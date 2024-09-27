%
% example script that runs a simple simnibs tDCS simulation
% 
% G. Saturnino, A. Thielscher, 2018
%

%% General information

S = sim_struct('SESSION');
S.map_to_fsavg = true; 
S.map_to_surf = true; 
S.map_to_mni = true; 
S.fnamehead = 'F:\simnibs_examples\ernie\ernie.msh'; % head mesh
S.pathfem = 'F:\simnibs_examples\ernie\ecn10rfine'; %Folder for the simulation output
S.subpath = 'F:\simnibs_examples\ernie\m2m_ernie';

%% Define tDCS simulation
S.poslist{1} = sim_struct('TDCSLIST');
S.poslist{1}.currents = [ -0.0005545 , 0.001109 , -0.0009545 , 0.00054 , -0.0012145 , 0.000756 , 0.000963 , -0.0006445 ]; % Current flow though each channel (mA)

%First Electrode
S.poslist{1}.electrode(1).channelnr = 1; % Connect the electrode to the first channel
S.poslist{1}.electrode(1).centre = 'F5'; % Place it over C3
S.poslist{1}.electrode(1).shape = 'ellipse'; %Rectangular electrode
S.poslist{1}.electrode(1).dimensions = [10]; % Dimension in mm
S.poslist{1}.electrode(1).thickness = 4; % 4 mm thickness

%Second Electrode
S.poslist{1}.electrode(2).channelnr = 2;
S.poslist{1}.electrode(2).centre = 'F3';
S.poslist{1}.electrode(2).shape = 'ellipse'; %Rectangular electrode
S.poslist{1}.electrode(2).dimensions = [10]; % Dimension in mm
S.poslist{1}.electrode(2).thickness = 4;

%third Electrode
S.poslist{1}.electrode(3).channelnr = 3;
S.poslist{1}.electrode(3).centre = 'F4';
S.poslist{1}.electrode(3).shape = 'ellipse'; %Rectangular electrode
S.poslist{1}.electrode(3).dimensions = [10]; % Dimension in mm
S.poslist{1}.electrode(3).thickness = 4;

%4th Electrode
S.poslist{1}.electrode(4).channelnr = 4;
S.poslist{1}.electrode(4).centre = 'F6';
S.poslist{1}.electrode(4).shape = 'ellipse'; %Rectangular electrode
S.poslist{1}.electrode(4).dimensions = [10]; % Dimension in mm
S.poslist{1}.electrode(4).thickness = 4;

%5th Electrode
S.poslist{1}.electrode(5).channelnr = 5;
S.poslist{1}.electrode(5).centre = 'C5';
S.poslist{1}.electrode(5).shape = 'ellipse'; %Rectangular electrode
S.poslist{1}.electrode(5).dimensions = [10]; % Dimension in mm
S.poslist{1}.electrode(5).thickness = 4;

%6th Electrode
S.poslist{1}.electrode(6).channelnr = 6;
S.poslist{1}.electrode(6).centre = 'C3';
S.poslist{1}.electrode(6).shape = 'ellipse'; %Rectangular electrode
S.poslist{1}.electrode(6).dimensions = [10]; % Dimension in mm
S.poslist{1}.electrode(6).thickness = 4;

%7th Electrode
S.poslist{1}.electrode(7).channelnr = 7;
S.poslist{1}.electrode(7).centre = 'C4';
S.poslist{1}.electrode(7).shape = 'ellipse'; %Rectangular electrode
S.poslist{1}.electrode(7).dimensions = [10]; % Dimension in mm
S.poslist{1}.electrode(7).thickness = 4;

%8th Electrode
S.poslist{1}.electrode(8).channelnr = 8;
S.poslist{1}.electrode(8).centre = 'CP6';
S.poslist{1}.electrode(8).shape = 'ellipse'; %Rectangular electrode
S.poslist{1}.electrode(8).dimensions = [10]; % Dimension in mm
S.poslist{1}.electrode(8).thickness = 4;


%% Run Simulation
run_simnibs(S);

%% Visualize Simulations
m = mesh_load_gmsh4(fullfile(S.pathfem, 'ernie_TDCS_1_scalar.msh'));
mesh_show_surface(m);
