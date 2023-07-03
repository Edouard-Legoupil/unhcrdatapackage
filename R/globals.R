# remotes::install_github("thinkr-open/checkhelper")
# checkhelper::print_globals()



globalVariables(unique(c(
  "pop_type",
  # plot_ctr_keyfig
  "icon", "pal","fig",
  # plot_ctr_asylum: 
  "CountryAsylumCode", "iso_3", "Total", "Year", "AsylumStage", "ComplementaryProtection", "country_asylum_iso3", "ctryname", "NumberApplications", "OtherwiseClosed", "Recognized", "Rejected", "TotalDecided", 
  # plot_ctr_destination: 
  "ctryname", "CountryAsylumName", "CountryOriginCode", "DisplacedAcrossBorders", "DisplacedAcrossBordersRound", "iso_3", "Population.type", "Value", "Year", 
  # plot_ctr_diff_in_pop_groups: 
  "CountryAsylumCode", "CountryAsylumName", "diffabs", "diffper", "diffperc", "HCO_diffper", "REF_diffabs", "v", "value", "value_type", "Year", 
  # plot_ctr_disp_migrant: 
  "Asylum_Refugee_in", "CountryDestinationM49", "ctryname", "hcr_subregion", "Immigrant", "INCOME_GRP", "M49_code", "ratioAsylum_Immigrant", "shareOrgin", "SP.POP.TOTL", "population_type", "CountryAsylumCode", "CountryOriginCode", "CountryOriginName", "iso_3", "Population.type", "totImmigrant", "UNHCRBureau", "Value", "Year", 
  # plot_ctr_location: 
  "CountryAsylumCode", "iso_3", "iso_a3", "latitude", "level", "location", "location_level", "locpcode", "longitude", "Population.type", "Population.type.label.short", "Total", "Year", 
  # plot_ctr_origin_history: 
  "CountryAsylumCode", "CountryAsylumName", "CountryOriginName", "Population.type", "Value", "Year", 
  # plot_ctr_population_type_abs: 
  "CountryAsylumCode", "CountryAsylumName", "CountryOriginName", "diff_pop_type_value", "origin_data_prot", "pop_type_value", "Year", 
  # plot_ctr_population_type_per_year: 
  "CountryAsylumCode", "CountryAsylumName", "Population.type", "Population.type.label", "Value", "Year", 
  # plot_ctr_population_type_perc: 
  "CountryAsylumCode", "CountryAsylumName", "CountryOriginName", "origin_data_prot", "perc", "pop_type_value", "Year", 
  # plot_ctr_process: 
  "CountryAsylumCode", "CountryOriginName", "iso_3", "ProcedureName", "Value", "Year", "DecisionTypeName","Decision.output", "x", "id", "y",
  # plot_ctr_processing_time: 
  "ComplementaryProtection", "country_asylum_iso3", "ctryname", "DecisionTypeCode", "flow", "NumberApplications", "OtherwiseClosed", "ProcedureType", "Recognized", "Rejected", "TotalDecided", "CountryAsylumCode", "CountryAsylumName", "CountryOriginCode", "iso_3", "ProcedureName", "Year", 
  # plot_ctr_pyramid: 
  "ctryname", "FamilyName", "female", "fontfile", "male", "age", "CountryAsylumCode", "Female04", "Female1217", "Female1859", "Female511", "Female60ormore", "FemaleTotal", "FemaleUnknown", "gender", "iso_3", "Male04", "Male1217", "Male1859", "Male511", "Male60ormore", "MaleTotal", "MaleUnknown", "pc", "Population.type", "Population.type.label.short", "Total", "totGen", "UNHCRBureau", "Year", 
  # plot_ctr_recognition: 
  "ComplementaryProtection", "ctryname", "DecisionsAveragePersonsPerCase", "measured", "Recognized", "TotalDecided", "CountryAsylumCode", "CountryOriginName", "iso_3", "Year", 
  # plot_ctr_solution: 
  "ctryname", "Solution.type.label", "Value2", "CountryAsylumCode", "iso_3", "Value", "Year", 
  # plot_ctr_treemap: 
  "ctryname", "CountryAsylumCode", "CountryAsylumName", "iso_3", "Population.type", "Population.type.label", "Population.type.label.short", "Value", "Year", 
  # plot_reg_decrease: 
  "gap", "Value2", "CountryAsylumName", "Population.type", "UNHCRBureau", "Value", "Year", 
  # plot_reg_evolution: 
  "Population.type", "UNHCRBureau", "Value", "Year", 
  # plot_reg_increase: 
  "gap", "Value2", "CountryAsylumName", "Population.type", "UNHCRBureau", "Value", "Year", 
  # plot_reg_map: 
  "adm0_a3", "continent", "Latitude", "Longitude", "NY.GDP.MKTP.CD", "NY.GDP.PCAP.CD", "SP.POP.TOTL",".", "CountryAsylumCode", "CountryAsylumName", "iso_3", "Population.type", "UNHCRBureau", "Value", "Year", 
  # plot_reg_origin_dest: 
  "ASY", "coa_region", "OIP", "REF", "total","CountryAsylumName", "CountryOriginName", "iso_3", "UNHCRBureau", "Year", 
  # plot_reg_population_type_abs: 
  "coa_region", "CountryAsylumName", "diff_pop_type_value", "iso_3", "Population.type", "UNHCRBureau", "Value", "Year", 
  # plot_reg_population_type_per_year: 
  "coa_region", "..y..", "iso_3", "Population.type", "Population.type.label", "UNHCRBureau", "Value", "Year", 
  # plot_reg_prop_origin: 
  "ref.part", "SP.POP.TOTL", "Value2", "CountryOriginCode", "CountryOriginName", "Population.type", "UNHCRBureau", "Value", "Year", 
  # plot_reg_rsd: 
  "coa_region", "ComplementaryProtection", "DecisionsAveragePersonsPerCase", "measured", "Recognized", "TotalDecided","CountryAsylumName", "CountryOriginName", "iso_3", "UNHCRBureau", "Year", 
  # plot_reg_share: 
  "Compare", "freq", "Population.type", "Population.type.label", "UNHCRBureau", "Value", "Year", 
  # plot_reg_solution: 
  "label", "Solution.type", "Solution.type.label", "UNHCRBureau", "Value", "Year", 
  # plot_reg_treemap: 
  "freqinReg", "Population.type", "Population.type.label", "UNHCRBureau", "Value", "Year", 
  # template_CtryFactsheet: 
  "ctryname","iso_3", 
  # template_CtryPrez: 
  "ctryname", "iso_3",
  ## Golem
  "reactiveParameters",
  # Shiny 
  "plotBrush", "plotClick", "plotDblClick", "plotHover", "plotName", "sanofiJS", "selected"
)))