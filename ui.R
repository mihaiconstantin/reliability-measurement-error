# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#                   Reliability and Measurement Error                     #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#                                                                         #
# File contributors:                                                      #
#   - M.A. Constantin                                                     #
#                                                                         #
# File description:                                                       #
#   - contains code for the Shiny application UI                          #
#                                                                         #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #



# # # UI.



# HTML template.
ui <- htmlTemplate("www/index.html",

    # The plot output.
    plot = plotOutput(
        outputId = 'appPlot',
        height = "600px"
    ),

    # Slider for the true score variance.
    true.score.variance = sliderInput(
        inputId = "true.score.variance",
        label = "True score variance",
        min = 0,
        max = 100,
        value = 100,
        step = 1,
        width = "100%"
    ),

    # Slider for the measurement error variance.
    measurement.error.variance = sliderInput(
        inputId = "measurement.error.variance",
        label = "Measurement error variance",
        min = 0,
        max = 100,
        value = 50,
        step = 1,
        width = "100%"
    ),

    # Formula for the reliability.
    reliability.formula = withMathJax(
        "$$R_{XX} = \\frac{S^{2}_{T}}{S^{2}_{X}} = \\frac{S^{2}_{T}}{S^{2}_{T} + S^{2}_{E}}$$"
    )
)



# # # End.
