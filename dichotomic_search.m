function [ optimum_value ] = dichotomic_search(min_value, max_value,iter,error)
%PURPOSE: The fuction aims to find the optimum value for the polynomial inserted 
%   min_value: minimum value of the searched interval 
%   max_value: maximum value of the searched interval
%   iter:      maximum number of iteractions
%   error:     maximum error allowed

%% CLEANING 
clc

%% INPUT 
k = 0;                   % iteration counter
f = @(x) x^2+2*x;        % polynomial analyzed

%% WHILE LOOP

while k < iter && abs(max_value - min_value) > error
    mean_value = (min_value + max_value)/2;     % mean value
    lambda = mean_value - error;                % lambda value
    mi = mean_value + error;                    % mu value
    
    if f(lambda) > f(mi)                        % comparison between function values from lambda and mu
        min_value = lambda;                     % new minimum value
    else
        max_value = mi;                         % new maximum value
    end
    k = k+1;                                    % iteration counter updating
end

optimum_value = (min_value + max_value)/2;

end

