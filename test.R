install.packages("markdown")
install.packages("caTools")
install.packages("rticles")

# from CRAN (something like peer reviewed)
install.packages("xaringan") # for making slides
install.packages("devtools") # for installation from github
install.packages('prodigenr') # for project management
install.packages('tinytex') # for compling LaTeX to pdf
require(tinytex)
install_tinytex()
# from github (something like grey papers or self-published)
require(devtools)
devtools::install_github('bbucior/drposter') # for making posters
devtools::install_github('pzhaonet/bookdownplus') # for writing dissertations/books
devtools::install_github('pzhaonet/mindr') # for making mindmaps


install.packages("citr")
install.packages("bookdown")
install.packages("bookdownplus")

require(bookdownplus)
bookdownplus(template='ubt')

install.packages("prodigenr")
require(prodigenr)
setup_project()


