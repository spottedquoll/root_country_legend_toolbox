function country_number = getRootCountryNumberFromCountryName(countryName,RootCountryLegend)
%GetCountryAlpha3Code

country_number = [];

nameCols = 7:11; 

country_number_col = 1;

i = 1;
while isempty(country_number) && i <= size(nameCols,2)
    
    col = nameCols(i);
    match = find(strcmp(RootCountryLegend(:,col),countryName));
    if ~isempty(match)
        country_number = RootCountryLegend{match,country_number_col};
    else
        i = i + 1;
    end
end


end

