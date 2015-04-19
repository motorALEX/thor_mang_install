root_dir = getenv('VIGIR_ROOT_DIR');

if ( isempty(root_dir) )
  root_dir = getenv('THOR_ROOT_DIR');
end

if ( isempty(root_dir) )
  warning('Neither VIGIR_ROOT_DIR nor THOR_ROOT_DIR set: Not setting Drake paths');
  return;
end

drake_base_path = [root_dir '/drake-distro'];

if ( ~exist(drake_base_path,'dir') )
  warning('There does not seem to be a Drake installation in your ROOT_DIR. Not setting Drake paths');
  return;
end

drake_paths = [drake_base_path '/drake/thirdParty/GetFullPath:', ...
     drake_base_path '/drake/thirdParty/cprintf:', ...
     drake_base_path '/drake/thirdParty/spatial:', ...
     drake_base_path '/drake/thirdParty/path:', ...
     drake_base_path '/drake/thirdParty:', ...
     drake_base_path '/drake/util:', ...
     drake_base_path '/drake/solvers/trajectoryOptimization:', ...
     drake_base_path '/drake/solvers:', ...
     drake_base_path '/drake/systems/robotInterfaces/calibration:', ...
     drake_base_path '/drake/systems/robotInterfaces:', ...
     drake_base_path '/drake/systems/visualizers:', ...
     drake_base_path '/drake/systems/frames:', ...
     drake_base_path '/drake/systems/trajectories:', ...
     drake_base_path '/drake/systems/observers:', ...
     drake_base_path '/drake/systems/controllers:', ...
     drake_base_path '/drake/systems/plants/constraint:', ...
     drake_base_path '/drake/systems/plants/collision:', ...
     drake_base_path '/drake/systems/plants:', ...
     drake_base_path '/drake/systems:', ...
     drake_base_path '/build/matlab:'];
 
 addpath(drake_paths)
 clear root_dir
 clear drake_base_path
 clear drake_paths