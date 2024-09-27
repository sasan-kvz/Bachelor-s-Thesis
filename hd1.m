
% load mesh
[fname,pname] = uigetfile('*.msh','Select a mesh with simulation results');
if isequal(fname,0) || isequal(pname,0); return; end
m=mesh_load_gmsh4([pname fname]);


% -------------------------------------------------------
% EXAMPLE 1 
% display some key results for whole cortex
disp(' ')
disp('whole cortex:')
summary=mesh_get_fieldpeaks_and_focality(m,'field_idx',2);

% show field on the GM surface
mesh_show_surface(m)
