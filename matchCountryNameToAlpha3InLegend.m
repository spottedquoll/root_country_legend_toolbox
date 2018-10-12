function code = matchCountryNameToAlpha3InLegend(countryName,RootCountryLegend)
%GetCountryAlpha3Code

code = [];

nameCols = [7:11 13];

i = 1;
while isempty(code) && i <= size(nameCols,2)
    
    col = nameCols(i);
    match = find(strcmp(RootCountryLegend(:,col),countryName));
    if ~isempty(match)
        code = RootCountryLegend{match,3};
    else
        i = i + 1;
    end
end

if isempty(code)
    i = 1;
    while isempty(code) && i <= size(nameCols,2)

        col = nameCols(i);
        match = find(~cellfun(@isempty,strfind(RootCountryLegend(:,col),countryName)));
        if ~isempty(match)
            code = RootCountryLegend{match,3};
        else
            i = i + 1;
        end
    end
end

end

