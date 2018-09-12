function root_number = get_root_number_from_acronym(acronym,country_legend)
%get_root_number_from_acronym

 root_number = [];
 
 row = find(strcmp(country_legend(:,2),acronym));
 if ~isempty(row)
    root_number = country_legend{row,1};
 end
 
end

