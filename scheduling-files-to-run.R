# install cronR like this:
# install.packages("pak")
# pak::pkg_install("dkahle/cronR")
library("cronR")

# look at the functions in the package
# ls("package:cronR")

cmd <- cron_rscript("file-to-run-often.R")
# see what kind of object cmd is (a character vector)
# that runs the system Rscript command on the input
# file
# str(cmd)


# the main function here is cron_add. check out
# this to see how it works
# ?cron_add
cron_add(
  cmd,
  frequency = "minutely",
  description = "Make a timestamped txt file.",
  ask = FALSE
)
# cron_add(cmd, frequency = "daily", at = "12PM")

# you can look at the current jobs with cron_ls()
cron_ls()

# and you can delete them selectively with cron_rm()
cron_rm("376b0689fc347bb2d0d1fed95e3705ba", ask = FALSE)
