library(shiny)
library(UsingR)
data(galton)

shinyUI(fluidPage(
    titlePanel("Predict Your Kid's Height"),
    sidebarLayout(position = "left",
        sidebarPanel(h3("Parents height"),
                     # radioButtons("gender", 
                                  # label = "Choose Gender", 
                                  # choices = list("Father" = 1, "Mother" = 1.08),
                                  # inline = TRUE),
                     numericInput("height1",
                                  label = "Father's Height (inches)",
                                  70, min = 40, max = 100, step = 0.1),
                     numericInput("height2",
                                  label = "Mother's Height (inches)",
                                  70, min = 40, max = 100, step = 0.1),
                     submitButton("Submit"),
                     h3("Prediction"),
                     h5(strong("Your kid's height (inches)")),
                     verbatimTextOutput("prediction")                     
                     ),
                 
        mainPanel(h3("Instruction"),
                  p("In the Victorian era, Sir Francis Galton showed that 'when dealing with
                     the transmission of stature from parents to children, the average height
                     of the two parents, ...is all we need care to know about them'(1886)."),
                  br(),
                  p("Height is a classical example of an inherited human trait. Research show
                     mid-parental prediction method explained 40% of the sex- and age-adjusted
                     height variance."),
                  br(),
                  p("Use this app to predict your kid's height for fun, the height range for
                    parents is 40 inches to 100 inches. Note, this prediction only contributes
                    40% of the influences, other factors might be race, nutrition, activities,
                    region and so on...")
                  ),
    )))
