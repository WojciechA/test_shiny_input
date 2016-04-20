library(shiny)

shinyUI(pageWithSidebar(
        titlePanel("A child's adult height predictor"),
        sidebarPanel(
                h4('Inputs:'),
                sliderInput('id1', 'Set the mother`s height (cm):', min=100, max=250, value=160),
                sliderInput('id2', 'Set the father`s height (cm):', min=100, max=250, value=170),
                h4('Results:'),
                h5('Predicted son`s adult height (cm):'),verbatimTextOutput("oid3"),
                h5('Predicted daughter`s adult height (cm):'),verbatimTextOutput("oid4")
        ),
        mainPanel(
                p("This application can predict hild's adult height with given Mother`s and Father's height."),
                p("A method used:"),
                p(" 1. Add the mother's height and the father's height in centimeters."),
                p(" 2. Add 13 centimeters for boys or subtract 13 centimeters for girls."),
                p(" 3. Divide by two.")
        )
))