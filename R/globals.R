# remotes::install_github("thinkr-open/checkhelper")
# checkhelper::print_globals()



globalVariables(unique(c(
  # plot_ctr_asylum: 
  "CountryAsylumCode", "iso_3", "Total", "Year", 
  # plot_ctr_destination: 
  "CountryAsylumName", "CountryOriginCode", "DisplacedAcrossBorders", "DisplacedAcrossBordersRound", "iso_3", "Population.type", "Value", "Year", 
  # plot_ctr_diff_in_pop_groups: 
  "CountryAsylumCode", "CountryAsylumName", "diffabs", "diffper", "diffperc", "OIP_diffperc", "REF_diffabs", "v", "value", "value_type", "Year", 
  # plot_ctr_disp_migrant: 
  "CountryAsylumCode", "CountryOriginCode", "CountryOriginName", "iso_3", "Population.type", "totImmigrant", "UNHCRBureau", "Value", "Year", 
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
  "CountryAsylumCode", "CountryOriginName", "iso_3", "ProcedureName", "Value", "Year", 
  # plot_ctr_processing_time: 
  "CountryAsylumCode", "CountryAsylumName", "CountryOriginCode", "iso_3", "ProcedureName", "Year", 
  # plot_ctr_pyramid: 
  "age", "CountryAsylumCode", "Female04", "Female1217", "Female1859", "Female511", "Female60ormore", "FemaleTotal", "FemaleUnknown", "gender", "iso_3", "Male04", "Male1217", "Male1859", "Male511", "Male60ormore", "MaleTotal", "MaleUnknown", "pc", "Population.type", "Population.type.label.short", "Total", "totGen", "UNHCRBureau", "Year", 
  # plot_ctr_recognition: 
  "CountryAsylumCode", "CountryOriginName", "iso_3", "Year", 
  # plot_ctr_solution: 
  "CountryAsylumCode", "iso_3", "Value", "Year", 
  # plot_ctr_treemap: 
  "CountryAsylumCode", "CountryAsylumName", "iso_3", "Population.type", "Population.type.label", "Population.type.label.short", "Value", "Year", 
  # plot_reg_decrease: 
  "CountryAsylumName", "Population.type", "UNHCRBureau", "Value", "Year", 
  # plot_reg_evolution: 
  "Population.type", "UNHCRBureau", "Value", "Year", 
  # plot_reg_increase: 
  "CountryAsylumName", "Population.type", "UNHCRBureau", "Value", "Year", 
  # plot_reg_map: 
  ".", "CountryAsylumCode", "CountryAsylumName", "iso_3", "Population.type", "UNHCRBureau", "Value", "Year", 
  # plot_reg_origin_dest: 
  "CountryAsylumName", "CountryOriginName", "iso_3", "UNHCRBureau", "Year", 
  # plot_reg_population_type_abs: 
  "CountryAsylumName", "diff_pop_type_value", "iso_3", "Population.type", "UNHCRBureau", "Value", "Year", 
  # plot_reg_population_type_per_year: 
  "..y..", "iso_3", "Population.type", "Population.type.label", "UNHCRBureau", "Value", "Year", 
  # plot_reg_prop_origin: 
  "CountryOriginCode", "CountryOriginName", "Population.type", "UNHCRBureau", "Value", "Year", 
  # plot_reg_rsd: 
  "CountryAsylumName", "CountryOriginName", "iso_3", "UNHCRBureau", "Year", 
  # plot_reg_share: 
  "Population.type", "Population.type.label", "UNHCRBureau", "Value", "Year", 
  # plot_reg_solution: 
  "UNHCRBureau", "Value", "Year", 
  # plot_reg_treemap: 
  "Population.type", "Population.type.label", "UNHCRBureau", "Value", "Year", 
  # template_CtryFactsheet: 
  "iso_3", 
  # template_CtryPrez: 
  "iso_3"
)))