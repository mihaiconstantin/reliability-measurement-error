# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#                   Reliability and Measurement Error                     #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#                                                                         #
# File contributors:                                                      #
#   - M.A. Constantin                                                     #
#                                                                         #
# File description:                                                       #
#   - contains code for running the Shiny app                             #
#                                                                         #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #



# # # Run app.


options(shiny.autoreload.pattern = glob2rx("*.*"))
options(shiny.autoreload = TRUE)

shinyApp(ui = htmlTemplate("www/index.html"), server)



# # # End.
