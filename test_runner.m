%% 
% Test runner for root_country_legend_toolbox

disp('Starting root country legend test runner');

root_country_legend = read_root_country_legend(fileparts(which(mfilename)));

passed = 0; failed = 0;

country_number = matchCountryNameToRootCountryNumber('Australia', root_country_legend);
if country_number == 12
    disp('Test passed.');
    passed = passed + 1;
else
    disp('Test failed!');
    failed = failed + 1;
end

alpha3 = matchCountryNameToAlpha3InLegend('Australia', root_country_legend);
if strcmp(alpha3,'AUS')
    disp('Test passed.');
    passed = passed + 1;
else
    disp('Test failed!');
    failed = failed + 1;
end

names = GetAllCountryNamePossibilites(52,root_country_legend);
if ~isempty(find(contains(names, 'Czech Republic'),1)) && ...
     ~isempty(find(contains(names, 'Czech and Slovak Fed Rep'),1)) && ...   
     ~isempty(find(contains(names, 'the Czech Republic'),1))
    disp('Test passed.');
    passed = passed + 1;
else
    disp('Test failed!');
    failed = failed + 1;
end

names = get_all_ielab_acronyms(root_country_legend);
if ~isempty(names) && size(names,1) == 220
    disp('Test passed.');
    passed = passed + 1;
else
    disp('Test failed!');
    failed = failed + 1;
end

number = get_root_number_from_acronym('AUS',root_country_legend);
if ~isempty(number) && number == 12
    disp('Test passed.');
    passed = passed + 1;
else
    disp('Test failed!');
    failed = failed + 1;
end

name = get_un_country_name_from_acronym('AUS',root_country_legend);
if strcmp(name,'Australia')
    disp('Test passed.');
    passed = passed + 1;
else
    disp('Test failed!');
    failed = failed + 1;
end

name = get_un_country_name_from_acronym('AIA',root_country_legend);
if strcmp(name,'Anguilla')
    disp('Test passed.');
    passed = passed + 1;
else
    disp('Test failed!');
    failed = failed + 1;
end


%% Finished
disp(['Finished running ' num2str(passed + failed) ' tests.']);
disp(['Passed: ' num2str(passed) ', Failed: ' num2str(failed)]); 