% Example of a SimNIBS tDCS leadfield 
% Copyright (C) 2019 Guilherme B Saturnino

% place script in the 'ernie' folder of the example dataset

tdcs_lf = sim_struct('TDCSLEADFIELD');
% Head mesh
tdcs_lf.fnamehead = 'D:\simnibs_examples\ernie\ernie.msh';
% Output directory
tdcs_lf.pathfem = 'leadfieldextra';
tdcs_lf.eeg_cap = 'D:\software\simnibs\miniconda3\envs\simnibs_env\Lib\site-packages\simnibs\resources\ElectrodeCaps_MNI\EEG10-20_extended_SPM12.csv'
% Uncomment to use the pardiso solver
%tdcs_lf.solver_options = 'pardiso';
% This solver is much faster than the default. However, it requires much more
% memory (~12 GB)

run_simnibs(tdcs_lf)
