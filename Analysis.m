function [Out] = Analysis(In)
	% This is an example function which we will parallelize using the cluster
	% Rather than looping through a range of values for In inside a single matlab script, 
	% we will range the values in the upstream shell command, and only call this function with one In value. 
	% We will call this function several times in parallel, all with different In values. The tutorial this script 
	% is based on can be found at "https://newhpc.wm.edu/doc/matlab/matlabscripting.html"

	Out = some_big_calculation(In)

	disp(['The answer is ' mat2str(Out)])

end

function [y] = some_big_calculation(x)
	% This is our example BIG calculation.
	
	y = x +0.05;

end 	
