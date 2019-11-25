# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#                   Reliability and Measurement Error                     #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#                                                                         #
# File contributors:                                                      #
#   - M.A. Constantin                                                     #
#                                                                         #
# File description:                                                       #
#   - contains helper functions and variables used by the Shiny app       #
#                                                                         #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #



# # # Libraries.



# if (!('plotrix' %in% rownames(installed.packages()))) {
# 	install.packages('plotrix')
# }



library(shiny)
library(plotrix)



# # # Constants.



# Variables used in the graphical user interface.
..GRAPHICS.. <- list(
    col.blue = rgb(0, 110, 255, maxColorValue = 255, alpha = 125, names = "blue"),
    col.red = rgb(255, 100, 100, maxColorValue = 255, alpha = 125, names = "red")
)



# # # Helper functions.



# Normalize circle radius (i.e., to keep everything within the (x, y) range).
normalize <- function(x, min = 0, max = 100) {
    return((x - min) / (max - min))
}



# Function for computing theoretical reliability (i.e., classical test theory).
true.reliability <- function(true.score = 100, mes.error = 50) {
    return(true.score / (true.score + mes.error))
}



# Plot function.
app.plot <- function(ui.input) {
        # # # Set margins.
        par(mar = c(2, 2, 2, 2))

        # Create axes for plot.
        plot(x = seq(-2, 2, .1), y = seq(-2, 2, .1), type = "n", xlab = "", ylab = "", main = "Theoretical Reliability", bty = "n")

        # Draw true score variance.
        draw.circle(0, 0, normalize(ui.input$true.score.variance), col = ..GRAPHICS..$col.blue, border = ..GRAPHICS..$col.blue, lwd = 2)

        # Draw measurement error variance.
        draw.circle(0, 0, normalize(ui.input$measurement.error.variance), col = ..GRAPHICS..$col.red, border = ..GRAPHICS..$col.red, lwd = 2)

        # Text for reliability.
        reliability <- paste0("R = ", ui.input$true.score.variance, " / (", ui.input$true.score.variance, " + ", ui.input$measurement.error.variance, ") = ", round(true.reliability(ui.input$true.score.variance, ui.input$measurement.error.variance), 3))

        # Add reliability text.
        text(0, -1.9 , labels = reliability, cex = 1.5)

        # Add legend.
        legend(-2, 2, legend = c("True score variance", "Measurement error variance"), col = c(..GRAPHICS..$col.blue, ..GRAPHICS..$col.red), pch = 19, cex = 1.3)
}



# # # End.
