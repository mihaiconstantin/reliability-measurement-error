# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#                   Reliability and Measurement Error                     #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#                                                                         #
# File contributors:                                                      #
#   - M.A. Constantin                                                     #
#                                                                         #
# File description:                                                       #
#   - contains code for running the Shiny server                          #
#                                                                         #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #



# # # Server.



# Server function.
server <- function(input, output) {
    # Plot output.
    output$appPlot <- renderPlot({
        app.plot(input)
    })
}



# # # End.
