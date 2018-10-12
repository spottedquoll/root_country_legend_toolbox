function code = matchCountryNameToRootCountryNumber(countryName,RootCountryLegend)
%GetCountryAlpha3Code

code = [];

name_cols = [7:11 13]; 

country_number_col = 1;

i = 1;
while isempty(code) && i <= size(name_cols,2)
    
    col = name_cols(i);
    match = find(strcmp(RootCountryLegend(:,col),countryName));
    if ~isempty(match)
        code = RootCountryLegend{match,country_number_col};
    else
        i = i + 1;
    end
end

if isempty(code)
    i = 1;
    while isempty(code) && i <= size(name_cols,2)

        col = name_cols(i);
        match = find(~cellfun(@isempty,strfind(RootCountryLegend(:,col),countryName)));
        if ~isempty(match)
            code = RootCountryLegend{match,country_number_col};
        else
            i = i + 1;
        end
    end
end

end

