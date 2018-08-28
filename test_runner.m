%% 
% Test runner for root_country_legend_toolbox

root_country_legend = read_root_country_legend( fileparts(which(mfilename)));

passed = 0; failed = 0;

country_number = matchCountryNameToRootCountryNumber('Australia', root_country_legend);
if country_number == 12
    disp('Test passed');
    passed = passed + 1;
else
    disp('Test failed');
    failed = failed + 1;
end

alpha3 = matchCountryNameToAlpha3InLegend('Australia', root_country_legend);
if alpha3 == 'AUS'
    disp('Test passed');
    passed = passed + 1;
else
    disp('Test failed');
    failed = failed + 1;
end


names = GetAllCountryNamePossibilites(52,root_country_legend);
if ~isempty(find(contains(names, 'Czech Republic'),1)) && ...
     ~isempty(find(contains(names, 'Czech and Slovak Fed Rep'),1)) && ...   
     ~isempty(find(contains(names, 'the Czech Republic'),1))
    disp('Test passed');
    passed = passed + 1;
else
    disp('Test failed');
    failed = failed + 1;
end

%% Finished
disp(['Finished running ' num2str(passed + failed) ' tests.']);
disp(['Passed: ' num2str(passed) ', Failed: ' num2str(failed)]); 