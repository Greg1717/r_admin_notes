# HOME ========================================================================
Sys.getenv("HOME")
dir(Sys.getenv("HOME"))
path.expand("~")

# library =====================================================================
.libPaths()

dir(.libPaths())


# R_HOME ======================================================================
Sys.getenv("R_HOME")
dir(Sys.getenv("R_HOME"))
dir(paste0(Sys.getenv("R_HOME"), "/library"))

R.home(component = "home")


# .Renviron ===================================================================
# usethis::edit_r_environ()


#.Rprofile ====================================================================
# check if .Rprofile file exists ==============================================
candidates <- c( Sys.getenv("R_PROFILE"),
                 file.path(Sys.getenv("R_HOME"), "etc", "Rprofile.site"),
                 Sys.getenv("R_PROFILE_USER"),
                 file.path(getwd(), ".Rprofile"),
                 file.path(Sys.getenv("HOME"), ".Rprofile"))

Filter(file.exists, candidates)

# file.edit(file.path("~", ".Rprofile")) # edit .Rprofile in HOME

# file.edit(".Rprofile") # edit project specific .Rprofile

# usethis::edit_r_profile()

# Sys.setenv(key = "value")


# Working Directory ===========================================================
getwd()

