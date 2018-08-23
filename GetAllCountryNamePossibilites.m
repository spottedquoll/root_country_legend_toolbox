function names = GetAllCountryNamePossibilites(countryNumber,RootCountryLegend)
%GetAllCountryNamePossibilites

 names = unique(RootCountryLegend(countryNumber+1,3:10));

 no_match = find(~cellfun(@isempty,strfind(names,'ZZZZ')));
 
 names(no_match) = [];
 
end

