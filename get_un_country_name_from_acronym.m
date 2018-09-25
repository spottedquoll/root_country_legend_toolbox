function name = get_un_country_name_from_acronym(acronym,country_legend)
%get_root_number_from_acronym

 name = [];
 
 row = find(strcmp(country_legend(:,2),acronym));
 if ~isempty(row)
    name = country_legend{row,10};
 end
 
end

