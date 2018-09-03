function acronyms = get_all_ielab_acronyms(country_legend)
%get_all_ielab_acronyms Returns the column containing the 3-letter acronyms

acronym_column = find(ismember(country_legend(1,:),'Root country abbreviation'));
acronyms = country_legend(2:end,acronym_column);

end

