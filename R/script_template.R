script_template <- function(author = Sys.info()[["user"]]) {
  author <- paste("# Original author(s):", author)
  orig_date <- paste("# Original date:", Sys.Date())
  run_on <- paste0("# Written/run on RStudio ", RStudio.Version()$mode, " ",
                   RStudio.Version()$version, " and R ",
                   version$major, ".", version$minor)

  r_code <- c(
    "##########################################################",
    "# Name of script",
    "# Publication (delete if not applicable)",
    author,
    orig_date,
    "# Latest update author (delete if using version control)",
    "# Latest update date (delete if using version control)",
    "# Latest update description (delete if using version control)",
    "# Type of script (e.g. extraction, preparation, modelling)",
    run_on,
    "# Description of content",
    "# Approximate run time",
    "##########################################################",
    "",
    "",
    "### 1 - Housekeeping ----",
    "# This section should be the only section of the script which requires manual changes ",
    "# for future updates and includes:",
    "#   loading packages",
    "source(\"code/packages.R\") # Remove this line if loading packages here",
    "#   setting filepaths and extract dates",
    "#   defining functions",
    "source(\"code/functions.R\") # Remove this line if defining functions here",
    "#   setting plot parameter",
    "#   specifying codes (e.g. ICD-10 codes)",
    "",
    "",
    "### 2 Section Heading ----",
    "",
    "",
    "### 3 Section Heading ----",
    "",
    "",
    "### END OF SCRIPT ###"
  )
  r_code <- paste(r_code, collapse = "\n")

  return(r_code)
}
