#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# This is a utility script that holds custom functions
#
# By: mike gaunt, michael.gaunt@wsp.com
#
# README: scripts are for knitting purposes
#-------- functions for knitting flex dashboards or markdowns
# *please use 80 character margins
# *please save as helpers_[[informative description]]
#
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#SECTION NAME===================================================================
#use this header to make demarcations/section in code [delete this line]
#short description

#description
#description
#description
function_name <- function(input_1, input_2) {
}

#Flex===========================================================================
#use this header to make demarcations/section in code [delete this line]
#short description

#this is a convenience function that performs this script but without having to open it
knit_dashboard =  function(dashboard_name, dashboard_folder,
                           doc_name = dashboard_name, overwrite = F){
  dashboard_path_rmd = stringr::str_glue("{dashboard_folder}{dashboard_name}.Rmd")
  dashboard_path_html = stringr::str_glue("{dashboard_folder}{dashboard_name}.html")

  if (overwrite) {
    file_rename = stringr::str_glue("docs/{doc_name}.html")
  } else {
    file_rename = stringr::str_glue("docs/{doc_name}_{Sys.Date()}.html")
  }

  rmarkdown::render(dashboard_path_rmd)
  file.rename(dashboard_path_html,
              file_rename)

}





#script end=====================================================================
