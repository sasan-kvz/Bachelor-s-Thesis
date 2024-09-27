% Example of an optimization with two targets
%

opt = opt_struct('TDCSoptimize');
opt.leadfield_hdf = 'leadfield/ernie_leadfield_EEG10-10_UI_Jurak_2007.hdf5';
opt.name = 'optimization/two_targets';

opt.max_total_current = 8e-3;
opt.max_individual_current = 2e-3;
opt.max_active_electrodes = 8;

% Target in the left motor cortex
opt.target(1).positions = mni2subject_coords([43, 21, 38], 'F:\simnibs_examples\ernie\m2m_ernie');
opt.target(1).intensity = 0.1;
opt.target(1).radius = 2.6;

% Target in the right motor cortex
opt.target(2).positions  = mni2subject_coords([-43, 21, 38], 'F:\simnibs_examples\ernie\m2m_ernie');
opt.target(2).intensity = 0.1;
opt.target(2).radius = 2.6;


% Target in the left motor cortex
opt.target(3).positions = mni2subject_coords([51, -45 , 48], 'F:\simnibs_examples\ernie\m2m_ernie');
opt.target(3).intensity = 0.1;
opt.target(3).radius = 2.5;

 opt.target(4).positions = mni2subject_coords([-51, -45 , 48], 'F:\simnibs_examples\ernie\m2m_ernie');
opt.target(4).intensity = 0.1;
opt.target(4).radius = 2.5;     

run_simnibs(opt);
