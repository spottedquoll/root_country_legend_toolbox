function names = GetAllCountryNamePossibilites(countryNumber,RootCountryLegend)
%GetAllCountryNamePossibilites

 name_columns = [7:11 13];
    
 names = unique(RootCountryLegend(countryNumber+1,name_columns));

 no_match = find(~cellfun(@isempty,strfind(names,'ZZZZ')));
 
 names(no_match) = [];
 
end

