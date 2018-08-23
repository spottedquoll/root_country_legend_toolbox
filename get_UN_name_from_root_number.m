function un_name = get_UN_name_from_root_number(country_number, root_country_legend)
%root_country_legend Find the UN's name for the country with this IELab
%country number

% Find UN name in column header in case columns change...
UN_column = find(ismember(root_country_legend(1,:),'UNName'));

un_name = root_country_legend(country_number+1,UN_column);

end

