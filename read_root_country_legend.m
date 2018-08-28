function root_country_legend = read_root_country_legend(directory)
%read_root_country_legend

[~,~,root_country_legend] = xlsread([directory '/RootCountryLegend.xlsx'],2);

end

