library(tidyverse)
# read_csv() reads comma delimited files
# read_csv2() reads semicolon separated files (common in countries where , is used as the decimal place)
# read_tsv() reads tab delimited files
# read_delim() reads in files with any delimiter.
# read_fwf() reads fixed width files. You can specify fields either by their widths with fwf_widths() or their position with fwf_positions(). 
# read_table() reads a common variation of fixed width files where columns are separated by white space.
# read_log() reads Apache style log files. (But also check out webreadr which is built on top of read_log() and provides many more helpful tools.)
read_csv("a,b,c
1,2,3
4,5,6")
read_csv("The first line of metadata
  The second line of metadata
         x,y,z
         1,2,3", skip = 2)
read_csv("# A comment I want to skip
  x,y,z
  1,2,3", comment = "#")
read_csv("1,2,3\n4,5,6", col_names = FALSE)
read_csv("1,2,3\n4,5,6", col_names = c("x", "y", "z"))
read_csv("a,b,c\n1,2,.", na = ".")
