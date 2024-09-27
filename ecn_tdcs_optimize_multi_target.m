% Example of an optimization with two targets
%

opt = opt_struct('TDCSoptimize');
opt.leadfield_hdf = 'F:\New folder\simnibs_env\Lib\site-packages\simnibs\examples\optimization\leadfieldextra/ernie_leadfield_EEG10-20_extended_SPM12.hdf5';
opt.name = 'C:\Users\ASUS\Desktop\last works\optimization/ecn';

opt.max_total_current = 16  e-3;
opt.max_individual_current = 2e-3;
opt.max_active_electrodes = 16;

% Target in the dorsolateral prefrontal cortex  
opt.target(1).positions = mni2subject_coords([-44 , 12 , 18], 'F:\simnibs_examples\ernie\m2m_ernie');
opt.target(1).intensity = 0.1;
opt.target(1).radius = 4    ;

% Target in the ventrolateral prefrontal cortex 
opt.target(2).positions  = mni2subject_coords([-42 , 48 , 0], 'F:\simnibs_examples\ernie\m2m_ernie');
opt.target(2).intensity = 0.1;
opt.target(2).radius = 3;


% Target in the middle temporal lobule 
opt.target(3).positions = mni2subject_coords([66,-42,-4], 'F:\simnibs_examples\ernie\m2m_ernie');
opt.target(3).intensity = 0.1;
opt.target(3).radius = 3;

% Target in the  posterior cingulate cortex
 opt.target(4).positions = mni2subject_coords([-4 , -42 , 32], 'F:\simnibs_examples\ernie\m2m_ernie');
opt.target(4).intensity = 0.1;
opt.target(4).radius =3;     

% Target in the anterior cingulate cortex  
 opt.target(5).positions = mni2subject_coords([-10 , 38 ,24], 'F:\simnibs_examples\ernie\m2m_ernie');
opt.target(5).intensity = 0.1;
opt.target(5).radius =2.5;     

% Target in anterior insular cortex 
 opt.target(6).positions = mni2subject_coords([-32 , 20 , 0], 'F:\simnibs_examples\ernie\m2m_ernie');
opt.target(6).intensity = 0.1;
opt.target(6).radius =3;   

run_simnibs(opt);
