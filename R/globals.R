# remotes::install_github("thinkr-open/checkhelper")
# checkhelper::print_globals()



globalVariables(unique(c(
  # plot_ctr_asylum: 
  "AsylumStage", "ComplementaryProtection", "country_asylum_iso3", "ctryname", "NumberApplications", "OtherwiseClosed", "Recognized", "Rejected", "TotalDecided", 
  # plot_ctr_destination: 
  "ctryname", 
  # plot_ctr_diff_in_pop_groups: 
  "population_type", 
  # plot_ctr_disp_migrant: 
  "Asylum_Refugee_in", "CountryDestinationM49", "ctryname", "hcr_subregion", "Immigrant", "INCOME_GRP", "M49_code", "ratioAsylum_Immigrant", "shareOrgin", "SP.POP.TOTL", 
  # plot_ctr_process: 
  "ctryname", "Decision.output", "DecisionTypeName", "id", "x", "y", 
  # plot_ctr_processing_time: 
  "ApplicationType", "ApplicationTypeCode", "ComplementaryProtection", "country_asylum_iso3", "ctryname", "DecisionTypeCode", "DecisionTypeName", "flow", "NumberApplications", "OtherwiseClosed", "ProcedureType", "Recognized", "Rejected", "TotalDecided", 
  # plot_ctr_pyramid: 
  "ctryname", "female", "male", 
  # plot_ctr_recognition: 
  ".data", "ComplementaryProtection", "ctryname", "DecisionsAveragePersonsPerCase", "measured", "Recognized", "TotalDecided", 
  # plot_ctr_solution: 
  "ctryname", "Solution.type.label", "Value2", 
  # plot_ctr_treemap: 
  "ctryname", 
  # plot_reg_decrease: 
  "gap", "Value2", 
  # plot_reg_increase: 
  "gap", "Value2", 
  # plot_reg_map: 
  "adm0_a3", "continent", "Latitude", "Longitude", "NY.GDP.MKTP.CD", "NY.GDP.PCAP.CD", "SP.POP.TOTL", 
  # plot_reg_origin_dest: 
  "ASY", "coa_region", "OIP", "REF", "total", 
  # plot_reg_population_type_abs: 
  "coa_region", 
  # plot_reg_population_type_per_year: 
  "coa_region", 
  # plot_reg_prop_origin: 
  "ref.part", "SP.POP.TOTL", "Value2", 
  # plot_reg_rsd: 
  ".data", "coa_region", "ComplementaryProtection", "DecisionsAveragePersonsPerCase", "measured", "Recognized", "TotalDecided", 
  # plot_reg_share: 
  "Compare", "freq", 
  # plot_reg_solution: 
  "label", "Solution.type", "Solution.type.label", 
  # plot_reg_treemap: 
  "freqinReg", 
  # template_CtryFactsheet: 
  "ctryname", 
  # template_CtryPrez: 
  "ctryname"
)))