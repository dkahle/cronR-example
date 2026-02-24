# note: the working directory of this r session is
# your user's home directory, so to make created
# files appear in the right directory, you'll need
# to path them correctly

library("fs") # for easy pathing

# make timestamp function
current_time <- function() {
  format(Sys.time(), "%Y-%m-%d_%H-%M-%S")
}
# current_time()

# here::here() = where you want file saved, hard code
# it below
filename <- path(
  "/Users/david_kahle/Dropbox/dev/cronR/cronR-example",
  sprintf("%s.txt", current_time())
)
# filename

file_create( filename )
